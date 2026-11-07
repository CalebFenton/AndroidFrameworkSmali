.class public final Lcom/android/internal/app/procstats/ProcessState;
.super Ljava/lang/Object;
.source "ProcessState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    }
.end annotation


# static fields
.field public static final blacklist COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEBUG_PARCEL:Z = false

.field static final blacklist PROCESS_STATE_TO_STATE:[I

.field private static final blacklist TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field private blacklist mActive:Z

.field private blacklist mAvgCachedKillPss:J

.field private blacklist mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

.field blacklist mCommonSources:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/internal/app/procstats/AssociationState$SourceKey;",
            "Lcom/android/internal/app/procstats/AssociationState$SourceState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurCombinedState:I

.field private blacklist mDead:Z

.field private final blacklist mDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field private blacklist mLastPssState:I

.field private blacklist mLastPssTime:J

.field private blacklist mMaxCachedKillPss:J

.field private blacklist mMinCachedKillPss:J

.field private blacklist mMultiPackage:Z

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mNumActiveServices:I

.field private blacklist mNumCachedKill:I

.field private blacklist mNumExcessiveCpu:I

.field private blacklist mNumStartedServices:I

.field private final blacklist mPackage:Ljava/lang/String;

.field private final blacklist mPssTable:Lcom/android/internal/app/procstats/PssTable;

.field private blacklist mStartTime:J

.field private blacklist mStateBeforeFrozen:I

.field private final blacklist mStats:Lcom/android/internal/app/procstats/ProcessStats;

.field private blacklist mTmpTotalTime:J

.field private blacklist mTotalRunningDuration:J

.field private final blacklist mTotalRunningPss:[J

.field private blacklist mTotalRunningStartTime:J

.field private final blacklist mUid:I

.field private final blacklist mVersion:J

.field public blacklist tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

.field public blacklist tmpNumInUse:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTmpTotalTime(Lcom/android/internal/app/procstats/ProcessState;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 84
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    .line 107
    new-instance v0, Lcom/android/internal/app/procstats/ProcessState$1;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessState$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->COMPARATOR:Ljava/util/Comparator;

    return-void

    nop

    :array_12
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x6
        0x7
        0x8
        0xa
        0x1
        0xb
        0xc
        0xd
        0xe
        0xe
        0xe
        0xe
    .end array-data
.end method

.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V
    .registers 11
    .param p1, "commonProcess"    # Lcom/android/internal/app/procstats/ProcessState;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # J
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "now"    # J

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    .line 146
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStateBeforeFrozen:I

    .line 148
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 198
    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 199
    iput-object p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 200
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 201
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 202
    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 203
    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    .line 204
    iget v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    .line 205
    iput-wide p7, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 206
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-eq v1, v0, :cond_2a

    .line 207
    iput-wide p7, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    .line 209
    :cond_2a
    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 210
    new-instance v0, Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 211
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJLjava/lang/String;)V
    .registers 9
    .param p1, "processStats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # J
    .param p6, "name"    # Ljava/lang/String;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    .line 146
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStateBeforeFrozen:I

    .line 148
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 181
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 182
    iput-object p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 183
    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 184
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 185
    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 186
    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    .line 187
    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 188
    new-instance v0, Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 189
    return-void
.end method

.method private blacklist addCachedKill(IJJJ)V
    .registers 12
    .param p1, "num"    # I
    .param p2, "minPss"    # J
    .param p4, "avgPss"    # J
    .param p6, "maxPss"    # J

    .line 671
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-gtz v0, :cond_d

    .line 672
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 673
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 674
    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 675
    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    goto :goto_33

    .line 677
    :cond_d
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_15

    .line 678
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 680
    :cond_15
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    cmp-long v0, p6, v0

    if-lez v0, :cond_1d

    .line 681
    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 683
    :cond_1d
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    long-to-double v0, v0

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    long-to-double v2, p4

    add-double/2addr v0, v2

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    add-int/2addr v2, p1

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 685
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 687
    :goto_33
    return-void
.end method

.method private blacklist dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V
    .registers 29
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "screenStates"    # [I
    .param p5, "memStates"    # [I
    .param p6, "procStates"    # [I
    .param p7, "now"    # J
    .param p9, "totalTime"    # J
    .param p11, "full"    # Z

    .line 1122
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-wide/from16 v2, p9

    new-instance v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 1124
    .local v4, "totals":Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    move-object/from16 v8, p0

    move-wide/from16 v9, p7

    invoke-virtual {v8, v4, v9, v10}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V

    .line 1125
    iget-wide v11, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    long-to-double v11, v11

    long-to-double v13, v2

    div-double/2addr v11, v13

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    mul-double/2addr v11, v13

    .line 1127
    .local v11, "percentage":D
    const-wide v13, 0x3f747ae147ae147bL    # 0.005

    cmpl-double v13, v11, v13

    if-gez v13, :cond_35

    iget-wide v13, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_32

    goto :goto_35

    :cond_32
    move/from16 v13, p11

    goto :goto_53

    .line 1128
    :cond_35
    :goto_35
    if-eqz p2, :cond_3a

    .line 1129
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1131
    :cond_3a
    if-eqz v1, :cond_49

    .line 1132
    const-string v13, "  "

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1133
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1134
    const-string v13, ": "

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1136
    :cond_49
    move/from16 v13, p11

    invoke-virtual {v4, v0, v2, v3, v13}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->print(Ljava/io/PrintWriter;JZ)V

    .line 1137
    if-eqz p2, :cond_53

    .line 1138
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 1141
    :cond_53
    :goto_53
    return-void
.end method

.method public static blacklist dumpPssSamples(Ljava/io/PrintWriter;[JI)V
    .registers 9
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "table"    # [J
    .param p2, "offset"    # I

    .line 1098
    add-int/lit8 v0, p2, 0x1

    aget-wide v0, p1, v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1099
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1100
    add-int/lit8 v1, p2, 0x2

    aget-wide v4, p1, v1

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1101
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1102
    add-int/lit8 v1, p2, 0x3

    aget-wide v4, p1, v1

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1103
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1104
    add-int/lit8 v4, p2, 0x4

    aget-wide v4, p1, v4

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1105
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1106
    add-int/lit8 v4, p2, 0x5

    aget-wide v4, p1, v4

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1107
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1108
    add-int/lit8 v4, p2, 0x6

    aget-wide v4, p1, v4

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1109
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1110
    add-int/lit8 v1, p2, 0x7

    aget-wide v4, p1, v1

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1111
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1112
    add-int/lit8 v1, p2, 0x8

    aget-wide v4, p1, v1

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1113
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1114
    add-int/lit8 v0, p2, 0x9

    aget-wide v0, p1, v0

    mul-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1115
    const-string v0, " over "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1116
    add-int/lit8 v0, p2, 0x0

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1117
    return-void
.end method

.method public static blacklist dumpPssSamplesCheckin(Ljava/io/PrintWriter;[JI)V
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "table"    # [J
    .param p2, "offset"    # I

    .line 1424
    add-int/lit8 v0, p2, 0x0

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1425
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1426
    add-int/lit8 v1, p2, 0x1

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1427
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1428
    add-int/lit8 v1, p2, 0x2

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1429
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1430
    add-int/lit8 v1, p2, 0x3

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1431
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1432
    add-int/lit8 v1, p2, 0x4

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1433
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1434
    add-int/lit8 v1, p2, 0x5

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1435
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1436
    add-int/lit8 v1, p2, 0x6

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1437
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1438
    add-int/lit8 v1, p2, 0x7

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1439
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1440
    add-int/lit8 v1, p2, 0x8

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1441
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1442
    add-int/lit8 v0, p2, 0x9

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1443
    return-void
.end method

.method private blacklist ensureNotDead()V
    .registers 3

    .line 325
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-nez v0, :cond_5

    .line 326
    return-void

    .line 328
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProcessState dead: name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " common.name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method

.method private blacklist pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;
    .registers 13
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;I)",
            "Lcom/android/internal/app/procstats/ProcessState;"
        }
    .end annotation

    .line 716
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 717
    .local v0, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 718
    .local v1, "proc":Lcom/android/internal/app/procstats/ProcessState;
    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-eqz v2, :cond_5e

    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v2, v1, :cond_5e

    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pulling dead proc: name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " common.name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, v3, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProcessStats"

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iget-wide v7, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    .line 728
    :cond_5e
    iget-boolean v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v2, :cond_136

    .line 732
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    .line 734
    .local v2, "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    const-string v3, " for multi-proc "

    const-string v4, "No existing package "

    const-string v5, "/"

    if-eqz v2, :cond_105

    .line 739
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v2, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 740
    .local v6, "expkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    if-eqz v6, :cond_c8

    .line 745
    iget-object v3, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 746
    .local v3, "savedName":Ljava/lang/String;
    iget-object v4, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 747
    if-eqz v1, :cond_99

    .line 751
    iput-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    goto/16 :goto_136

    .line 748
    :cond_99
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Didn\'t create per-package process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in pkg "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 741
    .end local v3    # "savedName":Ljava/lang/String;
    :cond_c8
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 742
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 735
    .end local v6    # "expkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_105
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 736
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 753
    .end local v2    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_136
    :goto_136
    return-object v1
.end method

.method static blacklist writeCompressedProcessName(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "procName"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "sharedUid"    # Z

    .line 1541
    if-eqz p5, :cond_6

    .line 1543
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1544
    return-void

    .line 1546
    :cond_6
    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1548
    return-void

    .line 1550
    :cond_d
    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1551
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    .line 1552
    .local v0, "pkgLength":I
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_27

    .line 1554
    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1555
    return-void

    .line 1559
    .end local v0    # "pkgLength":I
    :cond_27
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1560
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/app/procstats/ProcessState;)V
    .registers 11
    .param p1, "other"    # Lcom/android/internal/app/procstats/ProcessState;

    .line 270
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 271
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(Lcom/android/internal/app/procstats/PssTable;)V

    .line 276
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iget v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 277
    iget v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v0, :cond_26

    .line 278
    iget v2, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iget-wide v3, p1, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iget-wide v5, p1, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iget-wide v7, p1, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    goto :goto_27

    .line 277
    :cond_26
    move-object v1, p0

    .line 281
    :goto_27
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz v0, :cond_6d

    .line 282
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-nez v0, :cond_36

    .line 283
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    .line 285
    :cond_36
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 286
    .local v0, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3d
    if-ge v2, v0, :cond_6d

    .line 287
    iget-object v3, p1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 288
    .local v3, "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 289
    .local v4, "state":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    if-nez v4, :cond_5f

    .line 290
    new-instance v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, p0, v3}, Lcom/android/internal/app/procstats/AssociationState$SourceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V

    move-object v4, v5

    .line 291
    iget-object v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_5f
    iget-object v5, p1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    invoke-virtual {v4, v5}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->add(Lcom/android/internal/app/procstats/AssociationState$SourceState;)V

    .line 286
    .end local v3    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    .end local v4    # "state":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 296
    .end local v0    # "size":I
    .end local v2    # "i":I
    :cond_6d
    return-void
.end method

.method public blacklist addPss(JJJZIJLandroid/util/ArrayMap;)V
    .registers 57
    .param p1, "pss"    # J
    .param p3, "uss"    # J
    .param p5, "rss"    # J
    .param p7, "always"    # Z
    .param p8, "type"    # I
    .param p9, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZIJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 603
    .local p11, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p11

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 604
    const-wide/16 v2, 0x1

    packed-switch p8, :pswitch_data_fe

    goto :goto_5d

    .line 622
    :pswitch_d
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    .line 623
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    add-long v3, v3, p9

    iput-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    goto :goto_5d

    .line 618
    :pswitch_1d
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    .line 619
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    add-long v3, v3, p9

    iput-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    .line 620
    goto :goto_5d

    .line 614
    :pswitch_2d
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    .line 615
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    add-long v3, v3, p9

    iput-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    .line 616
    goto :goto_5d

    .line 610
    :pswitch_3d
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    .line 611
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    add-long v3, v3, p9

    iput-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    .line 612
    goto :goto_5d

    .line 606
    :pswitch_4d
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    .line 607
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    add-long v3, v3, p9

    iput-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    .line 608
    nop

    .line 626
    :goto_5d
    if-nez p7, :cond_73

    .line 627
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v2, v3, :cond_73

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_73

    .line 629
    return-void

    .line 632
    :cond_73
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    iput v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 633
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    .line 634
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_fd

    .line 636
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v5, 0x1

    move-wide/from16 v8, p1

    move-wide/from16 v10, p1

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    move-wide/from16 v20, p5

    move-wide/from16 v22, p5

    move-wide/from16 v6, p1

    move-wide/from16 v12, p3

    move-wide/from16 v18, p5

    invoke-virtual/range {v3 .. v23}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJJJJ)V

    .line 638
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, v2, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-wide/from16 v29, p1

    move-wide/from16 v31, p1

    move-wide/from16 v35, p3

    move-wide/from16 v37, p3

    move-wide/from16 v41, p5

    move-wide/from16 v43, p5

    move-wide/from16 v27, p1

    move-wide/from16 v33, p3

    move-wide/from16 v39, p5

    move-object/from16 v24, v2

    invoke-static/range {v24 .. v44}, Lcom/android/internal/app/procstats/PssTable;->mergeStats([JIIJJJJJJJJJ)V

    .line 642
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v2, v2, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v2, :cond_c4

    .line 643
    return-void

    .line 646
    :cond_c4
    if-eqz v1, :cond_fd

    .line 647
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "ip":I
    :goto_cc
    if-ltz v2, :cond_fd

    .line 648
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v3

    .line 649
    .local v3, "fixedProc":Lcom/android/internal/app/procstats/ProcessState;
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/16 v26, 0x1

    move-wide/from16 v29, p1

    move-wide/from16 v31, p1

    move-wide/from16 v35, p3

    move-wide/from16 v37, p3

    move-wide/from16 v41, p5

    move-wide/from16 v43, p5

    move-wide/from16 v27, p1

    move-wide/from16 v33, p3

    move-wide/from16 v39, p5

    move-object/from16 v24, v4

    move/from16 v25, v5

    invoke-virtual/range {v24 .. v44}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJJJJ)V

    .line 651
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/16 v25, 0x0

    move-object/from16 v24, v4

    invoke-static/range {v24 .. v44}, Lcom/android/internal/app/procstats/PssTable;->mergeStats([JIIJJJJJJJJJ)V

    .line 647
    .end local v3    # "fixedProc":Lcom/android/internal/app/procstats/ProcessState;
    add-int/lit8 v2, v2, -0x1

    goto :goto_cc

    .line 656
    .end local v2    # "ip":I
    :cond_fd
    return-void

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_3d
        :pswitch_2d
        :pswitch_1d
        :pswitch_d
    .end packed-switch
.end method

.method public blacklist aggregatePss(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .registers 36
    .param p1, "data"    # Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    .param p2, "now"    # J

    .line 828
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v2}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    .line 829
    .local v2, "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    new-instance v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    .line 830
    .local v3, "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    new-instance v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v4}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    .line 831
    .local v4, "cachedPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    const/4 v5, 0x0

    .line 832
    .local v5, "havePss":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_15
    iget-object v7, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v7}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v7

    const/16 v8, 0xa

    const/4 v9, 0x5

    const-wide/16 v10, 0x0

    if-ge v6, v7, :cond_4d

    .line 833
    iget-object v7, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v7, v6}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v7

    .line 834
    .local v7, "key":I
    invoke-static {v7}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v12

    .line 835
    .local v12, "type":I
    rem-int/lit8 v13, v12, 0x10

    .line 836
    .local v13, "procState":I
    invoke-virtual {v0, v12}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v14

    .line 837
    .local v14, "samples":J
    cmp-long v10, v14, v10

    if-lez v10, :cond_4a

    .line 838
    invoke-virtual {v0, v12}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v10

    .line 839
    .local v10, "avg":J
    const/4 v5, 0x1

    .line 840
    if-gt v13, v9, :cond_41

    .line 841
    invoke-virtual {v2, v10, v11, v14, v15}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto :goto_4a

    .line 842
    :cond_41
    if-gt v13, v8, :cond_47

    .line 843
    invoke-virtual {v3, v10, v11, v14, v15}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto :goto_4a

    .line 845
    :cond_47
    invoke-virtual {v4, v10, v11, v14, v15}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 832
    .end local v7    # "key":I
    .end local v10    # "avg":J
    .end local v12    # "type":I
    .end local v13    # "procState":I
    .end local v14    # "samples":J
    :cond_4a
    :goto_4a
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 849
    .end local v6    # "i":I
    :cond_4d
    if-nez v5, :cond_50

    .line 850
    return-void

    .line 852
    :cond_50
    const/4 v6, 0x0

    .line 853
    .local v6, "fgHasBg":Z
    const/4 v7, 0x0

    .line 854
    .local v7, "fgHasCached":Z
    const/4 v12, 0x0

    .line 855
    .local v12, "bgHasCached":Z
    iget-wide v13, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    const-wide/16 v15, 0x3

    cmp-long v13, v13, v15

    if-gez v13, :cond_6c

    iget-wide v13, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v13, v13, v10

    if-lez v13, :cond_6c

    .line 856
    const/4 v6, 0x1

    .line 857
    iget-wide v13, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    move-wide/from16 v17, v10

    iget-wide v10, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v2, v13, v14, v10, v11}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto :goto_6e

    .line 855
    :cond_6c
    move-wide/from16 v17, v10

    .line 859
    :goto_6e
    iget-wide v10, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v10, v10, v15

    if-gez v10, :cond_82

    iget-wide v10, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v10, v10, v17

    if-lez v10, :cond_82

    .line 860
    const/4 v7, 0x1

    .line 861
    iget-wide v10, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v2, v10, v11, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 863
    :cond_82
    iget-wide v10, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v10, v10, v15

    if-gez v10, :cond_96

    iget-wide v10, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v10, v10, v17

    if-lez v10, :cond_96

    .line 864
    const/4 v12, 0x1

    .line 865
    iget-wide v10, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v3, v10, v11, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 867
    :cond_96
    iget-wide v10, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v10, v10, v15

    if-gez v10, :cond_ab

    if-nez v6, :cond_ab

    iget-wide v10, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v10, v10, v17

    if-lez v10, :cond_ab

    .line 868
    iget-wide v10, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v3, v10, v11, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 870
    :cond_ab
    iget-wide v10, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v10, v10, v15

    if-gez v10, :cond_c0

    if-nez v12, :cond_c0

    iget-wide v10, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v10, v10, v17

    if-lez v10, :cond_c0

    .line 871
    iget-wide v10, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v4, v10, v11, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 873
    :cond_c0
    iget-wide v10, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v10, v10, v15

    if-gez v10, :cond_d5

    if-nez v7, :cond_d5

    iget-wide v10, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v10, v10, v17

    if-lez v10, :cond_d5

    .line 874
    iget-wide v10, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v4, v10, v11, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 876
    :cond_d5
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_d6
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v11}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v11

    if-ge v10, v11, :cond_19f

    .line 877
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v11, v10}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v11

    .line 878
    .local v11, "key":I
    invoke-static {v11}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v13

    .line 879
    .local v13, "type":I
    iget-object v14, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v14, v11}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v14

    .line 880
    .local v14, "time":J
    iget v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v8, v13, :cond_fa

    .line 881
    move/from16 v19, v10

    .end local v10    # "i":I
    .local v19, "i":I
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v9, p2, v9

    add-long/2addr v14, v9

    goto :goto_fc

    .line 880
    .end local v19    # "i":I
    .restart local v10    # "i":I
    :cond_fa
    move/from16 v19, v10

    .line 883
    .end local v10    # "i":I
    .restart local v19    # "i":I
    :goto_fc
    rem-int/lit8 v9, v13, 0x10

    .line 884
    .local v9, "procState":I
    iget-object v10, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    aget-wide v20, v10, v9

    add-long v20, v20, v14

    aput-wide v20, v10, v9

    .line 885
    invoke-virtual {v0, v13}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v20

    .line 887
    .local v20, "samples":J
    cmp-long v10, v20, v17

    if-lez v10, :cond_11e

    .line 888
    invoke-virtual {v0, v13}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v22

    move/from16 v24, v6

    move v10, v9

    move-wide/from16 v8, v20

    move-wide/from16 v30, v22

    move/from16 v23, v5

    move-wide/from16 v5, v30

    .local v22, "avg":J
    goto :goto_142

    .line 889
    .end local v22    # "avg":J
    :cond_11e
    const/4 v8, 0x5

    if-gt v9, v8, :cond_12b

    .line 890
    move v10, v9

    .end local v9    # "procState":I
    .local v10, "procState":I
    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 891
    .end local v20    # "samples":J
    .local v8, "samples":J
    move/from16 v23, v5

    move/from16 v24, v6

    .end local v5    # "havePss":Z
    .end local v6    # "fgHasBg":Z
    .local v23, "havePss":Z
    .local v24, "fgHasBg":Z
    iget-wide v5, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .local v5, "avg":J
    goto :goto_142

    .line 892
    .end local v8    # "samples":J
    .end local v10    # "procState":I
    .end local v23    # "havePss":Z
    .end local v24    # "fgHasBg":Z
    .local v5, "havePss":Z
    .restart local v6    # "fgHasBg":Z
    .restart local v9    # "procState":I
    .restart local v20    # "samples":J
    :cond_12b
    move/from16 v23, v5

    move/from16 v24, v6

    move v10, v9

    .end local v5    # "havePss":Z
    .end local v6    # "fgHasBg":Z
    .end local v9    # "procState":I
    .restart local v10    # "procState":I
    .restart local v23    # "havePss":Z
    .restart local v24    # "fgHasBg":Z
    const/16 v5, 0xa

    if-gt v10, v5, :cond_139

    .line 893
    iget-wide v8, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 894
    .end local v20    # "samples":J
    .restart local v8    # "samples":J
    iget-wide v5, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .local v5, "avg":J
    goto :goto_142

    .line 896
    .end local v5    # "avg":J
    .end local v8    # "samples":J
    .restart local v20    # "samples":J
    :cond_139
    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 897
    .end local v20    # "samples":J
    .local v5, "samples":J
    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    move-wide/from16 v30, v8

    move-wide v8, v5

    move-wide/from16 v5, v30

    .line 899
    .local v5, "avg":J
    .restart local v8    # "samples":J
    :goto_142
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    .end local v2    # "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .end local v3    # "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .local v20, "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .local v21, "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    aget-wide v2, v0, v10

    long-to-double v2, v2

    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v0, v0, v10

    move-wide/from16 v25, v2

    int-to-double v2, v0

    mul-double v2, v2, v25

    move-wide/from16 v25, v2

    long-to-double v2, v5

    move-wide/from16 v27, v2

    long-to-double v2, v8

    mul-double v2, v2, v27

    add-double v2, v25, v2

    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v0, v0, v10

    move-wide/from16 v25, v2

    int-to-long v2, v0

    add-long/2addr v2, v8

    long-to-double v2, v2

    div-double v2, v25, v2

    .line 903
    .local v2, "newAvg":D
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    move/from16 v25, v7

    move-wide/from16 v26, v8

    .end local v7    # "fgHasCached":Z
    .end local v8    # "samples":J
    .local v25, "fgHasCached":Z
    .local v26, "samples":J
    double-to-long v7, v2

    aput-wide v7, v0, v10

    .line 904
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v7, v0, v10

    int-to-long v7, v7

    add-long v7, v7, v26

    long-to-int v7, v7

    aput v7, v0, v10

    .line 905
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v7, v0, v10

    move-object v9, v0

    long-to-double v0, v5

    move-wide/from16 v28, v0

    long-to-double v0, v14

    mul-double v0, v0, v28

    add-double/2addr v7, v0

    aput-wide v7, v9, v10

    .line 876
    .end local v2    # "newAvg":D
    .end local v5    # "avg":J
    .end local v10    # "procState":I
    .end local v11    # "key":I
    .end local v13    # "type":I
    .end local v14    # "time":J
    .end local v26    # "samples":J
    add-int/lit8 v10, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move/from16 v5, v23

    move/from16 v6, v24

    move/from16 v7, v25

    const/16 v8, 0xa

    const/4 v9, 0x5

    .end local v19    # "i":I
    .local v10, "i":I
    goto/16 :goto_d6

    .line 907
    .end local v10    # "i":I
    .end local v20    # "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .end local v21    # "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .end local v23    # "havePss":Z
    .end local v24    # "fgHasBg":Z
    .end local v25    # "fgHasCached":Z
    .local v2, "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .restart local v3    # "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .local v5, "havePss":Z
    .restart local v6    # "fgHasBg":Z
    .restart local v7    # "fgHasCached":Z
    :cond_19f
    return-void
.end method

.method public blacklist clone(J)Lcom/android/internal/app/procstats/ProcessState;
    .registers 12
    .param p1, "now"    # J

    .line 214
    new-instance v0, Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    move-object v1, p0

    move-wide v7, p1

    .end local p1    # "now":J
    .local v7, "now":J
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V

    .line 215
    .local v0, "pnew":Lcom/android/internal/app/procstats/ProcessState;
    iget-object p1, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object p2, v1, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {p1, p2}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 216
    iget-object p1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget-object p2, v1, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/16 v2, 0xa

    invoke-virtual {p1, p2, v2}, Lcom/android/internal/app/procstats/PssTable;->copyFrom(Lcom/android/internal/app/procstats/SparseMappingTable$Table;I)V

    .line 217
    iget-object p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 p2, 0x0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    invoke-static {p1, p2, v3, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    invoke-virtual {p0, v7, v8}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 219
    iget p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iput p1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 220
    iget p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iput p1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 221
    iget-wide p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iput-wide p1, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 222
    iget-wide p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide p1, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 223
    iget-wide p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide p1, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 224
    iget-boolean p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    iput-boolean p1, v0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 225
    iget p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    iput p1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 226
    iget p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    iput p1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 227
    return-object v0
.end method

.method public blacklist commitStateTime(J)V
    .registers 9
    .param p1, "now"    # J

    .line 521
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    .line 522
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v0, p1, v0

    .line 523
    .local v0, "dur":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_16

    .line 524
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 526
    :cond_16
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    sub-long v4, p1, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 527
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    .line 529
    .end local v0    # "dur":J
    :cond_21
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 530
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz v0, :cond_3f

    .line 531
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ip":I
    :goto_2f
    if-ltz v0, :cond_3f

    .line 532
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 533
    .local v1, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->commitStateTime(J)V

    .line 531
    .end local v1    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_2f

    .line 536
    .end local v0    # "ip":I
    :cond_3f
    return-void
.end method

.method public blacklist computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V
    .registers 38
    .param p1, "data"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    .param p2, "now"    # J

    .line 1181
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 1182
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    .line 1185
    const/4 v4, 0x0

    .local v4, "is":I
    :goto_1d
    iget-object v5, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    array-length v5, v5

    if-ge v4, v5, :cond_181

    .line 1186
    const/4 v5, 0x0

    .local v5, "im":I
    :goto_23
    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    array-length v6, v6

    if-ge v5, v6, :cond_177

    .line 1187
    const/4 v6, 0x0

    .local v6, "ip":I
    :goto_29
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    array-length v7, v7

    if-ge v6, v7, :cond_16b

    .line 1188
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    aget v7, v7, v4

    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    aget v8, v8, v5

    add-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x10

    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    aget v8, v8, v6

    add-int/2addr v7, v8

    .line 1190
    .local v7, "bucket":I
    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    move-wide/from16 v10, p2

    invoke-virtual {v0, v7, v10, v11}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v12

    add-long/2addr v8, v12

    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 1191
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v8

    .line 1192
    .local v8, "samples":J
    cmp-long v12, v8, v2

    if-lez v12, :cond_157

    .line 1193
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    move-result-wide v12

    .line 1194
    .local v12, "minPss":J
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v14

    .line 1195
    .local v14, "avgPss":J
    move-wide/from16 v16, v2

    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    move-result-wide v2

    .line 1196
    .local v2, "maxPss":J
    move/from16 v18, v4

    move/from16 v19, v5

    .end local v4    # "is":I
    .end local v5    # "im":I
    .local v18, "is":I
    .local v19, "im":I
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    move-result-wide v4

    .line 1197
    .local v4, "minUss":J
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    move-result-wide v10

    .line 1198
    .local v10, "avgUss":J
    move-wide/from16 v20, v8

    .end local v8    # "samples":J
    .local v20, "samples":J
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    move-result-wide v8

    .line 1199
    .local v8, "maxUss":J
    move-wide/from16 v22, v8

    .end local v8    # "maxUss":J
    .local v22, "maxUss":J
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMinimum(I)J

    move-result-wide v8

    .line 1200
    .local v8, "minRss":J
    move-wide/from16 v24, v8

    .end local v8    # "minRss":J
    .local v24, "minRss":J
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssAverage(I)J

    move-result-wide v8

    .line 1201
    .local v8, "avgRss":J
    move-wide/from16 v26, v8

    .end local v8    # "avgRss":J
    .local v26, "avgRss":J
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMaximum(I)J

    move-result-wide v8

    .line 1202
    .local v8, "maxRss":J
    move/from16 v28, v6

    move/from16 v29, v7

    .end local v6    # "ip":I
    .end local v7    # "bucket":I
    .local v28, "ip":I
    .local v29, "bucket":I
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    cmp-long v6, v6, v16

    if-nez v6, :cond_b0

    .line 1203
    iput-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    .line 1204
    iput-wide v14, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 1205
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 1206
    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    .line 1207
    iput-wide v10, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 1208
    move-wide/from16 v6, v22

    .end local v22    # "maxUss":J
    .local v6, "maxUss":J
    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    .line 1209
    move-wide/from16 v6, v24

    .end local v24    # "minRss":J
    .local v6, "minRss":J
    .restart local v22    # "maxUss":J
    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    .line 1210
    move-wide/from16 v6, v26

    .end local v26    # "avgRss":J
    .local v6, "avgRss":J
    .restart local v24    # "minRss":J
    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    .line 1211
    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    move-wide/from16 v30, v2

    move-wide v2, v8

    move-wide/from16 v8, v20

    move-wide/from16 v20, v12

    move-wide/from16 v12, v24

    goto/16 :goto_14f

    .line 1213
    .end local v6    # "avgRss":J
    .restart local v26    # "avgRss":J
    :cond_b0
    move-wide/from16 v6, v26

    .end local v26    # "avgRss":J
    .restart local v6    # "avgRss":J
    move-wide/from16 v26, v8

    .end local v8    # "maxRss":J
    .local v26, "maxRss":J
    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    cmp-long v8, v12, v8

    if-gez v8, :cond_bc

    .line 1214
    iput-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    .line 1216
    :cond_bc
    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    long-to-double v8, v8

    move-wide/from16 v30, v8

    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    long-to-double v8, v8

    mul-double v8, v8, v30

    move-wide/from16 v30, v8

    long-to-double v8, v14

    move-wide/from16 v32, v8

    move-wide/from16 v8, v20

    move-wide/from16 v20, v12

    .end local v12    # "minPss":J
    .local v8, "samples":J
    .local v20, "minPss":J
    long-to-double v12, v8

    mul-double v12, v12, v32

    add-double v12, v30, v12

    move-wide/from16 v30, v12

    iget-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v12, v8

    long-to-double v12, v12

    div-double v12, v30, v12

    double-to-long v12, v12

    iput-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 1218
    iget-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    cmp-long v12, v2, v12

    if-lez v12, :cond_e7

    .line 1219
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 1221
    :cond_e7
    iget-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    cmp-long v12, v4, v12

    if-gez v12, :cond_ef

    .line 1222
    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    .line 1224
    :cond_ef
    iget-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    long-to-double v12, v12

    move-wide/from16 v30, v2

    .end local v2    # "maxPss":J
    .local v30, "maxPss":J
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    long-to-double v2, v2

    mul-double/2addr v12, v2

    long-to-double v2, v10

    move-wide/from16 v32, v2

    long-to-double v2, v8

    mul-double v2, v2, v32

    add-double/2addr v12, v2

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v2, v8

    long-to-double v2, v2

    div-double/2addr v12, v2

    double-to-long v2, v12

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 1226
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    cmp-long v2, v22, v2

    if-lez v2, :cond_112

    .line 1227
    move-wide/from16 v2, v22

    .end local v22    # "maxUss":J
    .local v2, "maxUss":J
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    goto :goto_114

    .line 1226
    .end local v2    # "maxUss":J
    .restart local v22    # "maxUss":J
    :cond_112
    move-wide/from16 v2, v22

    .line 1229
    .end local v22    # "maxUss":J
    .restart local v2    # "maxUss":J
    :goto_114
    iget-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    cmp-long v12, v24, v12

    if-gez v12, :cond_11f

    .line 1230
    move-wide/from16 v12, v24

    .end local v24    # "minRss":J
    .local v12, "minRss":J
    iput-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    goto :goto_121

    .line 1229
    .end local v12    # "minRss":J
    .restart local v24    # "minRss":J
    :cond_11f
    move-wide/from16 v12, v24

    .line 1232
    .end local v24    # "minRss":J
    .restart local v12    # "minRss":J
    :goto_121
    move-wide/from16 v22, v2

    .end local v2    # "maxUss":J
    .restart local v22    # "maxUss":J
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    long-to-double v2, v2

    move-wide/from16 v24, v2

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    long-to-double v2, v2

    mul-double v2, v2, v24

    move-wide/from16 v24, v2

    long-to-double v2, v6

    move-wide/from16 v32, v2

    long-to-double v2, v8

    mul-double v2, v2, v32

    add-double v2, v24, v2

    move-wide/from16 v24, v2

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v2, v8

    long-to-double v2, v2

    div-double v2, v24, v2

    double-to-long v2, v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    .line 1234
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    cmp-long v2, v26, v2

    if-lez v2, :cond_14d

    .line 1235
    move-wide/from16 v2, v26

    .end local v26    # "maxRss":J
    .local v2, "maxRss":J
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    goto :goto_14f

    .line 1234
    .end local v2    # "maxRss":J
    .restart local v26    # "maxRss":J
    :cond_14d
    move-wide/from16 v2, v26

    .line 1238
    .end local v26    # "maxRss":J
    .restart local v2    # "maxRss":J
    :goto_14f
    move-wide/from16 v26, v2

    .end local v2    # "maxRss":J
    .restart local v26    # "maxRss":J
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v2, v8

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    goto :goto_161

    .line 1192
    .end local v10    # "avgUss":J
    .end local v12    # "minRss":J
    .end local v14    # "avgPss":J
    .end local v18    # "is":I
    .end local v19    # "im":I
    .end local v20    # "minPss":J
    .end local v22    # "maxUss":J
    .end local v26    # "maxRss":J
    .end local v28    # "ip":I
    .end local v29    # "bucket":I
    .end local v30    # "maxPss":J
    .local v4, "is":I
    .restart local v5    # "im":I
    .local v6, "ip":I
    .restart local v7    # "bucket":I
    :cond_157
    move-wide/from16 v16, v2

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v28, v6

    move/from16 v29, v7

    .line 1187
    .end local v4    # "is":I
    .end local v5    # "im":I
    .end local v6    # "ip":I
    .end local v7    # "bucket":I
    .end local v8    # "samples":J
    .restart local v18    # "is":I
    .restart local v19    # "im":I
    .restart local v28    # "ip":I
    :goto_161
    add-int/lit8 v6, v28, 0x1

    move-wide/from16 v2, v16

    move/from16 v4, v18

    move/from16 v5, v19

    .end local v28    # "ip":I
    .restart local v6    # "ip":I
    goto/16 :goto_29

    .end local v18    # "is":I
    .end local v19    # "im":I
    .restart local v4    # "is":I
    .restart local v5    # "im":I
    :cond_16b
    move-wide/from16 v16, v2

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v28, v6

    .line 1186
    .end local v4    # "is":I
    .end local v5    # "im":I
    .end local v6    # "ip":I
    .restart local v18    # "is":I
    .restart local v19    # "im":I
    add-int/lit8 v5, v19, 0x1

    .end local v19    # "im":I
    .restart local v5    # "im":I
    goto/16 :goto_23

    .end local v18    # "is":I
    .restart local v4    # "is":I
    :cond_177
    move-wide/from16 v16, v2

    move/from16 v18, v4

    move/from16 v19, v5

    .line 1185
    .end local v4    # "is":I
    .end local v5    # "im":I
    .restart local v18    # "is":I
    add-int/lit8 v4, v18, 0x1

    .end local v18    # "is":I
    .restart local v4    # "is":I
    goto/16 :goto_1d

    .line 1243
    .end local v4    # "is":I
    :cond_181
    return-void
.end method

.method public blacklist computeProcessTimeLocked([I[I[IJ)J
    .registers 14
    .param p1, "screenStates"    # [I
    .param p2, "memStates"    # [I
    .param p3, "procStates"    # [I
    .param p4, "now"    # J

    .line 911
    const-wide/16 v0, 0x0

    .line 912
    .local v0, "totalTime":J
    const/4 v2, 0x0

    .local v2, "is":I
    :goto_3
    array-length v3, p1

    if-ge v2, v3, :cond_26

    .line 913
    const/4 v3, 0x0

    .local v3, "im":I
    :goto_7
    array-length v4, p2

    if-ge v3, v4, :cond_23

    .line 914
    const/4 v4, 0x0

    .local v4, "ip":I
    :goto_b
    array-length v5, p3

    if-ge v4, v5, :cond_20

    .line 915
    aget v5, p1, v2

    aget v6, p2, v3

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x10

    aget v6, p3, v4

    add-int/2addr v5, v6

    .line 917
    .local v5, "bucket":I
    invoke-virtual {p0, v5, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 914
    .end local v5    # "bucket":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 913
    .end local v4    # "ip":I
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 912
    .end local v3    # "im":I
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 921
    .end local v2    # "is":I
    :cond_26
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    .line 922
    return-wide v0
.end method

.method public blacklist decActiveServices(Ljava/lang/String;)V
    .registers 4
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 556
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_9

    .line 557
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->decActiveServices(Ljava/lang/String;)V

    .line 559
    :cond_9
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 560
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-gez v0, :cond_52

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proc active services underrun: pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " proc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 565
    :cond_52
    return-void
.end method

.method public blacklist decStartedServices(IJLjava/lang/String;)V
    .registers 7
    .param p1, "memFactor"    # I
    .param p2, "now"    # J
    .param p4, "serviceName"    # Ljava/lang/String;

    .line 588
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_9

    .line 589
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->decStartedServices(IJLjava/lang/String;)V

    .line 591
    :cond_9
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 592
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-nez v0, :cond_20

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    rem-int/lit8 v0, v0, 0x10

    const/16 v1, 0x9

    if-ne v0, v1, :cond_20

    .line 593
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedStateIdv(IJ)V

    goto :goto_59

    .line 594
    :cond_20
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-gez v0, :cond_59

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proc started services underrun: pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 599
    :cond_59
    :goto_59
    return-void
.end method

.method public blacklist dumpAggregatedProtoForStatsd(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IJLcom/android/internal/app/ProcessMap;Landroid/util/SparseArray;)V
    .registers 37
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "procName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/lang/String;",
            "IJ",
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/app/procstats/ProcessStats$PackageState;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1639
    .local p8, "procToPkgMap":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Landroid/util/ArraySet<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .local p9, "uidToPkgMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    move-object/from16 v6, p0

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    move-object v7, v0

    .line 1640
    .local v7, "durationByState":Landroid/util/SparseLongArray;
    const/4 v0, 0x0

    .line 1641
    .local v0, "didCurState":Z
    const/4 v1, 0x0

    move/from16 v18, v0

    .end local v0    # "didCurState":Z
    .local v1, "i":I
    .local v18, "didCurState":Z
    :goto_c
    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    const/16 v2, 0x9

    if-ge v1, v0, :cond_4f

    .line 1642
    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v0

    .line 1643
    .local v0, "key":I
    invoke-static {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 1644
    .local v3, "type":I
    invoke-static {v3}, Lcom/android/internal/app/procstats/DumpUtils;->aggregateCurrentProcessState(I)I

    move-result v4

    .line 1645
    .local v4, "aggregatedType":I
    rem-int/lit8 v5, v3, 0x10

    if-ne v5, v2, :cond_29

    .line 1647
    goto :goto_4c

    .line 1650
    :cond_29
    iget-object v2, v6, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v8

    .line 1651
    .local v8, "time":J
    iget v2, v6, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v2, v3, :cond_3a

    .line 1652
    const/16 v18, 0x1

    .line 1653
    iget-wide v10, v6, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v10, p6, v10

    add-long/2addr v8, v10

    .line 1655
    :cond_3a
    invoke-virtual {v7, v4}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    .line 1656
    .local v2, "index":I
    if-ltz v2, :cond_49

    .line 1657
    invoke-virtual {v7, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v10

    add-long/2addr v10, v8

    invoke-virtual {v7, v4, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_4c

    .line 1659
    :cond_49
    invoke-virtual {v7, v4, v8, v9}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1641
    .end local v0    # "key":I
    .end local v2    # "index":I
    .end local v3    # "type":I
    .end local v4    # "aggregatedType":I
    .end local v8    # "time":J
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1662
    .end local v1    # "i":I
    :cond_4f
    if-nez v18, :cond_7c

    iget v0, v6, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7c

    iget v0, v6, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    rem-int/lit8 v0, v0, 0x10

    if-eq v0, v2, :cond_7c

    .line 1665
    iget v0, v6, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    invoke-static {v0}, Lcom/android/internal/app/procstats/DumpUtils;->aggregateCurrentProcessState(I)I

    move-result v0

    .line 1666
    .local v0, "aggregatedType":I
    invoke-virtual {v7, v0}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v1

    .line 1667
    .local v1, "index":I
    if-ltz v1, :cond_75

    .line 1668
    iget-wide v2, v6, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p6, v2

    .line 1669
    invoke-virtual {v7, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1668
    invoke-virtual {v7, v0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_7c

    .line 1671
    :cond_75
    iget-wide v2, v6, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p6, v2

    invoke-virtual {v7, v0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1676
    .end local v0    # "aggregatedType":I
    .end local v1    # "index":I
    :cond_7c
    :goto_7c
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    move-object v8, v0

    .line 1677
    .local v8, "meanRssByState":Landroid/util/SparseLongArray;
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    move-object v9, v0

    .line 1679
    .local v9, "maxRssByState":Landroid/util/SparseLongArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_89
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_ef

    .line 1680
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v1

    .line 1681
    .local v1, "key":I
    invoke-static {v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v4

    .line 1682
    .local v4, "type":I
    invoke-static {v4}, Lcom/android/internal/app/procstats/DumpUtils;->aggregateCurrentProcessState(I)I

    move-result v5

    .line 1683
    .local v5, "aggregatedType":I
    invoke-virtual {v7, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v10

    if-gez v10, :cond_a8

    .line 1685
    goto :goto_ec

    .line 1688
    :cond_a8
    iget-object v10, v6, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v10, v1}, Lcom/android/internal/app/procstats/PssTable;->getRssMeanAndMax(I)[J

    move-result-object v10

    .line 1691
    .local v10, "rssMeanAndMax":[J
    aget-wide v11, v10, v2

    iget-object v2, v6, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v13, v4

    invoke-virtual {v2, v13}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v13

    mul-long/2addr v11, v13

    .line 1692
    .local v11, "meanTimesDuration":J
    invoke-virtual {v8, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_c8

    .line 1693
    nop

    .line 1694
    invoke-virtual {v8, v5}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v13

    add-long/2addr v13, v11

    .line 1693
    invoke-virtual {v8, v5, v13, v14}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_cb

    .line 1696
    :cond_c8
    invoke-virtual {v8, v5, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1700
    :goto_cb
    invoke-virtual {v9, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_e1

    .line 1701
    invoke-virtual {v9, v5}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v13

    aget-wide v15, v10, v3

    cmp-long v2, v13, v15

    if-gez v2, :cond_e1

    .line 1702
    aget-wide v2, v10, v3

    invoke-virtual {v9, v5, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_ec

    .line 1703
    :cond_e1
    invoke-virtual {v9, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_ec

    .line 1704
    aget-wide v2, v10, v3

    invoke-virtual {v9, v5, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1679
    .end local v1    # "key":I
    .end local v4    # "type":I
    .end local v5    # "aggregatedType":I
    .end local v10    # "rssMeanAndMax":[J
    .end local v11    # "meanTimesDuration":J
    :cond_ec
    :goto_ec
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .line 1709
    .end local v0    # "i":I
    :cond_ef
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_f0
    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_11c

    .line 1710
    invoke-virtual {v7, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    .line 1711
    .local v1, "aggregatedKey":I
    invoke-virtual {v8, v1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_101

    .line 1713
    goto :goto_119

    .line 1715
    :cond_101
    invoke-virtual {v7, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    .line 1716
    .local v4, "duration":J
    nop

    .line 1717
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_112

    invoke-virtual {v8, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v10

    div-long/2addr v10, v4

    goto :goto_116

    .line 1718
    :cond_112
    invoke-virtual {v8, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v10

    .line 1716
    :goto_116
    invoke-virtual {v8, v1, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1709
    .end local v1    # "aggregatedKey":I
    .end local v4    # "duration":J
    :goto_119
    add-int/lit8 v0, v0, 0x1

    goto :goto_f0

    .line 1722
    .end local v0    # "i":I
    :cond_11c
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 1723
    .local v10, "token":J
    iget-object v4, v6, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget-boolean v0, v6, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_139

    iget v0, v6, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 1724
    move-object/from16 v12, p9

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-le v0, v3, :cond_137

    goto :goto_13b

    :cond_137
    move v5, v2

    goto :goto_13c

    .line 1723
    :cond_139
    move-object/from16 v12, p9

    .line 1724
    :goto_13b
    move v5, v3

    .line 1723
    :goto_13c
    const-wide v1, 0x10900000001L

    move-object/from16 v0, p1

    move-object/from16 v3, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessState;->writeCompressedProcessName(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/lang/String;Z)V

    .line 1725
    const-wide v1, 0x10500000002L

    move/from16 v13, p5

    invoke-virtual {v0, v1, v2, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1727
    const/4 v1, 0x0

    move v14, v1

    .local v14, "i":I
    :goto_154
    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-ge v14, v1, :cond_1cb

    .line 1728
    const-wide v1, 0x20b00000005L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 1730
    .local v1, "stateToken":J
    invoke-virtual {v7, v14}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v5

    .line 1732
    .local v5, "aggregatedKey":I
    move-wide v3, v1

    .end local v1    # "stateToken":J
    .local v3, "stateToken":J
    const-wide v1, 0x10e00000001L

    move-wide v15, v3

    .end local v3    # "stateToken":J
    .local v15, "stateToken":J
    const-wide v3, 0x10e0000000aL

    move-wide/from16 v19, v15

    .end local v15    # "stateToken":J
    .local v19, "stateToken":J
    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/procstats/DumpUtils;->printAggregatedProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJI)V

    .line 1736
    const-wide v1, 0x10300000004L

    invoke-virtual {v7, v5}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1738
    nop

    .line 1742
    invoke-virtual {v8, v5}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    long-to-int v1, v1

    .line 1743
    invoke-virtual {v9, v5}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    long-to-int v2, v2

    .line 1738
    move-object v3, v8

    move-object v4, v9

    .end local v8    # "meanRssByState":Landroid/util/SparseLongArray;
    .end local v9    # "maxRssByState":Landroid/util/SparseLongArray;
    .local v3, "meanRssByState":Landroid/util/SparseLongArray;
    .local v4, "maxRssByState":Landroid/util/SparseLongArray;
    const-wide v8, 0x10b00000008L

    move-wide v15, v10

    .end local v10    # "token":J
    .local v15, "token":J
    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move/from16 v21, v14

    move-wide/from16 v16, v15

    .end local v14    # "i":I
    .end local v15    # "token":J
    .local v16, "token":J
    .local v21, "i":I
    const-wide/16 v14, 0x0

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v7

    move-object v7, v0

    move-wide/from16 v25, v16

    move/from16 v16, v1

    move/from16 v17, v2

    move-wide/from16 v0, v25

    move/from16 v2, v21

    move-object/from16 v21, v24

    .end local v3    # "meanRssByState":Landroid/util/SparseLongArray;
    .end local v4    # "maxRssByState":Landroid/util/SparseLongArray;
    .end local v7    # "durationByState":Landroid/util/SparseLongArray;
    .end local v16    # "token":J
    .local v0, "token":J
    .local v2, "i":I
    .local v21, "durationByState":Landroid/util/SparseLongArray;
    .local v22, "meanRssByState":Landroid/util/SparseLongArray;
    .local v23, "maxRssByState":Landroid/util/SparseLongArray;
    invoke-static/range {v7 .. v17}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJII)V

    .line 1745
    move-wide/from16 v3, v19

    .end local v19    # "stateToken":J
    .local v3, "stateToken":J
    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1727
    .end local v3    # "stateToken":J
    .end local v5    # "aggregatedKey":I
    add-int/lit8 v14, v2, 0x1

    move/from16 v13, p5

    move-object/from16 v12, p9

    move-wide v10, v0

    move-object v0, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    .end local v2    # "i":I
    .restart local v14    # "i":I
    goto :goto_154

    .end local v0    # "token":J
    .end local v21    # "durationByState":Landroid/util/SparseLongArray;
    .end local v22    # "meanRssByState":Landroid/util/SparseLongArray;
    .end local v23    # "maxRssByState":Landroid/util/SparseLongArray;
    .restart local v7    # "durationByState":Landroid/util/SparseLongArray;
    .restart local v8    # "meanRssByState":Landroid/util/SparseLongArray;
    .restart local v9    # "maxRssByState":Landroid/util/SparseLongArray;
    .restart local v10    # "token":J
    :cond_1cb
    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object v7, v0

    move-wide v0, v10

    .line 1748
    .end local v7    # "durationByState":Landroid/util/SparseLongArray;
    .end local v8    # "meanRssByState":Landroid/util/SparseLongArray;
    .end local v10    # "token":J
    .end local v14    # "i":I
    .restart local v0    # "token":J
    .restart local v21    # "durationByState":Landroid/util/SparseLongArray;
    .restart local v22    # "meanRssByState":Landroid/util/SparseLongArray;
    move-wide v15, v0

    .end local v0    # "token":J
    .restart local v15    # "token":J
    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const-wide v2, 0x20b00000007L

    move-wide/from16 v4, p6

    move-object v1, v7

    move-wide v8, v15

    move-object/from16 v7, p9

    .end local v15    # "token":J
    .local v8, "token":J
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessStats;->dumpFilteredAssociationStatesProtoForProc(Landroid/util/proto/ProtoOutputStream;JJLcom/android/internal/app/procstats/ProcessState;Landroid/util/SparseArray;)V

    .line 1750
    move-object v0, v1

    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1751
    return-void
.end method

.method public blacklist dumpAllPssCheckin(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1411
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    .line 1412
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_30

    .line 1413
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v2

    .line 1414
    .local v2, "key":I
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 1415
    .local v3, "type":I
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1416
    invoke-static {p1, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 1417
    const/16 v4, 0x3a

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1418
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v4

    .line 1419
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v5

    .line 1418
    invoke-static {p1, v4, v5}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamplesCheckin(Ljava/io/PrintWriter;[JI)V

    .line 1412
    .end local v2    # "key":I
    .end local v3    # "type":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1421
    .end local v1    # "i":I
    :cond_30
    return-void
.end method

.method public blacklist dumpAllStateCheckin(Ljava/io/PrintWriter;J)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "now"    # J

    .line 1394
    const/4 v0, 0x0

    .line 1395
    .local v0, "didCurState":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 1396
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    .line 1397
    .local v2, "key":I
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 1398
    .local v3, "type":I
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v4

    .line 1399
    .local v4, "time":J
    iget v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v6, v3, :cond_24

    .line 1400
    const/4 v0, 0x1

    .line 1401
    iget-wide v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v6, p2, v6

    add-long/2addr v4, v6

    .line 1403
    :cond_24
    invoke-static {p1, v3, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 1395
    .end local v2    # "key":I
    .end local v3    # "type":I
    .end local v4    # "time":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1405
    .end local v1    # "i":I
    :cond_2a
    if-nez v0, :cond_3a

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3a

    .line 1406
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p2, v2

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 1408
    :cond_3a
    return-void
.end method

.method public blacklist dumpCsv(Ljava/io/PrintWriter;Z[IZ[IZ[IJ)V
    .registers 39
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sepScreenStates"    # Z
    .param p3, "screenStates"    # [I
    .param p4, "sepMemStates"    # Z
    .param p5, "memStates"    # [I
    .param p6, "sepProcStates"    # Z
    .param p7, "procStates"    # [I
    .param p8, "now"    # J

    .line 1248
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    if-eqz p2, :cond_c

    array-length v5, v1

    goto :goto_d

    :cond_c
    const/4 v5, 0x1

    .line 1249
    .local v5, "NSS":I
    :goto_d
    if-eqz p4, :cond_11

    array-length v6, v2

    goto :goto_12

    :cond_11
    const/4 v6, 0x1

    .line 1250
    .local v6, "NMS":I
    :goto_12
    if-eqz p6, :cond_16

    array-length v7, v3

    goto :goto_17

    :cond_16
    const/4 v7, 0x1

    .line 1251
    .local v7, "NPS":I
    :goto_17
    const/4 v8, 0x0

    .local v8, "iss":I
    :goto_18
    if-ge v8, v5, :cond_ff

    .line 1252
    const/4 v9, 0x0

    .local v9, "ims":I
    :goto_1b
    if-ge v9, v6, :cond_ef

    .line 1253
    const/4 v10, 0x0

    .local v10, "ips":I
    :goto_1e
    if-ge v10, v7, :cond_df

    .line 1254
    if-eqz p2, :cond_25

    aget v12, v1, v8

    goto :goto_26

    :cond_25
    const/4 v12, 0x0

    .line 1255
    .local v12, "vsscreen":I
    :goto_26
    if-eqz p4, :cond_2b

    aget v13, v2, v9

    goto :goto_2c

    :cond_2b
    const/4 v13, 0x0

    .line 1256
    .local v13, "vsmem":I
    :goto_2c
    if-eqz p6, :cond_31

    aget v14, v3, v10

    goto :goto_32

    :cond_31
    const/4 v14, 0x0

    .line 1257
    .local v14, "vsproc":I
    :goto_32
    if-eqz p2, :cond_36

    const/4 v15, 0x1

    goto :goto_37

    :cond_36
    array-length v15, v1

    .line 1258
    .local v15, "NSA":I
    :goto_37
    if-eqz p4, :cond_3b

    const/4 v4, 0x1

    goto :goto_3c

    :cond_3b
    array-length v4, v2

    .line 1259
    .local v4, "NMA":I
    :goto_3c
    if-eqz p6, :cond_40

    const/4 v11, 0x1

    goto :goto_41

    :cond_40
    array-length v11, v3

    .line 1260
    .local v11, "NPA":I
    :goto_41
    const-wide/16 v16, 0x0

    .line 1261
    .local v16, "totalTime":J
    const/16 v18, 0x0

    move/from16 v3, v18

    move-wide/from16 v1, v16

    .end local v16    # "totalTime":J
    .local v1, "totalTime":J
    .local v3, "isa":I
    :goto_49
    if-ge v3, v15, :cond_c1

    .line 1262
    const/16 v16, 0x0

    move-wide/from16 v27, v1

    move/from16 v1, v16

    move-wide/from16 v16, v27

    .local v1, "ima":I
    .restart local v16    # "totalTime":J
    :goto_53
    if-ge v1, v4, :cond_ab

    .line 1263
    const/4 v2, 0x0

    .local v2, "ipa":I
    :goto_56
    if-ge v2, v11, :cond_96

    .line 1264
    if-eqz p2, :cond_5d

    const/16 v18, 0x0

    goto :goto_5f

    :cond_5d
    aget v18, p3, v3

    .line 1265
    .local v18, "vascreen":I
    :goto_5f
    if-eqz p4, :cond_64

    const/16 v19, 0x0

    goto :goto_66

    :cond_64
    aget v19, p5, v1

    .line 1266
    .local v19, "vamem":I
    :goto_66
    if-eqz p6, :cond_6b

    const/16 v20, 0x0

    goto :goto_6d

    :cond_6b
    aget v20, p7, v2

    .line 1267
    .local v20, "vaproc":I
    :goto_6d
    add-int v21, v12, v18

    add-int v21, v21, v13

    add-int v21, v21, v19

    mul-int/lit8 v21, v21, 0x10

    add-int v21, v21, v14

    move/from16 v22, v1

    .end local v1    # "ima":I
    .local v22, "ima":I
    add-int v1, v21, v20

    .line 1269
    .local v1, "bucket":I
    move/from16 v21, v3

    move/from16 v24, v4

    move/from16 v23, v5

    move-object/from16 v3, p0

    move-wide/from16 v4, p8

    .end local v3    # "isa":I
    .end local v4    # "NMA":I
    .end local v5    # "NSS":I
    .local v21, "isa":I
    .local v23, "NSS":I
    .local v24, "NMA":I
    invoke-virtual {v3, v1, v4, v5}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v25

    add-long v16, v16, v25

    .line 1263
    .end local v1    # "bucket":I
    .end local v18    # "vascreen":I
    .end local v19    # "vamem":I
    .end local v20    # "vaproc":I
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v21

    move/from16 v1, v22

    move/from16 v5, v23

    move/from16 v4, v24

    goto :goto_56

    .end local v21    # "isa":I
    .end local v22    # "ima":I
    .end local v23    # "NSS":I
    .end local v24    # "NMA":I
    .local v1, "ima":I
    .restart local v3    # "isa":I
    .restart local v4    # "NMA":I
    .restart local v5    # "NSS":I
    :cond_96
    move/from16 v22, v1

    move/from16 v21, v3

    move/from16 v24, v4

    move/from16 v23, v5

    move-object/from16 v3, p0

    move-wide/from16 v4, p8

    .line 1262
    .end local v1    # "ima":I
    .end local v2    # "ipa":I
    .end local v3    # "isa":I
    .end local v4    # "NMA":I
    .end local v5    # "NSS":I
    .restart local v21    # "isa":I
    .restart local v22    # "ima":I
    .restart local v23    # "NSS":I
    .restart local v24    # "NMA":I
    add-int/lit8 v1, v22, 0x1

    move/from16 v3, v21

    move/from16 v5, v23

    move/from16 v4, v24

    .end local v22    # "ima":I
    .restart local v1    # "ima":I
    goto :goto_53

    .end local v21    # "isa":I
    .end local v23    # "NSS":I
    .end local v24    # "NMA":I
    .restart local v3    # "isa":I
    .restart local v4    # "NMA":I
    .restart local v5    # "NSS":I
    :cond_ab
    move/from16 v22, v1

    move/from16 v21, v3

    move/from16 v24, v4

    move/from16 v23, v5

    move-object/from16 v3, p0

    move-wide/from16 v4, p8

    .line 1261
    .end local v1    # "ima":I
    .end local v3    # "isa":I
    .end local v4    # "NMA":I
    .end local v5    # "NSS":I
    .restart local v21    # "isa":I
    .restart local v23    # "NSS":I
    .restart local v24    # "NMA":I
    add-int/lit8 v1, v21, 0x1

    move v3, v1

    move/from16 v5, v23

    move/from16 v4, v24

    move-wide/from16 v1, v16

    .end local v21    # "isa":I
    .local v1, "isa":I
    goto :goto_49

    .end local v16    # "totalTime":J
    .end local v23    # "NSS":I
    .end local v24    # "NMA":I
    .local v1, "totalTime":J
    .restart local v3    # "isa":I
    .restart local v4    # "NMA":I
    .restart local v5    # "NSS":I
    :cond_c1
    move/from16 v21, v3

    move/from16 v24, v4

    move/from16 v23, v5

    move-object/from16 v3, p0

    move-wide/from16 v4, p8

    .line 1273
    .end local v3    # "isa":I
    .end local v4    # "NMA":I
    .end local v5    # "NSS":I
    .restart local v23    # "NSS":I
    .restart local v24    # "NMA":I
    const-string v3, "\t"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1253
    .end local v1    # "totalTime":J
    .end local v11    # "NPA":I
    .end local v12    # "vsscreen":I
    .end local v13    # "vsmem":I
    .end local v14    # "vsproc":I
    .end local v15    # "NSA":I
    .end local v24    # "NMA":I
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move/from16 v5, v23

    goto/16 :goto_1e

    .end local v23    # "NSS":I
    .restart local v5    # "NSS":I
    :cond_df
    move/from16 v23, v5

    move-wide/from16 v4, p8

    .line 1252
    .end local v5    # "NSS":I
    .end local v10    # "ips":I
    .restart local v23    # "NSS":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move/from16 v5, v23

    goto/16 :goto_1b

    .end local v23    # "NSS":I
    .restart local v5    # "NSS":I
    :cond_ef
    move/from16 v23, v5

    move-wide/from16 v4, p8

    .line 1251
    .end local v5    # "NSS":I
    .end local v9    # "ims":I
    .restart local v23    # "NSS":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move/from16 v5, v23

    goto/16 :goto_18

    .line 1278
    .end local v8    # "iss":I
    .end local v23    # "NSS":I
    .restart local v5    # "NSS":I
    :cond_ff
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IJ)V
    .registers 30
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "procName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "now"    # J

    .line 1459
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 1460
    .local v12, "token":J
    const-wide v2, 0x10900000001L

    move-object/from16 v14, p4

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1461
    const-wide v2, 0x10500000002L

    move/from16 v15, p5

    invoke-virtual {v1, v2, v3, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1462
    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz v4, :cond_24

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v4, :cond_52

    .line 1463
    :cond_24
    const-wide v4, 0x10b00000003L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1464
    .local v4, "killToken":J
    const-wide v6, 0x10500000001L

    iget v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1465
    iget v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1466
    move-wide v2, v4

    .end local v4    # "killToken":J
    .local v2, "killToken":J
    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iget-wide v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    move-wide/from16 v16, v2

    .end local v2    # "killToken":J
    .local v16, "killToken":J
    const-wide v2, 0x10b00000003L

    move-wide/from16 v14, v16

    .end local v16    # "killToken":J
    .local v14, "killToken":J
    invoke-static/range {v1 .. v9}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    .line 1468
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1472
    .end local v14    # "killToken":J
    :cond_52
    new-instance v2, Landroid/util/SparseLongArray;

    invoke-direct {v2}, Landroid/util/SparseLongArray;-><init>()V

    move-object v9, v2

    .line 1473
    .local v9, "durationByState":Landroid/util/SparseLongArray;
    const/4 v2, 0x0

    .line 1474
    .local v2, "didCurState":Z
    const/4 v3, 0x0

    move v14, v2

    .end local v2    # "didCurState":Z
    .local v3, "i":I
    .local v14, "didCurState":Z
    :goto_5b
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v2

    if-ge v3, v2, :cond_84

    .line 1475
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    .line 1476
    .local v2, "key":I
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v4

    .line 1477
    .local v4, "type":I
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v5, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v5

    .line 1478
    .local v5, "time":J
    iget v7, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v7, v4, :cond_7e

    .line 1479
    const/4 v7, 0x1

    .line 1480
    .end local v14    # "didCurState":Z
    .local v7, "didCurState":Z
    iget-wide v14, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v14, p6, v14

    add-long/2addr v5, v14

    move v14, v7

    .line 1482
    .end local v7    # "didCurState":Z
    .restart local v14    # "didCurState":Z
    :cond_7e
    invoke-virtual {v9, v4, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1474
    .end local v2    # "key":I
    .end local v4    # "type":I
    .end local v5    # "time":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 1484
    .end local v3    # "i":I
    :cond_84
    if-nez v14, :cond_94

    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_94

    .line 1485
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v3, p6, v3

    invoke-virtual {v9, v2, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1488
    :cond_94
    const/4 v2, 0x0

    move v15, v2

    .local v15, "i":I
    :goto_96
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v2

    const-wide v3, 0x20b00000005L

    const-wide v5, 0x10300000004L

    if-ge v15, v2, :cond_fd

    .line 1489
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v2, v15}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v2

    .line 1490
    .restart local v2    # "key":I
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v8

    .line 1491
    .local v8, "type":I
    invoke-virtual {v9, v8}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_bd

    .line 1493
    move-wide/from16 v16, v12

    move/from16 v21, v14

    goto :goto_f6

    .line 1495
    :cond_bd
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1496
    .local v3, "stateToken":J
    move-wide/from16 v16, v5

    move-wide v6, v3

    .end local v3    # "stateToken":J
    .local v6, "stateToken":J
    const-wide v4, 0x10e00000002L

    move-wide/from16 v18, v6

    .end local v6    # "stateToken":J
    .local v18, "stateToken":J
    const-wide v6, 0x10e00000003L

    move/from16 v20, v2

    .end local v2    # "key":I
    .local v20, "key":I
    const-wide v2, 0x10e00000001L

    move/from16 v21, v14

    move-wide/from16 v10, v16

    move/from16 v14, v20

    move-wide/from16 v16, v12

    move-wide/from16 v12, v18

    .end local v18    # "stateToken":J
    .end local v20    # "key":I
    .local v12, "stateToken":J
    .local v14, "key":I
    .local v16, "token":J
    .local v21, "didCurState":Z
    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJJI)V

    .line 1502
    invoke-virtual {v9, v8}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    .line 1503
    .local v2, "duration":J
    invoke-virtual {v9, v8}, Landroid/util/SparseLongArray;->delete(I)V

    .line 1504
    invoke-virtual {v1, v10, v11, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1506
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v4, v1, v14}, Lcom/android/internal/app/procstats/PssTable;->writeStatsToProtoForKey(Landroid/util/proto/ProtoOutputStream;I)V

    .line 1508
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1488
    .end local v2    # "duration":J
    .end local v8    # "type":I
    .end local v12    # "stateToken":J
    .end local v14    # "key":I
    :goto_f6
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v12, v16

    move/from16 v14, v21

    goto :goto_96

    .end local v16    # "token":J
    .end local v21    # "didCurState":Z
    .local v12, "token":J
    .local v14, "didCurState":Z
    :cond_fd
    move-wide v10, v5

    move-wide/from16 v16, v12

    move/from16 v21, v14

    .line 1511
    .end local v12    # "token":J
    .end local v14    # "didCurState":Z
    .end local v15    # "i":I
    .restart local v16    # "token":J
    .restart local v21    # "didCurState":Z
    const/4 v2, 0x0

    move v12, v2

    .local v12, "i":I
    :goto_104
    invoke-virtual {v9}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-ge v12, v2, :cond_138

    .line 1512
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 1513
    .local v13, "stateToken":J
    nop

    .line 1517
    invoke-virtual {v9, v12}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v8

    .line 1513
    move-wide v4, v3

    const-wide v2, 0x10e00000001L

    move-wide v6, v4

    const-wide v4, 0x10e00000002L

    move-wide/from16 v18, v6

    const-wide v6, 0x10e00000003L

    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJJI)V

    .line 1518
    invoke-virtual {v9, v12}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v11, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1519
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1511
    .end local v13    # "stateToken":J
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v3, v18

    goto :goto_104

    .line 1522
    .end local v12    # "i":I
    :cond_138
    move-wide/from16 v2, p6

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide v4

    .line 1523
    .local v4, "totalRunningDuration":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_161

    .line 1524
    const-wide v12, 0x10b00000006L

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 1525
    .local v12, "stateToken":J
    invoke-virtual {v1, v10, v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1526
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v10, 0x0

    aget-wide v14, v8, v10

    cmp-long v6, v14, v6

    if-eqz v6, :cond_15e

    .line 1527
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    invoke-static {v1, v6, v10}, Lcom/android/internal/app/procstats/PssTable;->writeStatsToProto(Landroid/util/proto/ProtoOutputStream;[JI)V

    .line 1529
    :cond_15e
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1532
    .end local v12    # "stateToken":J
    :cond_161
    move-wide/from16 v6, v16

    .end local v16    # "token":J
    .local v6, "token":J
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1533
    return-void
.end method

.method blacklist dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .registers 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "reqPackage"    # Ljava/lang/String;
    .param p4, "totalTime"    # J
    .param p6, "now"    # J
    .param p8, "dumpAll"    # Z

    .line 1145
    if-eqz p8, :cond_c5

    .line 1146
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "myID="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1147
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1148
    const-string v0, " mCommonProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1149
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1150
    const-string v0, " mPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1151
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v0, :cond_42

    .line 1152
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mMultiPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1154
    :cond_42
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq p0, v0, :cond_6d

    .line 1155
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Common Proc: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1156
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1157
    const-string v0, " pkg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1159
    :cond_6d
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz v0, :cond_c5

    .line 1160
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Aggregated Association Sources:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    .line 1163
    move-wide/from16 v8, p4

    move-wide/from16 v6, p6

    invoke-static {v6, v7, v8, v9, v0}, Lcom/android/internal/app/procstats/AssociationState;->createSortedAssociations(JJLandroid/util/ArrayMap;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1161
    const/4 v11, 0x1

    move-object v1, p1

    move-object/from16 v10, p3

    move/from16 v12, p8

    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/procstats/AssociationState;->dumpSources(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;JJLjava/lang/String;ZZ)V

    .line 1167
    :cond_c5
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    if-eqz v0, :cond_d6

    .line 1168
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActive="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1170
    :cond_d6
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-eqz v0, :cond_e7

    .line 1171
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDead="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1173
    :cond_e7
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-nez v0, :cond_ef

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-eqz v0, :cond_106

    .line 1174
    :cond_ef
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNumActiveServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1175
    const-string v0, " mNumStartedServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1176
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1178
    :cond_106
    return-void
.end method

.method public blacklist dumpPackageProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V
    .registers 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # J
    .param p6, "itemName"    # Ljava/lang/String;
    .param p7, "now"    # J

    .line 1282
    const-string v0, "pkgproc,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1284
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1286
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    .line 1288
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1289
    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1290
    invoke-virtual {p0, p1, p7, p8}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    .line 1291
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1292
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_52

    .line 1293
    const-string v1, "pkgpss,"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1297
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    .line 1299
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1300
    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    .line 1302
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1304
    :cond_52
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_90

    .line 1305
    const-string v1, "pkgrun,"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1306
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1309
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    .line 1311
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1312
    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {p0, p7, p8}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 1315
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1316
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    invoke-static {p1, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamplesCheckin(Ljava/io/PrintWriter;[JI)V

    .line 1317
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1319
    :cond_90
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz v1, :cond_98

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v1, :cond_eb

    .line 1320
    :cond_98
    const-string v1, "pkgkills,"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1322
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1324
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1325
    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    .line 1326
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1327
    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1329
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1331
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1332
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1333
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1334
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1335
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1336
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1337
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1338
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1339
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1340
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1342
    :cond_eb
    return-void
.end method

.method public blacklist dumpProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJ)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "procName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "now"    # J

    .line 1345
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    const-string v1, ","

    if-lez v0, :cond_1e

    .line 1346
    const-string v0, "proc,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1347
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1350
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    .line 1351
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1353
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_3a

    .line 1354
    const-string v0, "pss,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1355
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1357
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1358
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    .line 1359
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1361
    :cond_3a
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_68

    .line 1362
    const-string v0, "procrun,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1363
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1365
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1366
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {p0, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 1368
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1369
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    invoke-static {p1, v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamplesCheckin(Ljava/io/PrintWriter;[JI)V

    .line 1370
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1372
    :cond_68
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz v0, :cond_70

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v0, :cond_b3

    .line 1373
    :cond_70
    const-string v0, "kills,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1375
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1376
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1377
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1378
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1379
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1380
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1381
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1382
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1383
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1384
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1385
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1386
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1387
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1388
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1389
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1391
    :cond_b3
    return-void
.end method

.method public blacklist dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V
    .registers 30
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J

    .line 979
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-wide/16 v5, 0x0

    .line 980
    .local v5, "totalTime":J
    const/4 v7, -0x1

    .line 981
    .local v7, "printedScreen":I
    const/4 v8, 0x0

    .local v8, "is":I
    :goto_e
    array-length v9, v2

    const-string v11, ": "

    if-ge v8, v9, :cond_aa

    .line 982
    const/4 v9, -0x1

    .line 983
    .local v9, "printedMem":I
    const/16 v16, 0x0

    move/from16 v12, v16

    const-wide/16 v16, 0x0

    .local v12, "im":I
    :goto_1a
    array-length v13, v3

    if-ge v12, v13, :cond_a0

    .line 984
    const/4 v13, 0x0

    .local v13, "ip":I
    :goto_1e
    array-length v14, v4

    if-ge v13, v14, :cond_94

    .line 985
    aget v14, v2, v8

    .line 986
    .local v14, "iscreen":I
    aget v10, v3, v12

    .line 987
    .local v10, "imem":I
    add-int v18, v14, v10

    mul-int/lit8 v18, v18, 0x10

    aget v19, v4, v13

    add-int v15, v18, v19

    .line 988
    .local v15, "bucket":I
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    move-wide/from16 v18, v5

    .end local v5    # "totalTime":J
    .local v18, "totalTime":J
    int-to-byte v5, v15

    invoke-virtual {v4, v5}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v4

    .line 989
    .local v4, "time":J
    const-string v6, ""

    .line 990
    .local v6, "running":Ljava/lang/String;
    move-wide/from16 v20, v4

    .end local v4    # "time":J
    .local v20, "time":J
    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v4, v15, :cond_47

    .line 991
    const-string v6, " (running)"

    .line 992
    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v4, p6, v4

    add-long v4, v20, v4

    .end local v20    # "time":J
    .restart local v4    # "time":J
    goto :goto_49

    .line 990
    .end local v4    # "time":J
    .restart local v20    # "time":J
    :cond_47
    move-wide/from16 v4, v20

    .line 994
    .end local v20    # "time":J
    .restart local v4    # "time":J
    :goto_49
    cmp-long v20, v4, v16

    if-eqz v20, :cond_87

    .line 995
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 996
    array-length v0, v2

    move/from16 v20, v8

    const/4 v8, 0x1

    .end local v8    # "is":I
    .local v20, "is":I
    if-le v0, v8, :cond_5f

    .line 997
    if-eq v7, v14, :cond_5a

    .line 998
    move v0, v14

    goto :goto_5b

    :cond_5a
    const/4 v0, -0x1

    .line 997
    :goto_5b
    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 999
    move v7, v14

    .line 1001
    :cond_5f
    array-length v0, v3

    const/4 v8, 0x1

    if-le v0, v8, :cond_70

    .line 1002
    nop

    .line 1003
    if-eq v9, v10, :cond_68

    move v0, v10

    goto :goto_69

    :cond_68
    const/4 v0, -0x1

    .line 1002
    :goto_69
    const/16 v8, 0x2f

    invoke-static {v1, v0, v8}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 1004
    move v0, v10

    move v9, v0

    .line 1006
    :cond_70
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    aget v8, p5, v13

    aget-object v0, v0, v8

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1007
    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    add-long v18, v18, v4

    move-wide/from16 v5, v18

    goto :goto_8b

    .line 994
    .end local v20    # "is":I
    .restart local v8    # "is":I
    :cond_87
    move/from16 v20, v8

    .end local v8    # "is":I
    .restart local v20    # "is":I
    move-wide/from16 v5, v18

    .line 984
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

    .line 983
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

    .line 981
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

    .line 1013
    .end local v8    # "is":I
    cmp-long v0, v5, v16

    if-eqz v0, :cond_d5

    .line 1014
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1015
    array-length v0, v2

    const/4 v8, 0x1

    if-le v0, v8, :cond_be

    .line 1016
    const/4 v0, -0x1

    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    goto :goto_bf

    .line 1015
    :cond_be
    const/4 v0, -0x1

    .line 1018
    :goto_bf
    array-length v4, v3

    if-le v4, v8, :cond_c7

    .line 1019
    const/16 v8, 0x2f

    invoke-static {v1, v0, v8}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 1021
    :cond_c7
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABEL_TOTAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1023
    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1024
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1026
    :cond_d5
    return-void
.end method

.method public blacklist dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V
    .registers 26
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J

    .line 1030
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const/4 v5, 0x0

    .line 1031
    .local v5, "printedHeader":Z
    const/4 v6, -0x1

    .line 1032
    .local v6, "printedScreen":I
    const/4 v7, 0x0

    .local v7, "is":I
    :goto_d
    array-length v8, v2

    const-string v9, ": "

    if-ge v7, v8, :cond_b2

    .line 1033
    const/4 v8, -0x1

    .line 1034
    .local v8, "printedMem":I
    const/4 v10, 0x0

    .local v10, "im":I
    :goto_14
    array-length v11, v3

    if-ge v10, v11, :cond_aa

    .line 1035
    const/4 v11, 0x0

    .local v11, "ip":I
    :goto_18
    array-length v12, v4

    if-ge v11, v12, :cond_a0

    .line 1036
    aget v12, v2, v7

    .line 1037
    .local v12, "iscreen":I
    aget v13, v3, v10

    .line 1038
    .local v13, "imem":I
    add-int v14, v12, v13

    mul-int/lit8 v14, v14, 0x10

    aget v15, v4, v11

    add-int/2addr v14, v15

    .line 1039
    .local v14, "bucket":I
    iget-object v15, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v4, v14

    invoke-virtual {v15, v4}, Lcom/android/internal/app/procstats/PssTable;->getKey(B)I

    move-result v4

    .line 1040
    .local v4, "key":I
    const/4 v15, -0x1

    if-ne v4, v15, :cond_32

    .line 1041
    goto/16 :goto_98

    .line 1043
    :cond_32
    iget-object v15, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v15, v4}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v15

    .line 1044
    .local v15, "table":[J
    move/from16 v16, v4

    .end local v4    # "key":I
    .local v16, "key":I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v4

    .line 1045
    .local v4, "tableOffset":I
    if-nez v5, :cond_5a

    .line 1046
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    move/from16 v17, v5

    .end local v5    # "printedHeader":Z
    .local v17, "printedHeader":Z
    const-string v5, "PSS/USS ("

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1048
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1049
    const-string v5, " entries):"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    const/4 v5, 0x1

    .end local v17    # "printedHeader":Z
    .restart local v5    # "printedHeader":Z
    goto :goto_5c

    .line 1045
    :cond_5a
    move/from16 v17, v5

    .line 1052
    :goto_5c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1053
    move/from16 v17, v5

    .end local v5    # "printedHeader":Z
    .restart local v17    # "printedHeader":Z
    const-string v5, "  "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1054
    array-length v5, v2

    const/4 v2, 0x1

    if-le v5, v2, :cond_74

    .line 1055
    nop

    .line 1056
    if-eq v6, v12, :cond_6f

    move v5, v12

    goto :goto_70

    :cond_6f
    const/4 v5, -0x1

    .line 1055
    :goto_70
    invoke-static {v1, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 1057
    move v6, v12

    .line 1059
    :cond_74
    array-length v5, v3

    if-le v5, v2, :cond_84

    .line 1060
    nop

    .line 1061
    if-eq v8, v13, :cond_7c

    move v2, v13

    goto :goto_7d

    :cond_7c
    const/4 v2, -0x1

    .line 1060
    :goto_7d
    const/16 v5, 0x2f

    invoke-static {v1, v2, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 1062
    move v2, v13

    move v8, v2

    .line 1064
    :cond_84
    sget-object v2, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    aget v5, p5, v11

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1065
    invoke-static {v1, v15, v4}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamples(Ljava/io/PrintWriter;[JI)V

    .line 1066
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    move/from16 v5, v17

    .line 1035
    .end local v4    # "tableOffset":I
    .end local v12    # "iscreen":I
    .end local v13    # "imem":I
    .end local v14    # "bucket":I
    .end local v15    # "table":[J
    .end local v16    # "key":I
    .end local v17    # "printedHeader":Z
    .restart local v5    # "printedHeader":Z
    :goto_98
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto/16 :goto_18

    :cond_a0
    move/from16 v17, v5

    .line 1034
    .end local v5    # "printedHeader":Z
    .end local v11    # "ip":I
    .restart local v17    # "printedHeader":Z
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto/16 :goto_14

    .line 1032
    .end local v8    # "printedMem":I
    .end local v10    # "im":I
    .end local v17    # "printedHeader":Z
    .restart local v5    # "printedHeader":Z
    :cond_aa
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto/16 :goto_d

    .line 1070
    .end local v7    # "is":I
    :cond_b2
    move-wide/from16 v7, p6

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide v10

    .line 1071
    .local v10, "totalRunningDuration":J
    const-wide/16 v12, 0x0

    cmp-long v2, v10, v12

    if-eqz v2, :cond_e8

    .line 1072
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1073
    const-string v2, "Cur time "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1074
    invoke-static {v10, v11, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1075
    iget-wide v14, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    cmp-long v2, v14, v12

    if-eqz v2, :cond_d4

    .line 1076
    const-string v2, " (running)"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1078
    :cond_d4
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v4, 0x0

    aget-wide v14, v2, v4

    cmp-long v2, v14, v12

    if-eqz v2, :cond_e5

    .line 1079
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1080
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    invoke-static {v1, v2, v4}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamples(Ljava/io/PrintWriter;[JI)V

    .line 1082
    :cond_e5
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1084
    :cond_e8
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-eqz v2, :cond_fe

    .line 1085
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Killed for excessive CPU use: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1086
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " times"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1088
    :cond_fe
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-eqz v2, :cond_133

    .line 1089
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Killed from cached state: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1090
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " times from pss "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1091
    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    invoke-static {v1, v12, v13}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1092
    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    mul-long/2addr v12, v14

    invoke-static {v1, v12, v13}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    mul-long/2addr v12, v14

    invoke-static {v1, v12, v13}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1095
    :cond_133
    return-void
.end method

.method public blacklist dumpStateDurationToStatsd(ILcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/StatsEventOutput;)V
    .registers 44
    .param p1, "atomTag"    # I
    .param p2, "processStats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p3, "statsEventOutput"    # Lcom/android/internal/app/procstats/StatsEventOutput;

    .line 1565
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    .line 1566
    .local v2, "topMs":J
    const-wide/16 v4, 0x0

    .line 1567
    .local v4, "fgsMs":J
    const-wide/16 v6, 0x0

    .line 1568
    .local v6, "boundTopMs":J
    const-wide/16 v8, 0x0

    .line 1569
    .local v8, "boundFgsMs":J
    const-wide/16 v10, 0x0

    .line 1570
    .local v10, "importantForegroundMs":J
    const-wide/16 v12, 0x0

    .line 1571
    .local v12, "cachedMs":J
    const-wide/16 v14, 0x0

    .line 1572
    .local v14, "frozenMs":J
    const-wide/16 v16, 0x0

    .line 1573
    .local v16, "otherMs":J
    const/16 v18, 0x0

    move-wide/from16 v19, v2

    .end local v2    # "topMs":J
    .local v18, "i":I
    .local v19, "topMs":J
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v2

    move-wide/from16 v38, v6

    move-wide v5, v4

    move-wide/from16 v3, v19

    move-wide/from16 v19, v12

    move-wide v11, v10

    move-wide v9, v8

    move-wide/from16 v7, v38

    move-wide/from16 v38, v14

    move/from16 v15, v18

    move-wide/from16 v13, v16

    move-wide/from16 v17, v38

    .end local v4    # "fgsMs":J
    .end local v6    # "boundTopMs":J
    .end local v8    # "boundFgsMs":J
    .end local v10    # "importantForegroundMs":J
    .end local v12    # "cachedMs":J
    .end local v14    # "frozenMs":J
    .end local v16    # "otherMs":J
    .end local v18    # "i":I
    .local v2, "size":I
    .local v3, "topMs":J
    .local v5, "fgsMs":J
    .local v7, "boundTopMs":J
    .local v9, "boundFgsMs":J
    .local v11, "importantForegroundMs":J
    .local v13, "otherMs":J
    .local v15, "i":I
    .local v17, "frozenMs":J
    .local v19, "cachedMs":J
    :goto_31
    if-ge v15, v2, :cond_6a

    .line 1574
    move/from16 v16, v2

    .end local v2    # "size":I
    .local v16, "size":I
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2, v15}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    .line 1575
    .local v2, "key":I
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v21

    .line 1576
    .local v21, "type":I
    rem-int/lit8 v22, v21, 0x10

    .line 1577
    .local v22, "procStateIndex":I
    move/from16 v23, v15

    .end local v15    # "i":I
    .local v23, "i":I
    iget-object v15, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v15, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v24

    .line 1578
    .local v24, "duration":J
    packed-switch v22, :pswitch_data_fe

    goto :goto_65

    .line 1609
    :pswitch_4d
    add-long v17, v17, v24

    goto :goto_65

    .line 1606
    :pswitch_50
    add-long v19, v19, v24

    .line 1607
    goto :goto_65

    .line 1593
    :pswitch_53
    add-long v11, v11, v24

    .line 1594
    goto :goto_65

    .line 1583
    :pswitch_56
    add-long v9, v9, v24

    .line 1584
    goto :goto_65

    .line 1589
    :pswitch_59
    add-long v5, v5, v24

    .line 1590
    goto :goto_65

    .line 1586
    :pswitch_5c
    add-long v7, v7, v24

    .line 1587
    goto :goto_65

    .line 1580
    :pswitch_5f
    add-long v3, v3, v24

    .line 1581
    goto :goto_65

    .line 1603
    :pswitch_62
    add-long v13, v13, v24

    .line 1604
    nop

    .line 1573
    .end local v2    # "key":I
    .end local v21    # "type":I
    .end local v22    # "procStateIndex":I
    .end local v24    # "duration":J
    :goto_65
    add-int/lit8 v15, v23, 0x1

    move/from16 v2, v16

    .end local v23    # "i":I
    .restart local v15    # "i":I
    goto :goto_31

    .end local v16    # "size":I
    .local v2, "size":I
    :cond_6a
    move/from16 v16, v2

    move/from16 v23, v15

    .line 1613
    .end local v2    # "size":I
    .end local v15    # "i":I
    nop

    .line 1615
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v23

    .line 1616
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v24

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v15, v13

    .end local v13    # "otherMs":J
    .local v15, "otherMs":J
    iget-wide v13, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    .line 1617
    invoke-virtual {v2, v13, v14}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v13

    long-to-int v2, v13

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v21, v15

    .end local v15    # "otherMs":J
    .local v21, "otherMs":J
    iget-wide v14, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 1618
    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v13

    long-to-int v13, v13

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v15, v11

    .end local v11    # "importantForegroundMs":J
    .local v15, "importantForegroundMs":J
    iget-wide v11, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    move-wide/from16 v25, v11

    iget-wide v11, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sub-long v11, v25, v11

    .line 1620
    invoke-virtual {v14, v11, v12}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v11

    long-to-int v11, v11

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1623
    invoke-virtual {v12, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1624
    move/from16 v28, v0

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1625
    move/from16 v29, v0

    invoke-virtual {v1, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1626
    move/from16 v30, v0

    invoke-virtual {v1, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1627
    move/from16 v31, v0

    move-wide v14, v15

    .end local v15    # "importantForegroundMs":J
    .local v14, "importantForegroundMs":J
    invoke-virtual {v1, v14, v15}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1628
    move/from16 v32, v0

    move/from16 v25, v2

    move-wide/from16 v36, v3

    move-wide/from16 v2, v19

    .end local v3    # "topMs":J
    .end local v19    # "cachedMs":J
    .local v2, "cachedMs":J
    .local v36, "topMs":J
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1629
    move/from16 v33, v0

    move-wide/from16 v2, v17

    .end local v17    # "frozenMs":J
    .local v2, "frozenMs":J
    .restart local v19    # "cachedMs":J
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1630
    move/from16 v34, v0

    move-wide/from16 v16, v2

    move-wide/from16 v2, v21

    .end local v21    # "otherMs":J
    .local v2, "otherMs":J
    .local v16, "frozenMs":J
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1613
    move/from16 v22, p1

    move-object/from16 v21, p3

    move/from16 v35, v0

    move/from16 v27, v11

    move/from16 v26, v13

    invoke-virtual/range {v21 .. v35}, Lcom/android/internal/app/procstats/StatsEventOutput;->write(IILjava/lang/String;IIIIIIIIIII)V

    .line 1631
    return-void

    nop

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_53
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_50
        :pswitch_4d
    .end packed-switch
.end method

.method public blacklist dumpSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJ)V
    .registers 24
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/lang/String;
    .param p4, "screenStates"    # [I
    .param p5, "memStates"    # [I
    .param p6, "procStates"    # [I
    .param p7, "now"    # J
    .param p9, "totalTime"    # J

    .line 928
    move-object/from16 v12, p3

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 929
    const-string v2, "* "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 930
    if-eqz v12, :cond_f

    .line 931
    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 933
    :cond_f
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 934
    const-string v2, " / "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 935
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 936
    const-string v2, " / v"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 937
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 938
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 939
    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABEL_TOTAL:Ljava/lang/String;

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 941
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 943
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 945
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 948
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 951
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 954
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 957
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 960
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 962
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 964
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 967
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 969
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 971
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 973
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 975
    return-void
.end method

.method public blacklist getCombinedState()I
    .registers 2

    .line 517
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    return v0
.end method

.method public blacklist getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    return-object v0
.end method

.method public blacklist getDuration(IJ)J
    .registers 8
    .param p1, "state"    # I
    .param p2, "now"    # J

    .line 762
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v0

    .line 763
    .local v0, "time":J
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v2, p1, :cond_10

    .line 764
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    .line 766
    :cond_10
    return-wide v0
.end method

.method public blacklist getDurationsBucketCount()I
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getOrCreateSourceState(Lcom/android/internal/app/procstats/AssociationState$SourceKey;)Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .registers 6
    .param p1, "key"    # Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 810
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 811
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    .line 813
    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 814
    .local v0, "state":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    if-nez v0, :cond_23

    .line 815
    new-instance v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0, p1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V

    move-object v0, v1

    .line 816
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    :cond_23
    return-object v0
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPssAverage(I)J
    .registers 5
    .param p1, "state"    # I

    .line 778
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssMaximum(I)J
    .registers 5
    .param p1, "state"    # I

    .line 782
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssMinimum(I)J
    .registers 5
    .param p1, "state"    # I

    .line 774
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssRssAverage(I)J
    .registers 5
    .param p1, "state"    # I

    .line 802
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssRssMaximum(I)J
    .registers 5
    .param p1, "state"    # I

    .line 806
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssRssMinimum(I)J
    .registers 5
    .param p1, "state"    # I

    .line 798
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssSampleCount(I)J
    .registers 5
    .param p1, "state"    # I

    .line 770
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssUssAverage(I)J
    .registers 5
    .param p1, "state"    # I

    .line 790
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssUssMaximum(I)J
    .registers 5
    .param p1, "state"    # I

    .line 794
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssUssMinimum(I)J
    .registers 5
    .param p1, "state"    # I

    .line 786
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getTotalRunningDuration(J)J
    .registers 9
    .param p1, "now"    # J

    .line 757
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 758
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    sub-long v4, p1, v2

    :cond_e
    add-long/2addr v0, v4

    .line 757
    return-wide v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 250
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    return v0
.end method

.method public blacklist getVersion()J
    .registers 3

    .line 254
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    return-wide v0
.end method

.method public blacklist hasAnyData()Z
    .registers 7

    .line 421
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    if-nez v0, :cond_20

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 423
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_21

    :cond_20
    const/4 v1, 0x1

    .line 421
    :cond_21
    return v1
.end method

.method public blacklist incActiveServices(Ljava/lang/String;)V
    .registers 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 544
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_9

    .line 545
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->incActiveServices(Ljava/lang/String;)V

    .line 547
    :cond_9
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 548
    return-void
.end method

.method public blacklist incStartedServices(IJLjava/lang/String;)V
    .registers 7
    .param p1, "memFactor"    # I
    .param p2, "now"    # J
    .param p4, "serviceName"    # Ljava/lang/String;

    .line 573
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_9

    .line 574
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->incStartedServices(IJLjava/lang/String;)V

    .line 576
    :cond_9
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 577
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-ne v0, v1, :cond_1f

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f

    .line 578
    mul-int/lit8 v0, p1, 0x10

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedStateIdv(IJ)V

    .line 580
    :cond_1f
    return-void
.end method

.method public blacklist isActive()Z
    .registers 2

    .line 417
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    return v0
.end method

.method public blacklist isInUse()Z
    .registers 3

    .line 412
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    if-nez v0, :cond_14

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-gtz v0, :cond_14

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-gtz v0, :cond_14

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method public blacklist isMultiPackage()Z
    .registers 2

    .line 258
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    return v0
.end method

.method public blacklist makeActive()V
    .registers 2

    .line 403
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 405
    return-void
.end method

.method public blacklist makeDead()V
    .registers 2

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    .line 322
    return-void
.end method

.method public blacklist makeInactive()V
    .registers 2

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 409
    return-void
.end method

.method public blacklist makeStandalone()V
    .registers 1

    .line 242
    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 243
    return-void
.end method

.method public blacklist onProcessFrozen(JLandroid/util/ArrayMap;)V
    .registers 6
    .param p1, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 432
    .local p3, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    rem-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStateBeforeFrozen:I

    .line 433
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    div-int/lit8 v0, v0, 0x10

    .line 434
    .local v0, "currentMemFactor":I
    mul-int/lit8 v1, v0, 0x10

    add-int/lit8 v1, v1, 0xf

    .line 435
    .local v1, "combinedState":I
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedState(IJLandroid/util/ArrayMap;)V

    .line 436
    return-void
.end method

.method public blacklist onProcessUnfrozen(JLandroid/util/ArrayMap;)V
    .registers 7
    .param p1, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 443
    .local p3, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    div-int/lit8 v0, v0, 0x10

    .line 444
    .local v0, "currentMemFactor":I
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStateBeforeFrozen:I

    mul-int/lit8 v2, v0, 0x10

    add-int/2addr v1, v2

    .line 445
    .local v1, "combinedState":I
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedState(IJLandroid/util/ArrayMap;)V

    .line 446
    return-void
.end method

.method public blacklist pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 690
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v0, :cond_b4

    .line 694
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 695
    .local v0, "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    const-string v1, "Didn\'t find package "

    const-string v2, " / "

    if-eqz v0, :cond_93

    .line 699
    iget-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 700
    .local v3, "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    const-string v4, " vers "

    if-eqz v3, :cond_68

    .line 704
    iget-object v1, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 705
    .local v1, "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v1, :cond_2f

    .line 709
    return-object v1

    .line 706
    :cond_2f
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Didn\'t create per-package process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in pkg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 701
    .end local v1    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_68
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 696
    .end local v3    # "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_93
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 711
    .end local v0    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_b4
    return-object p0
.end method

.method blacklist readFromParcel(Landroid/os/Parcel;IZ)Z
    .registers 12
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "version"    # I
    .param p3, "fully"    # Z

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 361
    .local v0, "multiPackage":Z
    :goto_b
    if-eqz p3, :cond_f

    .line 362
    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    .line 365
    :cond_f
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v3, p1}, Lcom/android/internal/app/procstats/DurationsTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 366
    return v1

    .line 369
    :cond_18
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v3, p1}, Lcom/android/internal/app/procstats/PssTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 370
    return v1

    .line 372
    :cond_21
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    const/16 v3, 0xa

    if-ge v1, v3, :cond_31

    .line 373
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 375
    .end local v1    # "i":I
    :cond_31
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 379
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v1, :cond_5d

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    goto :goto_65

    .line 384
    :cond_5d
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 388
    :goto_65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 389
    .local v1, "numOfSources":I
    if-lez v1, :cond_8f

    .line 390
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    .line 391
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_73
    if-ge v3, v1, :cond_8f

    .line 392
    new-instance v4, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v4, v5, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceKey;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;I)V

    .line 393
    .local v4, "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    new-instance v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, p0, v4}, Lcom/android/internal/app/procstats/AssociationState$SourceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V

    .line 394
    .local v5, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    invoke-virtual {v5, p1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    .line 395
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .end local v4    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    .end local v5    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 399
    .end local v3    # "i":I
    :cond_8f
    return v2
.end method

.method public blacklist reportExcessiveCpu(Landroid/util/ArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 659
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 660
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 661
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_12

    .line 662
    return-void

    .line 665
    :cond_12
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ip":I
    :goto_18
    if-ltz v0, :cond_27

    .line 666
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    iget v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 665
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 668
    .end local v0    # "ip":I
    :cond_27
    return-void
.end method

.method public blacklist resetSafely(J)V
    .registers 6
    .param p1, "now"    # J

    .line 299
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->resetTable()V

    .line 300
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->resetTable()V

    .line 301
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 302
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 303
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    .line 304
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 305
    iput v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 306
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 308
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz v0, :cond_46

    .line 309
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ip":I
    :goto_2a
    if-ltz v0, :cond_46

    .line 310
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 311
    .local v1, "state":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->isInUse()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 312
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->resetSafely(J)V

    goto :goto_43

    .line 314
    :cond_3e
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 309
    .end local v1    # "state":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    :goto_43
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    .line 318
    .end local v0    # "ip":I
    :cond_46
    return-void
.end method

.method blacklist setCombinedState(IJLandroid/util/ArrayMap;)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 473
    .local p4, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedStateIdv(IJ)V

    .line 476
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_c

    .line 477
    return-void

    .line 480
    :cond_c
    if-eqz p4, :cond_20

    .line 481
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ip":I
    :goto_14
    if-ltz v0, :cond_20

    .line 482
    invoke-direct {p0, p4, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedStateIdv(IJ)V

    .line 481
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 485
    .end local v0    # "ip":I
    :cond_20
    return-void
.end method

.method blacklist setCombinedStateIdv(IJ)V
    .registers 10
    .param p1, "state"    # I
    .param p2, "now"    # J

    .line 491
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 492
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-nez v0, :cond_45

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-eq v0, p1, :cond_45

    .line 494
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    .line 495
    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1f

    .line 497
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    sub-long v4, p2, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 498
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    goto :goto_32

    .line 499
    :cond_1f
    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v3, v2, :cond_32

    .line 502
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 503
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    .line 504
    const/16 v2, 0x9

    .local v2, "i":I
    :goto_29
    if-ltz v2, :cond_32

    .line 505
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    aput-wide v0, v3, v2

    .line 504
    add-int/lit8 v2, v2, -0x1

    goto :goto_29

    .line 508
    .end local v2    # "i":I
    :cond_32
    :goto_32
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    .line 509
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/UidState;

    .line 510
    .local v0, "uidState":Lcom/android/internal/app/procstats/UidState;
    if-eqz v0, :cond_45

    .line 511
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/procstats/UidState;->updateCombinedState(IJ)V

    .line 514
    .end local v0    # "uidState":Lcom/android/internal/app/procstats/UidState;
    :cond_45
    return-void
.end method

.method public blacklist setMultiPackage(Z)V
    .registers 2
    .param p1, "val"    # Z

    .line 262
    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    .line 263
    return-void
.end method

.method public blacklist setState(IIJLandroid/util/ArrayMap;)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "memFactor"    # I
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 458
    .local p5, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    if-gez p1, :cond_d

    .line 459
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-lez v0, :cond_b

    .line 460
    mul-int/lit8 v0, p2, 0x10

    add-int/lit8 v0, v0, 0x9

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    .end local p1    # "state":I
    .local v0, "state":I
    :goto_c
    goto :goto_14

    .line 462
    .end local v0    # "state":I
    .restart local p1    # "state":I
    :cond_d
    sget-object v0, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    aget v0, v0, p1

    mul-int/lit8 v1, p2, 0x10

    add-int/2addr v0, v1

    .line 464
    .end local p1    # "state":I
    .restart local v0    # "state":I
    :goto_14
    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedState(IJLandroid/util/ArrayMap;)V

    .line 465
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1447
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1448
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ProcessState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1449
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1450
    const-string v2, " pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v1, :cond_45

    const-string v1, " (multi)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    :cond_45
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v1, p0, :cond_4e

    const-string v1, " (sub)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    :cond_4e
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;J)V
    .registers 10
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J

    .line 333
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 335
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/PssTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 336
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1e

    .line 337
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    aget-wide v1, v1, v0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 339
    .end local v0    # "i":I
    :cond_1e
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 340
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v1, :cond_46

    .line 344
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 345
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 346
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 349
    :cond_46
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    goto :goto_52

    :cond_51
    move v1, v0

    .line 350
    .local v1, "numOfSources":I
    :goto_52
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_56
    if-ge v2, v1, :cond_73

    .line 352
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 353
    .local v3, "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 354
    .local v4, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v3, v5, p1}, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->writeToParcel(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;)V

    .line 355
    invoke-virtual {v4, p1, v0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 351
    .end local v3    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    .end local v4    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 357
    .end local v2    # "i":I
    :cond_73
    return-void
.end method
