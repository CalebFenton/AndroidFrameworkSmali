.class public final Lcom/android/internal/app/procstats/UidState;
.super Ljava/lang/Object;
.source "UidState.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field private blacklist mCurCombinedState:I

.field private final blacklist mDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field private blacklist mProcesses:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStartTime:J

.field private final blacklist mStats:Lcom/android/internal/app/procstats/ProcessStats;

.field private blacklist mTotalRunningDuration:J

.field private blacklist mTotalRunningStartTime:J

.field private final blacklist mUid:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/ProcessStats;I)V
    .registers 5
    .param p1, "processStats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "uid"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    .line 51
    iput-object p1, p0, Lcom/android/internal/app/procstats/UidState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 52
    iput p2, p0, Lcom/android/internal/app/procstats/UidState;->mUid:I

    .line 53
    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 54
    return-void
.end method

.method private blacklist calcCombinedState()I
    .registers 8

    .line 88
    const/4 v0, -0x1

    .line 89
    .local v0, "minCombined":I
    const/4 v1, -0x1

    .line 90
    .local v1, "min":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    .local v3, "size":I
    :goto_9
    if-ge v2, v3, :cond_25

    .line 91
    iget-object v4, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getCombinedState()I

    move-result v4

    .line 92
    .local v4, "combinedState":I
    rem-int/lit8 v5, v4, 0x10

    .line 93
    .local v5, "state":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_22

    .line 94
    if-eq v1, v6, :cond_20

    if-ge v5, v1, :cond_22

    .line 95
    :cond_20
    move v0, v4

    .line 96
    move v1, v5

    .line 90
    .end local v4    # "combinedState":I
    .end local v5    # "state":I
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 100
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_25
    return v0
.end method

.method static synthetic blacklist lambda$resetSafely$0(Lcom/android/internal/app/procstats/ProcessState;)Z
    .registers 2
    .param p0, "p"    # Lcom/android/internal/app/procstats/ProcessState;

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist setCombinedStateInner(IJ)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "now"    # J

    .line 109
    iget v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-eq v0, p1, :cond_22

    .line 110
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_20

    .line 111
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/UidState;->commitStateTime(J)V

    .line 112
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1a

    .line 114
    iget-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iget-wide v2, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    goto :goto_20

    .line 115
    :cond_1a
    iget v3, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-ne v3, v2, :cond_20

    .line 118
    iput-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    .line 121
    :cond_20
    :goto_20
    iput p1, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    .line 123
    :cond_22
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/app/procstats/UidState;)V
    .registers 6
    .param p1, "other"    # Lcom/android/internal/app/procstats/UidState;

    .line 186
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 187
    iget-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iget-wide v2, p1, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    .line 188
    return-void
.end method

.method blacklist addProcess(Lcom/android/internal/app/procstats/ProcessState;)V
    .registers 3
    .param p1, "proc"    # Lcom/android/internal/app/procstats/ProcessState;

    .line 191
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method blacklist addProcess(Lcom/android/internal/app/procstats/ProcessState;J)V
    .registers 5
    .param p1, "proc"    # Lcom/android/internal/app/procstats/ProcessState;
    .param p2, "now"    # J

    .line 195
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getCombinedState()I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/UidState;->setCombinedStateInner(IJ)V

    .line 197
    return-void
.end method

.method public blacklist clone()Lcom/android/internal/app/procstats/UidState;
    .registers 4

    .line 60
    new-instance v0, Lcom/android/internal/app/procstats/UidState;

    iget-object v1, p0, Lcom/android/internal/app/procstats/UidState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v2, p0, Lcom/android/internal/app/procstats/UidState;->mUid:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/UidState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;I)V

    .line 61
    .local v0, "unew":Lcom/android/internal/app/procstats/UidState;
    iget-object v1, v0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v2, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 62
    iget v1, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    iput v1, v0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    .line 63
    iget-wide v1, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    .line 64
    iget-wide v1, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    .line 65
    iget-wide v1, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    .line 66
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/UidState;->clone()Lcom/android/internal/app/procstats/UidState;

    move-result-object v0

    return-object v0
.end method

.method public blacklist commitStateTime(J)V
    .registers 9
    .param p1, "now"    # J

    .line 136
    iget v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    .line 137
    iget-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    sub-long v0, p1, v0

    .line 138
    .local v0, "dur":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_16

    .line 139
    iget-object v2, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v3, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 141
    :cond_16
    iget-wide v2, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iget-wide v4, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    sub-long v4, p1, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    .line 142
    iput-wide p1, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    .line 144
    .end local v0    # "dur":J
    :cond_21
    iput-wide p1, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    .line 145
    return-void
.end method

.method blacklist dumpState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V
    .registers 30
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J

    .line 268
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-wide/16 v5, 0x0

    .line 269
    .local v5, "totalTime":J
    const/4 v7, -0x1

    .line 270
    .local v7, "printedScreen":I
    const/4 v8, 0x0

    .local v8, "is":I
    :goto_e
    array-length v9, v2

    const-string v11, ": "

    if-ge v8, v9, :cond_aa

    .line 271
    const/4 v9, -0x1

    .line 272
    .local v9, "printedMem":I
    const/16 v16, 0x0

    move/from16 v12, v16

    const-wide/16 v16, 0x0

    .local v12, "im":I
    :goto_1a
    array-length v13, v3

    if-ge v12, v13, :cond_a0

    .line 273
    const/4 v13, 0x0

    .local v13, "ip":I
    :goto_1e
    array-length v14, v4

    if-ge v13, v14, :cond_94

    .line 274
    aget v14, v2, v8

    .line 275
    .local v14, "iscreen":I
    aget v10, v3, v12

    .line 276
    .local v10, "imem":I
    add-int v18, v14, v10

    mul-int/lit8 v18, v18, 0x10

    aget v19, v4, v13

    add-int v15, v18, v19

    .line 277
    .local v15, "bucket":I
    iget-object v4, v0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    move-wide/from16 v18, v5

    .end local v5    # "totalTime":J
    .local v18, "totalTime":J
    int-to-byte v5, v15

    invoke-virtual {v4, v5}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v4

    .line 278
    .local v4, "time":J
    const-string v6, ""

    .line 279
    .local v6, "running":Ljava/lang/String;
    move-wide/from16 v20, v4

    .end local v4    # "time":J
    .local v20, "time":J
    iget v4, v0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-ne v4, v15, :cond_47

    .line 280
    const-string v6, " (running)"

    .line 281
    iget-wide v4, v0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    sub-long v4, p6, v4

    add-long v4, v20, v4

    .end local v20    # "time":J
    .restart local v4    # "time":J
    goto :goto_49

    .line 279
    .end local v4    # "time":J
    .restart local v20    # "time":J
    :cond_47
    move-wide/from16 v4, v20

    .line 283
    .end local v20    # "time":J
    .restart local v4    # "time":J
    :goto_49
    cmp-long v20, v4, v16

    if-eqz v20, :cond_87

    .line 284
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    array-length v0, v2

    move/from16 v20, v8

    const/4 v8, 0x1

    .end local v8    # "is":I
    .local v20, "is":I
    if-le v0, v8, :cond_5f

    .line 286
    if-eq v7, v14, :cond_5a

    .line 287
    move v0, v14

    goto :goto_5b

    :cond_5a
    const/4 v0, -0x1

    .line 286
    :goto_5b
    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 288
    move v7, v14

    .line 290
    :cond_5f
    array-length v0, v3

    const/4 v8, 0x1

    if-le v0, v8, :cond_70

    .line 291
    nop

    .line 292
    if-eq v9, v10, :cond_68

    move v0, v10

    goto :goto_69

    :cond_68
    const/4 v0, -0x1

    .line 291
    :goto_69
    const/16 v8, 0x2f

    invoke-static {v1, v0, v8}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 293
    move v0, v10

    move v9, v0

    .line 295
    :cond_70
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    aget v8, p5, v13

    aget-object v0, v0, v8

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    add-long v18, v18, v4

    move-wide/from16 v5, v18

    goto :goto_8b

    .line 283
    .end local v20    # "is":I
    .restart local v8    # "is":I
    :cond_87
    move/from16 v20, v8

    .end local v8    # "is":I
    .restart local v20    # "is":I
    move-wide/from16 v5, v18

    .line 273
    .end local v4    # "time":J
    .end local v6    # "running":Ljava/lang/String;
    .end local v10    # "imem":I
    .end local v14    # "iscreen":I
    .end local v15    # "bucket":I
    .end local v18    # "totalTime":J
    .restart local v5    # "totalTime":J
    :goto_8b
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p5

    move/from16 v8, v20

    goto :goto_1e

    .end local v20    # "is":I
    .restart local v8    # "is":I
    :cond_94
    move-wide/from16 v18, v5

    move/from16 v20, v8

    .line 272
    .end local v5    # "totalTime":J
    .end local v8    # "is":I
    .end local v13    # "ip":I
    .restart local v18    # "totalTime":J
    .restart local v20    # "is":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p5

    goto/16 :goto_1a

    .end local v18    # "totalTime":J
    .end local v20    # "is":I
    .restart local v5    # "totalTime":J
    .restart local v8    # "is":I
    :cond_a0
    move/from16 v20, v8

    .line 270
    .end local v8    # "is":I
    .end local v9    # "printedMem":I
    .end local v12    # "im":I
    .restart local v20    # "is":I
    add-int/lit8 v8, v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p5

    .end local v20    # "is":I
    .restart local v8    # "is":I
    goto/16 :goto_e

    :cond_aa
    move/from16 v20, v8

    const-wide/16 v16, 0x0

    .line 302
    .end local v8    # "is":I
    cmp-long v0, v5, v16

    if-eqz v0, :cond_d5

    .line 303
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    array-length v0, v2

    const/4 v8, 0x1

    if-le v0, v8, :cond_be

    .line 305
    const/4 v0, -0x1

    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    goto :goto_bf

    .line 304
    :cond_be
    const/4 v0, -0x1

    .line 307
    :goto_bf
    array-length v4, v3

    if-le v4, v8, :cond_c7

    .line 308
    const/16 v8, 0x2f

    invoke-static {v1, v0, v8}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 310
    :cond_c7
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABEL_TOTAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 313
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 315
    :cond_d5
    return-void
.end method

.method public blacklist getAggregatedDurationsInStates()[J
    .registers 11

    .line 235
    const/16 v0, 0x10

    new-array v0, v0, [J

    .line 236
    .local v0, "states":[J
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/UidState;->getDurationsBucketCount()I

    move-result v1

    .line 237
    .local v1, "numOfBuckets":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_25

    .line 238
    iget-object v3, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v3

    .line 239
    .local v3, "key":I
    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v4

    .line 240
    .local v4, "combinedState":I
    rem-int/lit8 v5, v4, 0x10

    aget-wide v6, v0, v5

    iget-object v8, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v8, v3}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    aput-wide v6, v0, v5

    .line 237
    .end local v3    # "key":I
    .end local v4    # "combinedState":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 242
    .end local v2    # "i":I
    :cond_25
    return-object v0
.end method

.method public blacklist getCombinedState()I
    .registers 2

    .line 129
    iget v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    return v0
.end method

.method public blacklist getDuration(IJ)J
    .registers 8
    .param p1, "state"    # I
    .param p2, "now"    # J

    .line 223
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v0

    .line 224
    .local v0, "time":J
    iget v2, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-ne v2, p1, :cond_10

    .line 225
    iget-wide v2, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    .line 227
    :cond_10
    return-wide v0
.end method

.method public blacklist getDurationsBucketCount()I
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    return v0
.end method

.method public blacklist getTotalRunningDuration(J)J
    .registers 9
    .param p1, "now"    # J

    .line 215
    iget-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    .line 216
    iget-wide v2, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    iget-wide v2, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    sub-long v4, p1, v2

    :cond_e
    add-long/2addr v0, v4

    .line 215
    return-wide v0
.end method

.method public blacklist hasPackage(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_2a

    .line 173
    iget-object v2, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    .line 174
    .local v2, "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 175
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 176
    const/4 v3, 0x1

    return v3

    .line 172
    .end local v2    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 179
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInUse()Z
    .registers 4

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_1c

    .line 161
    iget-object v2, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 162
    const/4 v2, 0x1

    return v2

    .line 160
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 165
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method blacklist readFromParcel(Landroid/os/Parcel;)Z
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 251
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 252
    const/4 v0, 0x0

    return v0

    .line 254
    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method blacklist removeProcess(Lcom/android/internal/app/procstats/ProcessState;J)V
    .registers 5
    .param p1, "proc"    # Lcom/android/internal/app/procstats/ProcessState;
    .param p2, "now"    # J

    .line 200
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getCombinedState()I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/UidState;->setCombinedStateInner(IJ)V

    .line 202
    return-void
.end method

.method public blacklist resetSafely(J)V
    .registers 5
    .param p1, "now"    # J

    .line 151
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->resetTable()V

    .line 152
    iput-wide p1, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    .line 153
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/internal/app/procstats/UidState$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/app/procstats/UidState$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 154
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 261
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "UidState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 262
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/procstats/UidState;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateCombinedState(IJ)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "now"    # J

    .line 74
    iget v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-eq v0, p1, :cond_7

    .line 75
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/UidState;->updateCombinedState(J)V

    .line 77
    :cond_7
    return-void
.end method

.method public blacklist updateCombinedState(J)V
    .registers 4
    .param p1, "now"    # J

    .line 84
    invoke-direct {p0}, Lcom/android/internal/app/procstats/UidState;->calcCombinedState()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/app/procstats/UidState;->setCombinedStateInner(IJ)V

    .line 85
    return-void
.end method

.method blacklist writeToParcel(Landroid/os/Parcel;J)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J

    .line 246
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 247
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/UidState;->getTotalRunningDuration(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 248
    return-void
.end method
