.class public final Lcom/android/internal/app/procstats/ProcessState;
.super Ljava/lang/Object;
.source "ProcessState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/ProcessState$1;,
        Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    }
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEBUG_PARCEL:Z = false

.field private static final PROCESS_STATE_TO_STATE:[I

.field private static final TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field private mActive:Z

.field private mAvgCachedKillPss:J

.field private mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

.field private mCurState:I

.field private mDead:Z

.field private final mDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field private mLastPssState:I

.field private mLastPssTime:J

.field private mMaxCachedKillPss:J

.field private mMinCachedKillPss:J

.field private mMultiPackage:Z

.field private final mName:Ljava/lang/String;

.field private mNumActiveServices:I

.field private mNumCachedKill:I

.field private mNumExcessiveCpu:I

.field private mNumExcessiveWake:I

.field private mNumStartedServices:I

.field private final mPackage:Ljava/lang/String;

.field private final mPssTable:Lcom/android/internal/app/procstats/PssTable;

.field private mStartTime:J

.field private final mStats:Lcom/android/internal/app/procstats/ProcessStats;

.field private mTmpTotalTime:J

.field private final mUid:I

.field private final mVersion:I

.field public tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

.field public tmpNumInUse:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/procstats/ProcessState;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    #@2
    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 80
    const/16 v0, 0x11

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    #@9
    .line 100
    new-instance v0, Lcom/android/internal/app/procstats/ProcessState$1;

    #@b
    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessState$1;-><init>()V

    #@e
    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->COMPARATOR:Ljava/util/Comparator;

    #@10
    .line 74
    return-void

    #@11
    .line 80
    nop

    #@12
    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IILjava/lang/String;J)V
    .locals 2
    .param p1, "commonProcess"    # Lcom/android/internal/app/procstats/ProcessState;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # I
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "now"    # J

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 136
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    #@6
    .line 139
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    #@8
    .line 182
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@a
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@c
    .line 183
    iput-object p5, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    #@e
    .line 184
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@10
    .line 185
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    #@12
    .line 186
    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    #@14
    .line 187
    iput p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    #@16
    .line 188
    iget v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    #@18
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    #@1a
    .line 189
    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    #@1c
    .line 190
    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    #@1e
    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@20
    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@22
    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    #@25
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@27
    .line 191
    new-instance v0, Lcom/android/internal/app/procstats/PssTable;

    #@29
    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@2b
    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@2d
    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    #@30
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@32
    .line 181
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V
    .locals 2
    .param p1, "processStats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # I
    .param p5, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 136
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    #@6
    .line 139
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    #@8
    .line 165
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@a
    .line 166
    iput-object p5, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    #@c
    .line 167
    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@e
    .line 168
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    #@10
    .line 169
    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    #@12
    .line 170
    iput p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    #@14
    .line 171
    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    #@16
    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@18
    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    #@1b
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@1d
    .line 172
    new-instance v0, Lcom/android/internal/app/procstats/PssTable;

    #@1f
    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@21
    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    #@24
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@26
    .line 164
    return-void
.end method

.method private addCachedKill(IJJJ)V
    .locals 4
    .param p1, "num"    # I
    .param p2, "minPss"    # J
    .param p4, "avgPss"    # J
    .param p6, "maxPss"    # J

    #@0
    .prologue
    .line 520
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    #@2
    if-gtz v0, :cond_0

    #@4
    .line 521
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    #@6
    .line 522
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    #@8
    .line 523
    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    #@a
    .line 524
    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    #@c
    .line 519
    :goto_0
    return-void

    #@d
    .line 526
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    #@f
    cmp-long v0, p2, v0

    #@11
    if-gez v0, :cond_1

    #@13
    .line 527
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    #@15
    .line 529
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    #@17
    cmp-long v0, p6, v0

    #@19
    if-lez v0, :cond_2

    #@1b
    .line 530
    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    #@1d
    .line 532
    :cond_2
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    #@1f
    long-to-double v0, v0

    #@20
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    #@22
    int-to-double v2, v2

    #@23
    mul-double/2addr v0, v2

    #@24
    long-to-double v2, p4

    #@25
    add-double/2addr v0, v2

    #@26
    .line 533
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    #@28
    add-int/2addr v2, p1

    #@29
    int-to-double v2, v2

    #@2a
    .line 532
    div-double/2addr v0, v2

    #@2b
    double-to-long v0, v0

    #@2c
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    #@2e
    .line 534
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    #@30
    add-int/2addr v0, p1

    #@31
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    #@33
    goto :goto_0
.end method

.method private dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V
    .locals 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "screenStates"    # [I
    .param p5, "memStates"    # [I
    .param p6, "procStates"    # [I
    .param p7, "now"    # J
    .param p9, "totalTime"    # J
    .param p11, "full"    # Z

    #@0
    .prologue
    .line 917
    new-instance v6, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;

    #@2
    move-object/from16 v0, p4

    #@4
    move-object/from16 v1, p5

    #@6
    move-object/from16 v2, p6

    #@8
    invoke-direct {v6, v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    #@b
    .line 919
    .local v6, "totals":Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    move-wide/from16 v0, p7

    #@d
    invoke-virtual {p0, v6, v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V

    #@10
    .line 920
    iget-wide v8, v6, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    #@12
    long-to-double v8, v8

    #@13
    move-wide/from16 v0, p9

    #@15
    long-to-double v10, v0

    #@16
    div-double/2addr v8, v10

    #@17
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    #@19
    mul-double v4, v8, v10

    #@1b
    .line 922
    .local v4, "percentage":D
    const-wide v8, 0x3f747ae147ae147bL    # 0.005

    #@20
    cmpl-double v7, v4, v8

    #@22
    if-gez v7, :cond_0

    #@24
    iget-wide v8, v6, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    #@26
    const-wide/16 v10, 0x0

    #@28
    cmp-long v7, v8, v10

    #@2a
    if-eqz v7, :cond_3

    #@2c
    .line 923
    :cond_0
    if-eqz p2, :cond_1

    #@2e
    .line 924
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    .line 926
    :cond_1
    if-eqz p3, :cond_2

    #@33
    .line 927
    move-object/from16 v0, p3

    #@35
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38
    .line 929
    :cond_2
    move-wide/from16 v0, p9

    #@3a
    move/from16 v2, p11

    #@3c
    invoke-virtual {v6, p1, v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->print(Ljava/io/PrintWriter;JZ)V

    #@3f
    .line 930
    if-eqz p2, :cond_3

    #@41
    .line 931
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@44
    .line 916
    :cond_3
    return-void
.end method

.method private ensureNotDead()V
    .locals 3

    #@0
    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 278
    return-void

    #@5
    .line 280
    :cond_0
    const-string/jumbo v0, "ProcessStats"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "ProcessState dead: name="

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 281
    const-string/jumbo v2, " pkg="

    #@1d
    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 281
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    #@23
    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 281
    const-string/jumbo v2, " uid="

    #@2a
    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 281
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    #@30
    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 281
    const-string/jumbo v2, " common.name="

    #@37
    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 281
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@3d
    iget-object v2, v2, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    #@3f
    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 276
    return-void
.end method

.method private pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;
    .locals 10
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;I)",
            "Lcom/android/internal/app/procstats/ProcessState;"
        }
    .end annotation

    #@0
    .prologue
    .line 577
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    #@6
    .line 578
    .local v0, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@8
    .line 579
    .local v2, "proc":Lcom/android/internal/app/procstats/ProcessState;
    iget-boolean v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    #@a
    if-eqz v5, :cond_0

    #@c
    iget-object v5, v2, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@e
    if-eq v5, v2, :cond_0

    #@10
    .line 584
    const-string/jumbo v5, "ProcessStats"

    #@13
    new-instance v6, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v7, "Pulling dead proc: name="

    #@1b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v6

    #@1f
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    #@21
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v6

    #@25
    const-string/jumbo v7, " pkg="

    #@28
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v6

    #@2c
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    #@2e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    .line 585
    const-string/jumbo v7, " uid="

    #@35
    .line 584
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v6

    #@39
    .line 585
    iget v7, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    #@3b
    .line 584
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    .line 585
    const-string/jumbo v7, " common.name="

    #@42
    .line 584
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v6

    #@46
    .line 585
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@48
    iget-object v7, v7, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    #@4a
    .line 584
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v6

    #@52
    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 586
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@57
    iget-object v6, v2, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    #@59
    iget v7, v2, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    #@5b
    iget v8, v2, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    #@5d
    .line 587
    iget-object v9, v2, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    #@5f
    .line 586
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    #@62
    move-result-object v2

    #@63
    .line 589
    :cond_0
    iget-boolean v5, v2, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    #@65
    if-eqz v5, :cond_4

    #@67
    .line 593
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@69
    iget-object v6, v5, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@6b
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@6e
    move-result-object v5

    #@6f
    check-cast v5, Ljava/lang/String;

    #@71
    .line 594
    iget v7, v2, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    #@73
    .line 593
    invoke-virtual {v6, v5, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@76
    move-result-object v4

    #@77
    check-cast v4, Landroid/util/SparseArray;

    #@79
    .line 595
    .local v4, "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    if-nez v4, :cond_1

    #@7b
    .line 596
    new-instance v6, Ljava/lang/IllegalStateException;

    #@7d
    new-instance v5, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v7, "No existing package "

    #@85
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v7

    #@89
    .line 597
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@8c
    move-result-object v5

    #@8d
    check-cast v5, Ljava/lang/String;

    #@8f
    .line 596
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v5

    #@93
    .line 597
    const-string/jumbo v7, "/"

    #@96
    .line 596
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v5

    #@9a
    .line 597
    iget v7, v2, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    #@9c
    .line 596
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v5

    #@a0
    .line 598
    const-string/jumbo v7, " for multi-proc "

    #@a3
    .line 596
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v5

    #@a7
    .line 598
    iget-object v7, v2, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    #@a9
    .line 596
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v5

    #@ad
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v5

    #@b1
    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b4
    throw v6

    #@b5
    .line 600
    :cond_1
    iget v5, v2, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    #@b7
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@ba
    move-result-object v1

    #@bb
    check-cast v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    #@bd
    .line 601
    .local v1, "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    if-nez v1, :cond_2

    #@bf
    .line 602
    new-instance v6, Ljava/lang/IllegalStateException;

    #@c1
    new-instance v5, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    const-string/jumbo v7, "No existing package "

    #@c9
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v7

    #@cd
    .line 603
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@d0
    move-result-object v5

    #@d1
    check-cast v5, Ljava/lang/String;

    #@d3
    .line 602
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v5

    #@d7
    .line 603
    const-string/jumbo v7, "/"

    #@da
    .line 602
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v5

    #@de
    .line 603
    iget v7, v2, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    #@e0
    .line 602
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v5

    #@e4
    .line 604
    const-string/jumbo v7, " for multi-proc "

    #@e7
    .line 602
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v5

    #@eb
    .line 604
    iget-object v7, v2, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    #@ed
    .line 602
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v5

    #@f1
    .line 604
    const-string/jumbo v7, " version "

    #@f4
    .line 602
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v5

    #@f8
    .line 604
    iget v7, v2, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    #@fa
    .line 602
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v5

    #@fe
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v5

    #@102
    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@105
    throw v6

    #@106
    .line 606
    :cond_2
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    #@108
    .line 607
    .local v3, "savedName":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@10a
    iget-object v6, v2, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    #@10c
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10f
    move-result-object v2

    #@110
    .end local v2    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    #@112
    .line 608
    .restart local v2    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v2, :cond_3

    #@114
    .line 609
    new-instance v5, Ljava/lang/IllegalStateException;

    #@116
    new-instance v6, Ljava/lang/StringBuilder;

    #@118
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@11b
    const-string/jumbo v7, "Didn\'t create per-package process "

    #@11e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v6

    #@122
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v6

    #@126
    .line 610
    const-string/jumbo v7, " in pkg "

    #@129
    .line 609
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v6

    #@12d
    .line 610
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    #@12f
    .line 609
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v6

    #@133
    .line 610
    const-string/jumbo v7, "/"

    #@136
    .line 609
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v6

    #@13a
    .line 610
    iget v7, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    #@13c
    .line 609
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v6

    #@140
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@143
    move-result-object v6

    #@144
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@147
    throw v5

    #@148
    .line 612
    :cond_3
    iput-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    #@14a
    .line 614
    .end local v1    # "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v3    # "savedName":Ljava/lang/String;
    .end local v4    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_4
    return-object v2
.end method


# virtual methods
.method public add(Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 8
    .param p1, "other"    # Lcom/android/internal/app/procstats/ProcessState;

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@2
    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    #@7
    .line 251
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@9
    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@b
    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(Lcom/android/internal/app/procstats/PssTable;)V

    #@e
    .line 252
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    #@10
    iget v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    #@12
    add-int/2addr v0, v1

    #@13
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    #@15
    .line 253
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    #@17
    iget v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    #@19
    add-int/2addr v0, v1

    #@1a
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    #@1c
    .line 254
    iget v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    #@1e
    if-lez v0, :cond_0

    #@20
    .line 255
    iget v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    #@22
    iget-wide v2, p1, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    #@24
    .line 256
    iget-wide v4, p1, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    #@26
    iget-wide v6, p1, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    #@28
    move-object v0, p0

    #@29
    .line 255
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    #@2c
    .line 249
    :cond_0
    return-void
.end method

.method public addPss(JJZLandroid/util/ArrayMap;)V
    .locals 19
    .param p1, "pss"    # J
    .param p3, "uss"    # J
    .param p5, "always"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 468
    .local p6, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    #@3
    .line 469
    if-nez p5, :cond_0

    #@5
    .line 470
    move-object/from16 v0, p0

    #@7
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    #@9
    move-object/from16 v0, p0

    #@b
    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    #@d
    if-ne v3, v4, :cond_0

    #@f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@12
    move-result-wide v4

    #@13
    .line 471
    move-object/from16 v0, p0

    #@15
    iget-wide v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    #@17
    const-wide/16 v8, 0x7530

    #@19
    add-long/2addr v6, v8

    #@1a
    .line 470
    cmp-long v3, v4, v6

    #@1c
    if-gez v3, :cond_0

    #@1e
    .line 472
    return-void

    #@1f
    .line 475
    :cond_0
    move-object/from16 v0, p0

    #@21
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    #@23
    move-object/from16 v0, p0

    #@25
    iput v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    #@27
    .line 476
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2a
    move-result-wide v4

    #@2b
    move-object/from16 v0, p0

    #@2d
    iput-wide v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    #@2f
    .line 477
    move-object/from16 v0, p0

    #@31
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    #@33
    const/4 v4, -0x1

    #@34
    if-eq v3, v4, :cond_2

    #@36
    .line 479
    move-object/from16 v0, p0

    #@38
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@3a
    iget-object v3, v3, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@3c
    move-object/from16 v0, p0

    #@3e
    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    #@40
    const/4 v5, 0x1

    #@41
    move-wide/from16 v6, p1

    #@43
    move-wide/from16 v8, p1

    #@45
    move-wide/from16 v10, p1

    #@47
    move-wide/from16 v12, p3

    #@49
    move-wide/from16 v14, p3

    #@4b
    move-wide/from16 v16, p3

    #@4d
    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJ)V

    #@50
    .line 482
    move-object/from16 v0, p0

    #@52
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@54
    iget-boolean v3, v3, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    #@56
    if-nez v3, :cond_1

    #@58
    .line 483
    return-void

    #@59
    .line 486
    :cond_1
    if-eqz p6, :cond_2

    #@5b
    .line 487
    invoke-virtual/range {p6 .. p6}, Landroid/util/ArrayMap;->size()I

    #@5e
    move-result v3

    #@5f
    add-int/lit8 v2, v3, -0x1

    #@61
    .local v2, "ip":I
    :goto_0
    if-ltz v2, :cond_2

    #@63
    .line 488
    move-object/from16 v0, p0

    #@65
    move-object/from16 v1, p6

    #@67
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    #@6a
    move-result-object v3

    #@6b
    iget-object v3, v3, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@6d
    move-object/from16 v0, p0

    #@6f
    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    #@71
    const/4 v5, 0x1

    #@72
    move-wide/from16 v6, p1

    #@74
    move-wide/from16 v8, p1

    #@76
    move-wide/from16 v10, p1

    #@78
    move-wide/from16 v12, p3

    #@7a
    move-wide/from16 v14, p3

    #@7c
    move-wide/from16 v16, p3

    #@7e
    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJ)V

    #@81
    .line 487
    add-int/lit8 v2, v2, -0x1

    #@83
    goto :goto_0

    #@84
    .line 467
    .end local v2    # "ip":I
    :cond_2
    return-void
.end method

.method public aggregatePss(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 30
    .param p1, "data"    # Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    .param p2, "now"    # J

    #@0
    .prologue
    .line 660
    new-instance v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    #@2
    invoke-direct {v11}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    #@5
    .line 661
    .local v11, "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    new-instance v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    #@7
    invoke-direct {v7}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    #@a
    .line 662
    .local v7, "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    new-instance v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    #@c
    invoke-direct {v8}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    #@f
    .line 663
    .local v8, "cachedPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    const/4 v12, 0x0

    #@10
    .line 664
    .local v12, "havePss":Z
    const/4 v13, 0x0

    #@11
    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@13
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@15
    move-object/from16 v23, v0

    #@17
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    #@1a
    move-result v23

    #@1b
    move/from16 v0, v23

    #@1d
    if-ge v13, v0, :cond_3

    #@1f
    .line 665
    move-object/from16 v0, p0

    #@21
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@23
    move-object/from16 v23, v0

    #@25
    move-object/from16 v0, v23

    #@27
    invoke-virtual {v0, v13}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    #@2a
    move-result v14

    #@2b
    .line 666
    .local v14, "key":I
    invoke-static {v14}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    #@2e
    move-result v22

    #@2f
    .line 667
    .local v22, "type":I
    rem-int/lit8 v15, v22, 0xe

    #@31
    .line 668
    .local v15, "procState":I
    move-object/from16 v0, p0

    #@33
    move/from16 v1, v22

    #@35
    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    #@38
    move-result-wide v18

    #@39
    .line 669
    .local v18, "samples":J
    const-wide/16 v24, 0x0

    #@3b
    cmp-long v23, v18, v24

    #@3d
    if-lez v23, :cond_0

    #@3f
    .line 670
    move-object/from16 v0, p0

    #@41
    move/from16 v1, v22

    #@43
    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    #@46
    move-result-wide v4

    #@47
    .line 671
    .local v4, "avg":J
    const/4 v12, 0x1

    #@48
    .line 672
    const/16 v23, 0x2

    #@4a
    move/from16 v0, v23

    #@4c
    if-gt v15, v0, :cond_1

    #@4e
    .line 673
    move-wide/from16 v0, v18

    #@50
    invoke-virtual {v11, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    #@53
    .line 664
    .end local v4    # "avg":J
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    #@55
    goto :goto_0

    #@56
    .line 674
    .restart local v4    # "avg":J
    :cond_1
    const/16 v23, 0x8

    #@58
    move/from16 v0, v23

    #@5a
    if-gt v15, v0, :cond_2

    #@5c
    .line 675
    move-wide/from16 v0, v18

    #@5e
    invoke-virtual {v7, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    #@61
    goto :goto_1

    #@62
    .line 677
    :cond_2
    move-wide/from16 v0, v18

    #@64
    invoke-virtual {v8, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    #@67
    goto :goto_1

    #@68
    .line 681
    .end local v4    # "avg":J
    .end local v14    # "key":I
    .end local v15    # "procState":I
    .end local v18    # "samples":J
    .end local v22    # "type":I
    :cond_3
    if-nez v12, :cond_4

    #@6a
    .line 682
    return-void

    #@6b
    .line 684
    :cond_4
    const/4 v9, 0x0

    #@6c
    .line 685
    .local v9, "fgHasBg":Z
    const/4 v10, 0x0

    #@6d
    .line 686
    .local v10, "fgHasCached":Z
    const/4 v6, 0x0

    #@6e
    .line 687
    .local v6, "bgHasCached":Z
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@70
    move-wide/from16 v24, v0

    #@72
    const-wide/16 v26, 0x3

    #@74
    cmp-long v23, v24, v26

    #@76
    if-gez v23, :cond_5

    #@78
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@7a
    move-wide/from16 v24, v0

    #@7c
    const-wide/16 v26, 0x0

    #@7e
    cmp-long v23, v24, v26

    #@80
    if-lez v23, :cond_5

    #@82
    .line 688
    const/4 v9, 0x1

    #@83
    .line 689
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    #@85
    move-wide/from16 v24, v0

    #@87
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@89
    move-wide/from16 v26, v0

    #@8b
    move-wide/from16 v0, v24

    #@8d
    move-wide/from16 v2, v26

    #@8f
    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    #@92
    .line 691
    :cond_5
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@94
    move-wide/from16 v24, v0

    #@96
    const-wide/16 v26, 0x3

    #@98
    cmp-long v23, v24, v26

    #@9a
    if-gez v23, :cond_6

    #@9c
    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@9e
    move-wide/from16 v24, v0

    #@a0
    const-wide/16 v26, 0x0

    #@a2
    cmp-long v23, v24, v26

    #@a4
    if-lez v23, :cond_6

    #@a6
    .line 692
    const/4 v10, 0x1

    #@a7
    .line 693
    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    #@a9
    move-wide/from16 v24, v0

    #@ab
    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@ad
    move-wide/from16 v26, v0

    #@af
    move-wide/from16 v0, v24

    #@b1
    move-wide/from16 v2, v26

    #@b3
    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    #@b6
    .line 695
    :cond_6
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@b8
    move-wide/from16 v24, v0

    #@ba
    const-wide/16 v26, 0x3

    #@bc
    cmp-long v23, v24, v26

    #@be
    if-gez v23, :cond_7

    #@c0
    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@c2
    move-wide/from16 v24, v0

    #@c4
    const-wide/16 v26, 0x0

    #@c6
    cmp-long v23, v24, v26

    #@c8
    if-lez v23, :cond_7

    #@ca
    .line 696
    const/4 v6, 0x1

    #@cb
    .line 697
    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    #@cd
    move-wide/from16 v24, v0

    #@cf
    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@d1
    move-wide/from16 v26, v0

    #@d3
    move-wide/from16 v0, v24

    #@d5
    move-wide/from16 v2, v26

    #@d7
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    #@da
    .line 699
    :cond_7
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@dc
    move-wide/from16 v24, v0

    #@de
    const-wide/16 v26, 0x3

    #@e0
    cmp-long v23, v24, v26

    #@e2
    if-gez v23, :cond_8

    #@e4
    if-eqz v9, :cond_c

    #@e6
    .line 702
    :cond_8
    :goto_2
    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@e8
    move-wide/from16 v24, v0

    #@ea
    const-wide/16 v26, 0x3

    #@ec
    cmp-long v23, v24, v26

    #@ee
    if-gez v23, :cond_9

    #@f0
    if-eqz v6, :cond_d

    #@f2
    .line 705
    :cond_9
    :goto_3
    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@f4
    move-wide/from16 v24, v0

    #@f6
    const-wide/16 v26, 0x3

    #@f8
    cmp-long v23, v24, v26

    #@fa
    if-gez v23, :cond_a

    #@fc
    if-eqz v10, :cond_e

    #@fe
    .line 708
    :cond_a
    :goto_4
    const/4 v13, 0x0

    #@ff
    :goto_5
    move-object/from16 v0, p0

    #@101
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@103
    move-object/from16 v23, v0

    #@105
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    #@108
    move-result v23

    #@109
    move/from16 v0, v23

    #@10b
    if-ge v13, v0, :cond_12

    #@10d
    .line 709
    move-object/from16 v0, p0

    #@10f
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@111
    move-object/from16 v23, v0

    #@113
    move-object/from16 v0, v23

    #@115
    invoke-virtual {v0, v13}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    #@118
    move-result v14

    #@119
    .line 710
    .restart local v14    # "key":I
    invoke-static {v14}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    #@11c
    move-result v22

    #@11d
    .line 711
    .restart local v22    # "type":I
    move-object/from16 v0, p0

    #@11f
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@121
    move-object/from16 v23, v0

    #@123
    move-object/from16 v0, v23

    #@125
    invoke-virtual {v0, v14}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    #@128
    move-result-wide v20

    #@129
    .line 712
    .local v20, "time":J
    move-object/from16 v0, p0

    #@12b
    iget v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    #@12d
    move/from16 v23, v0

    #@12f
    move/from16 v0, v23

    #@131
    move/from16 v1, v22

    #@133
    if-ne v0, v1, :cond_b

    #@135
    .line 713
    move-object/from16 v0, p0

    #@137
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    #@139
    move-wide/from16 v24, v0

    #@13b
    sub-long v24, p2, v24

    #@13d
    add-long v20, v20, v24

    #@13f
    .line 715
    :cond_b
    rem-int/lit8 v15, v22, 0xe

    #@141
    .line 716
    .restart local v15    # "procState":I
    move-object/from16 v0, p1

    #@143
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    #@145
    move-object/from16 v23, v0

    #@147
    aget-wide v24, v23, v15

    #@149
    add-long v24, v24, v20

    #@14b
    aput-wide v24, v23, v15

    #@14d
    .line 717
    move-object/from16 v0, p0

    #@14f
    move/from16 v1, v22

    #@151
    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    #@154
    move-result-wide v18

    #@155
    .line 719
    .restart local v18    # "samples":J
    const-wide/16 v24, 0x0

    #@157
    cmp-long v23, v18, v24

    #@159
    if-lez v23, :cond_f

    #@15b
    .line 720
    move-object/from16 v0, p0

    #@15d
    move/from16 v1, v22

    #@15f
    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    #@162
    move-result-wide v4

    #@163
    .line 731
    .restart local v4    # "avg":J
    :goto_6
    move-object/from16 v0, p1

    #@165
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    #@167
    move-object/from16 v23, v0

    #@169
    aget-wide v24, v23, v15

    #@16b
    move-wide/from16 v0, v24

    #@16d
    long-to-double v0, v0

    #@16e
    move-wide/from16 v24, v0

    #@170
    .line 732
    move-object/from16 v0, p1

    #@172
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    #@174
    move-object/from16 v23, v0

    #@176
    aget v23, v23, v15

    #@178
    move/from16 v0, v23

    #@17a
    int-to-double v0, v0

    #@17b
    move-wide/from16 v26, v0

    #@17d
    .line 731
    mul-double v24, v24, v26

    #@17f
    .line 733
    long-to-double v0, v4

    #@180
    move-wide/from16 v26, v0

    #@182
    move-wide/from16 v0, v18

    #@184
    long-to-double v0, v0

    #@185
    move-wide/from16 v28, v0

    #@187
    mul-double v26, v26, v28

    #@189
    .line 731
    add-double v24, v24, v26

    #@18b
    .line 734
    move-object/from16 v0, p1

    #@18d
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    #@18f
    move-object/from16 v23, v0

    #@191
    aget v23, v23, v15

    #@193
    move/from16 v0, v23

    #@195
    int-to-long v0, v0

    #@196
    move-wide/from16 v26, v0

    #@198
    add-long v26, v26, v18

    #@19a
    move-wide/from16 v0, v26

    #@19c
    long-to-double v0, v0

    #@19d
    move-wide/from16 v26, v0

    #@19f
    .line 731
    div-double v16, v24, v26

    #@1a1
    .line 735
    .local v16, "newAvg":D
    move-object/from16 v0, p1

    #@1a3
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    #@1a5
    move-object/from16 v23, v0

    #@1a7
    move-wide/from16 v0, v16

    #@1a9
    double-to-long v0, v0

    #@1aa
    move-wide/from16 v24, v0

    #@1ac
    aput-wide v24, v23, v15

    #@1ae
    .line 736
    move-object/from16 v0, p1

    #@1b0
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    #@1b2
    move-object/from16 v23, v0

    #@1b4
    aget v24, v23, v15

    #@1b6
    move/from16 v0, v24

    #@1b8
    int-to-long v0, v0

    #@1b9
    move-wide/from16 v24, v0

    #@1bb
    add-long v24, v24, v18

    #@1bd
    move-wide/from16 v0, v24

    #@1bf
    long-to-int v0, v0

    #@1c0
    move/from16 v24, v0

    #@1c2
    aput v24, v23, v15

    #@1c4
    .line 737
    move-object/from16 v0, p1

    #@1c6
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    #@1c8
    move-object/from16 v23, v0

    #@1ca
    aget-wide v24, v23, v15

    #@1cc
    long-to-double v0, v4

    #@1cd
    move-wide/from16 v26, v0

    #@1cf
    move-wide/from16 v0, v20

    #@1d1
    long-to-double v0, v0

    #@1d2
    move-wide/from16 v28, v0

    #@1d4
    mul-double v26, v26, v28

    #@1d6
    add-double v24, v24, v26

    #@1d8
    aput-wide v24, v23, v15

    #@1da
    .line 708
    add-int/lit8 v13, v13, 0x1

    #@1dc
    goto/16 :goto_5

    #@1de
    .line 699
    .end local v4    # "avg":J
    .end local v14    # "key":I
    .end local v15    # "procState":I
    .end local v16    # "newAvg":D
    .end local v18    # "samples":J
    .end local v20    # "time":J
    .end local v22    # "type":I
    :cond_c
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@1e0
    move-wide/from16 v24, v0

    #@1e2
    const-wide/16 v26, 0x0

    #@1e4
    cmp-long v23, v24, v26

    #@1e6
    if-lez v23, :cond_8

    #@1e8
    .line 700
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    #@1ea
    move-wide/from16 v24, v0

    #@1ec
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@1ee
    move-wide/from16 v26, v0

    #@1f0
    move-wide/from16 v0, v24

    #@1f2
    move-wide/from16 v2, v26

    #@1f4
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    #@1f7
    goto/16 :goto_2

    #@1f9
    .line 702
    :cond_d
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@1fb
    move-wide/from16 v24, v0

    #@1fd
    const-wide/16 v26, 0x0

    #@1ff
    cmp-long v23, v24, v26

    #@201
    if-lez v23, :cond_9

    #@203
    .line 703
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    #@205
    move-wide/from16 v24, v0

    #@207
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@209
    move-wide/from16 v26, v0

    #@20b
    move-wide/from16 v0, v24

    #@20d
    move-wide/from16 v2, v26

    #@20f
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    #@212
    goto/16 :goto_3

    #@214
    .line 705
    :cond_e
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@216
    move-wide/from16 v24, v0

    #@218
    const-wide/16 v26, 0x0

    #@21a
    cmp-long v23, v24, v26

    #@21c
    if-lez v23, :cond_a

    #@21e
    .line 706
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    #@220
    move-wide/from16 v24, v0

    #@222
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@224
    move-wide/from16 v26, v0

    #@226
    move-wide/from16 v0, v24

    #@228
    move-wide/from16 v2, v26

    #@22a
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    #@22d
    goto/16 :goto_4

    #@22f
    .line 721
    .restart local v14    # "key":I
    .restart local v15    # "procState":I
    .restart local v18    # "samples":J
    .restart local v20    # "time":J
    .restart local v22    # "type":I
    :cond_f
    const/16 v23, 0x2

    #@231
    move/from16 v0, v23

    #@233
    if-gt v15, v0, :cond_10

    #@235
    .line 722
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@237
    move-wide/from16 v18, v0

    #@239
    .line 723
    iget-wide v4, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    #@23b
    .restart local v4    # "avg":J
    goto/16 :goto_6

    #@23d
    .line 724
    .end local v4    # "avg":J
    :cond_10
    const/16 v23, 0x8

    #@23f
    move/from16 v0, v23

    #@241
    if-gt v15, v0, :cond_11

    #@243
    .line 725
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@245
    move-wide/from16 v18, v0

    #@247
    .line 726
    iget-wide v4, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    #@249
    .restart local v4    # "avg":J
    goto/16 :goto_6

    #@24b
    .line 728
    .end local v4    # "avg":J
    :cond_11
    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@24d
    move-wide/from16 v18, v0

    #@24f
    .line 729
    iget-wide v4, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    #@251
    .restart local v4    # "avg":J
    goto/16 :goto_6

    #@253
    .line 659
    .end local v4    # "avg":J
    .end local v14    # "key":I
    .end local v15    # "procState":I
    .end local v18    # "samples":J
    .end local v20    # "time":J
    .end local v22    # "type":I
    :cond_12
    return-void
.end method

.method public clone(J)Lcom/android/internal/app/procstats/ProcessState;
    .locals 9
    .param p1, "now"    # J

    #@0
    .prologue
    .line 195
    new-instance v0, Lcom/android/internal/app/procstats/ProcessState;

    #@2
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    #@4
    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    #@6
    iget v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    #@8
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    #@a
    move-object v1, p0

    #@b
    move-wide v6, p1

    #@c
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    #@f
    .line 196
    .local v0, "pnew":Lcom/android/internal/app/procstats/ProcessState;
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@11
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@13
    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    #@16
    .line 197
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@18
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@1a
    const/4 v3, 0x7

    #@1b
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/procstats/PssTable;->copyFrom(Lcom/android/internal/app/procstats/SparseMappingTable$Table;I)V

    #@1e
    .line 198
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    #@20
    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    #@22
    .line 199
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    #@24
    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    #@26
    .line 200
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    #@28
    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    #@2a
    .line 201
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    #@2c
    iput-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    #@2e
    .line 202
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    #@30
    iput-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    #@32
    .line 203
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    #@34
    iput-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    #@36
    .line 204
    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    #@38
    iput-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    #@3a
    .line 205
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    #@3c
    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    #@3e
    .line 206
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    #@40
    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    #@42
    .line 207
    return-object v0
.end method

.method public commitStateTime(J)V
    .locals 5
    .param p1, "now"    # J

    #@0
    .prologue
    .line 390
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    #@2
    const/4 v3, -0x1

    #@3
    if-eq v2, v3, :cond_0

    #@5
    .line 391
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    #@7
    sub-long v0, p1, v2

    #@9
    .line 392
    .local v0, "dur":J
    const-wide/16 v2, 0x0

    #@b
    cmp-long v2, v0, v2

    #@d
    if-lez v2, :cond_0

    #@f
    .line 393
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@11
    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    #@13
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    #@16
    .line 396
    .end local v0    # "dur":J
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    #@18
    .line 389
    return-void
.end method

.method public computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V
    .locals 28
    .param p1, "data"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    .param p2, "now"    # J

    #@0
    .prologue
    .line 966
    const-wide/16 v22, 0x0

    #@2
    move-wide/from16 v0, v22

    #@4
    move-object/from16 v2, p1

    #@6
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    #@8
    .line 968
    const-wide/16 v22, 0x0

    #@a
    move-wide/from16 v0, v22

    #@c
    move-object/from16 v2, p1

    #@e
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    #@10
    const-wide/16 v22, 0x0

    #@12
    move-wide/from16 v0, v22

    #@14
    move-object/from16 v2, p1

    #@16
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    #@18
    const-wide/16 v22, 0x0

    #@1a
    move-wide/from16 v0, v22

    #@1c
    move-object/from16 v2, p1

    #@1e
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    #@20
    .line 967
    const-wide/16 v22, 0x0

    #@22
    move-wide/from16 v0, v22

    #@24
    move-object/from16 v2, p1

    #@26
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    #@28
    const-wide/16 v22, 0x0

    #@2a
    move-wide/from16 v0, v22

    #@2c
    move-object/from16 v2, p1

    #@2e
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    #@30
    const-wide/16 v22, 0x0

    #@32
    move-wide/from16 v0, v22

    #@34
    move-object/from16 v2, p1

    #@36
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    #@38
    const-wide/16 v22, 0x0

    #@3a
    move-wide/from16 v0, v22

    #@3c
    move-object/from16 v2, p1

    #@3e
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    #@40
    .line 969
    const/4 v11, 0x0

    #@41
    .local v11, "is":I
    :goto_0
    move-object/from16 v0, p1

    #@43
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    #@45
    move-object/from16 v22, v0

    #@47
    move-object/from16 v0, v22

    #@49
    array-length v0, v0

    #@4a
    move/from16 v22, v0

    #@4c
    move/from16 v0, v22

    #@4e
    if-ge v11, v0, :cond_8

    #@50
    .line 970
    const/4 v9, 0x0

    #@51
    .local v9, "im":I
    :goto_1
    move-object/from16 v0, p1

    #@53
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    #@55
    move-object/from16 v22, v0

    #@57
    move-object/from16 v0, v22

    #@59
    array-length v0, v0

    #@5a
    move/from16 v22, v0

    #@5c
    move/from16 v0, v22

    #@5e
    if-ge v9, v0, :cond_7

    #@60
    .line 971
    const/4 v10, 0x0

    #@61
    .local v10, "ip":I
    :goto_2
    move-object/from16 v0, p1

    #@63
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    #@65
    move-object/from16 v22, v0

    #@67
    move-object/from16 v0, v22

    #@69
    array-length v0, v0

    #@6a
    move/from16 v22, v0

    #@6c
    move/from16 v0, v22

    #@6e
    if-ge v10, v0, :cond_6

    #@70
    .line 972
    move-object/from16 v0, p1

    #@72
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    #@74
    move-object/from16 v22, v0

    #@76
    aget v22, v22, v11

    #@78
    move-object/from16 v0, p1

    #@7a
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    #@7c
    move-object/from16 v23, v0

    #@7e
    aget v23, v23, v9

    #@80
    add-int v22, v22, v23

    #@82
    mul-int/lit8 v22, v22, 0xe

    #@84
    .line 973
    move-object/from16 v0, p1

    #@86
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    #@88
    move-object/from16 v23, v0

    #@8a
    aget v23, v23, v10

    #@8c
    .line 972
    add-int v8, v22, v23

    #@8e
    .line 974
    .local v8, "bucket":I
    move-object/from16 v0, p1

    #@90
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    #@92
    move-wide/from16 v22, v0

    #@94
    move-object/from16 v0, p0

    #@96
    move-wide/from16 v1, p2

    #@98
    invoke-virtual {v0, v8, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    #@9b
    move-result-wide v24

    #@9c
    add-long v22, v22, v24

    #@9e
    move-wide/from16 v0, v22

    #@a0
    move-object/from16 v2, p1

    #@a2
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    #@a4
    .line 975
    move-object/from16 v0, p0

    #@a6
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    #@a9
    move-result-wide v20

    #@aa
    .line 976
    .local v20, "samples":J
    const-wide/16 v22, 0x0

    #@ac
    cmp-long v22, v20, v22

    #@ae
    if-lez v22, :cond_1

    #@b0
    .line 977
    move-object/from16 v0, p0

    #@b2
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    #@b5
    move-result-wide v16

    #@b6
    .line 978
    .local v16, "minPss":J
    move-object/from16 v0, p0

    #@b8
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    #@bb
    move-result-wide v4

    #@bc
    .line 979
    .local v4, "avgPss":J
    move-object/from16 v0, p0

    #@be
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    #@c1
    move-result-wide v12

    #@c2
    .line 980
    .local v12, "maxPss":J
    move-object/from16 v0, p0

    #@c4
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    #@c7
    move-result-wide v18

    #@c8
    .line 981
    .local v18, "minUss":J
    move-object/from16 v0, p0

    #@ca
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    #@cd
    move-result-wide v6

    #@ce
    .line 982
    .local v6, "avgUss":J
    move-object/from16 v0, p0

    #@d0
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    #@d3
    move-result-wide v14

    #@d4
    .line 983
    .local v14, "maxUss":J
    move-object/from16 v0, p1

    #@d6
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    #@d8
    move-wide/from16 v22, v0

    #@da
    const-wide/16 v24, 0x0

    #@dc
    cmp-long v22, v22, v24

    #@de
    if-nez v22, :cond_2

    #@e0
    .line 984
    move-wide/from16 v0, v16

    #@e2
    move-object/from16 v2, p1

    #@e4
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    #@e6
    .line 985
    move-object/from16 v0, p1

    #@e8
    iput-wide v4, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    #@ea
    .line 986
    move-object/from16 v0, p1

    #@ec
    iput-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    #@ee
    .line 987
    move-wide/from16 v0, v18

    #@f0
    move-object/from16 v2, p1

    #@f2
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    #@f4
    .line 988
    move-object/from16 v0, p1

    #@f6
    iput-wide v6, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    #@f8
    .line 989
    move-object/from16 v0, p1

    #@fa
    iput-wide v14, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    #@fc
    .line 1008
    :cond_0
    :goto_3
    move-object/from16 v0, p1

    #@fe
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    #@100
    move-wide/from16 v22, v0

    #@102
    add-long v22, v22, v20

    #@104
    move-wide/from16 v0, v22

    #@106
    move-object/from16 v2, p1

    #@108
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    #@10a
    .line 971
    .end local v4    # "avgPss":J
    .end local v6    # "avgUss":J
    .end local v12    # "maxPss":J
    .end local v14    # "maxUss":J
    .end local v16    # "minPss":J
    .end local v18    # "minUss":J
    :cond_1
    add-int/lit8 v10, v10, 0x1

    #@10c
    goto/16 :goto_2

    #@10e
    .line 991
    .restart local v4    # "avgPss":J
    .restart local v6    # "avgUss":J
    .restart local v12    # "maxPss":J
    .restart local v14    # "maxUss":J
    .restart local v16    # "minPss":J
    .restart local v18    # "minUss":J
    :cond_2
    move-object/from16 v0, p1

    #@110
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    #@112
    move-wide/from16 v22, v0

    #@114
    cmp-long v22, v16, v22

    #@116
    if-gez v22, :cond_3

    #@118
    .line 992
    move-wide/from16 v0, v16

    #@11a
    move-object/from16 v2, p1

    #@11c
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    #@11e
    .line 994
    :cond_3
    move-object/from16 v0, p1

    #@120
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    #@122
    move-wide/from16 v22, v0

    #@124
    move-wide/from16 v0, v22

    #@126
    long-to-double v0, v0

    #@127
    move-wide/from16 v22, v0

    #@129
    move-object/from16 v0, p1

    #@12b
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    #@12d
    move-wide/from16 v24, v0

    #@12f
    move-wide/from16 v0, v24

    #@131
    long-to-double v0, v0

    #@132
    move-wide/from16 v24, v0

    #@134
    mul-double v22, v22, v24

    #@136
    .line 995
    long-to-double v0, v4

    #@137
    move-wide/from16 v24, v0

    #@139
    move-wide/from16 v0, v20

    #@13b
    long-to-double v0, v0

    #@13c
    move-wide/from16 v26, v0

    #@13e
    mul-double v24, v24, v26

    #@140
    .line 994
    add-double v22, v22, v24

    #@142
    .line 995
    move-object/from16 v0, p1

    #@144
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    #@146
    move-wide/from16 v24, v0

    #@148
    add-long v24, v24, v20

    #@14a
    move-wide/from16 v0, v24

    #@14c
    long-to-double v0, v0

    #@14d
    move-wide/from16 v24, v0

    #@14f
    .line 994
    div-double v22, v22, v24

    #@151
    move-wide/from16 v0, v22

    #@153
    double-to-long v0, v0

    #@154
    move-wide/from16 v22, v0

    #@156
    move-wide/from16 v0, v22

    #@158
    move-object/from16 v2, p1

    #@15a
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    #@15c
    .line 996
    move-object/from16 v0, p1

    #@15e
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    #@160
    move-wide/from16 v22, v0

    #@162
    cmp-long v22, v12, v22

    #@164
    if-lez v22, :cond_4

    #@166
    .line 997
    move-object/from16 v0, p1

    #@168
    iput-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    #@16a
    .line 999
    :cond_4
    move-object/from16 v0, p1

    #@16c
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    #@16e
    move-wide/from16 v22, v0

    #@170
    cmp-long v22, v18, v22

    #@172
    if-gez v22, :cond_5

    #@174
    .line 1000
    move-wide/from16 v0, v18

    #@176
    move-object/from16 v2, p1

    #@178
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    #@17a
    .line 1002
    :cond_5
    move-object/from16 v0, p1

    #@17c
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    #@17e
    move-wide/from16 v22, v0

    #@180
    move-wide/from16 v0, v22

    #@182
    long-to-double v0, v0

    #@183
    move-wide/from16 v22, v0

    #@185
    move-object/from16 v0, p1

    #@187
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    #@189
    move-wide/from16 v24, v0

    #@18b
    move-wide/from16 v0, v24

    #@18d
    long-to-double v0, v0

    #@18e
    move-wide/from16 v24, v0

    #@190
    mul-double v22, v22, v24

    #@192
    .line 1003
    long-to-double v0, v6

    #@193
    move-wide/from16 v24, v0

    #@195
    move-wide/from16 v0, v20

    #@197
    long-to-double v0, v0

    #@198
    move-wide/from16 v26, v0

    #@19a
    mul-double v24, v24, v26

    #@19c
    .line 1002
    add-double v22, v22, v24

    #@19e
    .line 1003
    move-object/from16 v0, p1

    #@1a0
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    #@1a2
    move-wide/from16 v24, v0

    #@1a4
    add-long v24, v24, v20

    #@1a6
    move-wide/from16 v0, v24

    #@1a8
    long-to-double v0, v0

    #@1a9
    move-wide/from16 v24, v0

    #@1ab
    .line 1002
    div-double v22, v22, v24

    #@1ad
    move-wide/from16 v0, v22

    #@1af
    double-to-long v0, v0

    #@1b0
    move-wide/from16 v22, v0

    #@1b2
    move-wide/from16 v0, v22

    #@1b4
    move-object/from16 v2, p1

    #@1b6
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    #@1b8
    .line 1004
    move-object/from16 v0, p1

    #@1ba
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    #@1bc
    move-wide/from16 v22, v0

    #@1be
    cmp-long v22, v14, v22

    #@1c0
    if-lez v22, :cond_0

    #@1c2
    .line 1005
    move-object/from16 v0, p1

    #@1c4
    iput-wide v14, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    #@1c6
    goto/16 :goto_3

    #@1c8
    .line 970
    .end local v4    # "avgPss":J
    .end local v6    # "avgUss":J
    .end local v8    # "bucket":I
    .end local v12    # "maxPss":J
    .end local v14    # "maxUss":J
    .end local v16    # "minPss":J
    .end local v18    # "minUss":J
    .end local v20    # "samples":J
    :cond_6
    add-int/lit8 v9, v9, 0x1

    #@1ca
    goto/16 :goto_1

    #@1cc
    .line 969
    .end local v10    # "ip":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    #@1ce
    goto/16 :goto_0

    #@1d0
    .line 965
    .end local v9    # "im":I
    :cond_8
    return-void
.end method

.method public computeProcessTimeLocked([I[I[IJ)J
    .locals 8
    .param p1, "screenStates"    # [I
    .param p2, "memStates"    # [I
    .param p3, "procStates"    # [I
    .param p4, "now"    # J

    #@0
    .prologue
    .line 743
    const-wide/16 v4, 0x0

    #@2
    .line 744
    .local v4, "totalTime":J
    const/4 v3, 0x0

    #@3
    .local v3, "is":I
    :goto_0
    array-length v6, p1

    #@4
    if-ge v3, v6, :cond_2

    #@6
    .line 745
    const/4 v1, 0x0

    #@7
    .local v1, "im":I
    :goto_1
    array-length v6, p2

    #@8
    if-ge v1, v6, :cond_1

    #@a
    .line 746
    const/4 v2, 0x0

    #@b
    .local v2, "ip":I
    :goto_2
    array-length v6, p3

    #@c
    if-ge v2, v6, :cond_0

    #@e
    .line 747
    aget v6, p1, v3

    #@10
    aget v7, p2, v1

    #@12
    add-int/2addr v6, v7

    #@13
    mul-int/lit8 v6, v6, 0xe

    #@15
    .line 748
    aget v7, p3, v2

    #@17
    .line 747
    add-int v0, v6, v7

    #@19
    .line 749
    .local v0, "bucket":I
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    #@1c
    move-result-wide v6

    #@1d
    add-long/2addr v4, v6

    #@1e
    .line 746
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_2

    #@21
    .line 745
    .end local v0    # "bucket":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_1

    #@24
    .line 744
    .end local v2    # "ip":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@26
    goto :goto_0

    #@27
    .line 753
    .end local v1    # "im":I
    :cond_2
    iput-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    #@29
    .line 754
    return-wide v4
.end method

.method public decActiveServices(Ljava/lang/String;)V
    .locals 4
    .param p1, "serviceName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 419
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@3
    if-eq v0, p0, :cond_0

    #@5
    .line 420
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@7
    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->decActiveServices(Ljava/lang/String;)V

    #@a
    .line 422
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    #@c
    add-int/lit8 v0, v0, -0x1

    #@e
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    #@10
    .line 423
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    #@12
    if-gez v0, :cond_1

    #@14
    .line 424
    const-string/jumbo v0, "ProcessStats"

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "Proc active services underrun: pkg="

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 425
    const-string/jumbo v2, " uid="

    #@2c
    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 425
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    #@32
    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    .line 425
    const-string/jumbo v2, " proc="

    #@39
    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 425
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    #@3f
    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    .line 425
    const-string/jumbo v2, " service="

    #@46
    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 426
    iput v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    #@57
    .line 412
    :cond_1
    return-void
.end method

.method public decStartedServices(IJLjava/lang/String;)V
    .locals 4
    .param p1, "memFactor"    # I
    .param p2, "now"    # J
    .param p4, "serviceName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 453
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@3
    if-eq v0, p0, :cond_0

    #@5
    .line 454
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@7
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->decStartedServices(IJLjava/lang/String;)V

    #@a
    .line 456
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    #@c
    add-int/lit8 v0, v0, -0x1

    #@e
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    #@10
    .line 457
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    #@12
    if-nez v0, :cond_2

    #@14
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    #@16
    rem-int/lit8 v0, v0, 0xe

    #@18
    const/4 v1, 0x7

    #@19
    if-ne v0, v1, :cond_2

    #@1b
    .line 458
    const/4 v0, -0x1

    #@1c
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    #@1f
    .line 446
    :cond_1
    :goto_0
    return-void

    #@20
    .line 459
    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    #@22
    if-gez v0, :cond_1

    #@24
    .line 460
    const-string/jumbo v0, "ProcessStats"

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, "Proc started services underrun: pkg="

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 461
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    #@35
    .line 460
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    .line 461
    const-string/jumbo v2, " uid="

    #@3c
    .line 460
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    .line 461
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    #@42
    .line 460
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    .line 461
    const-string/jumbo v2, " name="

    #@49
    .line 460
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    .line 461
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    #@4f
    .line 460
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 462
    iput v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    #@5c
    goto :goto_0
.end method

.method public dumpAllPssCheckin(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    const/16 v6, 0x3a

    #@2
    .line 1155
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@4
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    #@7
    move-result v0

    #@8
    .line 1156
    .local v0, "N":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@b
    .line 1157
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@d
    invoke-virtual {v4, v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    #@10
    move-result v2

    #@11
    .line 1158
    .local v2, "key":I
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    #@14
    move-result v3

    #@15
    .line 1159
    .local v3, "type":I
    const/16 v4, 0x2c

    #@17
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    #@1a
    .line 1160
    invoke-static {p1, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    #@1d
    .line 1161
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    #@20
    .line 1162
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@22
    const/4 v5, 0x0

    #@23
    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    #@26
    move-result-wide v4

    #@27
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@2a
    .line 1163
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    #@2d
    .line 1164
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@2f
    const/4 v5, 0x1

    #@30
    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    #@33
    move-result-wide v4

    #@34
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@37
    .line 1165
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    #@3a
    .line 1166
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@3c
    const/4 v5, 0x2

    #@3d
    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    #@40
    move-result-wide v4

    #@41
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@44
    .line 1167
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    #@47
    .line 1168
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@49
    const/4 v5, 0x3

    #@4a
    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    #@4d
    move-result-wide v4

    #@4e
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@51
    .line 1169
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    #@54
    .line 1170
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@56
    const/4 v5, 0x4

    #@57
    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    #@5a
    move-result-wide v4

    #@5b
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@5e
    .line 1171
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    #@61
    .line 1172
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@63
    const/4 v5, 0x5

    #@64
    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    #@67
    move-result-wide v4

    #@68
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@6b
    .line 1173
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    #@6e
    .line 1174
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@70
    const/4 v5, 0x6

    #@71
    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    #@74
    move-result-wide v4

    #@75
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@78
    .line 1156
    add-int/lit8 v1, v1, 0x1

    #@7a
    goto :goto_0

    #@7b
    .line 1154
    .end local v2    # "key":I
    .end local v3    # "type":I
    :cond_0
    return-void
.end method

.method public dumpAllStateCheckin(Ljava/io/PrintWriter;J)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "now"    # J

    #@0
    .prologue
    .line 1138
    const/4 v0, 0x0

    #@1
    .line 1139
    .local v0, "didCurState":Z
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@4
    invoke-virtual {v6}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    #@7
    move-result v6

    #@8
    if-ge v1, v6, :cond_1

    #@a
    .line 1140
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@c
    invoke-virtual {v6, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    #@f
    move-result v2

    #@10
    .line 1141
    .local v2, "key":I
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    #@13
    move-result v3

    #@14
    .line 1142
    .local v3, "type":I
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@16
    invoke-virtual {v6, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    #@19
    move-result-wide v4

    #@1a
    .line 1143
    .local v4, "time":J
    iget v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    #@1c
    if-ne v6, v3, :cond_0

    #@1e
    .line 1144
    const/4 v0, 0x1

    #@1f
    .line 1145
    iget-wide v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    #@21
    sub-long v6, p2, v6

    #@23
    add-long/2addr v4, v6

    #@24
    .line 1147
    :cond_0
    invoke-static {p1, v3, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    #@27
    .line 1139
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 1149
    .end local v2    # "key":I
    .end local v3    # "type":I
    .end local v4    # "time":J
    :cond_1
    if-nez v0, :cond_2

    #@2c
    iget v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    #@2e
    const/4 v7, -0x1

    #@2f
    if-eq v6, v7, :cond_2

    #@31
    .line 1150
    iget v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    #@33
    iget-wide v8, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    #@35
    sub-long v8, p2, v8

    #@37
    invoke-static {p1, v6, v8, v9}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    #@3a
    .line 1137
    :cond_2
    return-void
.end method

.method public dumpCsv(Ljava/io/PrintWriter;Z[IZ[IZ[IJ)V
    .locals 28
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sepScreenStates"    # Z
    .param p3, "screenStates"    # [I
    .param p4, "sepMemStates"    # Z
    .param p5, "memStates"    # [I
    .param p6, "sepProcStates"    # Z
    .param p7, "procStates"    # [I
    .param p8, "now"    # J

    #@0
    .prologue
    .line 1018
    if-eqz p2, :cond_0

    #@2
    move-object/from16 v0, p3

    #@4
    array-length v9, v0

    #@5
    .line 1019
    .local v9, "NSS":I
    :goto_0
    if-eqz p4, :cond_1

    #@7
    move-object/from16 v0, p5

    #@9
    array-length v5, v0

    #@a
    .line 1020
    .local v5, "NMS":I
    :goto_1
    if-eqz p6, :cond_2

    #@c
    move-object/from16 v0, p7

    #@e
    array-length v7, v0

    #@f
    .line 1021
    .local v7, "NPS":I
    :goto_2
    const/16 v16, 0x0

    #@11
    .local v16, "iss":I
    :goto_3
    move/from16 v0, v16

    #@13
    if-ge v0, v9, :cond_11

    #@15
    .line 1022
    const/4 v12, 0x0

    #@16
    .local v12, "ims":I
    :goto_4
    if-ge v12, v5, :cond_10

    #@18
    .line 1023
    const/4 v14, 0x0

    #@19
    .local v14, "ips":I
    :goto_5
    if-ge v14, v7, :cond_f

    #@1b
    .line 1024
    if-eqz p2, :cond_3

    #@1d
    aget v24, p3, v16

    #@1f
    .line 1025
    .local v24, "vsscreen":I
    :goto_6
    if-eqz p4, :cond_4

    #@21
    aget v22, p5, v12

    #@23
    .line 1026
    .local v22, "vsmem":I
    :goto_7
    if-eqz p6, :cond_5

    #@25
    aget v23, p7, v14

    #@27
    .line 1027
    .local v23, "vsproc":I
    :goto_8
    if-eqz p2, :cond_6

    #@29
    const/4 v8, 0x1

    #@2a
    .line 1028
    .local v8, "NSA":I
    :goto_9
    if-eqz p4, :cond_7

    #@2c
    const/4 v4, 0x1

    #@2d
    .line 1029
    .local v4, "NMA":I
    :goto_a
    if-eqz p6, :cond_8

    #@2f
    const/4 v6, 0x1

    #@30
    .line 1030
    .local v6, "NPA":I
    :goto_b
    const-wide/16 v18, 0x0

    #@32
    .line 1031
    .local v18, "totalTime":J
    const/4 v15, 0x0

    #@33
    .local v15, "isa":I
    :goto_c
    if-ge v15, v8, :cond_e

    #@35
    .line 1032
    const/4 v11, 0x0

    #@36
    .local v11, "ima":I
    :goto_d
    if-ge v11, v4, :cond_d

    #@38
    .line 1033
    const/4 v13, 0x0

    #@39
    .local v13, "ipa":I
    :goto_e
    if-ge v13, v6, :cond_c

    #@3b
    .line 1034
    if-eqz p2, :cond_9

    #@3d
    const/16 v21, 0x0

    #@3f
    .line 1035
    .local v21, "vascreen":I
    :goto_f
    if-eqz p4, :cond_a

    #@41
    const/16 v17, 0x0

    #@43
    .line 1036
    .local v17, "vamem":I
    :goto_10
    if-eqz p6, :cond_b

    #@45
    const/16 v20, 0x0

    #@47
    .line 1037
    .local v20, "vaproc":I
    :goto_11
    add-int v25, v24, v21

    #@49
    add-int v25, v25, v22

    #@4b
    add-int v25, v25, v17

    #@4d
    mul-int/lit8 v25, v25, 0xe

    #@4f
    add-int v25, v25, v23

    #@51
    add-int v10, v25, v20

    #@53
    .line 1039
    .local v10, "bucket":I
    move-object/from16 v0, p0

    #@55
    move-wide/from16 v1, p8

    #@57
    invoke-virtual {v0, v10, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    #@5a
    move-result-wide v26

    #@5b
    add-long v18, v18, v26

    #@5d
    .line 1033
    add-int/lit8 v13, v13, 0x1

    #@5f
    goto :goto_e

    #@60
    .line 1018
    .end local v4    # "NMA":I
    .end local v5    # "NMS":I
    .end local v6    # "NPA":I
    .end local v7    # "NPS":I
    .end local v8    # "NSA":I
    .end local v9    # "NSS":I
    .end local v10    # "bucket":I
    .end local v11    # "ima":I
    .end local v12    # "ims":I
    .end local v13    # "ipa":I
    .end local v14    # "ips":I
    .end local v15    # "isa":I
    .end local v16    # "iss":I
    .end local v17    # "vamem":I
    .end local v18    # "totalTime":J
    .end local v20    # "vaproc":I
    .end local v21    # "vascreen":I
    .end local v22    # "vsmem":I
    .end local v23    # "vsproc":I
    .end local v24    # "vsscreen":I
    :cond_0
    const/4 v9, 0x1

    #@61
    .restart local v9    # "NSS":I
    goto :goto_0

    #@62
    .line 1019
    :cond_1
    const/4 v5, 0x1

    #@63
    .restart local v5    # "NMS":I
    goto :goto_1

    #@64
    .line 1020
    :cond_2
    const/4 v7, 0x1

    #@65
    .restart local v7    # "NPS":I
    goto :goto_2

    #@66
    .line 1024
    .restart local v12    # "ims":I
    .restart local v14    # "ips":I
    .restart local v16    # "iss":I
    :cond_3
    const/16 v24, 0x0

    #@68
    .restart local v24    # "vsscreen":I
    goto :goto_6

    #@69
    .line 1025
    :cond_4
    const/16 v22, 0x0

    #@6b
    .restart local v22    # "vsmem":I
    goto :goto_7

    #@6c
    .line 1026
    :cond_5
    const/16 v23, 0x0

    #@6e
    .restart local v23    # "vsproc":I
    goto :goto_8

    #@6f
    .line 1027
    :cond_6
    move-object/from16 v0, p3

    #@71
    array-length v8, v0

    #@72
    .restart local v8    # "NSA":I
    goto :goto_9

    #@73
    .line 1028
    :cond_7
    move-object/from16 v0, p5

    #@75
    array-length v4, v0

    #@76
    .restart local v4    # "NMA":I
    goto :goto_a

    #@77
    .line 1029
    :cond_8
    move-object/from16 v0, p7

    #@79
    array-length v6, v0

    #@7a
    .restart local v6    # "NPA":I
    goto :goto_b

    #@7b
    .line 1034
    .restart local v11    # "ima":I
    .restart local v13    # "ipa":I
    .restart local v15    # "isa":I
    .restart local v18    # "totalTime":J
    :cond_9
    aget v21, p3, v15

    #@7d
    .restart local v21    # "vascreen":I
    goto :goto_f

    #@7e
    .line 1035
    :cond_a
    aget v17, p5, v11

    #@80
    .restart local v17    # "vamem":I
    goto :goto_10

    #@81
    .line 1036
    :cond_b
    aget v20, p7, v13

    #@83
    goto :goto_11

    #@84
    .line 1032
    .end local v17    # "vamem":I
    .end local v21    # "vascreen":I
    :cond_c
    add-int/lit8 v11, v11, 0x1

    #@86
    goto :goto_d

    #@87
    .line 1031
    .end local v13    # "ipa":I
    :cond_d
    add-int/lit8 v15, v15, 0x1

    #@89
    goto :goto_c

    #@8a
    .line 1043
    .end local v11    # "ima":I
    :cond_e
    const-string/jumbo v25, "\t"

    #@8d
    move-object/from16 v0, p1

    #@8f
    move-object/from16 v1, v25

    #@91
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@94
    .line 1044
    move-object/from16 v0, p1

    #@96
    move-wide/from16 v1, v18

    #@98
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@9b
    .line 1023
    add-int/lit8 v14, v14, 0x1

    #@9d
    goto/16 :goto_5

    #@9f
    .line 1022
    .end local v4    # "NMA":I
    .end local v6    # "NPA":I
    .end local v8    # "NSA":I
    .end local v15    # "isa":I
    .end local v18    # "totalTime":J
    .end local v22    # "vsmem":I
    .end local v23    # "vsproc":I
    .end local v24    # "vsscreen":I
    :cond_f
    add-int/lit8 v12, v12, 0x1

    #@a1
    goto/16 :goto_4

    #@a3
    .line 1021
    .end local v14    # "ips":I
    :cond_10
    add-int/lit8 v16, v16, 0x1

    #@a5
    goto/16 :goto_3

    #@a7
    .line 1017
    .end local v12    # "ims":I
    :cond_11
    return-void
.end method

.method public dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    #@0
    .prologue
    .line 937
    if-eqz p3, :cond_1

    #@2
    .line 938
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5
    const-string/jumbo v0, "myID="

    #@8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    .line 939
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@e
    move-result v0

    #@f
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16
    .line 940
    const-string/jumbo v0, " mCommonProcess="

    #@19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c
    .line 941
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@1e
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@21
    move-result v0

    #@22
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29
    .line 942
    const-string/jumbo v0, " mPackage="

    #@2c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    #@31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@34
    .line 943
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    #@36
    if-eqz v0, :cond_0

    #@38
    .line 944
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b
    const-string/jumbo v0, "mMultiPackage="

    #@3e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@41
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    #@43
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@46
    .line 946
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@48
    if-eq p0, v0, :cond_1

    #@4a
    .line 947
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    const-string/jumbo v0, "Common Proc: "

    #@50
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@55
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    #@57
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    .line 948
    const-string/jumbo v0, "/"

    #@5d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@62
    iget v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    #@64
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@67
    .line 949
    const-string/jumbo v0, " pkg="

    #@6a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6d
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@6f
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    #@71
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@74
    .line 952
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    #@76
    if-eqz v0, :cond_2

    #@78
    .line 953
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7b
    const-string/jumbo v0, "mActive="

    #@7e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@81
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    #@83
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@86
    .line 955
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    #@88
    if-eqz v0, :cond_3

    #@8a
    .line 956
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8d
    const-string/jumbo v0, "mDead="

    #@90
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@93
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    #@95
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@98
    .line 958
    :cond_3
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    #@9a
    if-nez v0, :cond_4

    #@9c
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    #@9e
    if-eqz v0, :cond_5

    #@a0
    .line 959
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a3
    const-string/jumbo v0, "mNumActiveServices="

    #@a6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a9
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    #@ab
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@ae
    .line 960
    const-string/jumbo v0, " mNumStartedServices="

    #@b1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b4
    .line 961
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    #@b6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@b9
    .line 936
    :cond_5
    return-void
.end method

.method public dumpPackageProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IILjava/lang/String;J)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # I
    .param p5, "itemName"    # Ljava/lang/String;
    .param p6, "now"    # J

    #@0
    .prologue
    .line 1052
    const-string/jumbo v0, "pkgproc,"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 1053
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 1054
    const-string/jumbo v0, ","

    #@c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    .line 1055
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    #@12
    .line 1056
    const-string/jumbo v0, ","

    #@15
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    .line 1057
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    #@1b
    .line 1058
    const-string/jumbo v0, ","

    #@1e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21
    .line 1059
    invoke-static {p2, p5}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28
    .line 1060
    invoke-virtual {p0, p1, p6, p7}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    #@2b
    .line 1061
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@2e
    .line 1062
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@30
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    #@33
    move-result v0

    #@34
    if-lez v0, :cond_0

    #@36
    .line 1063
    const-string/jumbo v0, "pkgpss,"

    #@39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    .line 1064
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f
    .line 1065
    const-string/jumbo v0, ","

    #@42
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45
    .line 1066
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    #@48
    .line 1067
    const-string/jumbo v0, ","

    #@4b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    .line 1068
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    #@51
    .line 1069
    const-string/jumbo v0, ","

    #@54
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57
    .line 1070
    invoke-static {p2, p5}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e
    .line 1071
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    #@61
    .line 1072
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@64
    .line 1074
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    #@66
    if-gtz v0, :cond_1

    #@68
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    #@6a
    if-lez v0, :cond_3

    #@6c
    .line 1075
    :cond_1
    :goto_0
    const-string/jumbo v0, "pkgkills,"

    #@6f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@72
    .line 1076
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@75
    .line 1077
    const-string/jumbo v0, ","

    #@78
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7b
    .line 1078
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    #@7e
    .line 1079
    const-string/jumbo v0, ","

    #@81
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@84
    .line 1080
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    #@87
    .line 1081
    const-string/jumbo v0, ","

    #@8a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8d
    .line 1082
    invoke-static {p2, p5}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@90
    move-result-object v0

    #@91
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@94
    .line 1083
    const-string/jumbo v0, ","

    #@97
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9a
    .line 1084
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    #@9c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@9f
    .line 1085
    const-string/jumbo v0, ","

    #@a2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a5
    .line 1086
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    #@a7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@aa
    .line 1087
    const-string/jumbo v0, ","

    #@ad
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b0
    .line 1088
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    #@b2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@b5
    .line 1089
    const-string/jumbo v0, ","

    #@b8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bb
    .line 1090
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    #@bd
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    #@c0
    .line 1091
    const-string/jumbo v0, ":"

    #@c3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c6
    .line 1092
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    #@c8
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    #@cb
    .line 1093
    const-string/jumbo v0, ":"

    #@ce
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d1
    .line 1094
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    #@d3
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    #@d6
    .line 1095
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@d9
    .line 1051
    :cond_2
    return-void

    #@da
    .line 1074
    :cond_3
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    #@dc
    if-lez v0, :cond_2

    #@de
    goto :goto_0
.end method

.method public dumpProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJ)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "procName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "now"    # J

    #@0
    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_0

    #@8
    .line 1101
    const-string/jumbo v0, "proc,"

    #@b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e
    .line 1102
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    .line 1103
    const-string/jumbo v0, ","

    #@14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    .line 1104
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    #@1a
    .line 1105
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    #@1d
    .line 1106
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@20
    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@22
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    #@25
    move-result v0

    #@26
    if-lez v0, :cond_1

    #@28
    .line 1109
    const-string/jumbo v0, "pss,"

    #@2b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e
    .line 1110
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    .line 1111
    const-string/jumbo v0, ","

    #@34
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37
    .line 1112
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    #@3a
    .line 1113
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    #@3d
    .line 1114
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@40
    .line 1116
    :cond_1
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    #@42
    if-gtz v0, :cond_2

    #@44
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    #@46
    if-lez v0, :cond_4

    #@48
    .line 1117
    :cond_2
    :goto_0
    const-string/jumbo v0, "kills,"

    #@4b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    .line 1118
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51
    .line 1119
    const-string/jumbo v0, ","

    #@54
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57
    .line 1120
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    #@5a
    .line 1121
    const-string/jumbo v0, ","

    #@5d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    .line 1122
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    #@62
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@65
    .line 1123
    const-string/jumbo v0, ","

    #@68
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6b
    .line 1124
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    #@6d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@70
    .line 1125
    const-string/jumbo v0, ","

    #@73
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@76
    .line 1126
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    #@78
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@7b
    .line 1127
    const-string/jumbo v0, ","

    #@7e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@81
    .line 1128
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    #@83
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    #@86
    .line 1129
    const-string/jumbo v0, ":"

    #@89
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8c
    .line 1130
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    #@8e
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    #@91
    .line 1131
    const-string/jumbo v0, ":"

    #@94
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@97
    .line 1132
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    #@99
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    #@9c
    .line 1133
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@9f
    .line 1099
    :cond_3
    return-void

    #@a0
    .line 1116
    :cond_4
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    #@a2
    if-lez v0, :cond_3

    #@a4
    goto :goto_0
.end method

.method public dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J

    #@0
    .prologue
    .line 799
    const-wide/16 v14, 0x0

    #@2
    .line 800
    .local v14, "totalTime":J
    const/4 v9, -0x1

    #@3
    .line 801
    .local v9, "printedScreen":I
    const/4 v6, 0x0

    #@4
    .local v6, "is":I
    :goto_0
    move-object/from16 v0, p3

    #@6
    array-length v11, v0

    #@7
    if-ge v6, v11, :cond_8

    #@9
    .line 802
    const/4 v8, -0x1

    #@a
    .line 803
    .local v8, "printedMem":I
    const/4 v3, 0x0

    #@b
    .local v3, "im":I
    :goto_1
    move-object/from16 v0, p4

    #@d
    array-length v11, v0

    #@e
    if-ge v3, v11, :cond_7

    #@10
    .line 804
    const/4 v5, 0x0

    #@11
    .local v5, "ip":I
    :goto_2
    move-object/from16 v0, p5

    #@13
    array-length v11, v0

    #@14
    if-ge v5, v11, :cond_6

    #@16
    .line 805
    aget v7, p3, v6

    #@18
    .line 806
    .local v7, "iscreen":I
    aget v4, p4, v3

    #@1a
    .line 807
    .local v4, "imem":I
    add-int v11, v7, v4

    #@1c
    mul-int/lit8 v11, v11, 0xe

    #@1e
    aget v16, p5, v5

    #@20
    add-int v2, v11, v16

    #@22
    .line 808
    .local v2, "bucket":I
    move-object/from16 v0, p0

    #@24
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@26
    int-to-byte v0, v2

    #@27
    move/from16 v16, v0

    #@29
    move/from16 v0, v16

    #@2b
    invoke-virtual {v11, v0}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    #@2e
    move-result-wide v12

    #@2f
    .line 809
    .local v12, "time":J
    const-string/jumbo v10, ""

    #@32
    .line 810
    .local v10, "running":Ljava/lang/String;
    move-object/from16 v0, p0

    #@34
    iget v11, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    #@36
    if-ne v11, v2, :cond_0

    #@38
    .line 811
    const-string/jumbo v10, " (running)"

    #@3b
    .line 813
    :cond_0
    const-wide/16 v16, 0x0

    #@3d
    cmp-long v11, v12, v16

    #@3f
    if-eqz v11, :cond_3

    #@41
    .line 814
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@44
    .line 815
    move-object/from16 v0, p3

    #@46
    array-length v11, v0

    #@47
    const/16 v16, 0x1

    #@49
    move/from16 v0, v16

    #@4b
    if-le v11, v0, :cond_1

    #@4d
    .line 816
    if-eq v9, v7, :cond_4

    #@4f
    move v11, v7

    #@50
    :goto_3
    move-object/from16 v0, p1

    #@52
    invoke-static {v0, v11}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    #@55
    .line 818
    move v9, v7

    #@56
    .line 820
    :cond_1
    move-object/from16 v0, p4

    #@58
    array-length v11, v0

    #@59
    const/16 v16, 0x1

    #@5b
    move/from16 v0, v16

    #@5d
    if-le v11, v0, :cond_2

    #@5f
    .line 822
    if-eq v8, v4, :cond_5

    #@61
    move v11, v4

    #@62
    :goto_4
    const/16 v16, 0x2f

    #@64
    .line 821
    move-object/from16 v0, p1

    #@66
    move/from16 v1, v16

    #@68
    invoke-static {v0, v11, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    #@6b
    .line 823
    move v8, v4

    #@6c
    .line 825
    :cond_2
    sget-object v11, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    #@6e
    aget v16, p5, v5

    #@70
    aget-object v11, v11, v16

    #@72
    move-object/from16 v0, p1

    #@74
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@77
    const-string/jumbo v11, ": "

    #@7a
    move-object/from16 v0, p1

    #@7c
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7f
    .line 826
    move-object/from16 v0, p1

    #@81
    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@84
    move-object/from16 v0, p1

    #@86
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@89
    .line 827
    add-long/2addr v14, v12

    #@8a
    .line 804
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@8c
    goto :goto_2

    #@8d
    .line 817
    :cond_4
    const/4 v11, -0x1

    #@8e
    goto :goto_3

    #@8f
    .line 822
    :cond_5
    const/4 v11, -0x1

    #@90
    goto :goto_4

    #@91
    .line 803
    .end local v2    # "bucket":I
    .end local v4    # "imem":I
    .end local v7    # "iscreen":I
    .end local v10    # "running":Ljava/lang/String;
    .end local v12    # "time":J
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@93
    goto/16 :goto_1

    #@95
    .line 801
    .end local v5    # "ip":I
    :cond_7
    add-int/lit8 v6, v6, 0x1

    #@97
    goto/16 :goto_0

    #@99
    .line 832
    .end local v3    # "im":I
    .end local v8    # "printedMem":I
    :cond_8
    const-wide/16 v16, 0x0

    #@9b
    cmp-long v11, v14, v16

    #@9d
    if-eqz v11, :cond_b

    #@9f
    .line 833
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a2
    .line 834
    move-object/from16 v0, p3

    #@a4
    array-length v11, v0

    #@a5
    const/16 v16, 0x1

    #@a7
    move/from16 v0, v16

    #@a9
    if-le v11, v0, :cond_9

    #@ab
    .line 835
    const/4 v11, -0x1

    #@ac
    move-object/from16 v0, p1

    #@ae
    invoke-static {v0, v11}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    #@b1
    .line 837
    :cond_9
    move-object/from16 v0, p4

    #@b3
    array-length v11, v0

    #@b4
    const/16 v16, 0x1

    #@b6
    move/from16 v0, v16

    #@b8
    if-le v11, v0, :cond_a

    #@ba
    .line 838
    const/4 v11, -0x1

    #@bb
    const/16 v16, 0x2f

    #@bd
    move-object/from16 v0, p1

    #@bf
    move/from16 v1, v16

    #@c1
    invoke-static {v0, v11, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    #@c4
    .line 840
    :cond_a
    const-string/jumbo v11, "TOTAL  : "

    #@c7
    move-object/from16 v0, p1

    #@c9
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cc
    .line 841
    move-object/from16 v0, p1

    #@ce
    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@d1
    .line 842
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@d4
    .line 798
    :cond_b
    return-void
.end method

.method public dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I

    #@0
    .prologue
    .line 848
    const/4 v10, 0x0

    #@1
    .line 849
    .local v10, "printedHeader":Z
    const/4 v12, -0x1

    #@2
    .line 850
    .local v12, "printedScreen":I
    const/4 v8, 0x0

    #@3
    .local v8, "is":I
    :goto_0
    move-object/from16 v0, p3

    #@5
    array-length v13, v0

    #@6
    if-ge v8, v13, :cond_8

    #@8
    .line 851
    const/4 v11, -0x1

    #@9
    .line 852
    .local v11, "printedMem":I
    const/4 v3, 0x0

    #@a
    .local v3, "im":I
    :goto_1
    move-object/from16 v0, p4

    #@c
    array-length v13, v0

    #@d
    if-ge v3, v13, :cond_7

    #@f
    .line 853
    const/4 v7, 0x0

    #@10
    .local v7, "ip":I
    :goto_2
    move-object/from16 v0, p5

    #@12
    array-length v13, v0

    #@13
    if-ge v7, v13, :cond_6

    #@15
    .line 854
    aget v9, p3, v8

    #@17
    .line 855
    .local v9, "iscreen":I
    aget v6, p4, v3

    #@19
    .line 856
    .local v6, "imem":I
    add-int v13, v9, v6

    #@1b
    mul-int/lit8 v13, v13, 0xe

    #@1d
    aget v14, p5, v7

    #@1f
    add-int v2, v13, v14

    #@21
    .line 857
    .local v2, "bucket":I
    move-object/from16 v0, p0

    #@23
    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    #@26
    move-result-wide v4

    #@27
    .line 858
    .local v4, "count":J
    const-wide/16 v14, 0x0

    #@29
    cmp-long v13, v4, v14

    #@2b
    if-lez v13, :cond_3

    #@2d
    .line 859
    if-nez v10, :cond_0

    #@2f
    .line 860
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32
    .line 861
    const-string/jumbo v13, "PSS/USS ("

    #@35
    move-object/from16 v0, p1

    #@37
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a
    .line 862
    move-object/from16 v0, p0

    #@3c
    iget-object v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@3e
    invoke-virtual {v13}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    #@41
    move-result v13

    #@42
    move-object/from16 v0, p1

    #@44
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    #@47
    .line 863
    const-string/jumbo v13, " entries):"

    #@4a
    move-object/from16 v0, p1

    #@4c
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4f
    .line 864
    const/4 v10, 0x1

    #@50
    .line 866
    :cond_0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53
    .line 867
    const-string/jumbo v13, "  "

    #@56
    move-object/from16 v0, p1

    #@58
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b
    .line 868
    move-object/from16 v0, p3

    #@5d
    array-length v13, v0

    #@5e
    const/4 v14, 0x1

    #@5f
    if-le v13, v14, :cond_1

    #@61
    .line 870
    if-eq v12, v9, :cond_4

    #@63
    move v13, v9

    #@64
    .line 869
    :goto_3
    move-object/from16 v0, p1

    #@66
    invoke-static {v0, v13}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    #@69
    .line 871
    move v12, v9

    #@6a
    .line 873
    :cond_1
    move-object/from16 v0, p4

    #@6c
    array-length v13, v0

    #@6d
    const/4 v14, 0x1

    #@6e
    if-le v13, v14, :cond_2

    #@70
    .line 875
    if-eq v11, v6, :cond_5

    #@72
    move v13, v6

    #@73
    :goto_4
    const/16 v14, 0x2f

    #@75
    .line 874
    move-object/from16 v0, p1

    #@77
    invoke-static {v0, v13, v14}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    #@7a
    .line 876
    move v11, v6

    #@7b
    .line 878
    :cond_2
    sget-object v13, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    #@7d
    aget v14, p5, v7

    #@7f
    aget-object v13, v13, v14

    #@81
    move-object/from16 v0, p1

    #@83
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@86
    const-string/jumbo v13, ": "

    #@89
    move-object/from16 v0, p1

    #@8b
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8e
    .line 879
    move-object/from16 v0, p1

    #@90
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@93
    .line 880
    const-string/jumbo v13, " samples "

    #@96
    move-object/from16 v0, p1

    #@98
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9b
    .line 881
    move-object/from16 v0, p0

    #@9d
    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    #@a0
    move-result-wide v14

    #@a1
    const-wide/16 v16, 0x400

    #@a3
    mul-long v14, v14, v16

    #@a5
    move-object/from16 v0, p1

    #@a7
    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@aa
    .line 882
    const-string/jumbo v13, " "

    #@ad
    move-object/from16 v0, p1

    #@af
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b2
    .line 883
    move-object/from16 v0, p0

    #@b4
    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    #@b7
    move-result-wide v14

    #@b8
    const-wide/16 v16, 0x400

    #@ba
    mul-long v14, v14, v16

    #@bc
    move-object/from16 v0, p1

    #@be
    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@c1
    .line 884
    const-string/jumbo v13, " "

    #@c4
    move-object/from16 v0, p1

    #@c6
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c9
    .line 885
    move-object/from16 v0, p0

    #@cb
    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    #@ce
    move-result-wide v14

    #@cf
    const-wide/16 v16, 0x400

    #@d1
    mul-long v14, v14, v16

    #@d3
    move-object/from16 v0, p1

    #@d5
    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@d8
    .line 886
    const-string/jumbo v13, " / "

    #@db
    move-object/from16 v0, p1

    #@dd
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e0
    .line 887
    move-object/from16 v0, p0

    #@e2
    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    #@e5
    move-result-wide v14

    #@e6
    const-wide/16 v16, 0x400

    #@e8
    mul-long v14, v14, v16

    #@ea
    move-object/from16 v0, p1

    #@ec
    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@ef
    .line 888
    const-string/jumbo v13, " "

    #@f2
    move-object/from16 v0, p1

    #@f4
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f7
    .line 889
    move-object/from16 v0, p0

    #@f9
    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    #@fc
    move-result-wide v14

    #@fd
    const-wide/16 v16, 0x400

    #@ff
    mul-long v14, v14, v16

    #@101
    move-object/from16 v0, p1

    #@103
    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@106
    .line 890
    const-string/jumbo v13, " "

    #@109
    move-object/from16 v0, p1

    #@10b
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10e
    .line 891
    move-object/from16 v0, p0

    #@110
    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    #@113
    move-result-wide v14

    #@114
    const-wide/16 v16, 0x400

    #@116
    mul-long v14, v14, v16

    #@118
    move-object/from16 v0, p1

    #@11a
    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@11d
    .line 892
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@120
    .line 853
    :cond_3
    add-int/lit8 v7, v7, 0x1

    #@122
    goto/16 :goto_2

    #@124
    .line 870
    :cond_4
    const/4 v13, -0x1

    #@125
    goto/16 :goto_3

    #@127
    .line 875
    :cond_5
    const/4 v13, -0x1

    #@128
    goto/16 :goto_4

    #@12a
    .line 852
    .end local v2    # "bucket":I
    .end local v4    # "count":J
    .end local v6    # "imem":I
    .end local v9    # "iscreen":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@12c
    goto/16 :goto_1

    #@12e
    .line 850
    .end local v7    # "ip":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    #@130
    goto/16 :goto_0

    #@132
    .line 897
    .end local v3    # "im":I
    .end local v11    # "printedMem":I
    :cond_8
    move-object/from16 v0, p0

    #@134
    iget v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    #@136
    if-eqz v13, :cond_9

    #@138
    .line 898
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13b
    const-string/jumbo v13, "Killed for excessive wake locks: "

    #@13e
    move-object/from16 v0, p1

    #@140
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@143
    .line 899
    move-object/from16 v0, p0

    #@145
    iget v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    #@147
    move-object/from16 v0, p1

    #@149
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    #@14c
    const-string/jumbo v13, " times"

    #@14f
    move-object/from16 v0, p1

    #@151
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@154
    .line 901
    :cond_9
    move-object/from16 v0, p0

    #@156
    iget v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    #@158
    if-eqz v13, :cond_a

    #@15a
    .line 902
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15d
    const-string/jumbo v13, "Killed for excessive CPU use: "

    #@160
    move-object/from16 v0, p1

    #@162
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@165
    .line 903
    move-object/from16 v0, p0

    #@167
    iget v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    #@169
    move-object/from16 v0, p1

    #@16b
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    #@16e
    const-string/jumbo v13, " times"

    #@171
    move-object/from16 v0, p1

    #@173
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@176
    .line 905
    :cond_a
    move-object/from16 v0, p0

    #@178
    iget v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    #@17a
    if-eqz v13, :cond_b

    #@17c
    .line 906
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17f
    const-string/jumbo v13, "Killed from cached state: "

    #@182
    move-object/from16 v0, p1

    #@184
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@187
    .line 907
    move-object/from16 v0, p0

    #@189
    iget v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    #@18b
    move-object/from16 v0, p1

    #@18d
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    #@190
    const-string/jumbo v13, " times from pss "

    #@193
    move-object/from16 v0, p1

    #@195
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@198
    .line 908
    move-object/from16 v0, p0

    #@19a
    iget-wide v14, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    #@19c
    const-wide/16 v16, 0x400

    #@19e
    mul-long v14, v14, v16

    #@1a0
    move-object/from16 v0, p1

    #@1a2
    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@1a5
    const-string/jumbo v13, "-"

    #@1a8
    move-object/from16 v0, p1

    #@1aa
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ad
    .line 909
    move-object/from16 v0, p0

    #@1af
    iget-wide v14, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    #@1b1
    const-wide/16 v16, 0x400

    #@1b3
    mul-long v14, v14, v16

    #@1b5
    move-object/from16 v0, p1

    #@1b7
    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@1ba
    const-string/jumbo v13, "-"

    #@1bd
    move-object/from16 v0, p1

    #@1bf
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c2
    .line 910
    move-object/from16 v0, p0

    #@1c4
    iget-wide v14, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    #@1c6
    const-wide/16 v16, 0x400

    #@1c8
    mul-long v14, v14, v16

    #@1ca
    move-object/from16 v0, p1

    #@1cc
    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@1cf
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@1d2
    .line 847
    :cond_b
    return-void
.end method

.method public dumpSummary(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJJ)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J
    .param p8, "totalTime"    # J

    #@0
    .prologue
    .line 760
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    .line 761
    const-string/jumbo v0, "* "

    #@6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 762
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    #@b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e
    .line 763
    const-string/jumbo v0, " / "

    #@11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    .line 764
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    #@16
    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@19
    .line 765
    const-string/jumbo v0, " / v"

    #@1c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    .line 766
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    #@21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@24
    .line 767
    const-string/jumbo v0, ":"

    #@27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a
    .line 768
    const-string/jumbo v4, "         TOTAL: "

    #@2d
    .line 769
    const/4 v12, 0x1

    #@2e
    move-object v1, p0

    #@2f
    move-object v2, p1

    #@30
    move-object/from16 v3, p2

    #@32
    move-object/from16 v5, p3

    #@34
    move-object/from16 v6, p4

    #@36
    move-object/from16 v7, p5

    #@38
    move-wide/from16 v8, p6

    #@3a
    move-wide/from16 v10, p8

    #@3c
    .line 768
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@3f
    .line 770
    const-string/jumbo v4, "    Persistent: "

    #@42
    .line 771
    const/4 v0, 0x1

    #@43
    new-array v7, v0, [I

    #@45
    const/4 v0, 0x0

    #@46
    const/4 v1, 0x0

    #@47
    aput v0, v7, v1

    #@49
    const/4 v12, 0x1

    #@4a
    move-object v1, p0

    #@4b
    move-object v2, p1

    #@4c
    move-object/from16 v3, p2

    #@4e
    move-object/from16 v5, p3

    #@50
    move-object/from16 v6, p4

    #@52
    move-wide/from16 v8, p6

    #@54
    move-wide/from16 v10, p8

    #@56
    .line 770
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@59
    .line 772
    const-string/jumbo v4, "           Top: "

    #@5c
    .line 773
    const/4 v0, 0x1

    #@5d
    new-array v7, v0, [I

    #@5f
    const/4 v0, 0x1

    #@60
    const/4 v1, 0x0

    #@61
    aput v0, v7, v1

    #@63
    const/4 v12, 0x1

    #@64
    move-object v1, p0

    #@65
    move-object v2, p1

    #@66
    move-object/from16 v3, p2

    #@68
    move-object/from16 v5, p3

    #@6a
    move-object/from16 v6, p4

    #@6c
    move-wide/from16 v8, p6

    #@6e
    move-wide/from16 v10, p8

    #@70
    .line 772
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@73
    .line 774
    const-string/jumbo v4, "        Imp Fg: "

    #@76
    .line 775
    const/4 v0, 0x1

    #@77
    new-array v7, v0, [I

    #@79
    const/4 v0, 0x2

    #@7a
    const/4 v1, 0x0

    #@7b
    aput v0, v7, v1

    #@7d
    const/4 v12, 0x1

    #@7e
    move-object v1, p0

    #@7f
    move-object v2, p1

    #@80
    move-object/from16 v3, p2

    #@82
    move-object/from16 v5, p3

    #@84
    move-object/from16 v6, p4

    #@86
    move-wide/from16 v8, p6

    #@88
    move-wide/from16 v10, p8

    #@8a
    .line 774
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@8d
    .line 776
    const-string/jumbo v4, "        Imp Bg: "

    #@90
    .line 777
    const/4 v0, 0x1

    #@91
    new-array v7, v0, [I

    #@93
    const/4 v0, 0x3

    #@94
    const/4 v1, 0x0

    #@95
    aput v0, v7, v1

    #@97
    const/4 v12, 0x1

    #@98
    move-object v1, p0

    #@99
    move-object v2, p1

    #@9a
    move-object/from16 v3, p2

    #@9c
    move-object/from16 v5, p3

    #@9e
    move-object/from16 v6, p4

    #@a0
    move-wide/from16 v8, p6

    #@a2
    move-wide/from16 v10, p8

    #@a4
    .line 776
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@a7
    .line 778
    const-string/jumbo v4, "        Backup: "

    #@aa
    .line 779
    const/4 v0, 0x1

    #@ab
    new-array v7, v0, [I

    #@ad
    const/4 v0, 0x4

    #@ae
    const/4 v1, 0x0

    #@af
    aput v0, v7, v1

    #@b1
    const/4 v12, 0x1

    #@b2
    move-object v1, p0

    #@b3
    move-object v2, p1

    #@b4
    move-object/from16 v3, p2

    #@b6
    move-object/from16 v5, p3

    #@b8
    move-object/from16 v6, p4

    #@ba
    move-wide/from16 v8, p6

    #@bc
    move-wide/from16 v10, p8

    #@be
    .line 778
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@c1
    .line 780
    const-string/jumbo v4, "     Heavy Wgt: "

    #@c4
    .line 781
    const/4 v0, 0x1

    #@c5
    new-array v7, v0, [I

    #@c7
    const/4 v0, 0x5

    #@c8
    const/4 v1, 0x0

    #@c9
    aput v0, v7, v1

    #@cb
    const/4 v12, 0x1

    #@cc
    move-object v1, p0

    #@cd
    move-object v2, p1

    #@ce
    move-object/from16 v3, p2

    #@d0
    move-object/from16 v5, p3

    #@d2
    move-object/from16 v6, p4

    #@d4
    move-wide/from16 v8, p6

    #@d6
    move-wide/from16 v10, p8

    #@d8
    .line 780
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@db
    .line 782
    const-string/jumbo v4, "       Service: "

    #@de
    .line 783
    const/4 v0, 0x1

    #@df
    new-array v7, v0, [I

    #@e1
    const/4 v0, 0x6

    #@e2
    const/4 v1, 0x0

    #@e3
    aput v0, v7, v1

    #@e5
    const/4 v12, 0x1

    #@e6
    move-object v1, p0

    #@e7
    move-object v2, p1

    #@e8
    move-object/from16 v3, p2

    #@ea
    move-object/from16 v5, p3

    #@ec
    move-object/from16 v6, p4

    #@ee
    move-wide/from16 v8, p6

    #@f0
    move-wide/from16 v10, p8

    #@f2
    .line 782
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@f5
    .line 784
    const-string/jumbo v4, "    Service Rs: "

    #@f8
    .line 785
    const/4 v0, 0x1

    #@f9
    new-array v7, v0, [I

    #@fb
    const/4 v0, 0x7

    #@fc
    const/4 v1, 0x0

    #@fd
    aput v0, v7, v1

    #@ff
    const/4 v12, 0x1

    #@100
    move-object v1, p0

    #@101
    move-object v2, p1

    #@102
    move-object/from16 v3, p2

    #@104
    move-object/from16 v5, p3

    #@106
    move-object/from16 v6, p4

    #@108
    move-wide/from16 v8, p6

    #@10a
    move-wide/from16 v10, p8

    #@10c
    .line 784
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@10f
    .line 786
    const-string/jumbo v4, "      Receiver: "

    #@112
    .line 787
    const/4 v0, 0x1

    #@113
    new-array v7, v0, [I

    #@115
    const/16 v0, 0x8

    #@117
    const/4 v1, 0x0

    #@118
    aput v0, v7, v1

    #@11a
    const/4 v12, 0x1

    #@11b
    move-object v1, p0

    #@11c
    move-object v2, p1

    #@11d
    move-object/from16 v3, p2

    #@11f
    move-object/from16 v5, p3

    #@121
    move-object/from16 v6, p4

    #@123
    move-wide/from16 v8, p6

    #@125
    move-wide/from16 v10, p8

    #@127
    .line 786
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@12a
    .line 788
    const-string/jumbo v4, "        (Home): "

    #@12d
    .line 789
    const/4 v0, 0x1

    #@12e
    new-array v7, v0, [I

    #@130
    const/16 v0, 0x9

    #@132
    const/4 v1, 0x0

    #@133
    aput v0, v7, v1

    #@135
    const/4 v12, 0x1

    #@136
    move-object v1, p0

    #@137
    move-object v2, p1

    #@138
    move-object/from16 v3, p2

    #@13a
    move-object/from16 v5, p3

    #@13c
    move-object/from16 v6, p4

    #@13e
    move-wide/from16 v8, p6

    #@140
    move-wide/from16 v10, p8

    #@142
    .line 788
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@145
    .line 790
    const-string/jumbo v4, "    (Last Act): "

    #@148
    .line 791
    const/4 v0, 0x1

    #@149
    new-array v7, v0, [I

    #@14b
    const/16 v0, 0xa

    #@14d
    const/4 v1, 0x0

    #@14e
    aput v0, v7, v1

    #@150
    const/4 v12, 0x1

    #@151
    move-object v1, p0

    #@152
    move-object v2, p1

    #@153
    move-object/from16 v3, p2

    #@155
    move-object/from16 v5, p3

    #@157
    move-object/from16 v6, p4

    #@159
    move-wide/from16 v8, p6

    #@15b
    move-wide/from16 v10, p8

    #@15d
    .line 790
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@160
    .line 792
    const-string/jumbo v4, "      (Cached): "

    #@163
    .line 793
    const/16 v0, 0xb

    #@165
    const/16 v1, 0xc

    #@167
    .line 794
    const/16 v2, 0xd

    #@169
    .line 793
    filled-new-array {v0, v1, v2}, [I

    #@16c
    move-result-object v7

    #@16d
    .line 794
    const/4 v12, 0x1

    #@16e
    move-object v1, p0

    #@16f
    move-object v2, p1

    #@170
    move-object/from16 v3, p2

    #@172
    move-object/from16 v5, p3

    #@174
    move-object/from16 v6, p4

    #@176
    move-wide/from16 v8, p6

    #@178
    move-wide/from16 v10, p8

    #@17a
    .line 792
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@17d
    .line 759
    return-void
.end method

.method public getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;
    .locals 1

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@2
    return-object v0
.end method

.method public getDuration(IJ)J
    .locals 4
    .param p1, "state"    # I
    .param p2, "now"    # J

    #@0
    .prologue
    .line 618
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@2
    int-to-byte v3, p1

    #@3
    invoke-virtual {v2, v3}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    #@6
    move-result-wide v0

    #@7
    .line 619
    .local v0, "time":J
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    #@9
    if-ne v2, p1, :cond_0

    #@b
    .line 620
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    #@d
    sub-long v2, p2, v2

    #@f
    add-long/2addr v0, v2

    #@10
    .line 622
    :cond_0
    return-wide v0
.end method

.method public getDurationsBucketCount()I
    .locals 1

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPssAverage(I)J
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@2
    int-to-byte v1, p1

    #@3
    const/4 v2, 0x2

    #@4
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getPssMaximum(I)J
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@2
    int-to-byte v1, p1

    #@3
    const/4 v2, 0x3

    #@4
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getPssMinimum(I)J
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@2
    int-to-byte v1, p1

    #@3
    const/4 v2, 0x1

    #@4
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getPssSampleCount(I)J
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@2
    int-to-byte v1, p1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getPssUssAverage(I)J
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@2
    int-to-byte v1, p1

    #@3
    const/4 v2, 0x5

    #@4
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getPssUssMaximum(I)J
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@2
    int-to-byte v1, p1

    #@3
    const/4 v2, 0x6

    #@4
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getPssUssMinimum(I)J
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@2
    int-to-byte v1, p1

    #@3
    const/4 v2, 0x4

    #@4
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getUid()I
    .locals 1

    #@0
    .prologue
    .line 230
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    #@2
    return v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 234
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    #@2
    return v0
.end method

.method public hasAnyData()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 343
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@4
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 344
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    #@c
    const/4 v3, -0x1

    #@d
    if-eq v2, v3, :cond_1

    #@f
    .line 343
    :cond_0
    :goto_0
    return v0

    #@10
    .line 345
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@12
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_0

    #@18
    move v0, v1

    #@19
    goto :goto_0
.end method

.method public incActiveServices(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@2
    if-eq v0, p0, :cond_0

    #@4
    .line 407
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->incActiveServices(Ljava/lang/String;)V

    #@9
    .line 409
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    #@b
    add-int/lit8 v0, v0, 0x1

    #@d
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    #@f
    .line 399
    return-void
.end method

.method public incStartedServices(IJLjava/lang/String;)V
    .locals 2
    .param p1, "memFactor"    # I
    .param p2, "now"    # J
    .param p4, "serviceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@2
    if-eq v0, p0, :cond_0

    #@4
    .line 438
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->incStartedServices(IJLjava/lang/String;)V

    #@9
    .line 440
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    #@b
    add-int/lit8 v0, v0, 0x1

    #@d
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    #@f
    .line 441
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    #@11
    const/4 v1, 0x1

    #@12
    if-ne v0, v1, :cond_1

    #@14
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    #@16
    const/4 v1, -0x1

    #@17
    if-ne v0, v1, :cond_1

    #@19
    .line 442
    mul-int/lit8 v0, p1, 0xe

    #@1b
    add-int/lit8 v0, v0, 0x7

    #@1d
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    #@20
    .line 430
    :cond_1
    return-void
.end method

.method public isActive()Z
    .locals 1

    #@0
    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    #@2
    return v0
.end method

.method public isInUse()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 334
    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    #@4
    if-nez v2, :cond_0

    #@6
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    #@8
    if-lez v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    #@d
    if-gtz v2, :cond_0

    #@f
    .line 335
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    #@11
    const/4 v3, -0x1

    #@12
    if-ne v2, v3, :cond_0

    #@14
    move v0, v1

    #@15
    goto :goto_0
.end method

.method public isMultiPackage()Z
    .locals 1

    #@0
    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    #@2
    return v0
.end method

.method public makeActive()V
    .locals 1

    #@0
    .prologue
    .line 325
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    #@3
    .line 326
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    #@6
    .line 324
    return-void
.end method

.method public makeDead()V
    .locals 1

    #@0
    .prologue
    .line 273
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    #@3
    .line 272
    return-void
.end method

.method public makeInactive()V
    .locals 1

    #@0
    .prologue
    .line 330
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    #@3
    .line 329
    return-void
.end method

.method public makeStandalone()V
    .locals 0

    #@0
    .prologue
    .line 222
    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@2
    .line 221
    return-void
.end method

.method public pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 551
    iget-boolean v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    #@2
    if-eqz v3, :cond_3

    #@4
    .line 555
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@6
    iget-object v3, v3, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@8
    iget v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    #@a
    invoke-virtual {v3, p1, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Landroid/util/SparseArray;

    #@10
    .line 556
    .local v2, "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    if-nez v2, :cond_0

    #@12
    .line 557
    new-instance v3, Ljava/lang/IllegalStateException;

    #@14
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "Didn\'t find package "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    .line 558
    const-string/jumbo v5, " / "

    #@27
    .line 557
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    .line 558
    iget v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    #@2d
    .line 557
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@38
    throw v3

    #@39
    .line 560
    :cond_0
    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    #@3b
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    #@41
    .line 561
    .local v0, "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    if-nez v0, :cond_1

    #@43
    .line 562
    new-instance v3, Ljava/lang/IllegalStateException;

    #@45
    new-instance v4, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v5, "Didn\'t find package "

    #@4d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    .line 563
    const-string/jumbo v5, " / "

    #@58
    .line 562
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    .line 563
    iget v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    #@5e
    .line 562
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    .line 563
    const-string/jumbo v5, " vers "

    #@65
    .line 562
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    .line 563
    iget v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    #@6b
    .line 562
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v4

    #@73
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@76
    throw v3

    #@77
    .line 565
    :cond_1
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@79
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    #@7b
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    move-result-object v1

    #@7f
    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    #@81
    .line 566
    .local v1, "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v1, :cond_2

    #@83
    .line 567
    new-instance v3, Ljava/lang/IllegalStateException;

    #@85
    new-instance v4, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v5, "Didn\'t create per-package process "

    #@8d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v4

    #@91
    .line 568
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    #@93
    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v4

    #@97
    .line 568
    const-string/jumbo v5, " in pkg "

    #@9a
    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v4

    #@9e
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    .line 568
    const-string/jumbo v5, " / "

    #@a5
    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v4

    #@a9
    .line 568
    iget v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    #@ab
    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v4

    #@af
    .line 568
    const-string/jumbo v5, " vers "

    #@b2
    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v4

    #@b6
    .line 568
    iget v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    #@b8
    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v4

    #@bc
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v4

    #@c0
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c3
    throw v3

    #@c4
    .line 570
    :cond_2
    return-object v1

    #@c5
    .line 572
    .end local v0    # "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v1    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v2    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_3
    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;Z)Z
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "fully"    # Z

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    const/4 v0, 0x1

    #@a
    .line 300
    .local v0, "multiPackage":Z
    :goto_0
    if-eqz p2, :cond_0

    #@c
    .line 301
    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    #@e
    .line 304
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@10
    invoke-virtual {v1, p1}, Lcom/android/internal/app/procstats/DurationsTable;->readFromParcel(Landroid/os/Parcel;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_2

    #@16
    .line 305
    return v2

    #@17
    .line 299
    .end local v0    # "multiPackage":Z
    :cond_1
    const/4 v0, 0x0

    #@18
    .restart local v0    # "multiPackage":Z
    goto :goto_0

    #@19
    .line 308
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@1b
    invoke-virtual {v1, p1}, Lcom/android/internal/app/procstats/PssTable;->readFromParcel(Landroid/os/Parcel;)Z

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_3

    #@21
    .line 309
    return v2

    #@22
    .line 311
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v1

    #@26
    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    #@28
    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v1

    #@2c
    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    #@2e
    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v1

    #@32
    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    #@34
    .line 314
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    #@36
    if-lez v1, :cond_4

    #@38
    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3b
    move-result-wide v2

    #@3c
    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    #@3e
    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@41
    move-result-wide v2

    #@42
    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    #@44
    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@47
    move-result-wide v2

    #@48
    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    #@4a
    .line 321
    :goto_1
    const/4 v1, 0x1

    #@4b
    return v1

    #@4c
    .line 319
    :cond_4
    iput-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    #@4e
    iput-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    #@50
    iput-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    #@52
    goto :goto_1
.end method

.method public reportCachedKill(Landroid/util/ArrayMap;J)V
    .locals 10
    .param p2, "pss"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;J)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    const/4 v1, 0x1

    #@1
    .line 539
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    #@4
    .line 540
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@6
    move-wide v2, p2

    #@7
    move-wide v4, p2

    #@8
    move-wide v6, p2

    #@9
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    #@c
    .line 541
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@e
    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    #@10
    if-nez v0, :cond_0

    #@12
    .line 542
    return-void

    #@13
    .line 545
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    #@16
    move-result v0

    #@17
    add-int/lit8 v8, v0, -0x1

    #@19
    .local v8, "ip":I
    :goto_0
    if-ltz v8, :cond_1

    #@1b
    .line 546
    invoke-direct {p0, p1, v8}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    #@1e
    move-result-object v0

    #@1f
    move-wide v2, p2

    #@20
    move-wide v4, p2

    #@21
    move-wide v6, p2

    #@22
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    #@25
    .line 545
    add-int/lit8 v8, v8, -0x1

    #@27
    goto :goto_0

    #@28
    .line 538
    :cond_1
    return-void
.end method

.method public reportExcessiveCpu(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 508
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    #@3
    .line 509
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@5
    iget v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    iput v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    #@b
    .line 510
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@d
    iget-boolean v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    #@f
    if-nez v1, :cond_0

    #@11
    .line 511
    return-void

    #@12
    .line 514
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    #@15
    move-result v1

    #@16
    add-int/lit8 v0, v1, -0x1

    #@18
    .local v0, "ip":I
    :goto_0
    if-ltz v0, :cond_1

    #@1a
    .line 515
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    #@1d
    move-result-object v1

    #@1e
    iget v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    #@20
    add-int/lit8 v2, v2, 0x1

    #@22
    iput v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    #@24
    .line 514
    add-int/lit8 v0, v0, -0x1

    #@26
    goto :goto_0

    #@27
    .line 507
    :cond_1
    return-void
.end method

.method public reportExcessiveWake(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 496
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    #@3
    .line 497
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@5
    iget v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    iput v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    #@b
    .line 498
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@d
    iget-boolean v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    #@f
    if-nez v1, :cond_0

    #@11
    .line 499
    return-void

    #@12
    .line 502
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    #@15
    move-result v1

    #@16
    add-int/lit8 v0, v1, -0x1

    #@18
    .local v0, "ip":I
    :goto_0
    if-ltz v0, :cond_1

    #@1a
    .line 503
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    #@1d
    move-result-object v1

    #@1e
    iget v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    #@20
    add-int/lit8 v2, v2, 0x1

    #@22
    iput v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    #@24
    .line 502
    add-int/lit8 v0, v0, -0x1

    #@26
    goto :goto_0

    #@27
    .line 495
    :cond_1
    return-void
.end method

.method public resetSafely(J)V
    .locals 5
    .param p1, "now"    # J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const-wide/16 v2, 0x0

    #@3
    .line 261
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@5
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->resetTable()V

    #@8
    .line 262
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@a
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->resetTable()V

    #@d
    .line 263
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    #@f
    .line 264
    const/4 v0, -0x1

    #@10
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    #@12
    .line 265
    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    #@14
    .line 266
    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    #@16
    .line 267
    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    #@18
    .line 268
    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    #@1a
    .line 269
    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    #@1c
    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    #@1e
    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    #@20
    .line 260
    return-void
.end method

.method public setMultiPackage(Z)V
    .locals 0
    .param p1, "val"    # Z

    #@0
    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    #@2
    .line 241
    return-void
.end method

.method public setState(IIJLandroid/util/ArrayMap;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "memFactor"    # I
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 358
    .local p5, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    if-gez p1, :cond_1

    #@2
    .line 359
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    #@4
    if-lez v1, :cond_0

    #@6
    .line 360
    mul-int/lit8 v1, p2, 0xe

    #@8
    add-int/lit8 p1, v1, 0x7

    #@a
    .line 366
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@c
    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    #@f
    .line 369
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@11
    iget-boolean v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    #@13
    if-nez v1, :cond_2

    #@15
    .line 370
    return-void

    #@16
    .line 360
    :cond_0
    const/4 p1, -0x1

    #@17
    goto :goto_0

    #@18
    .line 362
    :cond_1
    sget-object v1, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    #@1a
    aget v1, v1, p1

    #@1c
    mul-int/lit8 v2, p2, 0xe

    #@1e
    add-int p1, v1, v2

    #@20
    goto :goto_0

    #@21
    .line 373
    :cond_2
    if-eqz p5, :cond_3

    #@23
    .line 374
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    #@26
    move-result v1

    #@27
    add-int/lit8 v0, v1, -0x1

    #@29
    .local v0, "ip":I
    :goto_1
    if-ltz v0, :cond_3

    #@2b
    .line 375
    invoke-direct {p0, p5, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    #@32
    .line 374
    add-int/lit8 v0, v0, -0x1

    #@34
    goto :goto_1

    #@35
    .line 357
    .end local v0    # "ip":I
    :cond_3
    return-void
.end method

.method public setState(IJ)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "now"    # J

    #@0
    .prologue
    .line 381
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    #@3
    .line 382
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    #@5
    if-eq v0, p1, :cond_0

    #@7
    .line 384
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    #@a
    .line 385
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    #@c
    .line 380
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 1180
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ProcessState{"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@11
    move-result v2

    #@12
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 1181
    const-string/jumbo v2, " "

    #@1d
    .line 1180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 1181
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    #@23
    .line 1180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 1181
    const-string/jumbo v2, "/"

    #@2a
    .line 1180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 1181
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    #@30
    .line 1180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 1182
    const-string/jumbo v2, " pkg="

    #@37
    .line 1180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 1182
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    #@3d
    .line 1180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 1183
    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    #@42
    if-eqz v1, :cond_0

    #@44
    const-string/jumbo v1, " (multi)"

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 1184
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    #@4c
    if-eq v1, p0, :cond_1

    #@4e
    const-string/jumbo v1, " (sub)"

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 1185
    :cond_1
    const-string/jumbo v1, "}"

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    .line 1186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 285
    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 286
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@b
    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->writeToParcel(Landroid/os/Parcel;)V

    #@e
    .line 287
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    #@10
    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/PssTable;->writeToParcel(Landroid/os/Parcel;)V

    #@13
    .line 288
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    #@15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 289
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    #@1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 290
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    #@1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 291
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    #@24
    if-lez v0, :cond_1

    #@26
    .line 292
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    #@28
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@2b
    .line 293
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    #@2d
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@30
    .line 294
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    #@32
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@35
    .line 284
    :cond_1
    return-void
.end method
