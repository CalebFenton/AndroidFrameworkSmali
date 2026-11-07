.class public final Lcom/android/internal/app/procstats/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/ProcessStats$PackageState;,
        Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;,
        Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;,
        Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;,
        Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    }
.end annotation


# static fields
.field public static final blacklist ADD_PSS_EXTERNAL:I = 0x3

.field public static final blacklist ADD_PSS_EXTERNAL_SLOW:I = 0x4

.field public static final blacklist ADD_PSS_INTERNAL_ALL_MEM:I = 0x1

.field public static final blacklist ADD_PSS_INTERNAL_ALL_POLL:I = 0x2

.field public static final blacklist ADD_PSS_INTERNAL_SINGLE:I = 0x0

.field public static final blacklist ADJ_COUNT:I = 0x8

.field public static final blacklist ADJ_MEM_FACTOR_COUNT:I = 0x4

.field public static final blacklist ADJ_MEM_FACTOR_CRITICAL:I = 0x3

.field public static final blacklist ADJ_MEM_FACTOR_LOW:I = 0x2

.field public static final blacklist ADJ_MEM_FACTOR_MODERATE:I = 0x1

.field public static final blacklist ADJ_MEM_FACTOR_NORMAL:I = 0x0

.field public static final blacklist ADJ_NOTHING:I = -0x1

.field public static final blacklist ADJ_SCREEN_MOD:I = 0x4

.field public static final blacklist ADJ_SCREEN_OFF:I = 0x0

.field public static final blacklist ADJ_SCREEN_ON:I = 0x4

.field public static final blacklist ALL_MEM_ADJ:[I

.field public static final blacklist ALL_PROC_STATES:[I

.field public static final blacklist ALL_SCREEN_ADJ:[I

.field static final blacklist ASSOCIATION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist BACKGROUND_PROC_STATES:[I

.field static final blacklist BAD_TABLE:[I

.field public static blacklist COMMIT_PERIOD:J = 0x0L

.field public static blacklist COMMIT_UPTIME_PERIOD:J = 0x0L

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/app/procstats/ProcessStats;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist DEBUG:Z = false

.field static final blacklist DEBUG_PARCEL:Z = false

.field public static final blacklist FLAG_COMPLETE:I = 0x1

.field public static final blacklist FLAG_SHUTDOWN:I = 0x2

.field public static final blacklist FLAG_SYSPROPS:I = 0x4

.field private static final blacklist INVERSE_PROC_STATE_WARNING_MIN_INTERVAL_MS:J = 0x2710L

.field private static final blacklist MAGIC:I = 0x50535454

.field public static final blacklist NON_CACHED_PROC_STATES:[I

.field public static final blacklist OPTIONS:[I

.field public static final blacklist OPTIONS_STR:[Ljava/lang/String;

.field private static final blacklist PARCEL_VERSION:I = 0x29

.field public static final blacklist PSS_AVERAGE:I = 0x2

.field public static final blacklist PSS_COUNT:I = 0xa

.field public static final blacklist PSS_MAXIMUM:I = 0x3

.field public static final blacklist PSS_MINIMUM:I = 0x1

.field public static final blacklist PSS_RSS_AVERAGE:I = 0x8

.field public static final blacklist PSS_RSS_MAXIMUM:I = 0x9

.field public static final blacklist PSS_RSS_MINIMUM:I = 0x7

.field public static final blacklist PSS_SAMPLE_COUNT:I = 0x0

.field public static final blacklist PSS_USS_AVERAGE:I = 0x5

.field public static final blacklist PSS_USS_MAXIMUM:I = 0x6

.field public static final blacklist PSS_USS_MINIMUM:I = 0x4

.field public static final blacklist REPORT_ALL:I = 0x1f

.field public static final blacklist REPORT_PKG_ASC_STATS:I = 0x8

.field public static final blacklist REPORT_PKG_PROC_STATS:I = 0x2

.field public static final blacklist REPORT_PKG_STATS:I = 0xe

.field public static final blacklist REPORT_PKG_SVC_STATS:I = 0x4

.field public static final blacklist REPORT_PROC_STATS:I = 0x1

.field public static final blacklist REPORT_UID_STATS:I = 0x10

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "procstats"

.field public static final blacklist STATE_BACKUP:I = 0x7

.field public static final blacklist STATE_BOUND_FGS:I = 0x4

.field public static final blacklist STATE_BOUND_TOP:I = 0x2

.field public static final blacklist STATE_CACHED:I = 0xe

.field public static final blacklist STATE_COUNT:I = 0x10

.field public static final blacklist STATE_FGS:I = 0x3

.field public static final blacklist STATE_FROZEN:I = 0xf

.field public static final blacklist STATE_HEAVY_WEIGHT:I = 0xb

.field public static final blacklist STATE_HOME:I = 0xc

.field public static final blacklist STATE_IMPORTANT_BACKGROUND:I = 0x6

.field public static final blacklist STATE_IMPORTANT_FOREGROUND:I = 0x5

.field public static final blacklist STATE_LAST_ACTIVITY:I = 0xd

.field public static final blacklist STATE_NOTHING:I = -0x1

.field public static final blacklist STATE_PERSISTENT:I = 0x0

.field public static final blacklist STATE_RECEIVER:I = 0xa

.field public static final blacklist STATE_SERVICE:I = 0x8

.field public static final blacklist STATE_SERVICE_RESTARTING:I = 0x9

.field public static final blacklist STATE_TOP:I = 0x1

.field public static final blacklist SYS_MEM_USAGE_CACHED_AVERAGE:I = 0x2

.field public static final blacklist SYS_MEM_USAGE_CACHED_MAXIMUM:I = 0x3

.field public static final blacklist SYS_MEM_USAGE_CACHED_MINIMUM:I = 0x1

.field public static final blacklist SYS_MEM_USAGE_COUNT:I = 0x10

.field public static final blacklist SYS_MEM_USAGE_FREE_AVERAGE:I = 0x5

.field public static final blacklist SYS_MEM_USAGE_FREE_MAXIMUM:I = 0x6

.field public static final blacklist SYS_MEM_USAGE_FREE_MINIMUM:I = 0x4

.field public static final blacklist SYS_MEM_USAGE_KERNEL_AVERAGE:I = 0xb

.field public static final blacklist SYS_MEM_USAGE_KERNEL_MAXIMUM:I = 0xc

.field public static final blacklist SYS_MEM_USAGE_KERNEL_MINIMUM:I = 0xa

.field public static final blacklist SYS_MEM_USAGE_NATIVE_AVERAGE:I = 0xe

.field public static final blacklist SYS_MEM_USAGE_NATIVE_MAXIMUM:I = 0xf

.field public static final blacklist SYS_MEM_USAGE_NATIVE_MINIMUM:I = 0xd

.field public static final blacklist SYS_MEM_USAGE_SAMPLE_COUNT:I = 0x0

.field public static final blacklist SYS_MEM_USAGE_ZRAM_AVERAGE:I = 0x8

.field public static final blacklist SYS_MEM_USAGE_ZRAM_MAXIMUM:I = 0x9

.field public static final blacklist SYS_MEM_USAGE_ZRAM_MINIMUM:I = 0x7

.field public static final blacklist TAG:Ljava/lang/String; = "ProcessStats"

.field private static final blacklist sPageTypeRegex:Ljava/util/regex/Pattern;


# instance fields
.field blacklist mCommonStringToIndex:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mExternalPssCount:J

.field public blacklist mExternalPssTime:J

.field public blacklist mExternalSlowPssCount:J

.field public blacklist mExternalSlowPssTime:J

.field public blacklist mFlags:I

.field blacklist mHasSwappedOutPss:Z

.field blacklist mIndexToCommonString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mInternalAllMemPssCount:J

.field public blacklist mInternalAllMemPssTime:J

.field public blacklist mInternalAllPollPssCount:J

.field public blacklist mInternalAllPollPssTime:J

.field public blacklist mInternalSinglePssCount:J

.field public blacklist mInternalSinglePssTime:J

.field public blacklist mMemFactor:I

.field public final blacklist mMemFactorDurations:[J

.field private blacklist mNextInverseProcStateWarningUptime:J

.field public blacklist mNumAggregated:I

.field public final blacklist mPackages:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/util/LongSparseArray<",
            "Lcom/android/internal/app/procstats/ProcessStats$PackageState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mPageTypeLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPageTypeNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPageTypeSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field private final blacklist mPageTypeZones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mReadError:Ljava/lang/String;

.field blacklist mRunning:Z

.field blacklist mRuntime:Ljava/lang/String;

.field private blacklist mSkippedInverseProcStateWarningCount:I

.field public blacklist mStartTime:J

.field public final blacklist mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

.field public final blacklist mSysMemUsageArgs:[J

.field public final blacklist mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

.field public blacklist mTimePeriodEndRealtime:J

.field public blacklist mTimePeriodEndUptime:J

.field public blacklist mTimePeriodStartClock:J

.field public blacklist mTimePeriodStartClockStr:Ljava/lang/String;

.field public blacklist mTimePeriodStartRealtime:J

.field public blacklist mTimePeriodStartUptime:J

.field public final blacklist mTrackingAssociations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/procstats/AssociationState$SourceState;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/app/procstats/UidState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$940oCJNS9O9a7ABpooZvC3Q491o(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/StatsEventOutput;ILcom/android/internal/app/procstats/AssociationState;Ljava/lang/Integer;Ljava/lang/String;Lcom/android/internal/app/procstats/AssociationState$SourceKey;Lcom/android/internal/app/procstats/AssociationState$SourceState;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/app/procstats/ProcessStats;->lambda$dumpProcessAssociation$2(Lcom/android/internal/app/procstats/StatsEventOutput;ILcom/android/internal/app/procstats/AssociationState;Ljava/lang/Integer;Ljava/lang/String;Lcom/android/internal/app/procstats/AssociationState$SourceKey;Lcom/android/internal/app/procstats/AssociationState$SourceState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rf6qIY3ET1fZSKJ5VGd1lx0Fg8U(Lcom/android/internal/app/procstats/ProcessStats;ILcom/android/internal/app/procstats/StatsEventOutput;Lcom/android/internal/app/procstats/ProcessState;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats;->lambda$dumpProcessState$1(ILcom/android/internal/app/procstats/StatsEventOutput;Lcom/android/internal/app/procstats/ProcessState;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 10

    .line 74
    const-wide/32 v0, 0xa4cb80

    sput-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    .line 79
    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    .line 151
    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    .line 154
    const/4 v0, 0x4

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    .line 156
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    .line 163
    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_88

    sput-object v1, Lcom/android/internal/app/procstats/ProcessStats;->BACKGROUND_PROC_STATES:[I

    .line 168
    const/16 v1, 0x10

    new-array v1, v1, [I

    fill-array-data v1, :array_9a

    sput-object v1, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    .line 191
    new-array v0, v0, [I

    fill-array-data v0, :array_be

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS:[I

    .line 194
    const-string/jumbo v8, "uid"

    const-string v9, "all"

    const-string v3, "proc"

    const-string v4, "pkg-proc"

    const-string v5, "pkg-svc"

    const-string v6, "pkg-asc"

    const-string v7, "pkg-all"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS_STR:[Ljava/lang/String;

    .line 261
    const-string v0, "^Node\\s+(\\d+),.* zone\\s+(\\w+),.* type\\s+(\\w+)\\s+([\\s\\d]+?)\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->sPageTypeRegex:Ljava/util/regex/Pattern;

    .line 442
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 679
    new-array v0, v2, [I

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->BAD_TABLE:[I

    .line 1576
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessStats$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ASSOCIATION_COMPARATOR:Ljava/util/Comparator;

    return-void

    :array_6c
    .array-data 4
        0x0
        0x1
        0x3
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0x2
        0x4
    .end array-data

    :array_88
    .array-data 4
        0x5
        0x6
        0x7
        0xb
        0x8
        0x9
        0xa
    .end array-data

    :array_9a
    .array-data 4
        0x0
        0x1
        0x3
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x2
        0x4
        0xf
    .end array-data

    :array_be
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0xe
        0x10
        0x1f
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 292
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 207
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 209
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    .line 213
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 218
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    .line 250
    new-instance v0, Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    .line 252
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    .line 253
    new-instance v0, Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    .line 281
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->reset()V

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V

    .line 283
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 4
    .param p1, "running"    # Z

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 207
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 209
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    .line 213
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 218
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    .line 250
    new-instance v0, Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    .line 252
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    .line 253
    new-instance v0, Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    .line 269
    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->reset()V

    .line 271
    if-eqz p1, :cond_76

    .line 274
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 275
    .local v0, "info":Landroid/os/Debug$MemoryInfo;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1, v0}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    .line 276
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    .line 278
    .end local v0    # "info":Landroid/os/Debug$MemoryInfo;
    :cond_76
    return-void
.end method

.method private blacklist buildTimePeriodStartClockStr()V
    .registers 4

    .line 675
    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 676
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 677
    return-void
.end method

.method private blacklist collectProcessPackageMaps(Ljava/lang/String;ZLcom/android/internal/app/ProcessMap;Landroid/util/SparseArray;)V
    .registers 23
    .param p1, "reqPackage"    # Ljava/lang/String;
    .param p2, "activeOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
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

    .line 2501
    .local p3, "procToPkgMap":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Landroid/util/ArraySet<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .local p4, "uidToPkgMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 2502
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 2503
    .local v4, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "ip":I
    :goto_14
    if-ltz v5, :cond_da

    .line 2504
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2505
    .local v7, "pkgName":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 2506
    .local v8, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    sub-int/2addr v9, v6

    .local v9, "iu":I
    :goto_27
    if-ltz v9, :cond_cf

    .line 2507
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/LongSparseArray;

    .line 2508
    .local v10, "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v11

    sub-int/2addr v11, v6

    .local v11, "iv":I
    :goto_34
    if-ltz v11, :cond_c4

    .line 2509
    invoke-virtual {v10, v11}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 2510
    .local v12, "state":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    if-eqz v0, :cond_47

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_45

    goto :goto_47

    :cond_45
    const/4 v13, 0x0

    goto :goto_48

    :cond_47
    :goto_47
    move v13, v6

    .line 2511
    .local v13, "pkgMatch":Z
    :goto_48
    iget-object v14, v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    sub-int/2addr v14, v6

    .local v14, "iproc":I
    :goto_4f
    if-ltz v14, :cond_b9

    .line 2512
    iget-object v15, v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/procstats/ProcessState;

    .line 2513
    .local v15, "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v13, :cond_66

    invoke-virtual {v15}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_66

    .line 2514
    goto :goto_af

    .line 2516
    :cond_66
    if-eqz p2, :cond_6f

    invoke-virtual {v15}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v6

    if-nez v6, :cond_6f

    .line 2517
    goto :goto_af

    .line 2520
    :cond_6f
    invoke-virtual {v15}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2521
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v0

    .line 2522
    .local v0, "uid":I
    invoke-virtual {v1, v6, v0}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/ArraySet;

    .line 2523
    .local v16, "pkgStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    if-nez v16, :cond_8c

    .line 2524
    new-instance v17, Landroid/util/ArraySet;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v16, v17

    .line 2525
    move-object/from16 v3, v16

    .end local v16    # "pkgStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v3, "pkgStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual {v1, v6, v0, v3}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8e

    .line 2523
    .end local v3    # "pkgStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .restart local v16    # "pkgStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_8c
    move-object/from16 v3, v16

    .line 2527
    .end local v16    # "pkgStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .restart local v3    # "pkgStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :goto_8e
    invoke-virtual {v3, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2528
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/ArraySet;

    .line 2529
    .local v16, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v16, :cond_a6

    .line 2530
    new-instance v17, Landroid/util/ArraySet;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v16, v17

    .line 2531
    move-object/from16 v1, v16

    .end local v16    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_a8

    .line 2529
    .end local v1    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_a6
    move-object/from16 v1, v16

    .line 2533
    .end local v16    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_a8
    move/from16 v16, v0

    .end local v0    # "uid":I
    .local v16, "uid":I
    iget-object v0, v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2511
    .end local v1    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "pkgStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v6    # "name":Ljava/lang/String;
    .end local v15    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v16    # "uid":I
    :goto_af
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v3, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v6, 0x1

    goto :goto_4f

    .line 2508
    .end local v12    # "state":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v13    # "pkgMatch":Z
    .end local v14    # "iproc":I
    :cond_b9
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v3, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v6, 0x1

    goto/16 :goto_34

    .line 2506
    .end local v10    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v11    # "iv":I
    :cond_c4
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v3, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v6, 0x1

    goto/16 :goto_27

    .line 2503
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v9    # "iu":I
    :cond_cf
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v3, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v6, 0x1

    goto/16 :goto_14

    .line 2538
    .end local v5    # "ip":I
    :cond_da
    return-void
.end method

.method private blacklist dumpFragmentationLocked(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1989
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1990
    const-string v0, "Available pages by page size:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1991
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1992
    .local v0, "NPAGETYPES":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_54

    .line 1993
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    .line 1994
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 1993
    const-string v3, "Node %3d Zone %7s  %14s "

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1995
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1996
    .local v2, "sizes":[I
    if-nez v2, :cond_38

    const/4 v3, 0x0

    goto :goto_39

    :cond_38
    array-length v3, v2

    .line 1997
    .local v3, "N":I
    :goto_39
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3a
    if-ge v4, v3, :cond_4e

    .line 1998
    aget v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%6d"

    invoke-virtual {p1, v6, v5}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1997
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 2000
    .end local v4    # "j":I
    :cond_4e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1992
    .end local v2    # "sizes":[I
    .end local v3    # "N":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 2002
    .end local v1    # "i":I
    :cond_54
    return-void
.end method

.method private blacklist dumpProtoPreamble(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 2470
    const-wide v0, 0x10300000001L

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2471
    nop

    .line 2472
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v0, :cond_14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_16

    :cond_14
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 2471
    :goto_16
    const-wide v2, 0x10300000002L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2473
    const-wide v0, 0x10300000003L

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2474
    const-wide v0, 0x10300000004L

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2475
    const-wide v0, 0x10900000005L

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2476
    const-wide v0, 0x10800000006L

    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2477
    const/4 v0, 0x1

    .line 2478
    .local v0, "partial":Z
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    const-wide v3, 0x20e00000007L

    if-eqz v1, :cond_57

    .line 2479
    const/4 v1, 0x3

    invoke-virtual {p1, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2480
    const/4 v0, 0x0

    .line 2482
    :cond_57
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v5, 0x4

    and-int/2addr v1, v5

    if-eqz v1, :cond_61

    .line 2483
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2484
    const/4 v0, 0x0

    .line 2486
    :cond_61
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v5, 0x1

    and-int/2addr v1, v5

    if-eqz v1, :cond_6b

    .line 2487
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2488
    const/4 v0, 0x0

    .line 2490
    :cond_6b
    if-eqz v0, :cond_70

    .line 2491
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2493
    :cond_70
    return-void
.end method

.method private synthetic blacklist lambda$dumpProcessAssociation$2(Lcom/android/internal/app/procstats/StatsEventOutput;ILcom/android/internal/app/procstats/AssociationState;Ljava/lang/Integer;Ljava/lang/String;Lcom/android/internal/app/procstats/AssociationState$SourceKey;Lcom/android/internal/app/procstats/AssociationState$SourceState;)V
    .registers 22
    .param p1, "statsEventOutput"    # Lcom/android/internal/app/procstats/StatsEventOutput;
    .param p2, "atomTag"    # I
    .param p3, "asc"    # Lcom/android/internal/app/procstats/AssociationState;
    .param p4, "serviceUid"    # Ljava/lang/Integer;
    .param p5, "serviceName"    # Ljava/lang/String;
    .param p6, "key"    # Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    .param p7, "src"    # Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 2452
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    iget v4, v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    iget-object v5, v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    .line 2456
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    .line 2458
    invoke-virtual {v2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-int v8, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v9, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 2459
    invoke-virtual {v2, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-int v9, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v10, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    iget-wide v12, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sub-long/2addr v10, v12

    .line 2461
    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-int v10, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v11, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    .line 2463
    invoke-virtual {v2, v11, v12}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-int v11, v2

    iget v12, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    .line 2465
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v13

    .line 2452
    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/app/procstats/StatsEventOutput;->write(IILjava/lang/String;ILjava/lang/String;IIIIILjava/lang/String;)V

    .line 2466
    return-void
.end method

.method private synthetic blacklist lambda$dumpProcessState$1(ILcom/android/internal/app/procstats/StatsEventOutput;Lcom/android/internal/app/procstats/ProcessState;)V
    .registers 5
    .param p1, "atomTag"    # I
    .param p2, "statsEventOutput"    # Lcom/android/internal/app/procstats/StatsEventOutput;
    .param p3, "processState"    # Lcom/android/internal/app/procstats/ProcessState;

    .line 2440
    invoke-virtual {p3}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2441
    invoke-virtual {p3}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    if-eq v0, p3, :cond_d

    .line 2442
    return-void

    .line 2444
    :cond_d
    invoke-virtual {p3, p1, p0, p2}, Lcom/android/internal/app/procstats/ProcessState;->dumpStateDurationToStatsd(ILcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/StatsEventOutput;)V

    .line 2445
    return-void
.end method

.method static synthetic blacklist lambda$static$0(Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;)I
    .registers 10
    .param p0, "o1"    # Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;
    .param p1, "o2"    # Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;

    .line 1577
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1578
    .local v0, "diff":I
    if-eqz v0, :cond_13

    .line 1579
    return v0

    .line 1581
    :cond_13
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mActiveTime:J

    iget-wide v3, p1, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mActiveTime:J

    cmp-long v1, v1, v3

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_28

    .line 1582
    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mActiveTime:J

    iget-wide v6, p1, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mActiveTime:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_26

    goto :goto_27

    :cond_26
    move v2, v3

    :goto_27
    return v2

    .line 1584
    :cond_28
    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mTotalTime:J

    iget-wide v6, p1, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mTotalTime:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3b

    .line 1585
    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mTotalTime:J

    iget-wide v6, p1, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mTotalTime:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_39

    goto :goto_3a

    :cond_39
    move v2, v3

    :goto_3a
    return v2

    .line 1587
    :cond_3b
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/AssociationState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1588
    if-eqz v0, :cond_4e

    .line 1589
    return v0

    .line 1591
    :cond_4e
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "val"    # I
    .param p3, "what"    # Ljava/lang/String;

    .line 1027
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move v1, v0

    .local v1, "got":I
    if-eq v0, p2, :cond_28

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1029
    const/4 v0, 0x0

    return v0

    .line 1031
    :cond_28
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist readCompactedLongArray(Landroid/os/Parcel;I[JI)V
    .registers 13
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "version"    # I
    .param p3, "array"    # [J
    .param p4, "num"    # I

    .line 798
    const/16 v0, 0xa

    if-gt p2, v0, :cond_8

    .line 799
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->readLongArray([J)V

    .line 800
    return-void

    .line 802
    :cond_8
    array-length v0, p3

    .line 803
    .local v0, "alen":I
    if-gt p4, v0, :cond_32

    .line 807
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, p4, :cond_28

    .line 808
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 809
    .local v2, "val":I
    if-ltz v2, :cond_18

    .line 810
    int-to-long v3, v2

    aput-wide v3, p3, v1

    goto :goto_25

    .line 812
    :cond_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 813
    .local v3, "bottom":I
    not-int v4, v2

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v3

    or-long/2addr v4, v6

    aput-wide v4, p3, v1

    .line 807
    .end local v2    # "val":I
    .end local v3    # "bottom":I
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 816
    :cond_28
    :goto_28
    if-ge v1, v0, :cond_31

    .line 817
    const-wide/16 v2, 0x0

    aput-wide v2, p3, v1

    .line 818
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 820
    :cond_31
    return-void

    .line 804
    .end local v1    # "i":I
    :cond_32
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad array lengths: got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " array is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist readFully(Ljava/io/InputStream;[I)[B
    .registers 8
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "outLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1035
    const/4 v0, 0x0

    .line 1036
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 1037
    .local v1, "initialAvail":I
    if-lez v1, :cond_a

    add-int/lit8 v2, v1, 0x1

    goto :goto_c

    :cond_a
    const/16 v2, 0x4000

    :goto_c
    new-array v2, v2, [B

    .line 1039
    .local v2, "data":[B
    :goto_e
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 1042
    .local v3, "amt":I
    const/4 v4, 0x0

    if-gez v3, :cond_1a

    .line 1045
    aput v0, p1, v4

    .line 1046
    return-object v2

    .line 1048
    :cond_1a
    add-int/2addr v0, v3

    .line 1049
    array-length v5, v2

    if-lt v0, v5, :cond_26

    .line 1050
    add-int/lit16 v5, v0, 0x4000

    new-array v5, v5, [B

    .line 1053
    .local v5, "newData":[B
    invoke-static {v2, v4, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1054
    move-object v2, v5

    .line 1056
    .end local v3    # "amt":I
    .end local v5    # "newData":[B
    :cond_26
    goto :goto_e
.end method

.method private blacklist resetCommon()V
    .registers 5

    .line 636
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    .line 637
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    .line 638
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->buildTimePeriodStartClockStr()V

    .line 639
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    .line 640
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    .line 641
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    .line 642
    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    .line 643
    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    .line 644
    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    .line 645
    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    .line 646
    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    .line 647
    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    .line 648
    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    .line 649
    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    .line 650
    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    .line 651
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->reset()V

    .line 652
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    invoke-static {v3, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 653
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->resetTable()V

    .line 654
    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 655
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 656
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 657
    invoke-virtual {p0, v0}, Lcom/android/internal/app/procstats/ProcessStats;->evaluateSystemProperties(Z)Z

    .line 658
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->updateFragmentation()V

    .line 659
    return-void
.end method

.method private static blacklist splitAndParseNumbers(Ljava/lang/String;)[I
    .registers 12
    .param p0, "s"    # Ljava/lang/String;

    .line 736
    const/4 v0, 0x0

    .line 737
    .local v0, "digit":Z
    const/4 v1, 0x0

    .line 738
    .local v1, "count":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 740
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    const/16 v4, 0x39

    const/16 v5, 0x30

    if-ge v3, v2, :cond_1f

    .line 741
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 742
    .local v6, "c":C
    if-lt v6, v5, :cond_1b

    if-gt v6, v4, :cond_1b

    .line 743
    if-nez v0, :cond_1c

    .line 744
    const/4 v0, 0x1

    .line 745
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 748
    :cond_1b
    const/4 v0, 0x0

    .line 740
    .end local v6    # "c":C
    :cond_1c
    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 752
    .end local v3    # "i":I
    :cond_1f
    new-array v3, v1, [I

    .line 753
    .local v3, "result":[I
    const/4 v6, 0x0

    .line 754
    .local v6, "p":I
    const/4 v7, 0x0

    .line 755
    .local v7, "val":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_24
    if-ge v8, v2, :cond_45

    .line 756
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 757
    .local v9, "c":C
    if-lt v9, v5, :cond_3a

    if-gt v9, v4, :cond_3a

    .line 758
    if-nez v0, :cond_34

    .line 759
    const/4 v0, 0x1

    .line 760
    add-int/lit8 v7, v9, -0x30

    goto :goto_42

    .line 762
    :cond_34
    mul-int/lit8 v7, v7, 0xa

    .line 763
    add-int/lit8 v10, v9, -0x30

    add-int/2addr v7, v10

    goto :goto_42

    .line 766
    :cond_3a
    if-eqz v0, :cond_42

    .line 767
    const/4 v0, 0x0

    .line 768
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "p":I
    .local v10, "p":I
    aput v7, v3, v6

    move v6, v10

    .line 755
    .end local v9    # "c":C
    .end local v10    # "p":I
    .restart local v6    # "p":I
    :cond_42
    :goto_42
    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    .line 772
    .end local v8    # "i":I
    :cond_45
    if-lez v1, :cond_4b

    .line 773
    add-int/lit8 v4, v1, -0x1

    aput v7, v3, v4

    .line 775
    :cond_4b
    return-object v3
.end method

.method private blacklist writeCompactedLongArray(Landroid/os/Parcel;[JI)V
    .registers 11
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "array"    # [J
    .param p3, "num"    # I

    .line 780
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_48

    .line 781
    aget-wide v1, p2, v0

    .line 782
    .local v1, "val":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_25

    .line 783
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time val negative: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ProcessStats"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const-wide/16 v1, 0x0

    .line 786
    :cond_25
    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_31

    .line 787
    long-to-int v3, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_45

    .line 789
    :cond_31
    const/16 v5, 0x20

    shr-long v5, v1, v5

    and-long/2addr v3, v5

    long-to-int v3, v3

    not-int v3, v3

    .line 790
    .local v3, "top":I
    const-wide v4, 0xffffffffL

    and-long/2addr v4, v1

    long-to-int v4, v4

    .line 791
    .local v4, "bottom":I
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    .end local v1    # "val":J
    .end local v3    # "top":I
    .end local v4    # "bottom":I
    :goto_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 795
    .end local v0    # "i":I
    :cond_48
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/app/procstats/ProcessStats;)V
    .registers 26
    .param p1, "other"    # Lcom/android/internal/app/procstats/ProcessStats;

    .line 295
    move-object/from16 v7, p1

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 296
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    .line 297
    .local v8, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    const/4 v0, 0x0

    move v9, v0

    .local v9, "ip":I
    :goto_a
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v9, v0, :cond_15e

    .line 298
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 299
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/util/SparseArray;

    .line 300
    .local v10, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    const/4 v0, 0x0

    move v11, v0

    .local v11, "iu":I
    :goto_20
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v11, v0, :cond_150

    .line 301
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 302
    .local v2, "uid":I
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/util/LongSparseArray;

    .line 303
    .local v12, "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    const/4 v0, 0x0

    move v13, v0

    .local v13, "iv":I
    :goto_33
    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-ge v13, v0, :cond_140

    .line 304
    invoke-virtual {v12, v13}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 305
    .local v3, "vers":J
    invoke-virtual {v12, v13}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 306
    .local v14, "otherState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v0, v14, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 307
    .local v15, "NPROCS":I
    iget-object v0, v14, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 308
    .local v6, "NSRVS":I
    iget-object v0, v14, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 309
    .local v0, "NASCS":I
    const/4 v5, 0x0

    .local v5, "iproc":I
    :goto_57
    if-ge v5, v15, :cond_d5

    .line 310
    move/from16 v16, v0

    .end local v0    # "NASCS":I
    .local v16, "NASCS":I
    iget-object v0, v14, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    .line 311
    .local v0, "otherProc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v17, v1

    .end local v1    # "pkgName":Ljava/lang/String;
    .local v17, "pkgName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    if-eq v1, v0, :cond_b4

    .line 314
    nop

    .line 315
    move v1, v5

    .end local v5    # "iproc":I
    .local v1, "iproc":I
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v5

    .line 314
    move-object/from16 v18, v8

    move/from16 v8, v16

    move/from16 v16, v1

    move-object/from16 v1, v17

    move/from16 v17, v9

    move-object v9, v0

    move-object/from16 v0, p0

    .end local v0    # "otherProc":Lcom/android/internal/app/procstats/ProcessState;
    .local v1, "pkgName":Ljava/lang/String;
    .local v8, "NASCS":I
    .local v9, "otherProc":Lcom/android/internal/app/procstats/ProcessState;
    .local v16, "iproc":I
    .local v17, "ip":I
    .local v18, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v5

    .line 316
    .local v5, "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v19, v10

    .end local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .local v19, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v10

    if-ne v10, v5, :cond_aa

    .line 318
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lcom/android/internal/app/procstats/ProcessState;->setMultiPackage(Z)V

    .line 319
    move/from16 v20, v11

    .end local v11    # "iu":I
    .local v20, "iu":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 320
    .local v10, "now":J
    move-object/from16 v21, v12

    .end local v12    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v21, "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v12

    .line 322
    .local v12, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    invoke-virtual {v5, v10, v11}, Lcom/android/internal/app/procstats/ProcessState;->clone(J)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v5

    .line 323
    iget-object v0, v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v22, v1

    .end local v1    # "pkgName":Ljava/lang/String;
    .local v22, "pkgName":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b0

    .line 316
    .end local v10    # "now":J
    .end local v20    # "iu":I
    .end local v21    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v22    # "pkgName":Ljava/lang/String;
    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v11    # "iu":I
    .local v12, "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_aa
    move-object/from16 v22, v1

    move/from16 v20, v11

    move-object/from16 v21, v12

    .line 325
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v11    # "iu":I
    .end local v12    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .restart local v20    # "iu":I
    .restart local v21    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .restart local v22    # "pkgName":Ljava/lang/String;
    :goto_b0
    invoke-virtual {v5, v9}, Lcom/android/internal/app/procstats/ProcessState;->add(Lcom/android/internal/app/procstats/ProcessState;)V

    goto :goto_c5

    .line 311
    .end local v18    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v19    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v20    # "iu":I
    .end local v21    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v22    # "pkgName":Ljava/lang/String;
    .restart local v0    # "otherProc":Lcom/android/internal/app/procstats/ProcessState;
    .local v5, "iproc":I
    .local v8, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .local v9, "ip":I
    .local v10, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v11    # "iu":I
    .restart local v12    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v16, "NASCS":I
    .local v17, "pkgName":Ljava/lang/String;
    :cond_b4
    move-object/from16 v18, v8

    move-object/from16 v19, v10

    move/from16 v20, v11

    move-object/from16 v21, v12

    move/from16 v8, v16

    move-object/from16 v22, v17

    move/from16 v16, v5

    move/from16 v17, v9

    move-object v9, v0

    .line 309
    .end local v0    # "otherProc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v5    # "iproc":I
    .end local v9    # "ip":I
    .end local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v11    # "iu":I
    .end local v12    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v8, "NASCS":I
    .local v16, "iproc":I
    .local v17, "ip":I
    .restart local v18    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v19    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v20    # "iu":I
    .restart local v21    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .restart local v22    # "pkgName":Ljava/lang/String;
    :goto_c5
    add-int/lit8 v5, v16, 0x1

    move v0, v8

    move/from16 v9, v17

    move-object/from16 v8, v18

    move-object/from16 v10, v19

    move/from16 v11, v20

    move-object/from16 v12, v21

    move-object/from16 v1, v22

    .end local v16    # "iproc":I
    .restart local v5    # "iproc":I
    goto :goto_57

    .end local v17    # "ip":I
    .end local v18    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v19    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v20    # "iu":I
    .end local v21    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v22    # "pkgName":Ljava/lang/String;
    .local v0, "NASCS":I
    .restart local v1    # "pkgName":Ljava/lang/String;
    .local v8, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v9    # "ip":I
    .restart local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v11    # "iu":I
    .restart local v12    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_d5
    move-object/from16 v22, v1

    move/from16 v16, v5

    move-object/from16 v18, v8

    move/from16 v17, v9

    move-object/from16 v19, v10

    move/from16 v20, v11

    move-object/from16 v21, v12

    move v8, v0

    .line 328
    .end local v0    # "NASCS":I
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v5    # "iproc":I
    .end local v9    # "ip":I
    .end local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v11    # "iu":I
    .end local v12    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v8, "NASCS":I
    .restart local v17    # "ip":I
    .restart local v18    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v19    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v20    # "iu":I
    .restart local v21    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .restart local v22    # "pkgName":Ljava/lang/String;
    const/4 v0, 0x0

    move v9, v0

    .local v9, "isvc":I
    :goto_e6
    if-ge v9, v6, :cond_10b

    .line 329
    iget-object v0, v14, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/internal/app/procstats/ServiceState;

    .line 332
    .local v10, "otherSvc":Lcom/android/internal/app/procstats/ServiceState;
    nop

    .line 333
    invoke-virtual {v10}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v5

    move v0, v6

    .end local v6    # "NSRVS":I
    .local v0, "NSRVS":I
    invoke-virtual {v10}, Lcom/android/internal/app/procstats/ServiceState;->getName()Ljava/lang/String;

    move-result-object v6

    .line 332
    move v11, v0

    move-object/from16 v1, v22

    move-object/from16 v0, p0

    .end local v0    # "NSRVS":I
    .end local v22    # "pkgName":Ljava/lang/String;
    .restart local v1    # "pkgName":Ljava/lang/String;
    .local v11, "NSRVS":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v5

    .line 334
    .local v5, "thisSvc":Lcom/android/internal/app/procstats/ServiceState;
    invoke-virtual {v5, v10}, Lcom/android/internal/app/procstats/ServiceState;->add(Lcom/android/internal/app/procstats/ServiceState;)V

    .line 328
    .end local v5    # "thisSvc":Lcom/android/internal/app/procstats/ServiceState;
    .end local v10    # "otherSvc":Lcom/android/internal/app/procstats/ServiceState;
    add-int/lit8 v9, v9, 0x1

    move v6, v11

    goto :goto_e6

    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v11    # "NSRVS":I
    .restart local v6    # "NSRVS":I
    .restart local v22    # "pkgName":Ljava/lang/String;
    :cond_10b
    move v11, v6

    move-object/from16 v1, v22

    .line 336
    .end local v6    # "NSRVS":I
    .end local v9    # "isvc":I
    .end local v22    # "pkgName":Ljava/lang/String;
    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v11    # "NSRVS":I
    const/4 v0, 0x0

    move v9, v0

    .local v9, "iasc":I
    :goto_110
    if-ge v9, v8, :cond_130

    .line 337
    iget-object v0, v14, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/internal/app/procstats/AssociationState;

    .line 340
    .local v10, "otherAsc":Lcom/android/internal/app/procstats/AssociationState;
    nop

    .line 341
    invoke-virtual {v10}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/android/internal/app/procstats/AssociationState;->getName()Ljava/lang/String;

    move-result-object v6

    .line 340
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->getAssociationStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState;

    move-result-object v5

    .line 342
    .local v5, "thisAsc":Lcom/android/internal/app/procstats/AssociationState;
    invoke-virtual {v5, v10}, Lcom/android/internal/app/procstats/AssociationState;->add(Lcom/android/internal/app/procstats/AssociationState;)V

    .line 336
    .end local v5    # "thisAsc":Lcom/android/internal/app/procstats/AssociationState;
    .end local v10    # "otherAsc":Lcom/android/internal/app/procstats/AssociationState;
    add-int/lit8 v9, v9, 0x1

    goto :goto_110

    :cond_130
    move-object/from16 v0, p0

    .line 303
    .end local v3    # "vers":J
    .end local v8    # "NASCS":I
    .end local v9    # "iasc":I
    .end local v11    # "NSRVS":I
    .end local v14    # "otherState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v15    # "NPROCS":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v17

    move-object/from16 v8, v18

    move-object/from16 v10, v19

    move/from16 v11, v20

    move-object/from16 v12, v21

    goto/16 :goto_33

    .end local v17    # "ip":I
    .end local v18    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v19    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v20    # "iu":I
    .end local v21    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v8, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .local v9, "ip":I
    .local v10, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .local v11, "iu":I
    .restart local v12    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_140
    move-object/from16 v0, p0

    move-object/from16 v18, v8

    move/from16 v17, v9

    move-object/from16 v19, v10

    move/from16 v20, v11

    move-object/from16 v21, v12

    .line 300
    .end local v2    # "uid":I
    .end local v8    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v9    # "ip":I
    .end local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v11    # "iu":I
    .end local v12    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v13    # "iv":I
    .restart local v17    # "ip":I
    .restart local v18    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v19    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v20    # "iu":I
    add-int/lit8 v11, v20, 0x1

    .end local v20    # "iu":I
    .restart local v11    # "iu":I
    goto/16 :goto_20

    .end local v17    # "ip":I
    .end local v18    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v19    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v8    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v9    # "ip":I
    .restart local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_150
    move-object/from16 v0, p0

    move-object/from16 v18, v8

    move/from16 v17, v9

    move-object/from16 v19, v10

    move/from16 v20, v11

    .line 297
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v8    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v9    # "ip":I
    .end local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v11    # "iu":I
    .restart local v17    # "ip":I
    .restart local v18    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    add-int/lit8 v9, v17, 0x1

    .end local v17    # "ip":I
    .restart local v9    # "ip":I
    goto/16 :goto_a

    .end local v18    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v8    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_15e
    move-object/from16 v0, p0

    move-object/from16 v18, v8

    move/from16 v17, v9

    .line 348
    .end local v8    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v9    # "ip":I
    .restart local v18    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    iget-object v8, v7, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    .line 349
    .local v8, "uidStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/UidState;>;"
    const/4 v1, 0x0

    .local v1, "ip":I
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "size":I
    :goto_16b
    if-ge v1, v2, :cond_197

    .line 350
    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 351
    .local v3, "uid":I
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/UidState;

    .line 352
    .local v4, "uidState":Lcom/android/internal/app/procstats/UidState;
    if-nez v4, :cond_18b

    .line 353
    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/UidState;

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/UidState;->clone()Lcom/android/internal/app/procstats/UidState;

    move-result-object v4

    .line 354
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_194

    .line 356
    :cond_18b
    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/UidState;

    invoke-virtual {v4, v5}, Lcom/android/internal/app/procstats/UidState;->add(Lcom/android/internal/app/procstats/UidState;)V

    .line 349
    .end local v3    # "uid":I
    .end local v4    # "uidState":Lcom/android/internal/app/procstats/UidState;
    :goto_194
    add-int/lit8 v1, v1, 0x1

    goto :goto_16b

    .line 360
    .end local v1    # "ip":I
    .end local v2    # "size":I
    :cond_197
    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v9

    .line 361
    .local v9, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    const/4 v1, 0x0

    move v10, v1

    .local v10, "ip":I
    :goto_19f
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v10, v1, :cond_21a

    .line 362
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/util/SparseArray;

    .line 363
    .local v11, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/4 v1, 0x0

    move v12, v1

    .local v12, "iu":I
    :goto_1ae
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v12, v1, :cond_217

    .line 364
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 365
    .restart local v3    # "uid":I
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/internal/app/procstats/ProcessState;

    .line 366
    .local v13, "otherProc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v6

    .line 367
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v4

    .line 369
    .local v4, "vers":J
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v6, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/internal/app/procstats/ProcessState;

    .line 371
    .local v14, "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v14, :cond_1f9

    .line 373
    new-instance v0, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJLjava/lang/String;)V

    move-object/from16 v23, v1

    move-object v1, v0

    move-object/from16 v0, v23

    move-object v14, v1

    .line 374
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v6, v3, v14}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v1

    .line 376
    .local v1, "thisState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v15, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1f9

    .line 377
    iget-object v15, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .end local v1    # "thisState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_1f9
    invoke-virtual {v14, v13}, Lcom/android/internal/app/procstats/ProcessState;->add(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 381
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/UidState;

    .line 382
    .local v1, "uidState":Lcom/android/internal/app/procstats/UidState;
    if-nez v1, :cond_211

    .line 383
    new-instance v15, Lcom/android/internal/app/procstats/UidState;

    invoke-direct {v15, v0, v3}, Lcom/android/internal/app/procstats/UidState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;I)V

    move-object v1, v15

    .line 384
    iget-object v15, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v15, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 386
    :cond_211
    invoke-virtual {v1, v14}, Lcom/android/internal/app/procstats/UidState;->addProcess(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 363
    .end local v1    # "uidState":Lcom/android/internal/app/procstats/UidState;
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "uid":I
    .end local v4    # "vers":J
    .end local v6    # "name":Ljava/lang/String;
    .end local v13    # "otherProc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v14    # "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    add-int/lit8 v12, v12, 0x1

    goto :goto_1ae

    .line 361
    .end local v11    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    .end local v12    # "iu":I
    :cond_217
    add-int/lit8 v10, v10, 0x1

    goto :goto_19f

    .line 390
    .end local v10    # "ip":I
    :cond_21a
    const/4 v1, 0x0

    .local v1, "ip":I
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "size":I
    :goto_221
    if-ge v1, v2, :cond_233

    .line 391
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/UidState;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/procstats/UidState;->updateCombinedState(J)V

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_221

    .line 394
    .end local v1    # "ip":I
    .end local v2    # "size":I
    :cond_233
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_234
    const/16 v2, 0x8

    if-ge v1, v2, :cond_246

    .line 398
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v3, v2, v1

    iget-object v5, v7, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v5, v5, v1

    add-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_234

    .line 401
    .end local v1    # "i":I
    :cond_246
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(Lcom/android/internal/app/procstats/SysMemUsageTable;)V

    .line 403
    iget v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    iget v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    .line 405
    iget-wide v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_264

    .line 406
    iget-wide v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    .line 407
    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 409
    :cond_264
    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v5, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 410
    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    iget-wide v5, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 412
    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    .line 413
    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    .line 414
    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    .line 415
    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    .line 416
    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    .line 417
    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    .line 418
    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    .line 419
    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    .line 420
    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    .line 421
    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    iget-wide v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    .line 423
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    iget-boolean v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    .line 424
    return-void
.end method

.method public blacklist addSysMemUsage(JJJJJ)V
    .registers 16
    .param p1, "cachedMem"    # J
    .param p3, "freeMem"    # J
    .param p5, "zramMem"    # J
    .param p7, "kernelMem"    # J
    .param p9, "nativeMem"    # J

    .line 428
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3c

    .line 429
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    mul-int/lit8 v0, v0, 0x10

    .line 430
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 431
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    const/4 v2, 0x3

    if-ge v1, v2, :cond_35

    .line 432
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v1, 0x1

    aput-wide p1, v2, v3

    .line 433
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v1, 0x4

    aput-wide p3, v2, v3

    .line 434
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v1, 0x7

    aput-wide p5, v2, v3

    .line 435
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v1, 0xa

    aput-wide p7, v2, v3

    .line 436
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v1, 0xd

    aput-wide p9, v2, v3

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 438
    .end local v1    # "i":I
    :cond_35
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    invoke-virtual {v1, v0, v2, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(I[JI)V

    .line 440
    .end local v0    # "state":I
    :cond_3c
    return-void
.end method

.method public blacklist collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;
    .registers 25
    .param p1, "screenStates"    # [I
    .param p2, "memStates"    # [I
    .param p3, "procStates"    # [I
    .param p4, "sortProcStates"    # [I
    .param p5, "now"    # J
    .param p7, "reqPackage"    # Ljava/lang/String;
    .param p8, "activeOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I[I[IJ",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation

    .line 2101
    move-object/from16 v0, p7

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2102
    .local v1, "foundProcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/internal/app/procstats/ProcessState;>;"
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 2103
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 2104
    .local v3, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    const/4 v4, 0x0

    .local v4, "ip":I
    :goto_10
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_8a

    .line 2105
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2106
    .local v5, "pkgName":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 2107
    .local v6, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    const/4 v7, 0x0

    .local v7, "iu":I
    :goto_23
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_85

    .line 2108
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/LongSparseArray;

    .line 2109
    .local v8, "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    .line 2110
    .local v9, "NVERS":I
    const/4 v10, 0x0

    .local v10, "iv":I
    :goto_34
    if-ge v10, v9, :cond_80

    .line 2111
    invoke-virtual {v8, v10}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 2112
    .local v11, "state":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v12, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 2113
    .local v12, "NPROCS":I
    if-eqz v0, :cond_4d

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4b

    goto :goto_4d

    :cond_4b
    const/4 v13, 0x0

    goto :goto_4e

    :cond_4d
    :goto_4d
    const/4 v13, 0x1

    .line 2114
    .local v13, "pkgMatch":Z
    :goto_4e
    const/4 v14, 0x0

    .local v14, "iproc":I
    :goto_4f
    if-ge v14, v12, :cond_7b

    .line 2115
    iget-object v15, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/procstats/ProcessState;

    .line 2116
    .local v15, "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v13, :cond_66

    invoke-virtual {v15}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    .line 2117
    goto :goto_76

    .line 2119
    :cond_66
    if-eqz p8, :cond_6f

    invoke-virtual {v15}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 2120
    goto :goto_76

    .line 2122
    :cond_6f
    invoke-virtual {v15}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2114
    .end local v15    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :goto_76
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p0

    goto :goto_4f

    .line 2110
    .end local v11    # "state":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v12    # "NPROCS":I
    .end local v13    # "pkgMatch":Z
    .end local v14    # "iproc":I
    :cond_7b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p0

    goto :goto_34

    .line 2107
    .end local v8    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v9    # "NVERS":I
    .end local v10    # "iv":I
    :cond_80
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p0

    goto :goto_23

    .line 2104
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v7    # "iu":I
    :cond_85
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p0

    goto :goto_10

    .line 2127
    .end local v4    # "ip":I
    :cond_8a
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2128
    .local v2, "outProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_94
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_cb

    .line 2129
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/internal/app/procstats/ProcessState;

    .line 2130
    .local v6, "proc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-wide/from16 v10, p5

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessTimeLocked([I[I[IJ)J

    move-result-wide v12

    const-wide/16 v7, 0x0

    cmp-long v5, v12, v7

    if-lez v5, :cond_c6

    .line 2131
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2132
    move-object/from16 v5, p3

    move-object/from16 v9, p4

    if-eq v5, v9, :cond_c8

    .line 2133
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-wide/from16 v10, p5

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessTimeLocked([I[I[IJ)J

    goto :goto_c8

    .line 2130
    :cond_c6
    move-object/from16 v5, p3

    .line 2128
    .end local v6    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_c8
    :goto_c8
    add-int/lit8 v4, v4, 0x1

    goto :goto_94

    :cond_cb
    move-object/from16 v5, p3

    .line 2137
    .end local v4    # "i":I
    sget-object v4, Lcom/android/internal/app/procstats/ProcessState;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2138
    return-object v2
.end method

.method public blacklist computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .registers 26
    .param p1, "data"    # Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    .param p2, "now"    # J

    .line 454
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 455
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_b
    const/16 v7, 0x10

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    if-ge v6, v7, :cond_25

    .line 456
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aput-wide v9, v7, v6

    .line 457
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    aput-wide v4, v7, v6

    .line 458
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    aput-wide v4, v7, v6

    .line 459
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aput v8, v7, v6

    .line 455
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 461
    .end local v6    # "i":I
    :cond_25
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_26
    if-ge v6, v7, :cond_2f

    .line 462
    iget-object v11, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    aput-wide v4, v11, v6

    .line 461
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 464
    .end local v6    # "i":I
    :cond_2f
    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    .line 465
    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    .line 466
    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    .line 467
    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    .line 468
    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    .line 469
    iput v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 470
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getTotalMemUsage()[J

    move-result-object v4

    .line 471
    .local v4, "totalMemUsage":[J
    const/4 v5, 0x0

    .local v5, "is":I
    :goto_42
    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    array-length v6, v6

    if-ge v5, v6, :cond_105

    .line 472
    const/4 v6, 0x0

    .local v6, "im":I
    :goto_48
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    array-length v7, v7

    if-ge v6, v7, :cond_fc

    .line 473
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    aget v7, v7, v5

    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    aget v9, v9, v6

    add-int/2addr v7, v9

    .line 474
    .local v7, "memBucket":I
    mul-int/lit8 v9, v7, 0x10

    .line 475
    .local v9, "stateBucket":I
    iget-object v10, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v10, v10, v7

    .line 476
    .local v10, "memTime":J
    iget v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    if-ne v12, v7, :cond_65

    .line 477
    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    sub-long v12, v2, v12

    add-long/2addr v10, v12

    .line 479
    :cond_65
    iget-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    add-long/2addr v12, v10

    iput-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 480
    iget-object v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    int-to-byte v13, v9

    invoke-virtual {v12, v13}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKey(B)I

    move-result v12

    .line 481
    .local v12, "sysKey":I
    move-object v13, v4

    .line 482
    .local v13, "longs":[J
    const/4 v14, 0x0

    .line 483
    .local v14, "idx":I
    const/4 v15, -0x1

    if-eq v12, v15, :cond_98

    .line 484
    iget-object v15, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v15, v12}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v15

    .line 485
    .local v15, "tmpLongs":[J
    invoke-static {v12}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v16

    .line 486
    .local v16, "tmpIndex":I
    add-int/lit8 v17, v16, 0x0

    aget-wide v17, v15, v17

    const-wide/16 v19, 0x3

    cmp-long v17, v17, v19

    if-ltz v17, :cond_95

    .line 487
    move-object/from16 v17, v4

    .end local v4    # "totalMemUsage":[J
    .local v17, "totalMemUsage":[J
    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    invoke-static {v4, v8, v13, v14}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    .line 488
    move-object v13, v15

    .line 489
    move/from16 v14, v16

    goto :goto_9a

    .line 486
    .end local v17    # "totalMemUsage":[J
    .restart local v4    # "totalMemUsage":[J
    :cond_95
    move-object/from16 v17, v4

    .end local v4    # "totalMemUsage":[J
    .restart local v17    # "totalMemUsage":[J
    goto :goto_9a

    .line 483
    .end local v15    # "tmpLongs":[J
    .end local v16    # "tmpIndex":I
    .end local v17    # "totalMemUsage":[J
    .restart local v4    # "totalMemUsage":[J
    :cond_98
    move-object/from16 v17, v4

    .line 492
    .end local v4    # "totalMemUsage":[J
    .restart local v17    # "totalMemUsage":[J
    :goto_9a
    move v15, v9

    .end local v9    # "stateBucket":I
    .local v15, "stateBucket":I
    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    add-int/lit8 v16, v14, 0x2

    move/from16 v18, v5

    .end local v5    # "is":I
    .local v18, "is":I
    aget-wide v4, v13, v16

    long-to-double v4, v4

    move-wide/from16 v20, v4

    long-to-double v4, v10

    mul-double v4, v4, v20

    add-double/2addr v8, v4

    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    .line 494
    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    add-int/lit8 v8, v14, 0x5

    aget-wide v8, v13, v8

    long-to-double v8, v8

    move-wide/from16 v20, v4

    long-to-double v4, v10

    mul-double/2addr v8, v4

    add-double v4, v20, v8

    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    .line 496
    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    add-int/lit8 v8, v14, 0x8

    aget-wide v8, v13, v8

    long-to-double v8, v8

    move-wide/from16 v20, v4

    long-to-double v4, v10

    mul-double/2addr v8, v4

    add-double v4, v20, v8

    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    .line 498
    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    add-int/lit8 v8, v14, 0xb

    aget-wide v8, v13, v8

    long-to-double v8, v8

    move-wide/from16 v20, v4

    long-to-double v4, v10

    mul-double/2addr v8, v4

    add-double v4, v20, v8

    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    .line 500
    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    add-int/lit8 v8, v14, 0xe

    aget-wide v8, v13, v8

    long-to-double v8, v8

    move-wide/from16 v20, v4

    long-to-double v4, v10

    mul-double/2addr v8, v4

    add-double v4, v20, v8

    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    .line 502
    iget v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    int-to-long v4, v4

    add-int/lit8 v8, v14, 0x0

    aget-wide v8, v13, v8

    add-long/2addr v4, v8

    long-to-int v4, v4

    iput v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 472
    .end local v7    # "memBucket":I
    .end local v10    # "memTime":J
    .end local v12    # "sysKey":I
    .end local v13    # "longs":[J
    .end local v14    # "idx":I
    .end local v15    # "stateBucket":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v17

    move/from16 v5, v18

    const/4 v8, 0x0

    goto/16 :goto_48

    .end local v17    # "totalMemUsage":[J
    .end local v18    # "is":I
    .restart local v4    # "totalMemUsage":[J
    .restart local v5    # "is":I
    :cond_fc
    move-object/from16 v17, v4

    move/from16 v18, v5

    .line 471
    .end local v4    # "totalMemUsage":[J
    .end local v5    # "is":I
    .end local v6    # "im":I
    .restart local v17    # "totalMemUsage":[J
    .restart local v18    # "is":I
    add-int/lit8 v5, v18, 0x1

    const/4 v8, 0x0

    .end local v18    # "is":I
    .restart local v5    # "is":I
    goto/16 :goto_42

    .end local v17    # "totalMemUsage":[J
    .restart local v4    # "totalMemUsage":[J
    :cond_105
    move-object/from16 v17, v4

    move/from16 v18, v5

    .line 505
    .end local v4    # "totalMemUsage":[J
    .end local v5    # "is":I
    .restart local v17    # "totalMemUsage":[J
    iget-boolean v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    iput-boolean v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->hasSwappedOutPss:Z

    .line 506
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 507
    .local v4, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    const/4 v5, 0x0

    .local v5, "iproc":I
    :goto_114
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_136

    .line 508
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 509
    .local v6, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/4 v7, 0x0

    .local v7, "iu":I
    :goto_121
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_133

    .line 510
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/procstats/ProcessState;

    .line 511
    .local v8, "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v8, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->aggregatePss(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    .line 509
    .end local v8    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    add-int/lit8 v7, v7, 0x1

    goto :goto_121

    .line 507
    .end local v6    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    .end local v7    # "iu":I
    :cond_133
    add-int/lit8 v5, v5, 0x1

    goto :goto_114

    .line 514
    .end local v5    # "iproc":I
    :cond_136
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 853
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpAggregatedProtoForStatsd([Landroid/util/proto/ProtoOutputStream;J)V
    .registers 21
    .param p1, "protoStreams"    # [Landroid/util/proto/ProtoOutputStream;
    .param p2, "maxRawShardSizeBytes"    # J

    .line 2359
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 2360
    .local v2, "shardIndex":I
    aget-object v3, v1, v2

    invoke-direct {v0, v3}, Lcom/android/internal/app/procstats/ProcessStats;->dumpProtoPreamble(Landroid/util/proto/ProtoOutputStream;)V

    .line 2362
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 2363
    .local v3, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    new-instance v4, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v4}, Lcom/android/internal/app/ProcessMap;-><init>()V

    move-object v13, v4

    .line 2364
    .local v13, "procToPkgMap":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Landroid/util/ArraySet<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 2365
    .local v14, "uidToPkgMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5, v13, v14}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessPackageMaps(Ljava/lang/String;ZLcom/android/internal/app/ProcessMap;Landroid/util/SparseArray;)V

    .line 2367
    const/4 v4, 0x0

    .local v4, "ip":I
    :goto_21
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_91

    .line 2368
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    .line 2369
    .local v9, "procName":Ljava/lang/String;
    aget-object v5, v1, v2

    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->getRawSize()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v5, p2

    if-lez v5, :cond_60

    .line 2370
    add-int/lit8 v2, v2, 0x1

    .line 2371
    array-length v5, v1

    if-lt v2, v5, :cond_5b

    .line 2373
    nop

    .line 2374
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 2373
    const-string v6, "Dropping process indices from %d to %d from statsd proto (too large)"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ProcessStats"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    goto :goto_91

    .line 2377
    :cond_5b
    aget-object v5, v1, v2

    invoke-direct {v0, v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpProtoPreamble(Landroid/util/proto/ProtoOutputStream;)V

    .line 2380
    :cond_60
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Landroid/util/SparseArray;

    .line 2381
    .local v15, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/4 v5, 0x0

    .local v5, "iu":I
    :goto_68
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_8c

    .line 2382
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 2383
    .local v10, "uid":I
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/procstats/ProcessState;

    .line 2384
    .local v6, "procState":Lcom/android/internal/app/procstats/ProcessState;
    move v7, v5

    move-object v5, v6

    .end local v6    # "procState":Lcom/android/internal/app/procstats/ProcessState;
    .local v5, "procState":Lcom/android/internal/app/procstats/ProcessState;
    .local v7, "iu":I
    aget-object v6, v1, v2

    move v11, v7

    .end local v7    # "iu":I
    .local v11, "iu":I
    const-wide v7, 0x20b00000008L

    move/from16 v16, v11

    .end local v11    # "iu":I
    .local v16, "iu":I
    iget-wide v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    invoke-virtual/range {v5 .. v14}, Lcom/android/internal/app/procstats/ProcessState;->dumpAggregatedProtoForStatsd(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IJLcom/android/internal/app/ProcessMap;Landroid/util/SparseArray;)V

    .line 2381
    .end local v5    # "procState":Lcom/android/internal/app/procstats/ProcessState;
    .end local v10    # "uid":I
    add-int/lit8 v5, v16, 0x1

    .end local v16    # "iu":I
    .local v5, "iu":I
    goto :goto_68

    :cond_8c
    move/from16 v16, v5

    .line 2367
    .end local v5    # "iu":I
    .end local v9    # "procName":Ljava/lang/String;
    .end local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 2391
    .end local v4    # "ip":I
    :cond_91
    :goto_91
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_92
    if-gt v4, v2, :cond_9c

    .line 2392
    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 2391
    add-int/lit8 v4, v4, 0x1

    goto :goto_92

    .line 2394
    .end local v4    # "i":I
    :cond_9c
    return-void
.end method

.method public blacklist dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .registers 30
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;
    .param p3, "section"    # I

    .line 2145
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2146
    .local v8, "now":J
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 2147
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    .line 2148
    .local v11, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    const-string/jumbo v1, "vers,5"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2149
    const-string v1, "period,"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2150
    const-string v12, ","

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2151
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v1, :cond_36

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    goto :goto_38

    :cond_36
    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    :goto_38
    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 2152
    const/4 v1, 0x1

    .line 2153
    .local v1, "partial":Z
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_48

    .line 2154
    const-string v3, ",shutdown"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2155
    const/4 v1, 0x0

    .line 2157
    :cond_48
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_54

    .line 2158
    const-string v3, ",sysprops"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2159
    const/4 v1, 0x0

    .line 2161
    :cond_54
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v13, 0x1

    and-int/2addr v3, v13

    if-eqz v3, :cond_62

    .line 2162
    const-string v3, ",complete"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2163
    const/4 v1, 0x0

    move v14, v1

    goto :goto_63

    .line 2161
    :cond_62
    move v14, v1

    .line 2165
    .end local v1    # "partial":Z
    .local v14, "partial":Z
    :goto_63
    if-eqz v14, :cond_6a

    .line 2166
    const-string v1, ",partial"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2168
    :cond_6a
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    if-eqz v1, :cond_73

    .line 2169
    const-string v1, ",swapped-out-pss"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2171
    :cond_73
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 2172
    const-string v1, "config,"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2174
    and-int/lit8 v1, p3, 0xe

    if-eqz v1, :cond_1dc

    .line 2175
    const/4 v1, 0x0

    move v15, v1

    .local v15, "ip":I
    :goto_86
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v15, v1, :cond_1d9

    .line 2176
    invoke-virtual {v11, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 2177
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v10, :cond_9f

    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9f

    .line 2178
    move-object/from16 v23, v11

    goto/16 :goto_1ce

    .line 2180
    :cond_9f
    invoke-virtual {v11, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2181
    .local v1, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    const/4 v4, 0x0

    .local v4, "iu":I
    :goto_a6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1c8

    .line 2182
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 2183
    .local v5, "uid":I
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/LongSparseArray;

    .line 2184
    .local v6, "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    const/4 v7, 0x0

    .local v7, "iv":I
    :goto_b7
    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v13

    if-ge v7, v13, :cond_1b4

    .line 2185
    invoke-virtual {v6, v7}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v17

    .line 2186
    .local v17, "vers":J
    invoke-virtual {v6, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 2187
    .local v13, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object/from16 v19, v1

    .end local v1    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .local v19, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    iget-object v1, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2188
    .local v1, "NPROCS":I
    iget-object v2, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 2189
    .local v2, "NSRVS":I
    move/from16 v20, v2

    .end local v2    # "NSRVS":I
    .local v20, "NSRVS":I
    iget-object v2, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 2190
    .local v2, "NASCS":I
    and-int/lit8 v21, p3, 0x2

    if-eqz v21, :cond_140

    .line 2191
    const/16 v21, 0x0

    move/from16 v10, v21

    .local v10, "iproc":I
    :goto_e5
    if-ge v10, v1, :cond_12b

    .line 2192
    move/from16 v21, v1

    .end local v1    # "NPROCS":I
    .local v21, "NPROCS":I
    iget-object v1, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 2193
    .local v1, "proc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v22, v1

    .end local v1    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .local v22, "proc":Lcom/android/internal/app/procstats/ProcessState;
    iget-object v1, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 2194
    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2193
    move/from16 v23, v7

    move-object v7, v1

    move-object/from16 v1, v22

    move/from16 v22, v10

    move/from16 v10, v20

    move/from16 v20, v23

    move-object/from16 v23, v11

    move v11, v2

    move-object/from16 v2, p1

    move-wide/from16 v24, v17

    move/from16 v17, v4

    move v4, v5

    move-object/from16 v18, v6

    move-wide/from16 v5, v24

    .end local v2    # "NASCS":I
    .end local v6    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v7    # "iv":I
    .restart local v1    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .local v4, "uid":I
    .local v5, "vers":J
    .local v10, "NSRVS":I
    .local v11, "NASCS":I
    .local v17, "iu":I
    .local v18, "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v20, "iv":I
    .local v22, "iproc":I
    .local v23, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->dumpPackageProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V

    .line 2191
    .end local v1    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    add-int/lit8 v1, v22, 0x1

    move v2, v11

    move/from16 v7, v20

    move-object/from16 v11, v23

    move/from16 v20, v10

    move v10, v1

    move/from16 v1, v21

    move v5, v4

    move/from16 v4, v17

    move-object/from16 v6, v18

    move-wide/from16 v17, v24

    .end local v22    # "iproc":I
    .local v1, "iproc":I
    goto :goto_e5

    .end local v18    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v21    # "NPROCS":I
    .end local v23    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .local v1, "NPROCS":I
    .restart local v2    # "NASCS":I
    .local v4, "iu":I
    .local v5, "uid":I
    .restart local v6    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .restart local v7    # "iv":I
    .local v10, "iproc":I
    .local v11, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .local v17, "vers":J
    .local v20, "NSRVS":I
    :cond_12b
    move/from16 v21, v1

    move/from16 v22, v10

    move-object/from16 v23, v11

    move/from16 v10, v20

    move v11, v2

    move/from16 v20, v7

    move-wide/from16 v24, v17

    move/from16 v17, v4

    move v4, v5

    move-object/from16 v18, v6

    move-wide/from16 v5, v24

    .end local v1    # "NPROCS":I
    .end local v2    # "NASCS":I
    .end local v6    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v7    # "iv":I
    .local v4, "uid":I
    .local v5, "vers":J
    .local v10, "NSRVS":I
    .local v11, "NASCS":I
    .local v17, "iu":I
    .restart local v18    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v20, "iv":I
    .restart local v21    # "NPROCS":I
    .restart local v22    # "iproc":I
    .restart local v23    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    goto :goto_152

    .line 2190
    .end local v10    # "NSRVS":I
    .end local v18    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v21    # "NPROCS":I
    .end local v22    # "iproc":I
    .end local v23    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v1    # "NPROCS":I
    .restart local v2    # "NASCS":I
    .local v4, "iu":I
    .local v5, "uid":I
    .restart local v6    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .restart local v7    # "iv":I
    .local v11, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .local v17, "vers":J
    .local v20, "NSRVS":I
    :cond_140
    move/from16 v21, v1

    move-object/from16 v23, v11

    move/from16 v10, v20

    move v11, v2

    move/from16 v20, v7

    move-wide/from16 v24, v17

    move/from16 v17, v4

    move v4, v5

    move-object/from16 v18, v6

    move-wide/from16 v5, v24

    .line 2197
    .end local v1    # "NPROCS":I
    .end local v2    # "NASCS":I
    .end local v6    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v7    # "iv":I
    .local v4, "uid":I
    .local v5, "vers":J
    .restart local v10    # "NSRVS":I
    .local v11, "NASCS":I
    .local v17, "iu":I
    .restart local v18    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v20, "iv":I
    .restart local v21    # "NPROCS":I
    .restart local v23    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :goto_152
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_17a

    .line 2198
    const/4 v1, 0x0

    .local v1, "isvc":I
    :goto_157
    if-ge v1, v10, :cond_178

    .line 2199
    iget-object v2, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 2200
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2199
    invoke-static {v3, v2}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2201
    .local v7, "serviceName":Ljava/lang/String;
    iget-object v2, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ServiceState;

    .line 2202
    .local v2, "svc":Lcom/android/internal/app/procstats/ServiceState;
    move/from16 v22, v1

    move-object v1, v2

    move-object/from16 v2, p1

    .end local v2    # "svc":Lcom/android/internal/app/procstats/ServiceState;
    .local v1, "svc":Lcom/android/internal/app/procstats/ServiceState;
    .local v22, "isvc":I
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V

    .line 2198
    .end local v1    # "svc":Lcom/android/internal/app/procstats/ServiceState;
    .end local v7    # "serviceName":Ljava/lang/String;
    add-int/lit8 v1, v22, 0x1

    .end local v22    # "isvc":I
    .local v1, "isvc":I
    goto :goto_157

    :cond_178
    move/from16 v22, v1

    .line 2205
    .end local v1    # "isvc":I
    :cond_17a
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_1a2

    .line 2206
    const/4 v1, 0x0

    .local v1, "iasc":I
    :goto_17f
    if-ge v1, v11, :cond_1a0

    .line 2207
    iget-object v2, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    .line 2208
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2207
    invoke-static {v3, v2}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2209
    .local v7, "associationName":Ljava/lang/String;
    iget-object v2, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/AssociationState;

    .line 2210
    .local v2, "asc":Lcom/android/internal/app/procstats/AssociationState;
    move/from16 v22, v1

    move-object v1, v2

    move-object/from16 v2, p1

    .end local v2    # "asc":Lcom/android/internal/app/procstats/AssociationState;
    .local v1, "asc":Lcom/android/internal/app/procstats/AssociationState;
    .local v22, "iasc":I
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/AssociationState;->dumpTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V

    .line 2206
    .end local v1    # "asc":Lcom/android/internal/app/procstats/AssociationState;
    .end local v7    # "associationName":Ljava/lang/String;
    add-int/lit8 v1, v22, 0x1

    .end local v22    # "iasc":I
    .local v1, "iasc":I
    goto :goto_17f

    :cond_1a0
    move/from16 v22, v1

    .line 2184
    .end local v1    # "iasc":I
    .end local v5    # "vers":J
    .end local v10    # "NSRVS":I
    .end local v11    # "NASCS":I
    .end local v13    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v21    # "NPROCS":I
    :cond_1a2
    add-int/lit8 v7, v20, 0x1

    move-object/from16 v2, p1

    move-object/from16 v10, p2

    move v5, v4

    move/from16 v4, v17

    move-object/from16 v6, v18

    move-object/from16 v1, v19

    move-object/from16 v11, v23

    const/4 v13, 0x1

    .end local v20    # "iv":I
    .local v7, "iv":I
    goto/16 :goto_b7

    .end local v17    # "iu":I
    .end local v18    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v19    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v23    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .local v1, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .local v4, "iu":I
    .local v5, "uid":I
    .restart local v6    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v11, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_1b4
    move-object/from16 v19, v1

    move/from16 v17, v4

    move v4, v5

    move-object/from16 v18, v6

    move/from16 v20, v7

    move-object/from16 v23, v11

    .line 2181
    .end local v1    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v4    # "iu":I
    .end local v5    # "uid":I
    .end local v6    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v7    # "iv":I
    .end local v11    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v17    # "iu":I
    .restart local v19    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v23    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    add-int/lit8 v4, v17, 0x1

    move-object/from16 v2, p1

    move-object/from16 v10, p2

    const/4 v13, 0x1

    .end local v17    # "iu":I
    .restart local v4    # "iu":I
    goto/16 :goto_a6

    .end local v19    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v23    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v1    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v11    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_1c8
    move-object/from16 v19, v1

    move/from16 v17, v4

    move-object/from16 v23, v11

    .line 2175
    .end local v1    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "iu":I
    .end local v11    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v23    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :goto_1ce
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    move-object/from16 v10, p2

    move-object/from16 v11, v23

    const/4 v13, 0x1

    goto/16 :goto_86

    .end local v23    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v11    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_1d9
    move-object/from16 v23, v11

    .end local v11    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v23    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    goto :goto_1de

    .line 2174
    .end local v15    # "ip":I
    .end local v23    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v11    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_1dc
    move-object/from16 v23, v11

    .line 2218
    .end local v11    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v23    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :goto_1de
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_221

    .line 2219
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 2220
    .local v7, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    const/4 v1, 0x0

    move v10, v1

    .local v10, "ip":I
    :goto_1ea
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v10, v1, :cond_21e

    .line 2221
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 2222
    .local v3, "procName":Ljava/lang/String;
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/util/SparseArray;

    .line 2223
    .local v11, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/4 v1, 0x0

    move v13, v1

    .local v13, "iu":I
    :goto_200
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v13, v1, :cond_219

    .line 2224
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2225
    .local v4, "uid":I
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 2226
    .local v1, "procState":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v2, p1

    move-wide v5, v8

    .end local v8    # "now":J
    .local v5, "now":J
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJ)V

    .line 2223
    .end local v1    # "procState":Lcom/android/internal/app/procstats/ProcessState;
    .end local v4    # "uid":I
    .end local v5    # "now":J
    .restart local v8    # "now":J
    add-int/lit8 v13, v13, 0x1

    goto :goto_200

    :cond_219
    move-object/from16 v2, p1

    .line 2220
    .end local v3    # "procName":Ljava/lang/String;
    .end local v11    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    .end local v13    # "iu":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_1ea

    :cond_21e
    move-object/from16 v2, p1

    goto :goto_223

    .line 2218
    .end local v7    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .end local v10    # "ip":I
    :cond_221
    move-object/from16 v2, p1

    .line 2230
    :goto_223
    const-string/jumbo v1, "total"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2231
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    const-string v2, ","

    move-object/from16 v1, p1

    move-wide v7, v8

    .end local v8    # "now":J
    .local v7, "now":J
    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V

    .line 2232
    move-object v2, v1

    move-wide v8, v7

    .end local v7    # "now":J
    .restart local v8    # "now":J
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 2233
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v1

    .line 2234
    .local v1, "sysMemUsageCount":I
    const/16 v3, 0x10

    const-string v4, ":"

    if-lez v1, :cond_287

    .line 2235
    const-string/jumbo v5, "sysmemusage"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2236
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_24f
    if-ge v5, v1, :cond_284

    .line 2237
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v6, v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    move-result v6

    .line 2238
    .local v6, "key":I
    invoke-static {v6}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v7

    .line 2239
    .local v7, "type":I
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2240
    invoke-static {v2, v7}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 2241
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_262
    if-ge v10, v3, :cond_27c

    .line 2242
    const/4 v11, 0x1

    if-le v10, v11, :cond_26a

    .line 2243
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2245
    :cond_26a
    iget-object v13, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    move-object/from16 v16, v4

    invoke-virtual {v13, v6, v10}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValue(II)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 2241
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v16

    const/16 v3, 0x10

    goto :goto_262

    :cond_27c
    move-object/from16 v16, v4

    const/4 v11, 0x1

    .line 2236
    .end local v6    # "key":I
    .end local v7    # "type":I
    .end local v10    # "j":I
    add-int/lit8 v5, v5, 0x1

    const/16 v3, 0x10

    goto :goto_24f

    :cond_284
    move-object/from16 v16, v4

    goto :goto_289

    .line 2234
    .end local v5    # "i":I
    :cond_287
    move-object/from16 v16, v4

    .line 2249
    :goto_289
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 2250
    new-instance v3, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    invoke-direct {v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    .line 2252
    .local v3, "totalMem":Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    invoke-virtual {v0, v3, v8, v9}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    .line 2253
    const-string/jumbo v4, "weights,"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2254
    iget-wide v4, v3, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2255
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2256
    iget-wide v4, v3, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    .line 2257
    move-object/from16 v4, v16

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2258
    iget v5, v3, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2259
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2260
    iget-wide v5, v3, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    invoke-virtual {v2, v5, v6}, Ljava/io/PrintWriter;->print(D)V

    .line 2261
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2262
    iget v5, v3, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2263
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2264
    iget-wide v5, v3, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    invoke-virtual {v2, v5, v6}, Ljava/io/PrintWriter;->print(D)V

    .line 2265
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2266
    iget v5, v3, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2267
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2268
    iget-wide v5, v3, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    invoke-virtual {v2, v5, v6}, Ljava/io/PrintWriter;->print(D)V

    .line 2269
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2270
    iget v5, v3, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2271
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2272
    iget-wide v5, v3, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    invoke-virtual {v2, v5, v6}, Ljava/io/PrintWriter;->print(D)V

    .line 2273
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2274
    iget v5, v3, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2275
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2f6
    const/16 v15, 0x10

    if-ge v5, v15, :cond_311

    .line 2276
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2277
    iget-object v6, v3, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v6, v6, v5

    invoke-virtual {v2, v6, v7}, Ljava/io/PrintWriter;->print(D)V

    .line 2278
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2279
    iget-object v6, v3, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v6, v6, v5

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 2275
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f6

    .line 2281
    .end local v5    # "i":I
    :cond_311
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 2283
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2284
    .local v4, "NPAGETYPES":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_31b
    if-ge v5, v4, :cond_361

    .line 2285
    const-string v6, "availablepages,"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2286
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2287
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2288
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2289
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2293
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 2294
    .local v6, "sizes":[I
    if-nez v6, :cond_34a

    const/4 v7, 0x0

    goto :goto_34b

    :cond_34a
    array-length v7, v6

    .line 2295
    .local v7, "N":I
    :goto_34b
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_34c
    if-ge v10, v7, :cond_35b

    .line 2296
    if-eqz v10, :cond_353

    .line 2297
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2299
    :cond_353
    aget v11, v6, v10

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 2295
    add-int/lit8 v10, v10, 0x1

    goto :goto_34c

    .line 2301
    .end local v10    # "j":I
    :cond_35b
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 2284
    .end local v6    # "sizes":[I
    .end local v7    # "N":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_31b

    .line 2303
    .end local v5    # "i":I
    :cond_361
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 21
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "now"    # J
    .param p4, "section"    # I

    .line 2309
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/procstats/ProcessStats;->dumpProtoPreamble(Landroid/util/proto/ProtoOutputStream;)V

    .line 2311
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2312
    .local v9, "NPAGETYPES":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v9, :cond_70

    .line 2313
    const-wide v3, 0x20b0000000aL

    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 2314
    .local v3, "token":J
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-wide v6, 0x10500000001L

    invoke-virtual {v2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2315
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-wide v6, 0x10900000002L

    invoke-virtual {v2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2316
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-wide v6, 0x10900000003L

    invoke-virtual {v2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2317
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 2318
    .local v5, "sizes":[I
    if-nez v5, :cond_59

    const/4 v6, 0x0

    goto :goto_5a

    :cond_59
    array-length v6, v5

    .line 2319
    .local v6, "N":I
    :goto_5a
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_5b
    if-ge v7, v6, :cond_6a

    .line 2320
    const-wide v10, 0x20500000004L

    aget v8, v5, v7

    invoke-virtual {v2, v10, v11, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2319
    add-int/lit8 v7, v7, 0x1

    goto :goto_5b

    .line 2322
    .end local v7    # "j":I
    :cond_6a
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2312
    .end local v3    # "token":J
    .end local v5    # "sizes":[I
    .end local v6    # "N":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2325
    .end local v1    # "i":I
    :cond_70
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    .line 2326
    .local v10, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_b6

    .line 2327
    const/4 v1, 0x0

    move v11, v1

    .local v11, "ip":I
    :goto_7c
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v11, v1, :cond_b6

    .line 2328
    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 2329
    .local v5, "procName":Ljava/lang/String;
    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/util/SparseArray;

    .line 2330
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/4 v1, 0x0

    move v13, v1

    .local v13, "iu":I
    :goto_92
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v13, v1, :cond_b1

    .line 2331
    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 2332
    .local v6, "uid":I
    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 2333
    .local v1, "procState":Lcom/android/internal/app/procstats/ProcessState;
    const-wide v3, 0x20b00000008L

    move-wide/from16 v7, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IJ)V

    .line 2330
    .end local v1    # "procState":Lcom/android/internal/app/procstats/ProcessState;
    .end local v6    # "uid":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p1

    goto :goto_92

    .line 2327
    .end local v5    # "procName":Ljava/lang/String;
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    .end local v13    # "iu":I
    :cond_b1
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p1

    goto :goto_7c

    .line 2339
    .end local v11    # "ip":I
    :cond_b6
    and-int/lit8 v1, p4, 0xe

    if-eqz v1, :cond_103

    .line 2340
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 2341
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    .line 2342
    .local v8, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    const/4 v1, 0x0

    move v11, v1

    .restart local v11    # "ip":I
    :goto_c2
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v11, v1, :cond_103

    .line 2343
    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/util/SparseArray;

    .line 2344
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    const/4 v1, 0x0

    move v13, v1

    .restart local v13    # "iu":I
    :goto_d1
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v13, v1, :cond_100

    .line 2345
    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/util/LongSparseArray;

    .line 2346
    .local v14, "vers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    const/4 v1, 0x0

    move v15, v1

    .local v15, "iv":I
    :goto_e0
    invoke-virtual {v14}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v15, v1, :cond_fd

    .line 2347
    invoke-virtual {v14, v15}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 2348
    .local v1, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    const-wide v3, 0x20b00000009L

    move-object/from16 v2, p1

    move-wide/from16 v5, p2

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJI)V

    .line 2346
    .end local v1    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    add-int/lit8 v15, v15, 0x1

    goto :goto_e0

    .line 2344
    .end local v14    # "vers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v15    # "iv":I
    :cond_fd
    add-int/lit8 v13, v13, 0x1

    goto :goto_d1

    .line 2342
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v13    # "iu":I
    :cond_100
    add-int/lit8 v11, v11, 0x1

    goto :goto_c2

    .line 2354
    .end local v8    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v11    # "ip":I
    :cond_103
    return-void
.end method

.method public blacklist dumpFilteredAssociationStatesProtoForProc(Landroid/util/proto/ProtoOutputStream;JJLcom/android/internal/app/procstats/ProcessState;Landroid/util/SparseArray;)V
    .registers 29
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "now"    # J
    .param p6, "procState"    # Lcom/android/internal/app/procstats/ProcessState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "JJ",
            "Lcom/android/internal/app/procstats/ProcessState;",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2556
    .local p7, "uidToPkgMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual {v7}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v7}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    if-eq v0, v7, :cond_11

    .line 2558
    return-void

    .line 2560
    :cond_11
    iget-object v9, v7, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    .line 2561
    .local v9, "sources":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/internal/app/procstats/AssociationState$SourceKey;Lcom/android/internal/app/procstats/AssociationState$SourceState;>;"
    if-eqz v9, :cond_cd

    invoke-virtual {v9}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_cd

    .line 2562
    nop

    .line 2563
    const-string v0, "procstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2562
    invoke-static {v0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object v10

    .line 2564
    .local v10, "procStatsService":Lcom/android/internal/app/procstats/IProcessStats;
    if-eqz v10, :cond_ca

    .line 2566
    :try_start_28
    invoke-interface {v10}, Lcom/android/internal/app/procstats/IProcessStats;->getMinAssociationDumpDuration()J

    move-result-wide v0

    move-wide v11, v0

    .line 2567
    .local v11, "minimum":J
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v13, 0x1

    sub-int/2addr v0, v13

    .local v0, "i":I
    :goto_33
    if-ltz v0, :cond_c3

    .line 2568
    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-object v14, v1

    .line 2569
    .local v14, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    iget-wide v1, v14, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    .line 2570
    .local v1, "duration":J
    iget v3, v14, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    if-lez v3, :cond_49

    .line 2571
    iget-wide v3, v14, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mStartUptime:J

    sub-long v3, p4, v3

    add-long/2addr v1, v3

    move-wide v15, v1

    goto :goto_4a

    .line 2570
    :cond_49
    move-wide v15, v1

    .line 2573
    .end local v1    # "duration":J
    .local v15, "duration":J
    :goto_4a
    cmp-long v1, v15, v11

    if-gez v1, :cond_53

    .line 2574
    move-object/from16 v1, p1

    move/from16 v18, v13

    goto :goto_b7

    .line 2576
    :cond_53
    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 2577
    .local v1, "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 2578
    .local v2, "token":J
    iget v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    .line 2579
    .local v4, "idx":I
    iget-object v5, v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    move-object v6, v5

    iget-object v5, v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mPackage:Ljava/lang/String;

    if-ltz v4, :cond_7b

    .line 2582
    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/ArraySet;

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArraySet;->size()I

    move-result v13
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_74} :catch_c6

    move-wide/from16 v19, v2

    const/4 v2, 0x1

    .end local v2    # "token":J
    .local v19, "token":J
    if-le v13, v2, :cond_7e

    move v3, v2

    goto :goto_7f

    .line 2579
    .end local v19    # "token":J
    .restart local v2    # "token":J
    :cond_7b
    move-wide/from16 v19, v2

    move v2, v13

    .line 2582
    .end local v2    # "token":J
    .restart local v19    # "token":J
    :cond_7e
    const/4 v3, 0x0

    .line 2579
    :goto_7f
    move/from16 v18, v2

    move v13, v4

    move-object v4, v6

    move v6, v3

    .end local v4    # "idx":I
    .local v13, "idx":I
    const-wide v2, 0x10900000001L

    move/from16 v17, v13

    move-wide/from16 v7, v19

    move-object v13, v1

    move-object/from16 v1, p1

    .end local v1    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    .end local v19    # "token":J
    .local v7, "token":J
    .local v13, "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    .local v17, "idx":I
    :try_start_90
    invoke-static/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessState;->writeCompressedProcessName(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/lang/String;Z)V

    .line 2583
    iget v2, v13, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    const-wide v3, 0x10500000005L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2584
    iget v2, v14, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    const-wide v3, 0x10500000003L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2585
    const-wide/16 v2, 0x3e8

    div-long v2, v15, v2

    long-to-int v2, v2

    const-wide v3, 0x10500000004L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2587
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_b7} :catch_c1

    .line 2567
    .end local v7    # "token":J
    .end local v13    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    .end local v14    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .end local v15    # "duration":J
    .end local v17    # "idx":I
    :goto_b7
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v13, v18

    goto/16 :goto_33

    .line 2589
    .end local v0    # "i":I
    .end local v11    # "minimum":J
    :catch_c1
    move-exception v0

    goto :goto_cf

    .line 2567
    .restart local v0    # "i":I
    .restart local v11    # "minimum":J
    :cond_c3
    move-object/from16 v1, p1

    .line 2591
    .end local v0    # "i":I
    .end local v11    # "minimum":J
    goto :goto_cf

    .line 2589
    :catch_c6
    move-exception v0

    move-object/from16 v1, p1

    goto :goto_cf

    .line 2564
    :cond_ca
    move-object/from16 v1, p1

    goto :goto_cf

    .line 2561
    .end local v10    # "procStatsService":Lcom/android/internal/app/procstats/IProcessStats;
    :cond_cd
    move-object/from16 v1, p1

    .line 2594
    :goto_cf
    return-void
.end method

.method blacklist dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V
    .registers 26
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "prcLabel"    # Ljava/lang/String;
    .param p5, "screenStates"    # [I
    .param p6, "memStates"    # [I
    .param p7, "procStates"    # [I
    .param p8, "sortProcStates"    # [I
    .param p9, "now"    # J
    .param p11, "totalTime"    # J
    .param p13, "reqPackage"    # Ljava/lang/String;
    .param p14, "activeOnly"    # Z

    .line 2086
    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-wide/from16 v5, p9

    move-object/from16 v7, p13

    move/from16 v8, p14

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v9

    .line 2088
    .local v9, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_33

    .line 2089
    if-eqz p2, :cond_21

    .line 2090
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2091
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2093
    :cond_21
    move-object v0, p1

    move-object v1, p3

    move-object v2, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-wide/from16 v7, p9

    move-object v3, v9

    move-wide/from16 v9, p11

    .end local v9    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    .local v3, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-static/range {v0 .. v10}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    goto :goto_34

    .line 2088
    .end local v3    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    .restart local v9    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_33
    move-object v3, v9

    .line 2096
    .end local v9    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    .restart local v3    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    :goto_34
    return-void
.end method

.method public blacklist dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V
    .registers 58
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "dumpSummary"    # Z
    .param p6, "dumpDetails"    # Z
    .param p7, "dumpAll"    # Z
    .param p8, "activeOnly"    # Z
    .param p9, "section"    # I

    .line 1596
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v12, p2

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-wide v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-wide/from16 v9, p3

    invoke-static/range {v3 .. v10}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v5

    .line 1598
    .local v5, "totalTime":J
    const-string v1, "          Start time: "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1599
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    invoke-static {v1, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1600
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1601
    const-string v1, "        Total uptime: "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1603
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v1, :cond_36

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    goto :goto_38

    :cond_36
    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    :goto_38
    iget-wide v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sub-long/2addr v3, v7

    .line 1602
    invoke-static {v3, v4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1605
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1606
    const-string v1, "  Total elapsed time: "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1608
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v1, :cond_4f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    goto :goto_51

    :cond_4f
    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    :goto_51
    iget-wide v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v3, v7

    .line 1607
    invoke-static {v3, v4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1610
    const/4 v1, 0x1

    .line 1611
    .local v1, "partial":Z
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_64

    .line 1612
    const-string v3, " (shutdown)"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1613
    const/4 v1, 0x0

    .line 1615
    :cond_64
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_70

    .line 1616
    const-string v3, " (sysprops)"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1617
    const/4 v1, 0x0

    .line 1619
    :cond_70
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v14, 0x1

    and-int/2addr v3, v14

    if-eqz v3, :cond_7e

    .line 1620
    const-string v3, " (complete)"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1621
    const/4 v1, 0x0

    move v15, v1

    goto :goto_7f

    .line 1619
    :cond_7e
    move v15, v1

    .line 1623
    .end local v1    # "partial":Z
    .local v15, "partial":Z
    :goto_7f
    if-eqz v15, :cond_86

    .line 1624
    const-string v1, " (partial)"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1626
    :cond_86
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    if-eqz v1, :cond_8f

    .line 1627
    const-string v1, " (swapped-out-pss)"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1629
    :cond_8f
    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1630
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1631
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1632
    const-string v1, "     Aggregated over: "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1633
    iget v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1634
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_c1

    .line 1635
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1636
    const-string v1, "System memory usage:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1637
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    const-string v7, "  "

    invoke-virtual {v1, v2, v7, v3, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dump(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V

    .line 1639
    :cond_c1
    const/4 v1, 0x0

    .line 1640
    .local v1, "printedHeader":Z
    and-int/lit8 v3, p9, 0xe

    const-string v13, " / "

    const-string v4, "      (Not active: "

    const-string v7, " entries)"

    const-string v8, "  * "

    const-string v9, ")"

    const-string v10, ":"

    if-eqz v3, :cond_5ce

    .line 1641
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 1642
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 1643
    .local v3, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    const/4 v11, 0x0

    .local v11, "ip":I
    :goto_d9
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v11, v14, :cond_5ba

    .line 1644
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1645
    .local v14, "pkgName":Ljava/lang/String;
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v15

    .end local v15    # "partial":Z
    .local v18, "partial":Z
    move-object/from16 v15, v17

    check-cast v15, Landroid/util/SparseArray;

    .line 1646
    .local v15, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    const/16 v17, 0x0

    move/from16 v0, v17

    .local v0, "iu":I
    :goto_f3
    move/from16 v17, v1

    .end local v1    # "printedHeader":Z
    .local v17, "printedHeader":Z
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_594

    .line 1647
    invoke-virtual {v15, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1648
    .local v1, "uid":I
    invoke-virtual {v15, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v0

    .end local v0    # "iu":I
    .local v20, "iu":I
    move-object/from16 v0, v19

    check-cast v0, Landroid/util/LongSparseArray;

    .line 1649
    .local v0, "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    const/16 v19, 0x0

    move/from16 v46, v19

    move-object/from16 v19, v15

    move/from16 v15, v46

    .local v15, "iv":I
    .local v19, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :goto_111
    move-object/from16 v21, v3

    .end local v3    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .local v21, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v15, v3, :cond_56a

    .line 1650
    move-object/from16 v22, v4

    invoke-virtual {v0, v15}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 1651
    .local v3, "vers":J
    invoke-virtual {v0, v15}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v0

    .end local v0    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v24, "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    move-object/from16 v0, v23

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 1652
    .local v0, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-wide/from16 v25, v5

    .end local v5    # "totalTime":J
    .local v25, "totalTime":J
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1653
    .local v5, "NPROCS":I
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1654
    .local v6, "NSRVS":I
    move/from16 v23, v6

    .end local v6    # "NSRVS":I
    .local v23, "NSRVS":I
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1655
    .local v6, "NASCS":I
    if-eqz v12, :cond_14b

    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_148

    goto :goto_14b

    :cond_148
    const/16 v27, 0x0

    goto :goto_14d

    :cond_14b
    :goto_14b
    const/16 v27, 0x1

    .line 1656
    .local v27, "pkgMatch":Z
    :goto_14d
    const/16 v28, 0x0

    .line 1657
    .local v28, "onlyAssociations":Z
    const/16 v29, 0x0

    .line 1658
    .local v29, "procMatch":Z
    if-nez v27, :cond_1b3

    .line 1659
    const/16 v30, 0x0

    move-object/from16 v31, v7

    move/from16 v7, v30

    .local v7, "iproc":I
    :goto_159
    if-ge v7, v5, :cond_179

    .line 1660
    move-object/from16 v30, v9

    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/procstats/ProcessState;

    .line 1661
    .local v9, "proc":Lcom/android/internal/app/procstats/ProcessState;
    move/from16 v32, v7

    .end local v7    # "iproc":I
    .local v32, "iproc":I
    invoke-virtual {v9}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_174

    .line 1662
    const/16 v29, 0x1

    .line 1663
    goto :goto_17d

    .line 1659
    .end local v9    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_174
    add-int/lit8 v7, v32, 0x1

    move-object/from16 v9, v30

    .end local v32    # "iproc":I
    .restart local v7    # "iproc":I
    goto :goto_159

    :cond_179
    move/from16 v32, v7

    move-object/from16 v30, v9

    .line 1666
    .end local v7    # "iproc":I
    :goto_17d
    if-nez v29, :cond_1b7

    .line 1669
    const/4 v7, 0x0

    .local v7, "iasc":I
    :goto_180
    if-ge v7, v6, :cond_196

    .line 1670
    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/procstats/AssociationState;

    .line 1671
    .local v9, "asc":Lcom/android/internal/app/procstats/AssociationState;
    invoke-virtual {v9, v12}, Lcom/android/internal/app/procstats/AssociationState;->hasProcessOrPackage(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_193

    .line 1672
    const/16 v28, 0x1

    .line 1673
    goto :goto_196

    .line 1669
    .end local v9    # "asc":Lcom/android/internal/app/procstats/AssociationState;
    :cond_193
    add-int/lit8 v7, v7, 0x1

    goto :goto_180

    .line 1676
    .end local v7    # "iasc":I
    :cond_196
    :goto_196
    if-nez v28, :cond_1b7

    .line 1677
    move-object/from16 v0, p0

    move/from16 v32, v1

    move-object/from16 v35, v8

    move-object/from16 v37, v10

    move-object/from16 v44, v13

    move-object/from16 v23, v14

    move-wide/from16 v9, v25

    move-object/from16 v45, v30

    move-object/from16 v36, v31

    move-object v14, v12

    move/from16 v25, v15

    move-object/from16 v15, v22

    move/from16 v22, v11

    goto/16 :goto_54e

    .line 1658
    :cond_1b3
    move-object/from16 v31, v7

    move-object/from16 v30, v9

    .line 1681
    :cond_1b7
    if-gtz v5, :cond_1bd

    if-gtz v23, :cond_1bd

    if-lez v6, :cond_1e0

    .line 1682
    :cond_1bd
    if-nez v17, :cond_1c9

    .line 1683
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1684
    const-string v7, "Per-Package Stats:"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1685
    const/16 v17, 0x1

    .line 1687
    :cond_1c9
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1688
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1689
    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1690
    invoke-static {v2, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1691
    const-string v7, " / v"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1692
    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 1693
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1695
    :cond_1e0
    and-int/lit8 v7, p9, 0x2

    if-eqz v7, :cond_33e

    if-nez v28, :cond_33e

    .line 1696
    if-eqz p5, :cond_27a

    if-eqz p7, :cond_209

    move/from16 v32, v1

    move-wide/from16 v33, v3

    move-object/from16 v35, v8

    move-object/from16 v37, v10

    move-wide/from16 v9, v25

    move-object/from16 v36, v31

    move-object/from16 v26, v13

    move/from16 v25, v15

    move-object/from16 v13, v22

    move/from16 v31, v23

    move-object/from16 v15, v30

    move/from16 v30, v6

    move/from16 v22, v11

    move-object/from16 v23, v14

    move v14, v5

    goto/16 :goto_297

    .line 1727
    :cond_209
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1728
    .local v7, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/4 v9, 0x0

    .local v9, "iproc":I
    :goto_20f
    if-ge v9, v5, :cond_23b

    .line 1729
    move/from16 v32, v1

    .end local v1    # "uid":I
    .local v32, "uid":I
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 1730
    .local v1, "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v27, :cond_228

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_228

    .line 1731
    goto :goto_234

    .line 1733
    :cond_228
    if-eqz p8, :cond_231

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v2

    if-nez v2, :cond_231

    .line 1734
    goto :goto_234

    .line 1736
    :cond_231
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1728
    .end local v1    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :goto_234
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p1

    move/from16 v1, v32

    goto :goto_20f

    .end local v32    # "uid":I
    .local v1, "uid":I
    :cond_23b
    move/from16 v32, v1

    .line 1738
    .end local v1    # "uid":I
    .end local v9    # "iproc":I
    .restart local v32    # "uid":I
    move v1, v5

    .end local v5    # "NPROCS":I
    .local v1, "NPROCS":I
    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    move v2, v6

    .end local v6    # "NASCS":I
    .local v2, "NASCS":I
    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    move-wide/from16 v33, v3

    move-object v4, v7

    .end local v3    # "vers":J
    .end local v7    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    .local v4, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    .local v33, "vers":J
    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    move v3, v2

    .end local v2    # "NASCS":I
    .local v3, "NASCS":I
    const-string v2, "      "

    move v9, v3

    .end local v3    # "NASCS":I
    .local v9, "NASCS":I
    const-string v3, "Prc "

    move-object/from16 v35, v8

    move-object/from16 v37, v10

    move-object/from16 v36, v31

    move/from16 v31, v23

    move-object/from16 v23, v14

    move v14, v1

    move-object/from16 v1, p1

    move-object/from16 v46, v30

    move/from16 v30, v9

    move-wide/from16 v8, p3

    move-object/from16 v47, v22

    move/from16 v22, v11

    move-wide/from16 v10, v25

    move-object/from16 v26, v13

    move/from16 v25, v15

    move-object/from16 v13, v47

    move-object/from16 v15, v46

    .end local v1    # "NPROCS":I
    .end local v9    # "NASCS":I
    .end local v11    # "ip":I
    .end local v15    # "iv":I
    .local v10, "totalTime":J
    .local v14, "NPROCS":I
    .local v22, "ip":I
    .local v23, "pkgName":Ljava/lang/String;
    .local v25, "iv":I
    .local v30, "NASCS":I
    .local v31, "NSRVS":I
    invoke-static/range {v1 .. v11}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    move-wide v9, v10

    move-object v2, v1

    move/from16 v38, v14

    move-object/from16 v14, v37

    .end local v10    # "totalTime":J
    .local v9, "totalTime":J
    goto/16 :goto_35b

    .line 1696
    .end local v4    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    .end local v9    # "totalTime":J
    .end local v22    # "ip":I
    .end local v30    # "NASCS":I
    .end local v31    # "NSRVS":I
    .end local v32    # "uid":I
    .end local v33    # "vers":J
    .local v1, "uid":I
    .local v3, "vers":J
    .restart local v5    # "NPROCS":I
    .restart local v6    # "NASCS":I
    .restart local v11    # "ip":I
    .local v14, "pkgName":Ljava/lang/String;
    .restart local v15    # "iv":I
    .local v23, "NSRVS":I
    .local v25, "totalTime":J
    :cond_27a
    move/from16 v32, v1

    move-wide/from16 v33, v3

    move-object/from16 v35, v8

    move-object/from16 v37, v10

    move-wide/from16 v9, v25

    move-object/from16 v36, v31

    move-object/from16 v26, v13

    move/from16 v25, v15

    move-object/from16 v13, v22

    move/from16 v31, v23

    move-object/from16 v15, v30

    move/from16 v30, v6

    move/from16 v22, v11

    move-object/from16 v23, v14

    move v14, v5

    .line 1697
    .end local v1    # "uid":I
    .end local v3    # "vers":J
    .end local v5    # "NPROCS":I
    .end local v6    # "NASCS":I
    .end local v11    # "ip":I
    .end local v15    # "iv":I
    .restart local v9    # "totalTime":J
    .local v14, "NPROCS":I
    .restart local v22    # "ip":I
    .local v23, "pkgName":Ljava/lang/String;
    .local v25, "iv":I
    .restart local v30    # "NASCS":I
    .restart local v31    # "NSRVS":I
    .restart local v32    # "uid":I
    .restart local v33    # "vers":J
    :goto_297
    const/4 v1, 0x0

    move v11, v1

    .local v11, "iproc":I
    :goto_299
    if-ge v11, v14, :cond_339

    .line 1698
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 1699
    .local v1, "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v27, :cond_2b5

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b5

    .line 1700
    move/from16 v38, v14

    move-object/from16 v14, v37

    goto/16 :goto_331

    .line 1702
    :cond_2b5
    if-eqz p8, :cond_2d3

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v3

    if-nez v3, :cond_2d3

    .line 1703
    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1704
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1705
    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1706
    move/from16 v38, v14

    move-object/from16 v14, v37

    goto :goto_331

    .line 1708
    :cond_2d3
    const-string v3, "      Process "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1709
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1710
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v3

    if-eqz v3, :cond_2f3

    .line 1711
    const-string v3, " (multi, "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2f8

    .line 1713
    :cond_2f3
    const-string v3, " (unique, "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1715
    :goto_2f8
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->getDurationsBucketCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1716
    move-object/from16 v3, v36

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1717
    move-object/from16 v4, v37

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1718
    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    const-string v3, "        "

    move-wide/from16 v7, p3

    move/from16 v38, v14

    move-object/from16 v14, v37

    .end local v14    # "NPROCS":I
    .local v38, "NPROCS":I
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    .line 1721
    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    const-string v3, "        "

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    .line 1723
    const-string v3, "        "

    move-wide v5, v9

    move-object v4, v12

    move/from16 v9, p7

    .end local v9    # "totalTime":J
    .local v5, "totalTime":J
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJZ)V

    move-wide v9, v5

    .line 1697
    .end local v1    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v5    # "totalTime":J
    .restart local v9    # "totalTime":J
    :goto_331
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v37, v14

    move/from16 v14, v38

    goto/16 :goto_299

    .end local v38    # "NPROCS":I
    .restart local v14    # "NPROCS":I
    :cond_339
    move/from16 v38, v14

    move-object/from16 v14, v37

    .end local v11    # "iproc":I
    .end local v14    # "NPROCS":I
    .restart local v38    # "NPROCS":I
    goto :goto_35b

    .line 1695
    .end local v9    # "totalTime":J
    .end local v22    # "ip":I
    .end local v30    # "NASCS":I
    .end local v31    # "NSRVS":I
    .end local v32    # "uid":I
    .end local v33    # "vers":J
    .end local v38    # "NPROCS":I
    .local v1, "uid":I
    .restart local v3    # "vers":J
    .local v5, "NPROCS":I
    .restart local v6    # "NASCS":I
    .local v11, "ip":I
    .local v14, "pkgName":Ljava/lang/String;
    .restart local v15    # "iv":I
    .local v23, "NSRVS":I
    .local v25, "totalTime":J
    :cond_33e
    move/from16 v32, v1

    move-wide/from16 v33, v3

    move/from16 v38, v5

    move-object/from16 v35, v8

    move-object/from16 v36, v31

    move/from16 v31, v23

    move-object/from16 v23, v14

    move-object v14, v10

    move-wide/from16 v9, v25

    move-object/from16 v26, v13

    move/from16 v25, v15

    move-object/from16 v13, v22

    move-object/from16 v15, v30

    move/from16 v30, v6

    move/from16 v22, v11

    .line 1743
    .end local v1    # "uid":I
    .end local v3    # "vers":J
    .end local v5    # "NPROCS":I
    .end local v6    # "NASCS":I
    .end local v11    # "ip":I
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v15    # "iv":I
    .restart local v9    # "totalTime":J
    .restart local v22    # "ip":I
    .local v23, "pkgName":Ljava/lang/String;
    .local v25, "iv":I
    .restart local v30    # "NASCS":I
    .restart local v31    # "NSRVS":I
    .restart local v32    # "uid":I
    .restart local v33    # "vers":J
    .restart local v38    # "NPROCS":I
    :goto_35b
    and-int/lit8 v1, p9, 0x4

    const-string v3, "        Process: "

    if-eqz v1, :cond_3fe

    if-nez v28, :cond_3fe

    .line 1744
    const/4 v1, 0x0

    .local v1, "isvc":I
    :goto_364
    move/from16 v4, v31

    .end local v31    # "NSRVS":I
    .local v4, "NSRVS":I
    if-ge v1, v4, :cond_3f4

    .line 1745
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ServiceState;

    .line 1746
    .local v5, "svc":Lcom/android/internal/app/procstats/ServiceState;
    if-nez v27, :cond_387

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_387

    .line 1747
    move-wide/from16 v7, p3

    move/from16 v37, v1

    move/from16 v31, v4

    move-object/from16 v39, v13

    move-object v13, v3

    goto/16 :goto_3ed

    .line 1749
    :cond_387
    if-eqz p8, :cond_3ac

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    move-result v6

    if-nez v6, :cond_3ac

    .line 1750
    const-string v6, "      (Not active service: "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1751
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1752
    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1753
    move-wide/from16 v7, p3

    move/from16 v37, v1

    move/from16 v31, v4

    move-object/from16 v39, v13

    move-object v13, v3

    goto :goto_3ed

    .line 1755
    :cond_3ac
    if-eqz p7, :cond_3b4

    .line 1756
    const-string v6, "      Service "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3b9

    .line 1758
    :cond_3b4
    const-string v6, "      * Svc "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1760
    :goto_3b9
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1761
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1762
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1763
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1764
    move/from16 v31, v4

    .end local v4    # "NSRVS":I
    .restart local v31    # "NSRVS":I
    const-string v4, "          "

    move v6, v1

    move-object v1, v5

    .end local v5    # "svc":Lcom/android/internal/app/procstats/ServiceState;
    .local v1, "svc":Lcom/android/internal/app/procstats/ServiceState;
    .local v6, "isvc":I
    const-string v5, "    "

    move-object v7, v3

    const-string v3, "        "

    move/from16 v11, p7

    move/from16 v37, v6

    move-wide v8, v9

    move-object/from16 v39, v13

    move/from16 v10, p5

    move-object v13, v7

    move-wide/from16 v6, p3

    .end local v6    # "isvc":I
    .end local v9    # "totalTime":J
    .local v8, "totalTime":J
    .local v37, "isvc":I
    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZ)V

    move-wide v9, v8

    move-wide v7, v6

    .line 1744
    .end local v1    # "svc":Lcom/android/internal/app/procstats/ServiceState;
    .end local v8    # "totalTime":J
    .restart local v9    # "totalTime":J
    :goto_3ed
    add-int/lit8 v1, v37, 0x1

    move-object v3, v13

    move-object/from16 v13, v39

    .end local v37    # "isvc":I
    .local v1, "isvc":I
    goto/16 :goto_364

    .end local v31    # "NSRVS":I
    .restart local v4    # "NSRVS":I
    :cond_3f4
    move-wide/from16 v7, p3

    move/from16 v37, v1

    move/from16 v31, v4

    move-object/from16 v39, v13

    move-object v13, v3

    .end local v1    # "isvc":I
    .end local v4    # "NSRVS":I
    .restart local v31    # "NSRVS":I
    .restart local v37    # "isvc":I
    goto :goto_403

    .line 1743
    .end local v37    # "isvc":I
    :cond_3fe
    move-wide/from16 v7, p3

    move-object/from16 v39, v13

    move-object v13, v3

    .line 1768
    :goto_403
    and-int/lit8 v1, p9, 0x8

    if-eqz v1, :cond_541

    .line 1769
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v3, v30

    .end local v30    # "NASCS":I
    .local v3, "NASCS":I
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1771
    .local v1, "associations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;>;"
    const/4 v4, 0x0

    .local v4, "iasc":I
    :goto_40f
    if-ge v4, v3, :cond_462

    .line 1772
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/AssociationState;

    .line 1773
    .local v5, "asc":Lcom/android/internal/app/procstats/AssociationState;
    if-nez v27, :cond_43b

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_43b

    .line 1774
    if-eqz v28, :cond_434

    invoke-virtual {v5, v12}, Lcom/android/internal/app/procstats/AssociationState;->hasProcessOrPackage(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_43b

    .line 1775
    move-object/from16 v11, p0

    move/from16 v30, v3

    move/from16 v37, v4

    goto :goto_45d

    .line 1774
    :cond_434
    move-object/from16 v11, p0

    move/from16 v30, v3

    move/from16 v37, v4

    goto :goto_45d

    .line 1778
    :cond_43b
    new-instance v6, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;

    move-object/from16 v11, p0

    invoke-direct {v6, v11, v5}, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;)V

    .line 1780
    .local v6, "cont":Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;
    move/from16 v30, v3

    .end local v3    # "NASCS":I
    .restart local v30    # "NASCS":I
    iget-object v3, v5, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    .line 1781
    invoke-static {v7, v8, v9, v10, v3}, Lcom/android/internal/app/procstats/AssociationState;->createSortedAssociations(JJLandroid/util/ArrayMap;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v6, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mSources:Ljava/util/ArrayList;

    .line 1782
    move/from16 v37, v4

    .end local v4    # "iasc":I
    .local v37, "iasc":I
    invoke-virtual {v5, v7, v8}, Lcom/android/internal/app/procstats/AssociationState;->getTotalDuration(J)J

    move-result-wide v3

    iput-wide v3, v6, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mTotalTime:J

    .line 1783
    invoke-virtual {v5, v7, v8}, Lcom/android/internal/app/procstats/AssociationState;->getActiveDuration(J)J

    move-result-wide v3

    iput-wide v3, v6, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mActiveTime:J

    .line 1784
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1771
    .end local v5    # "asc":Lcom/android/internal/app/procstats/AssociationState;
    .end local v6    # "cont":Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;
    :goto_45d
    add-int/lit8 v4, v37, 0x1

    move/from16 v3, v30

    .end local v37    # "iasc":I
    .restart local v4    # "iasc":I
    goto :goto_40f

    .end local v30    # "NASCS":I
    .restart local v3    # "NASCS":I
    :cond_462
    move-object/from16 v11, p0

    move/from16 v30, v3

    move/from16 v37, v4

    .line 1786
    .end local v3    # "NASCS":I
    .end local v4    # "iasc":I
    .restart local v30    # "NASCS":I
    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->ASSOCIATION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1787
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1788
    .local v3, "NCONT":I
    const/4 v4, 0x0

    .restart local v4    # "iasc":I
    :goto_472
    if-ge v4, v3, :cond_52e

    .line 1789
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;

    .line 1790
    .local v5, "cont":Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;
    move-object v6, v1

    .end local v1    # "associations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;>;"
    .local v6, "associations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;>;"
    iget-object v1, v5, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState;

    .line 1791
    .local v1, "asc":Lcom/android/internal/app/procstats/AssociationState;
    if-eqz p8, :cond_4b0

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState;->isInUse()Z

    move-result v37

    if-nez v37, :cond_4b0

    .line 1792
    move-object/from16 v37, v1

    .end local v1    # "asc":Lcom/android/internal/app/procstats/AssociationState;
    .local v37, "asc":Lcom/android/internal/app/procstats/AssociationState;
    const-string v1, "      (Not active association: "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1793
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1794
    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1795
    move-object/from16 v40, v0

    move/from16 v41, v3

    move/from16 v42, v4

    move-object v0, v11

    move-object/from16 v37, v14

    move-object/from16 v45, v15

    move-object/from16 v44, v26

    move-object/from16 v15, v39

    move-object/from16 v26, v6

    move-object v14, v12

    move-object/from16 v39, v13

    goto/16 :goto_516

    .line 1791
    .end local v37    # "asc":Lcom/android/internal/app/procstats/AssociationState;
    .restart local v1    # "asc":Lcom/android/internal/app/procstats/AssociationState;
    :cond_4b0
    move-object/from16 v37, v1

    .line 1797
    .end local v1    # "asc":Lcom/android/internal/app/procstats/AssociationState;
    .restart local v37    # "asc":Lcom/android/internal/app/procstats/AssociationState;
    if-eqz p7, :cond_4ba

    .line 1798
    const-string v1, "      Association "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4bf

    .line 1800
    :cond_4ba
    const-string v1, "      * Asc "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1802
    :goto_4bf
    iget-object v1, v5, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1803
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1804
    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1805
    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1806
    move-object v1, v6

    .end local v6    # "associations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;>;"
    .local v1, "associations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;>;"
    iget-object v6, v5, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mSources:Ljava/util/ArrayList;

    .line 1809
    if-eqz v28, :cond_4ec

    if-nez v27, :cond_4ec

    if-nez v29, :cond_4ec

    move-object/from16 v40, v0

    .end local v0    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v40, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4ee

    .line 1810
    move-object v0, v12

    goto :goto_4ef

    .line 1809
    .end local v40    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v0    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_4ec
    move-object/from16 v40, v0

    .line 1810
    .end local v0    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v40    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_4ee
    const/4 v0, 0x0

    .line 1806
    :goto_4ef
    move/from16 v41, v3

    .end local v3    # "NCONT":I
    .local v41, "NCONT":I
    const-string v3, "        "

    move/from16 v42, v4

    .end local v4    # "iasc":I
    .local v42, "iasc":I
    const-string v4, "          "

    move-object/from16 v43, v5

    .end local v5    # "cont":Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;
    .local v43, "cont":Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;
    const-string v5, "    "

    move-object/from16 v44, v11

    move-object v11, v0

    move-object/from16 v0, v44

    move-object/from16 v45, v15

    move-object/from16 v44, v26

    move-object/from16 v15, v39

    move-object/from16 v26, v1

    move-object/from16 v39, v13

    move-object/from16 v1, v37

    move/from16 v13, p7

    move-object/from16 v37, v14

    move-object v14, v12

    move/from16 v12, p6

    .end local v37    # "asc":Lcom/android/internal/app/procstats/AssociationState;
    .local v1, "asc":Lcom/android/internal/app/procstats/AssociationState;
    .local v26, "associations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;>;"
    invoke-virtual/range {v1 .. v13}, Lcom/android/internal/app/procstats/AssociationState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;JJLjava/lang/String;ZZ)V

    .line 1788
    .end local v1    # "asc":Lcom/android/internal/app/procstats/AssociationState;
    .end local v43    # "cont":Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;
    :goto_516
    add-int/lit8 v4, v42, 0x1

    move-wide/from16 v7, p3

    move-object v11, v0

    move-object v12, v14

    move-object/from16 v1, v26

    move-object/from16 v14, v37

    move-object/from16 v13, v39

    move-object/from16 v0, v40

    move/from16 v3, v41

    move-object/from16 v26, v44

    move-object/from16 v39, v15

    move-object/from16 v15, v45

    .end local v42    # "iasc":I
    .restart local v4    # "iasc":I
    goto/16 :goto_472

    .end local v26    # "associations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;>;"
    .end local v40    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v41    # "NCONT":I
    .restart local v0    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v1, "associations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;>;"
    .restart local v3    # "NCONT":I
    :cond_52e
    move-object/from16 v40, v0

    move/from16 v41, v3

    move/from16 v42, v4

    move-object v0, v11

    move-object/from16 v37, v14

    move-object/from16 v45, v15

    move-object/from16 v44, v26

    move-object/from16 v15, v39

    move-object/from16 v26, v1

    move-object v14, v12

    .end local v0    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v1    # "associations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;>;"
    .end local v3    # "NCONT":I
    .end local v4    # "iasc":I
    .restart local v26    # "associations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;>;"
    .restart local v40    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v41    # "NCONT":I
    .restart local v42    # "iasc":I
    goto :goto_54e

    .line 1768
    .end local v26    # "associations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;>;"
    .end local v40    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v41    # "NCONT":I
    .end local v42    # "iasc":I
    .restart local v0    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_541
    move-object/from16 v40, v0

    move-object/from16 v37, v14

    move-object/from16 v45, v15

    move-object/from16 v44, v26

    move-object/from16 v15, v39

    move-object/from16 v0, p0

    move-object v14, v12

    .line 1649
    .end local v0    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v27    # "pkgMatch":Z
    .end local v28    # "onlyAssociations":Z
    .end local v29    # "procMatch":Z
    .end local v30    # "NASCS":I
    .end local v31    # "NSRVS":I
    .end local v33    # "vers":J
    .end local v38    # "NPROCS":I
    :goto_54e
    add-int/lit8 v1, v25, 0x1

    move-wide v5, v9

    move-object v12, v14

    move-object v4, v15

    move-object/from16 v3, v21

    move/from16 v11, v22

    move-object/from16 v14, v23

    move-object/from16 v0, v24

    move-object/from16 v8, v35

    move-object/from16 v7, v36

    move-object/from16 v10, v37

    move-object/from16 v13, v44

    move-object/from16 v9, v45

    move v15, v1

    move/from16 v1, v32

    .end local v25    # "iv":I
    .local v1, "iv":I
    goto/16 :goto_111

    .end local v9    # "totalTime":J
    .end local v22    # "ip":I
    .end local v23    # "pkgName":Ljava/lang/String;
    .end local v24    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v32    # "uid":I
    .local v0, "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .local v1, "uid":I
    .local v5, "totalTime":J
    .restart local v11    # "ip":I
    .restart local v14    # "pkgName":Ljava/lang/String;
    .restart local v15    # "iv":I
    :cond_56a
    move-object/from16 v24, v0

    move/from16 v32, v1

    move-object/from16 v36, v7

    move-object/from16 v35, v8

    move-object/from16 v45, v9

    move-object/from16 v37, v10

    move/from16 v22, v11

    move-object/from16 v44, v13

    move-object/from16 v23, v14

    move/from16 v25, v15

    move-object/from16 v0, p0

    move-object v15, v4

    move-wide v9, v5

    move-object v14, v12

    .line 1646
    .end local v0    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v1    # "uid":I
    .end local v5    # "totalTime":J
    .end local v11    # "ip":I
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v15    # "iv":I
    .restart local v9    # "totalTime":J
    .restart local v22    # "ip":I
    .restart local v23    # "pkgName":Ljava/lang/String;
    add-int/lit8 v1, v20, 0x1

    move v0, v1

    move/from16 v1, v17

    move-object/from16 v15, v19

    move-object/from16 v3, v21

    move-object/from16 v14, v23

    move-object/from16 v10, v37

    move-object/from16 v9, v45

    .end local v20    # "iu":I
    .local v1, "iu":I
    goto/16 :goto_f3

    .end local v1    # "iu":I
    .end local v9    # "totalTime":J
    .end local v19    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v21    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v22    # "ip":I
    .end local v23    # "pkgName":Ljava/lang/String;
    .local v0, "iu":I
    .local v3, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v5    # "totalTime":J
    .restart local v11    # "ip":I
    .restart local v14    # "pkgName":Ljava/lang/String;
    .local v15, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_594
    move/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v36, v7

    move-object/from16 v35, v8

    move-object/from16 v45, v9

    move-object/from16 v37, v10

    move/from16 v22, v11

    move-object/from16 v44, v13

    move-object/from16 v23, v14

    move-object/from16 v19, v15

    move-object/from16 v0, p0

    move-object v15, v4

    move-wide v9, v5

    move-object v14, v12

    .line 1643
    .end local v0    # "iu":I
    .end local v3    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v5    # "totalTime":J
    .end local v11    # "ip":I
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v9    # "totalTime":J
    .restart local v21    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v22    # "ip":I
    add-int/lit8 v11, v22, 0x1

    move/from16 v1, v17

    move/from16 v15, v18

    move-object/from16 v10, v37

    move-object/from16 v9, v45

    const/4 v14, 0x1

    .end local v22    # "ip":I
    .restart local v11    # "ip":I
    goto/16 :goto_d9

    .end local v9    # "totalTime":J
    .end local v17    # "printedHeader":Z
    .end local v18    # "partial":Z
    .end local v21    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .local v1, "printedHeader":Z
    .restart local v3    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v5    # "totalTime":J
    .local v15, "partial":Z
    :cond_5ba
    move-object/from16 v21, v3

    move-object/from16 v36, v7

    move-object/from16 v35, v8

    move-object/from16 v45, v9

    move-object/from16 v37, v10

    move/from16 v22, v11

    move-object v14, v12

    move-object/from16 v44, v13

    move/from16 v18, v15

    move-object v15, v4

    move-wide v9, v5

    .end local v3    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v5    # "totalTime":J
    .end local v11    # "ip":I
    .end local v15    # "partial":Z
    .restart local v9    # "totalTime":J
    .restart local v18    # "partial":Z
    .restart local v21    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v22    # "ip":I
    goto :goto_5dd

    .line 1640
    .end local v9    # "totalTime":J
    .end local v18    # "partial":Z
    .end local v21    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v22    # "ip":I
    .restart local v5    # "totalTime":J
    .restart local v15    # "partial":Z
    :cond_5ce
    move-object/from16 v36, v7

    move-object/from16 v35, v8

    move-object/from16 v45, v9

    move-object/from16 v37, v10

    move-object v14, v12

    move-object/from16 v44, v13

    move/from16 v18, v15

    move-object v15, v4

    move-wide v9, v5

    .line 1818
    .end local v5    # "totalTime":J
    .end local v15    # "partial":Z
    .restart local v9    # "totalTime":J
    .restart local v18    # "partial":Z
    :goto_5dd
    and-int/lit8 v3, p9, 0x1

    const-string v11, " ("

    const-string v12, " total"

    const-string v13, " shown of "

    if-eqz v3, :cond_74a

    .line 1819
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 1820
    .local v3, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    const/4 v1, 0x0

    .line 1821
    const/4 v4, 0x0

    .local v4, "numShownProcs":I
    const/4 v5, 0x0

    .line 1822
    .local v5, "numTotalProcs":I
    const/4 v6, 0x0

    .local v6, "ip":I
    :goto_5f1
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_72b

    .line 1823
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1824
    .local v7, "procName":Ljava/lang/String;
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 1825
    .local v8, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/16 v16, 0x0

    move-wide/from16 v25, v9

    move/from16 v10, v16

    .end local v9    # "totalTime":J
    .local v10, "iu":I
    .local v25, "totalTime":J
    :goto_609
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v10, v9, :cond_70f

    .line 1826
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 1827
    .local v9, "uid":I
    add-int/lit8 v16, v5, 0x1

    .line 1828
    .end local v5    # "numTotalProcs":I
    .local v16, "numTotalProcs":I
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessState;

    .line 1829
    .local v5, "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->hasAnyData()Z

    move-result v17

    if-nez v17, :cond_624

    .line 1830
    move/from16 v17, v1

    goto :goto_642

    .line 1832
    :cond_624
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v17

    if-nez v17, :cond_62d

    .line 1833
    move/from16 v17, v1

    goto :goto_642

    .line 1835
    :cond_62d
    if-eqz v14, :cond_659

    invoke-virtual {v14, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_659

    .line 1836
    move/from16 v17, v1

    .end local v1    # "printedHeader":Z
    .restart local v17    # "printedHeader":Z
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65b

    .line 1837
    nop

    .line 1825
    .end local v5    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v9    # "uid":I
    .end local v17    # "printedHeader":Z
    .restart local v1    # "printedHeader":Z
    :goto_642
    move-object/from16 v22, v3

    move/from16 v21, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move/from16 v20, v10

    move-object v9, v14

    move-wide/from16 v26, v25

    move-object/from16 v10, v35

    move-object/from16 v31, v36

    move-object/from16 v14, v45

    move/from16 v1, v17

    .end local v1    # "printedHeader":Z
    .restart local v17    # "printedHeader":Z
    goto/16 :goto_6f7

    .line 1835
    .end local v17    # "printedHeader":Z
    .restart local v1    # "printedHeader":Z
    .restart local v5    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v9    # "uid":I
    :cond_659
    move/from16 v17, v1

    .line 1839
    .end local v1    # "printedHeader":Z
    .restart local v17    # "printedHeader":Z
    :cond_65b
    add-int/lit8 v19, v4, 0x1

    .line 1840
    .end local v4    # "numShownProcs":I
    .local v19, "numShownProcs":I
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1841
    if-nez v17, :cond_66a

    .line 1842
    const-string v1, "Multi-Package Common Processes:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1843
    const/4 v1, 0x1

    move/from16 v17, v1

    .line 1845
    :cond_66a
    if-eqz p8, :cond_690

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v1

    if-nez v1, :cond_690

    .line 1846
    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1847
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1848
    move-object/from16 v1, v45

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1849
    move-object/from16 v22, v3

    move/from16 v21, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move/from16 v20, v10

    move-object v9, v14

    move-wide/from16 v26, v25

    move-object/from16 v10, v35

    move-object/from16 v31, v36

    move-object v14, v1

    goto :goto_6f3

    .line 1845
    :cond_690
    move-object/from16 v1, v45

    .line 1851
    move-object/from16 v4, v35

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1852
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1853
    move/from16 v20, v10

    move-object/from16 v10, v44

    .end local v10    # "iu":I
    .restart local v20    # "iu":I
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1854
    invoke-static {v2, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1855
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1856
    move-object/from16 v30, v1

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->getDurationsBucketCount()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1857
    move-object/from16 v1, v36

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1858
    move-object/from16 v10, v37

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1859
    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    move-object v1, v5

    .end local v5    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .local v1, "proc":Lcom/android/internal/app/procstats/ProcessState;
    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    move/from16 v21, v6

    .end local v6    # "ip":I
    .local v21, "ip":I
    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v22, v3

    .end local v3    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .local v22, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    const-string v3, "        "

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v14, v30

    move-object/from16 v10, v35

    move-object/from16 v31, v36

    move-wide/from16 v7, p3

    .end local v7    # "procName":Ljava/lang/String;
    .end local v8    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    .local v23, "procName":Ljava/lang/String;
    .local v24, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    .line 1861
    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    const-string v3, "        "

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    .line 1862
    const-string v3, "        "

    move-object/from16 v4, p2

    move-wide/from16 v5, v25

    move/from16 v25, v9

    move/from16 v9, p7

    .end local v9    # "uid":I
    .local v5, "totalTime":J
    .local v25, "uid":I
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJZ)V

    move-object v9, v4

    move-wide/from16 v26, v5

    .line 1825
    .end local v1    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v5    # "totalTime":J
    .end local v25    # "uid":I
    .local v26, "totalTime":J
    :goto_6f3
    move/from16 v4, v19

    move/from16 v1, v17

    .end local v17    # "printedHeader":Z
    .end local v19    # "numShownProcs":I
    .local v1, "printedHeader":Z
    .restart local v4    # "numShownProcs":I
    :goto_6f7
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v35, v10

    move-object/from16 v45, v14

    move/from16 v5, v16

    move/from16 v6, v21

    move-object/from16 v7, v23

    move-object/from16 v8, v24

    move-wide/from16 v25, v26

    move-object/from16 v36, v31

    move v10, v3

    move-object v14, v9

    move-object/from16 v3, v22

    .end local v20    # "iu":I
    .local v3, "iu":I
    goto/16 :goto_609

    .end local v16    # "numTotalProcs":I
    .end local v21    # "ip":I
    .end local v22    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .end local v23    # "procName":Ljava/lang/String;
    .end local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    .end local v26    # "totalTime":J
    .local v3, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .local v5, "numTotalProcs":I
    .restart local v6    # "ip":I
    .restart local v7    # "procName":Ljava/lang/String;
    .restart local v8    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    .restart local v10    # "iu":I
    .local v25, "totalTime":J
    :cond_70f
    move/from16 v17, v1

    move-object/from16 v22, v3

    move/from16 v21, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move/from16 v20, v10

    move-object v9, v14

    move-wide/from16 v26, v25

    move-object/from16 v10, v35

    move-object/from16 v31, v36

    move-object/from16 v14, v45

    .line 1822
    .end local v1    # "printedHeader":Z
    .end local v3    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .end local v6    # "ip":I
    .end local v7    # "procName":Ljava/lang/String;
    .end local v8    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    .end local v10    # "iu":I
    .end local v25    # "totalTime":J
    .restart local v17    # "printedHeader":Z
    .restart local v21    # "ip":I
    .restart local v22    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .restart local v26    # "totalTime":J
    add-int/lit8 v6, v21, 0x1

    move-object v14, v9

    move-wide/from16 v9, v26

    .end local v21    # "ip":I
    .restart local v6    # "ip":I
    goto/16 :goto_5f1

    .end local v17    # "printedHeader":Z
    .end local v22    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .end local v26    # "totalTime":J
    .restart local v1    # "printedHeader":Z
    .restart local v3    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .local v9, "totalTime":J
    :cond_72b
    move-object/from16 v22, v3

    move/from16 v21, v6

    move-wide/from16 v26, v9

    move-object v9, v14

    move-object/from16 v10, v35

    move-object/from16 v31, v36

    move-object/from16 v14, v45

    .line 1865
    .end local v3    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .end local v6    # "ip":I
    .end local v9    # "totalTime":J
    .restart local v22    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .restart local v26    # "totalTime":J
    const-string v3, "  Total procs: "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1866
    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_753

    .line 1818
    .end local v4    # "numShownProcs":I
    .end local v5    # "numTotalProcs":I
    .end local v22    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .end local v26    # "totalTime":J
    .restart local v9    # "totalTime":J
    :cond_74a
    move-wide/from16 v26, v9

    move-object v9, v14

    move-object/from16 v10, v35

    move-object/from16 v31, v36

    move-object/from16 v14, v45

    .line 1869
    .end local v9    # "totalTime":J
    .restart local v26    # "totalTime":J
    :goto_753
    and-int/lit8 v3, p9, 0x10

    if-eqz v3, :cond_81d

    .line 1870
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    .line 1871
    .local v3, "uidStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/UidState;>;"
    const/4 v4, 0x0

    .local v4, "numShownUids":I
    const/4 v5, 0x0

    .line 1872
    .local v5, "numTotalUids":I
    const/4 v1, 0x0

    .line 1873
    const/4 v6, 0x0

    .local v6, "iu":I
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v7

    .local v7, "size":I
    :goto_761
    if-ge v6, v7, :cond_801

    .line 1874
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 1875
    .local v8, "uid":I
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v1

    .end local v1    # "printedHeader":Z
    .restart local v17    # "printedHeader":Z
    move-object/from16 v1, v16

    check-cast v1, Lcom/android/internal/app/procstats/UidState;

    .line 1876
    .local v1, "uidState":Lcom/android/internal/app/procstats/UidState;
    add-int/lit8 v16, v5, 0x1

    .line 1877
    .end local v5    # "numTotalUids":I
    .local v16, "numTotalUids":I
    if-eqz v9, :cond_789

    invoke-virtual {v1, v9}, Lcom/android/internal/app/procstats/UidState;->hasPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_789

    .line 1878
    move-object/from16 v21, v3

    move/from16 v22, v6

    move/from16 v20, v7

    move-object/from16 v36, v31

    move-object/from16 v9, v37

    move/from16 v1, v17

    goto/16 :goto_7f1

    .line 1880
    :cond_789
    add-int/lit8 v19, v4, 0x1

    .line 1881
    .end local v4    # "numShownUids":I
    .local v19, "numShownUids":I
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1882
    if-nez v17, :cond_798

    .line 1883
    const-string v4, "Per-UID Stats:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1884
    const/4 v4, 0x1

    move/from16 v17, v4

    .line 1886
    :cond_798
    if-eqz p8, :cond_7b8

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/UidState;->isInUse()Z

    move-result v4

    if-nez v4, :cond_7b8

    .line 1887
    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1888
    invoke-static {v8}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1889
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1890
    move-object/from16 v21, v3

    move/from16 v22, v6

    move/from16 v20, v7

    move-object/from16 v36, v31

    move-object/from16 v9, v37

    goto :goto_7ed

    .line 1892
    :cond_7b8
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1893
    invoke-static {v2, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1894
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1895
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/UidState;->getDurationsBucketCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1896
    move-object/from16 v4, v31

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1897
    move-object/from16 v5, v37

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1898
    move-object/from16 v36, v4

    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    move/from16 v20, v6

    .end local v6    # "iu":I
    .restart local v20    # "iu":I
    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v21, v3

    .end local v3    # "uidStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/UidState;>;"
    .local v21, "uidStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/UidState;>;"
    const-string v3, "        "

    move/from16 v23, v8

    move/from16 v22, v20

    move-object/from16 v9, v37

    move/from16 v20, v7

    move-wide/from16 v7, p3

    .end local v7    # "size":I
    .end local v8    # "uid":I
    .local v20, "size":I
    .local v22, "iu":I
    .local v23, "uid":I
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/UidState;->dumpState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    .line 1873
    .end local v1    # "uidState":Lcom/android/internal/app/procstats/UidState;
    .end local v23    # "uid":I
    :goto_7ed
    move/from16 v4, v19

    move/from16 v1, v17

    .end local v17    # "printedHeader":Z
    .end local v19    # "numShownUids":I
    .local v1, "printedHeader":Z
    .restart local v4    # "numShownUids":I
    :goto_7f1
    add-int/lit8 v6, v22, 0x1

    move-object/from16 v37, v9

    move/from16 v5, v16

    move/from16 v7, v20

    move-object/from16 v3, v21

    move-object/from16 v31, v36

    move-object/from16 v9, p2

    .end local v22    # "iu":I
    .restart local v6    # "iu":I
    goto/16 :goto_761

    .end local v16    # "numTotalUids":I
    .end local v20    # "size":I
    .end local v21    # "uidStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/UidState;>;"
    .restart local v3    # "uidStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/UidState;>;"
    .restart local v5    # "numTotalUids":I
    .restart local v7    # "size":I
    :cond_801
    move/from16 v17, v1

    move-object/from16 v21, v3

    move/from16 v22, v6

    move/from16 v20, v7

    move-object/from16 v9, v37

    .line 1901
    .end local v1    # "printedHeader":Z
    .end local v3    # "uidStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/UidState;>;"
    .end local v6    # "iu":I
    .end local v7    # "size":I
    .restart local v17    # "printedHeader":Z
    .restart local v21    # "uidStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/UidState;>;"
    const-string v1, "  Total UIDs: "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1902
    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_821

    .line 1869
    .end local v4    # "numShownUids":I
    .end local v5    # "numTotalUids":I
    .end local v17    # "printedHeader":Z
    .end local v21    # "uidStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/UidState;>;"
    .restart local v1    # "printedHeader":Z
    :cond_81d
    move-object/from16 v9, v37

    move/from16 v17, v1

    .line 1905
    .end local v1    # "printedHeader":Z
    .restart local v17    # "printedHeader":Z
    :goto_821
    if-eqz p7, :cond_937

    .line 1906
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1907
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_934

    .line 1908
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1909
    const-string v1, "Tracking associations:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1910
    const/4 v1, 0x0

    move v8, v1

    .local v8, "i":I
    :goto_838
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_931

    .line 1911
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 1912
    .local v1, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getAssociationState()Lcom/android/internal/app/procstats/AssociationState;

    move-result-object v10

    .line 1913
    .local v10, "asc":Lcom/android/internal/app/procstats/AssociationState;
    if-nez v10, :cond_86e

    .line 1914
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " shouldn\'t be in the tracking list."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ProcessStats"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    move-wide/from16 v25, v26

    goto/16 :goto_92b

    .line 1917
    :cond_86e
    const-string v3, "  #"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1918
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 1919
    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1920
    invoke-virtual {v10}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1921
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1922
    invoke-virtual {v10}, Lcom/android/internal/app/procstats/AssociationState;->getUid()I

    move-result v5

    invoke-static {v2, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1923
    const-string v5, " <- "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1924
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1925
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1926
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getUid()I

    move-result v4

    invoke-static {v2, v4}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1927
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1928
    const-string v4, "    Tracking for: "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1929
    iget-wide v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mTrackingUptime:J

    sub-long v4, p3, v4

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1930
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1931
    const-string v4, "    Component: "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1932
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {v10}, Lcom/android/internal/app/procstats/AssociationState;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/android/internal/app/procstats/AssociationState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    .line 1932
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1934
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1935
    const-string v4, "    Proc state: "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1936
    iget v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8e6

    .line 1937
    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    iget v5, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8eb

    .line 1939
    :cond_8e6
    const-string v4, "--"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1941
    :goto_8eb
    const-string v4, " #"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1942
    iget v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcStateSeq:I

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 1943
    const-string v4, "    Process: "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1944
    invoke-virtual {v10}, Lcom/android/internal/app/procstats/AssociationState;->getProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1945
    iget v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    if-lez v4, :cond_929

    .line 1946
    const-string v4, "    Active count "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1947
    iget v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1948
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1949
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-wide/from16 v5, p3

    move/from16 v7, p7

    move-wide/from16 v3, v26

    .end local v1    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .end local v26    # "totalTime":J
    .local v2, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .local v3, "totalTime":J
    invoke-static/range {v1 .. v7}, Lcom/android/internal/app/procstats/AssociationState;->dumpActiveDurationSummary(Ljava/io/PrintWriter;Lcom/android/internal/app/procstats/AssociationState$SourceState;JJZ)V

    .line 1950
    move-object/from16 v25, v2

    move-object v2, v1

    move-object/from16 v1, v25

    move-wide/from16 v25, v3

    .end local v2    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .end local v3    # "totalTime":J
    .restart local v1    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .restart local v25    # "totalTime":J
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    goto :goto_92b

    .line 1945
    .end local v25    # "totalTime":J
    .restart local v26    # "totalTime":J
    :cond_929
    move-wide/from16 v25, v26

    .line 1910
    .end local v1    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .end local v10    # "asc":Lcom/android/internal/app/procstats/AssociationState;
    .end local v26    # "totalTime":J
    .restart local v25    # "totalTime":J
    :goto_92b
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v26, v25

    goto/16 :goto_838

    .end local v25    # "totalTime":J
    .restart local v26    # "totalTime":J
    :cond_931
    move-wide/from16 v25, v26

    .end local v26    # "totalTime":J
    .restart local v25    # "totalTime":J
    goto :goto_939

    .line 1907
    .end local v8    # "i":I
    .end local v25    # "totalTime":J
    .restart local v26    # "totalTime":J
    :cond_934
    move-wide/from16 v25, v26

    .end local v26    # "totalTime":J
    .restart local v25    # "totalTime":J
    goto :goto_939

    .line 1905
    .end local v25    # "totalTime":J
    .restart local v26    # "totalTime":J
    :cond_937
    move-wide/from16 v25, v26

    .line 1956
    .end local v26    # "totalTime":J
    .restart local v25    # "totalTime":J
    :goto_939
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1957
    if-eqz p5, :cond_950

    .line 1958
    const-string v1, "Process summary:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1959
    move-wide/from16 v3, p3

    move/from16 v5, p8

    move-object v1, v2

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    move-object v2, v1

    move-wide v7, v3

    goto :goto_955

    .line 1961
    :cond_950
    move-wide/from16 v7, p3

    invoke-virtual {v0, v2, v7, v8}, Lcom/android/internal/app/procstats/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    .line 1964
    :goto_955
    if-eqz p7, :cond_969

    .line 1965
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1966
    const-string v1, "Internal state:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1971
    const-string v1, "  mRunning="

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1974
    :cond_969
    if-nez p2, :cond_96e

    .line 1975
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/procstats/ProcessStats;->dumpFragmentationLocked(Ljava/io/PrintWriter;)V

    .line 1977
    :cond_96e
    return-void
.end method

.method public blacklist dumpProcessAssociation(ILcom/android/internal/app/procstats/StatsEventOutput;)V
    .registers 4
    .param p1, "atomTag"    # I
    .param p2, "statsEventOutput"    # Lcom/android/internal/app/procstats/StatsEventOutput;

    .line 2450
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/internal/app/procstats/ProcessStats$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/StatsEventOutput;I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/app/procstats/ProcessStats;->forEachAssociation(Lcom/android/internal/util/function/QuintConsumer;)V

    .line 2467
    return-void
.end method

.method public blacklist dumpProcessState(ILcom/android/internal/app/procstats/StatsEventOutput;)V
    .registers 4
    .param p1, "atomTag"    # I
    .param p2, "statsEventOutput"    # Lcom/android/internal/app/procstats/StatsEventOutput;

    .line 2438
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/app/procstats/ProcessStats$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/procstats/ProcessStats;ILcom/android/internal/app/procstats/StatsEventOutput;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/app/procstats/ProcessStats;->forEachProcess(Ljava/util/function/Consumer;)V

    .line 2446
    return-void
.end method

.method public blacklist dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .registers 21
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "activeOnly"    # Z

    .line 1980
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-wide v5, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-wide/from16 v7, p3

    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v11

    .line 1982
    .local v11, "totalTime":J
    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    sget-object v8, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    const-string v3, "  "

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p2

    move-wide/from16 v9, p3

    move/from16 v14, p5

    invoke-virtual/range {v0 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V

    .line 1984
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1985
    move-wide/from16 v7, p3

    invoke-virtual {p0, v1, v7, v8}, Lcom/android/internal/app/procstats/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    .line 1986
    return-void
.end method

.method blacklist dumpTotalsLocked(Ljava/io/PrintWriter;J)V
    .registers 20
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "now"    # J

    .line 2022
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Run time Stats:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2023
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    const-string v2, "  "

    move-wide/from16 v7, p2

    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    .line 2024
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 2025
    const-string v2, "Memory usage:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2026
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    invoke-direct {v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    move-object v11, v2

    .line 2028
    .local v11, "totalMem":Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    move-wide/from16 v12, p2

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    .line 2029
    const-wide/16 v8, 0x0

    .line 2030
    .local v8, "totalPss":J
    iget-wide v4, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    iget-wide v6, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    const-string v2, "  "

    const-string v3, "Kernel "

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v8

    .line 2032
    iget-wide v4, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    iget-wide v6, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    const-string v2, "  "

    const-string v3, "Native "

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v2

    .line 2034
    .end local v8    # "totalPss":J
    .local v2, "totalPss":J
    const/4 v0, 0x0

    move v14, v0

    move-wide v8, v2

    .end local v2    # "totalPss":J
    .restart local v8    # "totalPss":J
    .local v14, "i":I
    :goto_4e
    const/16 v0, 0x10

    const/16 v15, 0x9

    if-ge v14, v0, :cond_72

    .line 2036
    if-eq v14, v15, :cond_6f

    .line 2037
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    aget-object v3, v0, v14

    iget-object v0, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v0, v14

    iget-wide v6, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget-object v0, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v10, v0, v14

    const-string v2, "  "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v2

    move-wide v8, v2

    .line 2034
    :cond_6f
    add-int/lit8 v14, v14, 0x1

    goto :goto_4e

    .line 2042
    .end local v14    # "i":I
    :cond_72
    iget-wide v4, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    iget-wide v6, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    const-string v2, "  "

    const-string v3, "Cached "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v8

    .line 2044
    iget-wide v4, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    iget-wide v6, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    const-string v2, "  "

    const-string v3, "Free   "

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v8

    .line 2046
    iget-wide v4, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    iget-wide v6, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    const-string v2, "  "

    const-string v3, "Z-Ram  "

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v8

    .line 2048
    const-string v0, "  TOTAL  : "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2049
    invoke-static {v1, v8, v9}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 2050
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 2051
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    aget-object v3, v0, v15

    iget-object v0, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v0, v15

    iget-wide v6, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget-object v0, v11, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v10, v0, v15

    const-string v2, "  "

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    .line 2054
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 2055
    const-string v2, "PSS collection stats:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2056
    const-string v2, "  Internal Single: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2057
    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2058
    const-string/jumbo v2, "x over "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2059
    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2060
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 2061
    const-string v3, "  Internal All Procs (Memory Change): "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2062
    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 2063
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2064
    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2065
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 2066
    const-string v3, "  Internal All Procs (Polling): "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2067
    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 2068
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2069
    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2070
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 2071
    const-string v3, "  External: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2072
    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 2073
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2074
    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2075
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 2076
    const-string v3, "  External Slow: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2077
    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 2078
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2079
    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2080
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 2081
    return-void
.end method

.method public blacklist evaluateSystemProperties(Z)Z
    .registers 5
    .param p1, "update"    # Z

    .line 662
    const/4 v0, 0x0

    .line 663
    .local v0, "changed":Z
    nop

    .line 664
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    .line 663
    const-string v2, "persist.sys.dalvik.vm.lib.2"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 665
    .local v1, "runtime":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 666
    const/4 v0, 0x1

    .line 667
    if-eqz p1, :cond_1d

    .line 668
    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    .line 671
    :cond_1d
    return v0
.end method

.method blacklist forEachAssociation(Lcom/android/internal/util/function/QuintConsumer;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/function/QuintConsumer<",
            "Lcom/android/internal/app/procstats/AssociationState;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/AssociationState$SourceKey;",
            "Lcom/android/internal/app/procstats/AssociationState$SourceState;",
            ">;)V"
        }
    .end annotation

    .line 2409
    .local p1, "consumer":Lcom/android/internal/util/function/QuintConsumer;, "Lcom/android/internal/util/function/QuintConsumer<Lcom/android/internal/app/procstats/AssociationState;Ljava/lang/Integer;Ljava/lang/String;Lcom/android/internal/app/procstats/AssociationState$SourceKey;Lcom/android/internal/app/procstats/AssociationState$SourceState;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 2410
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 2411
    .local v1, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    const/4 v2, 0x0

    .local v2, "ip":I
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .local v3, "size":I
    :goto_d
    if-ge v2, v3, :cond_98

    .line 2412
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 2413
    .local v4, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    const/4 v5, 0x0

    .local v5, "iu":I
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    .local v6, "uidsSize":I
    :goto_1a
    if-ge v5, v6, :cond_92

    .line 2414
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 2415
    .local v7, "uid":I
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/LongSparseArray;

    .line 2416
    .local v8, "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    const/4 v9, 0x0

    .local v9, "iv":I
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v10

    .local v10, "versionsSize":I
    :goto_2b
    if-ge v9, v10, :cond_8d

    .line 2417
    invoke-virtual {v8, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 2418
    .local v11, "state":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    const/4 v12, 0x0

    .local v12, "iasc":I
    iget-object v13, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 2419
    .local v13, "ascSize":I
    :goto_3a
    if-ge v12, v13, :cond_88

    .line 2421
    iget-object v14, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v18, v14

    check-cast v18, Ljava/lang/String;

    .line 2422
    .local v18, "serviceName":Ljava/lang/String;
    iget-object v14, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/procstats/AssociationState;

    .line 2423
    .local v14, "asc":Lcom/android/internal/app/procstats/AssociationState;
    const/4 v15, 0x0

    .local v15, "is":I
    iget-object v0, v14, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2424
    .local v0, "sourcesSize":I
    :goto_55
    if-ge v15, v0, :cond_7e

    .line 2426
    move/from16 v21, v0

    .end local v0    # "sourcesSize":I
    .local v21, "sourcesSize":I
    iget-object v0, v14, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 2427
    .local v20, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    iget-object v0, v14, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 2428
    .local v19, "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v16, v14

    move v0, v15

    move-object/from16 v15, p1

    .end local v14    # "asc":Lcom/android/internal/app/procstats/AssociationState;
    .end local v15    # "is":I
    .local v0, "is":I
    .local v16, "asc":Lcom/android/internal/app/procstats/AssociationState;
    invoke-interface/range {v15 .. v20}, Lcom/android/internal/util/function/QuintConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2425
    .end local v19    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    .end local v20    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    add-int/lit8 v15, v0, 0x1

    move/from16 v0, v21

    .end local v0    # "is":I
    .restart local v15    # "is":I
    goto :goto_55

    .line 2424
    .end local v16    # "asc":Lcom/android/internal/app/procstats/AssociationState;
    .end local v21    # "sourcesSize":I
    .local v0, "sourcesSize":I
    .restart local v14    # "asc":Lcom/android/internal/app/procstats/AssociationState;
    :cond_7e
    move/from16 v21, v0

    move-object/from16 v16, v14

    move v0, v15

    .line 2420
    .end local v0    # "sourcesSize":I
    .end local v14    # "asc":Lcom/android/internal/app/procstats/AssociationState;
    .end local v15    # "is":I
    .end local v18    # "serviceName":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_3a

    .line 2416
    .end local v11    # "state":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v12    # "iasc":I
    .end local v13    # "ascSize":I
    :cond_88
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    goto :goto_2b

    .line 2413
    .end local v7    # "uid":I
    .end local v8    # "versions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v9    # "iv":I
    .end local v10    # "versionsSize":I
    :cond_8d
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_1a

    .line 2411
    .end local v4    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v5    # "iu":I
    .end local v6    # "uidsSize":I
    :cond_92
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_d

    .line 2434
    .end local v2    # "ip":I
    .end local v3    # "size":I
    :cond_98
    return-void
.end method

.method blacklist forEachProcess(Ljava/util/function/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;)V"
        }
    .end annotation

    .line 2397
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/internal/app/procstats/ProcessState;>;"
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 2398
    .local v0, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    const/4 v1, 0x0

    .local v1, "ip":I
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "size":I
    :goto_b
    if-ge v1, v2, :cond_29

    .line 2399
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 2400
    .local v3, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/4 v4, 0x0

    .local v4, "iu":I
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    .local v5, "uidsSize":I
    :goto_18
    if-ge v4, v5, :cond_26

    .line 2401
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/procstats/ProcessState;

    .line 2402
    .local v6, "processState":Lcom/android/internal/app/procstats/ProcessState;
    invoke-interface {p1, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2400
    .end local v6    # "processState":Lcom/android/internal/app/procstats/ProcessState;
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 2398
    .end local v3    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    .end local v4    # "iu":I
    .end local v5    # "uidsSize":I
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2405
    .end local v1    # "ip":I
    .end local v2    # "size":I
    :cond_29
    return-void
.end method

.method public blacklist getAssociationStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState;
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # J
    .param p5, "processName"    # Ljava/lang/String;
    .param p6, "className"    # Ljava/lang/String;

    .line 1500
    move-wide v3, p3

    .end local p3    # "vers":J
    .local v3, "vers":J
    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object p3

    .line 1501
    .local p3, "pkgs":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object p4, p3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {p4, p6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    move-object v6, p4

    check-cast v6, Lcom/android/internal/app/procstats/AssociationState;

    .line 1502
    .local v6, "as":Lcom/android/internal/app/procstats/AssociationState;
    if-eqz v6, :cond_11

    .line 1504
    return-object v6

    .line 1506
    :cond_11
    if-eqz p5, :cond_1c

    .line 1507
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p5    # "processName":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "uid":I
    .local v5, "processName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object p1

    .end local v5    # "processName":Ljava/lang/String;
    .restart local p5    # "processName":Ljava/lang/String;
    goto :goto_1f

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "uid":I
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "uid":I
    :cond_1c
    move-object v1, p1

    move v2, p2

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uid":I
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "uid":I
    const/4 p1, 0x0

    .line 1508
    .local p1, "procs":Lcom/android/internal/app/procstats/ProcessState;
    :goto_1f
    move-object p4, p6

    move-object p6, p1

    .end local p1    # "procs":Lcom/android/internal/app/procstats/ProcessState;
    .local p4, "className":Ljava/lang/String;
    .local p6, "procs":Lcom/android/internal/app/procstats/ProcessState;
    new-instance p1, Lcom/android/internal/app/procstats/AssociationState;

    move-object p2, p0

    invoke-direct/range {p1 .. p6}, Lcom/android/internal/app/procstats/AssociationState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    .line 1509
    .end local v6    # "as":Lcom/android/internal/app/procstats/AssociationState;
    .local p1, "as":Lcom/android/internal/app/procstats/AssociationState;
    iget-object p2, p3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {p2, p4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    return-object p1
.end method

.method public blacklist getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # J

    .line 1374
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 1375
    .local v0, "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    if-nez v0, :cond_15

    .line 1376
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    move-object v0, v1

    .line 1377
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1379
    :cond_15
    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 1380
    .local v1, "as":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    if-eqz v1, :cond_1e

    .line 1381
    return-object v1

    .line 1383
    :cond_1e
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "vers":J
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "uid":I
    .local v6, "vers":J
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJ)V

    .line 1384
    .end local v1    # "as":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v2, "as":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    invoke-virtual {v0, v6, v7, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1385
    return-object v2
.end method

.method public blacklist getProcessStateLocked(Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .registers 16
    .param p1, "pkgState"    # Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .param p2, "processName"    # Ljava/lang/String;

    .line 1394
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    .line 1395
    .local v0, "ps":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v0, :cond_b

    .line 1396
    return-object v0

    .line 1398
    :cond_b
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    iget v2, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 1399
    .local v1, "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v1, :cond_4d

    .line 1400
    new-instance v2, Lcom/android/internal/app/procstats/ProcessState;

    iget-object v4, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    iget v5, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    iget-wide v6, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mVersionCode:J

    move-object v3, p0

    move-object v8, p2

    .end local p2    # "processName":Ljava/lang/String;
    .local v8, "processName":Ljava/lang/String;
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJLjava/lang/String;)V

    move-object v10, v8

    .end local v8    # "processName":Ljava/lang/String;
    .local v10, "processName":Ljava/lang/String;
    move-object v1, v2

    .line 1402
    iget-object p2, v3, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    iget v2, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {p2, v10, v2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1403
    iget-object p2, v3, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/app/procstats/UidState;

    .line 1404
    .local p2, "uidState":Lcom/android/internal/app/procstats/UidState;
    if-nez p2, :cond_48

    .line 1405
    new-instance v2, Lcom/android/internal/app/procstats/UidState;

    iget v4, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-direct {v2, p0, v4}, Lcom/android/internal/app/procstats/UidState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;I)V

    move-object p2, v2

    .line 1406
    iget-object v2, v3, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    iget v4, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v2, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1408
    :cond_48
    invoke-virtual {p2, v1}, Lcom/android/internal/app/procstats/UidState;->addProcess(Lcom/android/internal/app/procstats/ProcessState;)V

    move-object v5, v1

    goto :goto_50

    .line 1399
    .end local v10    # "processName":Ljava/lang/String;
    .local p2, "processName":Ljava/lang/String;
    :cond_4d
    move-object v3, p0

    move-object v10, p2

    .end local p2    # "processName":Ljava/lang/String;
    .restart local v10    # "processName":Ljava/lang/String;
    move-object v5, v1

    .line 1411
    .end local v1    # "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    .local v5, "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    :goto_50
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result p2

    if-nez p2, :cond_112

    .line 1412
    iget-object p2, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6f

    iget-wide v1, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mVersionCode:J

    .line 1413
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v6

    cmp-long p2, v1, v6

    if-nez p2, :cond_6f

    .line 1416
    move-object p2, v5

    .end local v0    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    .local p2, "ps":Lcom/android/internal/app/procstats/ProcessState;
    goto/16 :goto_122

    .line 1423
    .end local p2    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v0    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    :cond_6f
    const/4 p2, 0x1

    invoke-virtual {v5, p2}, Lcom/android/internal/app/procstats/ProcessState;->setMultiPackage(Z)V

    .line 1428
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 1431
    .local v11, "now":J
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    .line 1432
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v6

    .line 1431
    invoke-virtual {p0, v1, v2, v6, v7}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v1

    .line 1433
    .local v1, "commonPkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    if-eqz v1, :cond_cf

    .line 1434
    invoke-virtual {v5, v11, v12}, Lcom/android/internal/app/procstats/ProcessState;->clone(J)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v2

    .line 1437
    .local v2, "cloned":Lcom/android/internal/app/procstats/ProcessState;
    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, p2

    .local v4, "i":I
    :goto_9b
    if-ltz v4, :cond_b1

    .line 1441
    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/procstats/ServiceState;

    .line 1442
    .local v6, "ss":Lcom/android/internal/app/procstats/ServiceState;
    invoke-virtual {v6}, Lcom/android/internal/app/procstats/ServiceState;->getProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v7

    if-ne v7, v5, :cond_ae

    .line 1444
    invoke-virtual {v6, v2}, Lcom/android/internal/app/procstats/ServiceState;->setProcess(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 1440
    .end local v6    # "ss":Lcom/android/internal/app/procstats/ServiceState;
    :cond_ae
    add-int/lit8 v4, v4, -0x1

    goto :goto_9b

    .line 1450
    .end local v4    # "i":I
    :cond_b1
    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, p2

    .restart local v4    # "i":I
    :goto_b8
    if-ltz v4, :cond_ce

    .line 1451
    iget-object p2, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/app/procstats/AssociationState;

    .line 1452
    .local p2, "as":Lcom/android/internal/app/procstats/AssociationState;
    invoke-virtual {p2}, Lcom/android/internal/app/procstats/AssociationState;->getProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v6

    if-ne v6, v5, :cond_cb

    .line 1455
    invoke-virtual {p2, v2}, Lcom/android/internal/app/procstats/AssociationState;->setProcess(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 1450
    .end local p2    # "as":Lcom/android/internal/app/procstats/AssociationState;
    :cond_cb
    add-int/lit8 v4, v4, -0x1

    goto :goto_b8

    .line 1460
    .end local v2    # "cloned":Lcom/android/internal/app/procstats/ProcessState;
    .end local v4    # "i":I
    :cond_ce
    goto :goto_105

    .line 1461
    :cond_cf
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cloning proc state: no package state "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v2, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " for proc "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1462
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1461
    const-string v2, "ProcessStats"

    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :goto_105
    new-instance v4, Lcom/android/internal/app/procstats/ProcessState;

    iget-object v6, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    iget v7, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    iget-wide v8, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mVersionCode:J

    invoke-direct/range {v4 .. v12}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V

    move-object p2, v4

    .line 1468
    .end local v0    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    .end local v1    # "commonPkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v11    # "now":J
    .local p2, "ps":Lcom/android/internal/app/procstats/ProcessState;
    goto :goto_122

    .line 1472
    .end local p2    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v0    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    :cond_112
    new-instance v4, Lcom/android/internal/app/procstats/ProcessState;

    iget-object v6, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    iget v7, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    iget-wide v8, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mVersionCode:J

    .line 1474
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-direct/range {v4 .. v12}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V

    move-object p2, v4

    .line 1477
    .end local v0    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    .restart local p2    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    :goto_122
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    return-object p2
.end method

.method public blacklist getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # J
    .param p5, "processName"    # Ljava/lang/String;

    .line 1390
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v0

    invoke-virtual {p0, v0, p5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # J
    .param p5, "processName"    # Ljava/lang/String;
    .param p6, "className"    # Ljava/lang/String;

    .line 1484
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v0

    .line 1485
    .local v0, "as":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ServiceState;

    .line 1486
    .local v1, "ss":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v1, :cond_f

    .line 1488
    return-object v1

    .line 1490
    :cond_f
    if-eqz p5, :cond_18

    .line 1491
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v2

    move v3, p2

    move-wide v4, p3

    .end local p2    # "uid":I
    .end local p3    # "vers":J
    .local v3, "uid":I
    .local v4, "vers":J
    goto :goto_1b

    .end local v3    # "uid":I
    .end local v4    # "vers":J
    .restart local p2    # "uid":I
    .restart local p3    # "vers":J
    :cond_18
    move v3, p2

    move-wide v4, p3

    .end local p2    # "uid":I
    .end local p3    # "vers":J
    .restart local v3    # "uid":I
    .restart local v4    # "vers":J
    const/4 v2, 0x0

    .line 1492
    .local v2, "ps":Lcom/android/internal/app/procstats/ProcessState;
    :goto_1b
    move-object p3, p1

    .end local p1    # "packageName":Ljava/lang/String;
    .local p3, "packageName":Ljava/lang/String;
    new-instance p1, Lcom/android/internal/app/procstats/ServiceState;

    move-object p2, p0

    move-object p4, p6

    move-object p6, v2

    .end local v2    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    .local p4, "className":Ljava/lang/String;
    .local p6, "ps":Lcom/android/internal/app/procstats/ProcessState;
    invoke-direct/range {p1 .. p6}, Lcom/android/internal/app/procstats/ServiceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    move-object p2, p1

    move-object p1, p3

    .line 1493
    .end local v1    # "ss":Lcom/android/internal/app/procstats/ServiceState;
    .end local p3    # "packageName":Ljava/lang/String;
    .restart local p1    # "packageName":Ljava/lang/String;
    .local p2, "ss":Lcom/android/internal/app/procstats/ServiceState;
    iget-object p3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p3, p4, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    return-object p2
.end method

.method blacklist printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J
    .registers 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "memWeight"    # D
    .param p6, "totalTime"    # J
    .param p8, "curTotalMem"    # J
    .param p10, "samples"    # I

    .line 2006
    const-wide/16 v0, 0x0

    cmpl-double v0, p4, v0

    if-eqz v0, :cond_2d

    .line 2007
    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    mul-double/2addr v0, p4

    long-to-double v2, p6

    div-double/2addr v0, v2

    double-to-long v0, v0

    .line 2008
    .local v0, "mem":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2009
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2010
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2011
    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 2012
    const-string v2, " ("

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2013
    invoke-virtual {p1, p10}, Ljava/io/PrintWriter;->print(I)V

    .line 2014
    const-string v2, " samples)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2015
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2016
    add-long v2, p8, v0

    return-wide v2

    .line 2018
    .end local v0    # "mem":J
    :cond_2d
    return-wide p8
.end method

.method public blacklist read(Ljava/io/InputStream;)V
    .registers 7
    .param p1, "stream"    # Ljava/io/InputStream;

    .line 1061
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [I

    .line 1062
    .local v0, "len":[I
    invoke-static {p1, v0}, Lcom/android/internal/app/procstats/ProcessStats;->readFully(Ljava/io/InputStream;[I)[B

    move-result-object v1

    .line 1063
    .local v1, "raw":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1064
    .local v2, "in":Landroid/os/Parcel;
    const/4 v3, 0x0

    aget v4, v0, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1065
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1066
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 1068
    invoke-virtual {p0, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1a} :catch_1b

    .line 1071
    .end local v0    # "len":[I
    .end local v1    # "raw":[B
    .end local v2    # "in":Landroid/os/Parcel;
    goto :goto_31

    .line 1069
    :catch_1b
    move-exception v0

    .line 1070
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caught exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1072
    .end local v0    # "e":Ljava/io/IOException;
    :goto_31
    return-void
.end method

.method blacklist readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "version"    # I

    .line 835
    const/16 v0, 0x9

    if-gt p2, v0, :cond_9

    .line 836
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 838
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 839
    .local v0, "index":I
    if-ltz v0, :cond_18

    .line 840
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 842
    :cond_18
    not-int v0, v0

    .line 843
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 844
    .local v1, "name":Ljava/lang/String;
    :goto_1d
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v0, :cond_2c

    .line 845
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 847
    :cond_2c
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 848
    return-object v1
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 33
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1075
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-gtz v0, :cond_29

    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 1076
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-gtz v0, :cond_29

    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    .line 1077
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_27

    goto :goto_29

    :cond_27
    move v0, v8

    goto :goto_2a

    :cond_29
    :goto_29
    move v0, v9

    :goto_2a
    move v10, v0

    .line 1078
    .local v10, "hadData":Z
    if-eqz v10, :cond_30

    .line 1079
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 1082
    :cond_30
    const v0, 0x50535454

    const-string v2, "magic number"

    invoke-direct {v1, v7, v0, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1083
    return-void

    .line 1085
    :cond_3c
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1086
    .local v11, "version":I
    const/16 v0, 0x29

    if-eq v11, v0, :cond_5a

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad version: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1088
    return-void

    .line 1090
    :cond_5a
    const-string/jumbo v0, "state count"

    const/16 v2, 0x10

    invoke-direct {v1, v7, v2, v0}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 1091
    return-void

    .line 1093
    :cond_66
    const/16 v0, 0x8

    const-string v3, "adj count"

    invoke-direct {v1, v7, v0, v3}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 1094
    return-void

    .line 1096
    :cond_71
    const/16 v0, 0xa

    const-string v3, "pss count"

    invoke-direct {v1, v7, v0, v3}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 1097
    return-void

    .line 1099
    :cond_7c
    const-string/jumbo v0, "sys mem usage count"

    invoke-direct {v1, v7, v2, v0}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 1100
    return-void

    .line 1102
    :cond_86
    const/16 v0, 0x1000

    const-string v2, "longs size"

    invoke-direct {v1, v7, v0, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_91

    .line 1103
    return-void

    .line 1106
    :cond_91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    .line 1108
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    .line 1109
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    .line 1110
    invoke-direct {v1}, Lcom/android/internal/app/procstats/ProcessStats;->buildTimePeriodStartClockStr()V

    .line 1111
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    .line 1112
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 1113
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    .line 1114
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 1115
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    .line 1116
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    .line 1117
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    .line 1118
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    .line 1119
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    .line 1120
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    .line 1121
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    .line 1122
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    .line 1123
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    .line 1124
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    .line 1125
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    .line 1126
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_109

    move v0, v9

    goto :goto_10a

    :cond_109
    move v0, v8

    :goto_10a
    iput-boolean v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    .line 1127
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 1128
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/SparseMappingTable;->readFromParcel(Landroid/os/Parcel;)V

    .line 1129
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    array-length v2, v2

    invoke-direct {v1, v7, v11, v0, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    .line 1130
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/SysMemUsageTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_128

    .line 1131
    return-void

    .line 1134
    :cond_128
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1135
    .local v12, "numOfUids":I
    const/4 v0, 0x0

    .local v0, "ip":I
    :goto_12d
    if-ge v0, v12, :cond_147

    .line 1136
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1137
    .local v2, "uid":I
    new-instance v3, Lcom/android/internal/app/procstats/UidState;

    invoke-direct {v3, v1, v2}, Lcom/android/internal/app/procstats/UidState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;I)V

    .line 1138
    .local v3, "uidState":Lcom/android/internal/app/procstats/UidState;
    invoke-virtual {v3, v7}, Lcom/android/internal/app/procstats/UidState;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v4

    if-nez v4, :cond_13f

    .line 1139
    return-void

    .line 1141
    :cond_13f
    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1135
    .end local v2    # "uid":I
    .end local v3    # "uidState":Lcom/android/internal/app/procstats/UidState;
    add-int/lit8 v0, v0, 0x1

    goto :goto_12d

    .line 1144
    .end local v0    # "ip":I
    :cond_147
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1145
    .local v0, "NPROC":I
    if-gez v0, :cond_163

    .line 1146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad process count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1147
    return-void

    .line 1145
    :cond_163
    move v6, v0

    .line 1149
    .end local v0    # "NPROC":I
    .local v6, "NPROC":I
    :goto_164
    const-string v13, "bad uid: "

    const-string v14, "bad uid count: "

    if-lez v6, :cond_206

    .line 1150
    add-int/lit8 v16, v6, -0x1

    .line 1151
    .end local v6    # "NPROC":I
    .local v16, "NPROC":I
    invoke-virtual {v1, v7, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    .line 1152
    .local v6, "procName":Ljava/lang/String;
    if-nez v6, :cond_177

    .line 1153
    const-string v0, "bad process name"

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1154
    return-void

    .line 1156
    :cond_177
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1157
    .local v0, "NUID":I
    if-gez v0, :cond_191

    .line 1158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1159
    return-void

    .line 1161
    :cond_191
    :goto_191
    if-lez v0, :cond_201

    .line 1162
    add-int/lit8 v14, v0, -0x1

    .line 1163
    .end local v0    # "NUID":I
    .local v14, "NUID":I
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1164
    .local v3, "uid":I
    if-gez v3, :cond_1af

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1166
    return-void

    .line 1168
    :cond_1af
    invoke-virtual {v1, v7, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    .line 1169
    .local v2, "pkgName":Ljava/lang/String;
    if-nez v2, :cond_1ba

    .line 1170
    const-string v0, "bad process package name"

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1171
    return-void

    .line 1173
    :cond_1ba
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1174
    .local v4, "vers":J
    if-eqz v10, :cond_1c9

    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, v6, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    goto :goto_1ca

    :cond_1c9
    const/4 v0, 0x0

    .line 1175
    .local v0, "proc":Lcom/android/internal/app/procstats/ProcessState;
    :goto_1ca
    if-eqz v0, :cond_1d3

    .line 1176
    invoke-virtual {v0, v7, v11, v8}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;IZ)Z

    move-result v17

    if-nez v17, :cond_1e1

    .line 1177
    return-void

    .line 1180
    :cond_1d3
    move-object/from16 v17, v0

    .end local v0    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .local v17, "proc":Lcom/android/internal/app/procstats/ProcessState;
    new-instance v0, Lcom/android/internal/app/procstats/ProcessState;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJLjava/lang/String;)V

    .line 1181
    .end local v17    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v0    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v0, v7, v11, v9}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;IZ)Z

    move-result v17

    if-nez v17, :cond_1e1

    .line 1182
    return-void

    .line 1187
    :cond_1e1
    iget-object v15, v1, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v15, v6, v3, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1189
    iget-object v15, v1, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/procstats/UidState;

    .line 1190
    .local v15, "uidState":Lcom/android/internal/app/procstats/UidState;
    if-nez v15, :cond_1fb

    .line 1195
    new-instance v9, Lcom/android/internal/app/procstats/UidState;

    invoke-direct {v9, v1, v3}, Lcom/android/internal/app/procstats/UidState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;I)V

    move-object v15, v9

    .line 1196
    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v9, v3, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1198
    :cond_1fb
    invoke-virtual {v15, v0}, Lcom/android/internal/app/procstats/UidState;->addProcess(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 1199
    .end local v0    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "uid":I
    .end local v4    # "vers":J
    .end local v15    # "uidState":Lcom/android/internal/app/procstats/UidState;
    move v0, v14

    const/4 v9, 0x1

    goto :goto_191

    .line 1200
    .end local v6    # "procName":Ljava/lang/String;
    .end local v14    # "NUID":I
    :cond_201
    move/from16 v6, v16

    const/4 v9, 0x1

    goto/16 :goto_164

    .line 1202
    .end local v16    # "NPROC":I
    .local v6, "NPROC":I
    :cond_206
    const/4 v0, 0x0

    .local v0, "ip":I
    :goto_207
    if-ge v0, v12, :cond_219

    .line 1203
    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/UidState;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/procstats/UidState;->updateCombinedState(J)V

    .line 1202
    add-int/lit8 v0, v0, 0x1

    goto :goto_207

    .line 1208
    .end local v0    # "ip":I
    :cond_219
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1209
    .local v0, "NPKG":I
    if-gez v0, :cond_235

    .line 1210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad package count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1211
    return-void

    .line 1213
    :cond_235
    :goto_235
    if-lez v0, :cond_476

    .line 1214
    add-int/lit8 v9, v0, -0x1

    .line 1215
    .end local v0    # "NPKG":I
    .local v9, "NPKG":I
    invoke-virtual {v1, v7, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    .line 1216
    .restart local v2    # "pkgName":Ljava/lang/String;
    if-nez v2, :cond_244

    .line 1217
    const-string v0, "bad package name"

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1218
    return-void

    .line 1220
    :cond_244
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1221
    .local v0, "NUID":I
    if-gez v0, :cond_25e

    .line 1222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1223
    return-void

    .line 1225
    :cond_25e
    :goto_25e
    if-lez v0, :cond_46d

    .line 1226
    add-int/lit8 v15, v0, -0x1

    .line 1227
    .end local v0    # "NUID":I
    .local v15, "NUID":I
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1228
    .restart local v3    # "uid":I
    if-gez v3, :cond_27c

    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1230
    return-void

    .line 1232
    :cond_27c
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1233
    .local v0, "NVERS":I
    if-gez v0, :cond_298

    .line 1234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad versions count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1235
    return-void

    .line 1237
    :cond_298
    :goto_298
    if-lez v0, :cond_462

    .line 1238
    add-int/lit8 v16, v0, -0x1

    .line 1239
    .end local v0    # "NVERS":I
    .local v16, "NVERS":I
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1240
    .restart local v4    # "vers":J
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJ)V

    .line 1241
    .local v0, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/LongSparseArray;

    .line 1242
    .local v8, "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    if-nez v8, :cond_2be

    .line 1243
    new-instance v19, Landroid/util/LongSparseArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/LongSparseArray;-><init>()V

    move-object/from16 v8, v19

    .line 1244
    move/from16 v29, v6

    .end local v6    # "NPROC":I
    .local v29, "NPROC":I
    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6, v2, v3, v8}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c0

    .line 1242
    .end local v29    # "NPROC":I
    .restart local v6    # "NPROC":I
    :cond_2be
    move/from16 v29, v6

    .line 1246
    .end local v6    # "NPROC":I
    .restart local v29    # "NPROC":I
    :goto_2c0
    invoke-virtual {v8, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1247
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1248
    .local v6, "NPROCS":I
    if-gez v6, :cond_2df

    .line 1249
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad package process count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1250
    return-void

    .line 1252
    :cond_2df
    :goto_2df
    if-lez v6, :cond_375

    .line 1253
    add-int/lit8 v6, v6, -0x1

    .line 1254
    move-object/from16 v21, v2

    .end local v2    # "pkgName":Ljava/lang/String;
    .local v21, "pkgName":Ljava/lang/String;
    invoke-virtual {v1, v7, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    .line 1255
    .local v2, "procName":Ljava/lang/String;
    if-nez v2, :cond_2f0

    .line 1256
    const-string v13, "bad package process name"

    iput-object v13, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1257
    return-void

    .line 1259
    :cond_2f0
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 1262
    .local v30, "hasProc":I
    move-wide/from16 v23, v4

    .end local v4    # "vers":J
    .local v23, "vers":J
    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v20, v4

    check-cast v20, Lcom/android/internal/app/procstats/ProcessState;

    .line 1265
    .local v20, "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v20, :cond_318

    .line 1266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no common proc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1267
    return-void

    .line 1269
    :cond_318
    if-eqz v30, :cond_35f

    .line 1274
    if-eqz v10, :cond_325

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    goto :goto_326

    :cond_325
    const/4 v4, 0x0

    .line 1275
    .local v4, "proc":Lcom/android/internal/app/procstats/ProcessState;
    :goto_326
    if-eqz v4, :cond_33b

    .line 1276
    const/4 v5, 0x0

    invoke-virtual {v4, v7, v11, v5}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;IZ)Z

    move-result v19

    if-nez v19, :cond_330

    .line 1277
    return-void

    .line 1276
    :cond_330
    move/from16 v22, v3

    move/from16 v19, v6

    move-object/from16 v5, v20

    const/4 v6, 0x1

    move-object v3, v2

    move-object/from16 v2, v21

    goto :goto_359

    .line 1280
    :cond_33b
    const/4 v5, 0x0

    new-instance v19, Lcom/android/internal/app/procstats/ProcessState;

    const-wide/16 v26, 0x0

    move-object/from16 v25, v2

    move/from16 v22, v3

    .end local v2    # "procName":Ljava/lang/String;
    .end local v3    # "uid":I
    .local v22, "uid":I
    .local v25, "procName":Ljava/lang/String;
    invoke-direct/range {v19 .. v27}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V

    move-object/from16 v5, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v25

    .end local v20    # "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v21    # "pkgName":Ljava/lang/String;
    .end local v25    # "procName":Ljava/lang/String;
    .local v2, "pkgName":Ljava/lang/String;
    .local v3, "procName":Ljava/lang/String;
    .local v5, "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v4, v19

    .line 1282
    move/from16 v19, v6

    const/4 v6, 0x1

    .end local v6    # "NPROCS":I
    .local v19, "NPROCS":I
    invoke-virtual {v4, v7, v11, v6}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;IZ)Z

    move-result v18

    if-nez v18, :cond_359

    .line 1283
    return-void

    .line 1288
    :cond_359
    :goto_359
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    goto :goto_36d

    .line 1292
    .end local v5    # "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v19    # "NPROCS":I
    .end local v22    # "uid":I
    .local v2, "procName":Ljava/lang/String;
    .local v3, "uid":I
    .restart local v6    # "NPROCS":I
    .restart local v20    # "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v21    # "pkgName":Ljava/lang/String;
    :cond_35f
    move/from16 v22, v3

    move/from16 v19, v6

    move-object/from16 v5, v20

    move-object v3, v2

    move-object/from16 v2, v21

    .end local v6    # "NPROCS":I
    .end local v20    # "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v21    # "pkgName":Ljava/lang/String;
    .local v2, "pkgName":Ljava/lang/String;
    .local v3, "procName":Ljava/lang/String;
    .restart local v5    # "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v19    # "NPROCS":I
    .restart local v22    # "uid":I
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    .end local v3    # "procName":Ljava/lang/String;
    .end local v5    # "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v30    # "hasProc":I
    :goto_36d
    move/from16 v6, v19

    move/from16 v3, v22

    move-wide/from16 v4, v23

    goto/16 :goto_2df

    .line 1295
    .end local v19    # "NPROCS":I
    .end local v22    # "uid":I
    .end local v23    # "vers":J
    .local v3, "uid":I
    .local v4, "vers":J
    .restart local v6    # "NPROCS":I
    :cond_375
    move/from16 v22, v3

    move-wide/from16 v23, v4

    move/from16 v19, v6

    .end local v3    # "uid":I
    .end local v4    # "vers":J
    .end local v6    # "NPROCS":I
    .restart local v19    # "NPROCS":I
    .restart local v22    # "uid":I
    .restart local v23    # "vers":J
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1296
    .local v3, "NSRVS":I
    if-gez v3, :cond_397

    .line 1297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad package service count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1298
    return-void

    .line 1296
    :cond_397
    move v6, v3

    .line 1300
    .end local v3    # "NSRVS":I
    .local v6, "NSRVS":I
    :goto_398
    if-lez v6, :cond_3f0

    .line 1301
    add-int/lit8 v6, v6, -0x1

    .line 1302
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1303
    .local v3, "serviceName":Ljava/lang/String;
    if-nez v3, :cond_3a7

    .line 1304
    const-string v4, "bad package service name"

    iput-object v4, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1305
    return-void

    .line 1307
    :cond_3a7
    const/16 v4, 0x9

    if-le v11, v4, :cond_3b0

    invoke-virtual {v1, v7, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3b1

    :cond_3b0
    const/4 v4, 0x0

    .line 1308
    .local v4, "processName":Ljava/lang/String;
    :goto_3b1
    if-eqz v10, :cond_3bc

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ServiceState;

    goto :goto_3bd

    :cond_3bc
    const/4 v5, 0x0

    :goto_3bd
    move-object/from16 v20, v5

    .line 1309
    .local v20, "serv":Lcom/android/internal/app/procstats/ServiceState;
    if-nez v20, :cond_3d5

    .line 1310
    move-object v5, v0

    .end local v0    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v5, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    new-instance v0, Lcom/android/internal/app/procstats/ServiceState;

    move-object/from16 v21, v5

    .end local v5    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v21, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    const/4 v5, 0x0

    move/from16 v25, v6

    move-object/from16 v6, v21

    const/16 v28, 0x0

    .end local v21    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v6, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v25, "NSRVS":I
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/ServiceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    move-object/from16 v21, v2

    .end local v2    # "pkgName":Ljava/lang/String;
    .local v21, "pkgName":Ljava/lang/String;
    move-object/from16 v20, v0

    goto :goto_3de

    .line 1309
    .end local v21    # "pkgName":Ljava/lang/String;
    .end local v25    # "NSRVS":I
    .restart local v0    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v2    # "pkgName":Ljava/lang/String;
    .local v6, "NSRVS":I
    :cond_3d5
    move-object/from16 v21, v2

    move/from16 v25, v6

    const/16 v28, 0x0

    move-object v6, v0

    .end local v0    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v2    # "pkgName":Ljava/lang/String;
    .local v6, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v21    # "pkgName":Ljava/lang/String;
    .restart local v25    # "NSRVS":I
    move-object/from16 v0, v20

    .line 1312
    .end local v20    # "serv":Lcom/android/internal/app/procstats/ServiceState;
    .local v0, "serv":Lcom/android/internal/app/procstats/ServiceState;
    :goto_3de
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ServiceState;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v2

    if-nez v2, :cond_3e5

    .line 1313
    return-void

    .line 1317
    :cond_3e5
    iget-object v2, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    .end local v0    # "serv":Lcom/android/internal/app/procstats/ServiceState;
    .end local v3    # "serviceName":Ljava/lang/String;
    .end local v4    # "processName":Ljava/lang/String;
    move-object v0, v6

    move-object/from16 v2, v21

    move/from16 v6, v25

    goto :goto_398

    .line 1319
    .end local v21    # "pkgName":Ljava/lang/String;
    .end local v25    # "NSRVS":I
    .local v0, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v2    # "pkgName":Ljava/lang/String;
    .local v6, "NSRVS":I
    :cond_3f0
    move-object/from16 v21, v2

    move/from16 v25, v6

    const/16 v28, 0x0

    move-object v6, v0

    .end local v0    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v2    # "pkgName":Ljava/lang/String;
    .local v6, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v21    # "pkgName":Ljava/lang/String;
    .restart local v25    # "NSRVS":I
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1320
    .local v0, "NASCS":I
    if-gez v0, :cond_413

    .line 1321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad package association count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1322
    return-void

    .line 1324
    :cond_413
    :goto_413
    if-lez v0, :cond_455

    .line 1325
    add-int/lit8 v20, v0, -0x1

    .line 1326
    .end local v0    # "NASCS":I
    .local v20, "NASCS":I
    invoke-virtual {v1, v7, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    .line 1327
    .local v3, "associationName":Ljava/lang/String;
    if-nez v3, :cond_422

    .line 1328
    const-string v0, "bad package association name"

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1329
    return-void

    .line 1331
    :cond_422
    invoke-virtual {v1, v7, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    .line 1332
    .restart local v4    # "processName":Ljava/lang/String;
    if-eqz v10, :cond_431

    .line 1333
    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState;

    goto :goto_432

    :cond_431
    const/4 v0, 0x0

    :goto_432
    move-object/from16 v26, v0

    .line 1334
    .local v26, "asc":Lcom/android/internal/app/procstats/AssociationState;
    if-nez v26, :cond_440

    .line 1335
    new-instance v0, Lcom/android/internal/app/procstats/AssociationState;

    const/4 v5, 0x0

    move-object v2, v6

    .end local v6    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v2, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/AssociationState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    move-object/from16 v26, v0

    goto :goto_443

    .line 1334
    .end local v2    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v6    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_440
    move-object v2, v6

    .end local v6    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v2    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object/from16 v0, v26

    .line 1338
    .end local v26    # "asc":Lcom/android/internal/app/procstats/AssociationState;
    .local v0, "asc":Lcom/android/internal/app/procstats/AssociationState;
    :goto_443
    invoke-virtual {v0, v1, v7, v11}, Lcom/android/internal/app/procstats/AssociationState;->readFromParcel(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    .line 1339
    .local v5, "errorMsg":Ljava/lang/String;
    if-eqz v5, :cond_44c

    .line 1340
    iput-object v5, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1341
    return-void

    .line 1345
    :cond_44c
    iget-object v6, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    .end local v0    # "asc":Lcom/android/internal/app/procstats/AssociationState;
    .end local v3    # "associationName":Ljava/lang/String;
    .end local v4    # "processName":Ljava/lang/String;
    .end local v5    # "errorMsg":Ljava/lang/String;
    move-object v6, v2

    move/from16 v0, v20

    goto :goto_413

    .line 1324
    .end local v2    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v20    # "NASCS":I
    .local v0, "NASCS":I
    .restart local v6    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_455
    move-object v2, v6

    .line 1347
    .end local v0    # "NASCS":I
    .end local v6    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v8    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v19    # "NPROCS":I
    .end local v23    # "vers":J
    .end local v25    # "NSRVS":I
    move/from16 v0, v16

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v8, v28

    move/from16 v6, v29

    goto/16 :goto_298

    .line 1237
    .end local v16    # "NVERS":I
    .end local v21    # "pkgName":Ljava/lang/String;
    .end local v22    # "uid":I
    .end local v29    # "NPROC":I
    .local v0, "NVERS":I
    .local v2, "pkgName":Ljava/lang/String;
    .local v3, "uid":I
    .local v6, "NPROC":I
    :cond_462
    move-object/from16 v21, v2

    move/from16 v22, v3

    move/from16 v29, v6

    move/from16 v28, v8

    .line 1348
    .end local v0    # "NVERS":I
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "uid":I
    .end local v6    # "NPROC":I
    .restart local v21    # "pkgName":Ljava/lang/String;
    .restart local v29    # "NPROC":I
    move v0, v15

    goto/16 :goto_25e

    .line 1225
    .end local v15    # "NUID":I
    .end local v21    # "pkgName":Ljava/lang/String;
    .end local v29    # "NPROC":I
    .local v0, "NUID":I
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v6    # "NPROC":I
    :cond_46d
    move-object/from16 v21, v2

    move/from16 v29, v6

    move/from16 v28, v8

    .line 1349
    .end local v0    # "NUID":I
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v6    # "NPROC":I
    .restart local v29    # "NPROC":I
    move v0, v9

    goto/16 :goto_235

    .line 1352
    .end local v9    # "NPKG":I
    .end local v29    # "NPROC":I
    .local v0, "NPKG":I
    .restart local v6    # "NPROC":I
    :cond_476
    move/from16 v29, v6

    .end local v6    # "NPROC":I
    .restart local v29    # "NPROC":I
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1353
    .local v2, "NPAGETYPES":I
    iget-object v3, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1354
    iget-object v3, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1355
    iget-object v3, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1356
    iget-object v3, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1357
    iget-object v3, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1358
    iget-object v3, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1359
    iget-object v3, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1360
    iget-object v3, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1361
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4a5
    if-ge v3, v2, :cond_4d2

    .line 1362
    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1363
    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1364
    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1365
    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a5

    .line 1368
    .end local v3    # "i":I
    :cond_4d2
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    .line 1371
    return-void
.end method

.method public blacklist reset()V
    .registers 3

    .line 518
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetCommon()V

    .line 519
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 520
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 521
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 522
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 523
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 525
    return-void
.end method

.method public blacklist resetSafely()V
    .registers 16

    .line 529
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetCommon()V

    .line 532
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 533
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 534
    .local v2, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "ip":I
    :goto_13
    if-ltz v3, :cond_31

    .line 535
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 536
    .local v5, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v4

    .local v6, "iu":I
    :goto_20
    if-ltz v6, :cond_2e

    .line 537
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/procstats/ProcessState;

    const/4 v8, 0x0

    iput v8, v7, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    .line 536
    add-int/lit8 v6, v6, -0x1

    goto :goto_20

    .line 534
    .end local v5    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    .end local v6    # "iu":I
    :cond_2e
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 543
    .end local v3    # "ip":I
    :cond_31
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 544
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 545
    .local v3, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .local v5, "ip":I
    :goto_3c
    if-ltz v5, :cond_11a

    .line 546
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 547
    .local v6, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    sub-int/2addr v7, v4

    .local v7, "iu":I
    :goto_49
    if-ltz v7, :cond_10d

    .line 548
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/LongSparseArray;

    .line 549
    .local v8, "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    sub-int/2addr v9, v4

    .local v9, "iv":I
    :goto_56
    if-ltz v9, :cond_100

    .line 550
    invoke-virtual {v8, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 551
    .local v10, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    sub-int/2addr v11, v4

    .local v11, "iproc":I
    :goto_65
    if-ltz v11, :cond_9b

    .line 552
    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    .line 553
    .local v12, "ps":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v13

    if-eqz v13, :cond_88

    .line 554
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->resetSafely(J)V

    .line 555
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v13

    iget v14, v13, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    add-int/2addr v14, v4

    iput v14, v13, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    .line 556
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v13

    iput-object v12, v13, Lcom/android/internal/app/procstats/ProcessState;->tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

    goto :goto_98

    .line 558
    :cond_88
    iget-object v13, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->makeDead()V

    .line 559
    iget-object v13, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 551
    .end local v12    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    :goto_98
    add-int/lit8 v11, v11, -0x1

    goto :goto_65

    .line 562
    .end local v11    # "iproc":I
    :cond_9b
    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    sub-int/2addr v11, v4

    .local v11, "isvc":I
    :goto_a2
    if-ltz v11, :cond_be

    .line 563
    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ServiceState;

    .line 564
    .local v12, "ss":Lcom/android/internal/app/procstats/ServiceState;
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    move-result v13

    if-eqz v13, :cond_b6

    .line 565
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->resetSafely(J)V

    goto :goto_bb

    .line 567
    :cond_b6
    iget-object v13, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 562
    .end local v12    # "ss":Lcom/android/internal/app/procstats/ServiceState;
    :goto_bb
    add-int/lit8 v11, v11, -0x1

    goto :goto_a2

    .line 570
    .end local v11    # "isvc":I
    :cond_be
    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    sub-int/2addr v11, v4

    .local v11, "iasc":I
    :goto_c5
    if-ltz v11, :cond_e1

    .line 571
    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/AssociationState;

    .line 572
    .local v12, "as":Lcom/android/internal/app/procstats/AssociationState;
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/AssociationState;->isInUse()Z

    move-result v13

    if-eqz v13, :cond_d9

    .line 573
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/procstats/AssociationState;->resetSafely(J)V

    goto :goto_de

    .line 575
    :cond_d9
    iget-object v13, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 570
    .end local v12    # "as":Lcom/android/internal/app/procstats/AssociationState;
    :goto_de
    add-int/lit8 v11, v11, -0x1

    goto :goto_c5

    .line 578
    .end local v11    # "iasc":I
    :cond_e1
    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-gtz v11, :cond_fc

    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-gtz v11, :cond_fc

    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    .line 579
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-gtz v11, :cond_fc

    .line 580
    invoke-virtual {v8, v9}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 549
    .end local v10    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_fc
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_56

    .line 583
    .end local v9    # "iv":I
    :cond_100
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    if-gtz v9, :cond_109

    .line 584
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->removeAt(I)V

    .line 547
    .end local v8    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_109
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_49

    .line 587
    .end local v7    # "iu":I
    :cond_10d
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-gtz v7, :cond_116

    .line 588
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 545
    .end local v6    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_116
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_3c

    .line 593
    .end local v5    # "ip":I
    :cond_11a
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .restart local v5    # "ip":I
    :goto_11f
    if-ltz v5, :cond_171

    .line 594
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 595
    .local v6, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    sub-int/2addr v7, v4

    .restart local v7    # "iu":I
    :goto_12c
    if-ltz v7, :cond_165

    .line 596
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/procstats/ProcessState;

    .line 597
    .local v8, "ps":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v9

    if-nez v9, :cond_146

    iget v9, v8, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    if-lez v9, :cond_13f

    goto :goto_146

    .line 613
    :cond_13f
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->makeDead()V

    .line 614
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_162

    .line 604
    :cond_146
    :goto_146
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->isActive()Z

    move-result v9

    if-nez v9, :cond_15f

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v9

    if-eqz v9, :cond_15f

    iget v9, v8, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    if-ne v9, v4, :cond_15f

    .line 606
    iget-object v8, v8, Lcom/android/internal/app/procstats/ProcessState;->tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 607
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->makeStandalone()V

    .line 608
    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_162

    .line 610
    :cond_15f
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->resetSafely(J)V

    .line 595
    .end local v8    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    :goto_162
    add-int/lit8 v7, v7, -0x1

    goto :goto_12c

    .line 617
    .end local v7    # "iu":I
    :cond_165
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-gtz v7, :cond_16e

    .line 618
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 593
    .end local v6    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_16e
    add-int/lit8 v5, v5, -0x1

    goto :goto_11f

    .line 622
    .end local v5    # "ip":I
    :cond_171
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .restart local v5    # "ip":I
    :goto_178
    if-ltz v5, :cond_19c

    .line 623
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/UidState;

    .line 624
    .local v4, "uidState":Lcom/android/internal/app/procstats/UidState;
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/UidState;->isInUse()Z

    move-result v6

    if-eqz v6, :cond_194

    .line 625
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/procstats/UidState;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/app/procstats/UidState;->resetSafely(J)V

    goto :goto_199

    .line 627
    :cond_194
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 622
    .end local v4    # "uidState":Lcom/android/internal/app/procstats/UidState;
    :goto_199
    add-int/lit8 v5, v5, -0x1

    goto :goto_178

    .line 631
    .end local v5    # "ip":I
    :cond_19c
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 633
    return-void
.end method

.method public blacklist updateFragmentation()V
    .registers 7

    .line 687
    const/4 v0, 0x0

    .line 689
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/pagetypeinfo"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    .line 690
    sget-object v1, Lcom/android/internal/app/procstats/ProcessStats;->sPageTypeRegex:Ljava/util/regex/Pattern;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 691
    .local v1, "matcher":Ljava/util/regex/Matcher;
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 692
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 693
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 694
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 696
    :goto_2a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2e} :catch_7a
    .catchall {:try_start_1 .. :try_end_2e} :catchall_78

    .line 697
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_39

    .line 698
    nop

    .line 719
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "line":Ljava/lang/String;
    nop

    .line 721
    :try_start_32
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    .line 723
    :goto_35
    goto :goto_38

    .line 722
    :catch_36
    move-exception v1

    goto :goto_35

    .line 726
    :goto_38
    return-void

    .line 700
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_39
    :try_start_39
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 701
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_77

    .line 702
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    .line 703
    .local v3, "node":Ljava/lang/Integer;
    if-nez v3, :cond_50

    .line 704
    goto :goto_2a

    .line 706
    :cond_50
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/procstats/ProcessStats;->splitAndParseNumbers(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_77} :catch_7a
    .catchall {:try_start_39 .. :try_end_77} :catchall_78

    .line 711
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "node":Ljava/lang/Integer;
    :cond_77
    goto :goto_2a

    .line 719
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :catchall_78
    move-exception v1

    goto :goto_97

    .line 712
    :catch_7a
    move-exception v1

    .line 713
    .local v1, "ex":Ljava/io/IOException;
    :try_start_7b
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 714
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 715
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 716
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_8f
    .catchall {:try_start_7b .. :try_end_8f} :catchall_78

    .line 719
    if-eqz v0, :cond_96

    .line 721
    :try_start_91
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    .line 723
    goto :goto_96

    .line 722
    :catch_95
    move-exception v2

    .line 717
    :cond_96
    :goto_96
    return-void

    .line 719
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_97
    if-eqz v0, :cond_9e

    .line 721
    :try_start_99
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    .line 723
    goto :goto_9e

    .line 722
    :catch_9d
    move-exception v2

    .line 725
    :cond_9e
    :goto_9e
    throw v1
.end method

.method public blacklist updateTrackingAssociationsLocked(IJ)V
    .registers 15
    .param p1, "curSeq"    # I
    .param p2, "now"    # J

    .line 1520
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1521
    .local v0, "NUM":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_e4

    .line 1522
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 1523
    .local v2, "act":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stopActiveIfNecessary(IJ)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1524
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_e0

    .line 1526
    :cond_1f
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getAssociationState()Lcom/android/internal/app/procstats/AssociationState;

    move-result-object v3

    .line 1527
    .local v3, "asc":Lcom/android/internal/app/procstats/AssociationState;
    const-string v4, "ProcessStats"

    if-nez v3, :cond_43

    .line 1528
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " shouldn\'t be in the tracking list."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    goto/16 :goto_e0

    .line 1531
    :cond_43
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/AssociationState;->getProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v5

    .line 1532
    .local v5, "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v5, :cond_c0

    .line 1533
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->getCombinedState()I

    move-result v6

    rem-int/lit8 v6, v6, 0x10

    .line 1534
    .local v6, "procState":I
    iget v7, v2, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    if-ne v7, v6, :cond_57

    .line 1535
    invoke-virtual {v2, p2, p3}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->startActive(J)V

    goto :goto_bf

    .line 1537
    :cond_57
    invoke-virtual {v2, p2, p3}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stopActive(J)V

    .line 1538
    iget v7, v2, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    if-ge v7, v6, :cond_bf

    .line 1539
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1540
    .local v7, "nowUptime":J
    iget-wide v9, p0, Lcom/android/internal/app/procstats/ProcessStats;->mNextInverseProcStateWarningUptime:J

    cmp-long v9, v9, v7

    if-lez v9, :cond_6f

    .line 1541
    iget v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSkippedInverseProcStateWarningCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSkippedInverseProcStateWarningCount:I

    goto :goto_bf

    .line 1545
    :cond_6f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tracking association "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " whose proc state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is better than process "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " proc state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSkippedInverseProcStateWarningCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " skipped)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSkippedInverseProcStateWarningCount:I

    .line 1551
    const-wide/16 v9, 0x2710

    add-long/2addr v9, v7

    iput-wide v9, p0, Lcom/android/internal/app/procstats/ProcessStats;->mNextInverseProcStateWarningUptime:J

    .line 1556
    .end local v6    # "procState":I
    .end local v7    # "nowUptime":J
    :cond_bf
    :goto_bf
    goto :goto_e0

    .line 1558
    :cond_c0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tracking association without process: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    .end local v2    # "act":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .end local v3    # "asc":Lcom/android/internal/app/procstats/AssociationState;
    .end local v5    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :goto_e0
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_8

    .line 1563
    .end local v1    # "i":I
    :cond_e4
    return-void
.end method

.method blacklist writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "name"    # Ljava/lang/String;

    .line 823
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 824
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_12

    .line 825
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    return-void

    .line 828
    :cond_12
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 829
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    not-int v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 832
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 858
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 859
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;JI)V
    .registers 28
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J
    .param p4, "flags"    # I

    .line 863
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const v4, 0x50535454

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 864
    const/16 v4, 0x29

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 866
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 869
    const/16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    new-instance v4, Landroid/util/ArrayMap;

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 874
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 875
    .local v4, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 876
    .local v5, "NPROC":I
    const/4 v6, 0x0

    .local v6, "ip":I
    :goto_40
    if-ge v6, v5, :cond_5e

    .line 877
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    .line 878
    .local v7, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 879
    .local v8, "NUID":I
    const/4 v9, 0x0

    .local v9, "iu":I
    :goto_4d
    if-ge v9, v8, :cond_5b

    .line 880
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v10, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    .line 879
    add-int/lit8 v9, v9, 0x1

    goto :goto_4d

    .line 876
    .end local v7    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    .end local v8    # "NUID":I
    .end local v9    # "iu":I
    :cond_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 883
    .end local v6    # "ip":I
    :cond_5e
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 884
    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    .line 885
    .local v6, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 886
    .local v7, "NPKG":I
    const/4 v8, 0x0

    .local v8, "ip":I
    :goto_69
    if-ge v8, v7, :cond_10a

    .line 887
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 888
    .local v9, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 889
    .local v10, "NUID":I
    const/4 v11, 0x0

    .local v11, "iu":I
    :goto_76
    if-ge v11, v10, :cond_102

    .line 890
    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/LongSparseArray;

    .line 891
    .local v12, "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v13

    .line 892
    .local v13, "NVERS":I
    const/4 v14, 0x0

    .local v14, "iv":I
    :goto_83
    if-ge v14, v13, :cond_fa

    .line 893
    invoke-virtual {v12, v14}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 894
    .local v15, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move/from16 v16, v8

    .end local v8    # "ip":I
    .local v16, "ip":I
    iget-object v8, v15, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 895
    .local v8, "NPROCS":I
    const/16 v17, 0x0

    move-object/from16 v18, v9

    move/from16 v9, v17

    .local v9, "iproc":I
    .local v18, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :goto_99
    if-ge v9, v8, :cond_b5

    .line 896
    move/from16 v17, v8

    .end local v8    # "NPROCS":I
    .local v17, "NPROCS":I
    iget-object v8, v15, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/procstats/ProcessState;

    .line 897
    .local v8, "proc":Lcom/android/internal/app/procstats/ProcessState;
    move/from16 v19, v9

    .end local v9    # "iproc":I
    .local v19, "iproc":I
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v9

    if-eq v9, v8, :cond_b0

    .line 898
    invoke-virtual {v8, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    .line 895
    .end local v8    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_b0
    add-int/lit8 v9, v19, 0x1

    move/from16 v8, v17

    .end local v19    # "iproc":I
    .restart local v9    # "iproc":I
    goto :goto_99

    .end local v17    # "NPROCS":I
    .local v8, "NPROCS":I
    :cond_b5
    move/from16 v17, v8

    move/from16 v19, v9

    .line 901
    .end local v8    # "NPROCS":I
    .end local v9    # "iproc":I
    .restart local v17    # "NPROCS":I
    iget-object v8, v15, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 902
    .local v8, "NSRVS":I
    const/4 v9, 0x0

    .local v9, "isvc":I
    :goto_c0
    if-ge v9, v8, :cond_d4

    .line 903
    move/from16 v19, v8

    .end local v8    # "NSRVS":I
    .local v19, "NSRVS":I
    iget-object v8, v15, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->commitStateTime(J)V

    .line 902
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v19

    goto :goto_c0

    .end local v19    # "NSRVS":I
    .restart local v8    # "NSRVS":I
    :cond_d4
    move/from16 v19, v8

    .line 905
    .end local v8    # "NSRVS":I
    .end local v9    # "isvc":I
    .restart local v19    # "NSRVS":I
    iget-object v8, v15, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 906
    .local v8, "NASCS":I
    const/4 v9, 0x0

    .local v9, "iasc":I
    :goto_dd
    if-ge v9, v8, :cond_f1

    .line 907
    move/from16 v20, v8

    .end local v8    # "NASCS":I
    .local v20, "NASCS":I
    iget-object v8, v15, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/procstats/AssociationState;

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/app/procstats/AssociationState;->commitStateTime(J)V

    .line 906
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v20

    goto :goto_dd

    .end local v20    # "NASCS":I
    .restart local v8    # "NASCS":I
    :cond_f1
    move/from16 v20, v8

    .line 892
    .end local v8    # "NASCS":I
    .end local v9    # "iasc":I
    .end local v15    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v17    # "NPROCS":I
    .end local v19    # "NSRVS":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v16

    move-object/from16 v9, v18

    goto :goto_83

    .end local v16    # "ip":I
    .end local v18    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .local v8, "ip":I
    .local v9, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_fa
    move/from16 v16, v8

    move-object/from16 v18, v9

    .line 889
    .end local v8    # "ip":I
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v12    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v13    # "NVERS":I
    .end local v14    # "iv":I
    .restart local v16    # "ip":I
    .restart local v18    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_76

    .end local v16    # "ip":I
    .end local v18    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v8    # "ip":I
    .restart local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_102
    move/from16 v16, v8

    move-object/from16 v18, v9

    .line 886
    .end local v8    # "ip":I
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v10    # "NUID":I
    .end local v11    # "iu":I
    .restart local v16    # "ip":I
    add-int/lit8 v8, v16, 0x1

    .end local v16    # "ip":I
    .restart local v8    # "ip":I
    goto/16 :goto_69

    :cond_10a
    move/from16 v16, v8

    .line 913
    .end local v8    # "ip":I
    iget v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 915
    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 916
    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 917
    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 918
    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 919
    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 920
    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 921
    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 922
    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 923
    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 924
    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 925
    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 926
    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 927
    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 928
    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 929
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 930
    iget-boolean v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    iget v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-virtual {v8, v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 935
    iget v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_184

    .line 936
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    aget-wide v10, v8, v9

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    sub-long v12, v2, v12

    add-long/2addr v10, v12

    aput-wide v10, v8, v9

    .line 937
    iput-wide v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 939
    :cond_184
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    array-length v9, v9

    invoke-direct {v0, v1, v8, v9}, Lcom/android/internal/app/procstats/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 941
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v8, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 943
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 944
    .local v8, "numOfUids":I
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    const/4 v9, 0x0

    .local v9, "ip":I
    :goto_19b
    if-ge v9, v8, :cond_1b4

    .line 946
    iget-object v10, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 947
    iget-object v10, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/UidState;

    invoke-virtual {v10, v1, v2, v3}, Lcom/android/internal/app/procstats/UidState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 945
    add-int/lit8 v9, v9, 0x1

    goto :goto_19b

    .line 950
    .end local v9    # "ip":I
    :cond_1b4
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    const/4 v9, 0x0

    .restart local v9    # "ip":I
    :goto_1b8
    if-ge v9, v5, :cond_1f7

    .line 952
    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 953
    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 954
    .local v10, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 955
    .local v11, "NUID":I
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    const/4 v12, 0x0

    .local v12, "iu":I
    :goto_1d1
    if-ge v12, v11, :cond_1f4

    .line 957
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 958
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/procstats/ProcessState;

    .line 959
    .local v13, "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v1, v14}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 960
    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v14

    invoke-virtual {v1, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 961
    invoke-virtual {v13, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 956
    .end local v13    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    add-int/lit8 v12, v12, 0x1

    goto :goto_1d1

    .line 951
    .end local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    .end local v11    # "NUID":I
    .end local v12    # "iu":I
    :cond_1f4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b8

    .line 964
    .end local v9    # "ip":I
    :cond_1f7
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 965
    const/4 v9, 0x0

    .restart local v9    # "ip":I
    :goto_1fb
    if-ge v9, v7, :cond_30d

    .line 966
    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 967
    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 968
    .local v10, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 969
    .restart local v11    # "NUID":I
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 970
    const/4 v12, 0x0

    .restart local v12    # "iu":I
    :goto_214
    if-ge v12, v11, :cond_303

    .line 971
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 972
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/LongSparseArray;

    .line 973
    .local v13, "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual {v13}, Landroid/util/LongSparseArray;->size()I

    move-result v14

    .line 974
    .local v14, "NVERS":I
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    const/4 v15, 0x0

    .local v15, "iv":I
    :goto_22b
    if-ge v15, v14, :cond_2f9

    .line 976
    move-object/from16 v16, v4

    move/from16 v17, v5

    .end local v4    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .end local v5    # "NPROC":I
    .local v16, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .local v17, "NPROC":I
    invoke-virtual {v13, v15}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 977
    invoke-virtual {v13, v15}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 978
    .local v4, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 979
    .local v5, "NPROCS":I
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 980
    const/16 v18, 0x0

    move-object/from16 v19, v6

    move/from16 v6, v18

    .local v6, "iproc":I
    .local v19, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :goto_24d
    if-ge v6, v5, :cond_27d

    .line 981
    move/from16 v18, v5

    .end local v5    # "NPROCS":I
    .local v18, "NPROCS":I
    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 982
    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessState;

    .line 983
    .local v5, "proc":Lcom/android/internal/app/procstats/ProcessState;
    move/from16 v20, v6

    .end local v6    # "iproc":I
    .local v20, "iproc":I
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v6

    if-ne v6, v5, :cond_271

    .line 985
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_278

    .line 988
    :cond_271
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 989
    invoke-virtual {v5, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 980
    .end local v5    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :goto_278
    add-int/lit8 v6, v20, 0x1

    move/from16 v5, v18

    .end local v20    # "iproc":I
    .restart local v6    # "iproc":I
    goto :goto_24d

    .end local v18    # "NPROCS":I
    .local v5, "NPROCS":I
    :cond_27d
    move/from16 v18, v5

    move/from16 v20, v6

    .line 992
    .end local v5    # "NPROCS":I
    .end local v6    # "iproc":I
    .restart local v18    # "NPROCS":I
    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 993
    .local v5, "NSRVS":I
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 994
    const/4 v6, 0x0

    .local v6, "isvc":I
    :goto_28b
    if-ge v6, v5, :cond_2b3

    .line 995
    move/from16 v20, v5

    .end local v5    # "NSRVS":I
    .local v20, "NSRVS":I
    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 996
    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ServiceState;

    .line 997
    .local v5, "svc":Lcom/android/internal/app/procstats/ServiceState;
    move/from16 v21, v6

    .end local v6    # "isvc":I
    .local v21, "isvc":I
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 998
    invoke-virtual {v5, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 994
    .end local v5    # "svc":Lcom/android/internal/app/procstats/ServiceState;
    add-int/lit8 v6, v21, 0x1

    move/from16 v5, v20

    .end local v21    # "isvc":I
    .restart local v6    # "isvc":I
    goto :goto_28b

    .end local v20    # "NSRVS":I
    .local v5, "NSRVS":I
    :cond_2b3
    move/from16 v20, v5

    move/from16 v21, v6

    .line 1000
    .end local v5    # "NSRVS":I
    .end local v6    # "isvc":I
    .restart local v20    # "NSRVS":I
    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1001
    .local v5, "NASCS":I
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    const/4 v6, 0x0

    .local v6, "iasc":I
    :goto_2c1
    if-ge v6, v5, :cond_2eb

    .line 1003
    move/from16 v21, v5

    .end local v5    # "NASCS":I
    .local v21, "NASCS":I
    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1004
    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/AssociationState;

    .line 1005
    .local v5, "asc":Lcom/android/internal/app/procstats/AssociationState;
    move-object/from16 v22, v4

    .end local v4    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v22, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1006
    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/AssociationState;->writeToParcel(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;J)V

    .line 1002
    .end local v5    # "asc":Lcom/android/internal/app/procstats/AssociationState;
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v21

    move-object/from16 v4, v22

    goto :goto_2c1

    .end local v21    # "NASCS":I
    .end local v22    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v4    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .local v5, "NASCS":I
    :cond_2eb
    move-object/from16 v22, v4

    move/from16 v21, v5

    .line 975
    .end local v4    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v5    # "NASCS":I
    .end local v6    # "iasc":I
    .end local v18    # "NPROCS":I
    .end local v20    # "NSRVS":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v19

    goto/16 :goto_22b

    .end local v16    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .end local v17    # "NPROC":I
    .end local v19    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .local v4, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .local v5, "NPROC":I
    .local v6, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_2f9
    move-object/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v19, v6

    .line 970
    .end local v4    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .end local v5    # "NPROC":I
    .end local v6    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v13    # "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v14    # "NVERS":I
    .end local v15    # "iv":I
    .restart local v16    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .restart local v17    # "NPROC":I
    .restart local v19    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_214

    .end local v16    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .end local v17    # "NPROC":I
    .end local v19    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v4    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .restart local v5    # "NPROC":I
    .restart local v6    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_303
    move-object/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v19, v6

    .line 965
    .end local v4    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .end local v5    # "NPROC":I
    .end local v6    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v11    # "NUID":I
    .end local v12    # "iu":I
    .restart local v16    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .restart local v17    # "NPROC":I
    .restart local v19    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1fb

    .end local v16    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .end local v17    # "NPROC":I
    .end local v19    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v4    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .restart local v5    # "NPROC":I
    .restart local v6    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_30d
    move-object/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v19, v6

    .line 1013
    .end local v4    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .end local v5    # "NPROC":I
    .end local v6    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v9    # "ip":I
    .restart local v16    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    .restart local v17    # "NPROC":I
    .restart local v19    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1014
    .local v4, "NPAGETYPES":I
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1015
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_31d
    if-ge v5, v4, :cond_352

    .line 1016
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1017
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1018
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1019
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1015
    add-int/lit8 v5, v5, 0x1

    goto :goto_31d

    .line 1022
    .end local v5    # "i":I
    :cond_352
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 1023
    return-void
.end method
