.class public final Lcom/android/internal/app/procstats/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/ProcessStats$1;,
        Lcom/android/internal/app/procstats/ProcessStats$PackageState;,
        Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;,
        Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;,
        Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    }
.end annotation


# static fields
.field public static final ADJ_COUNT:I = 0x8

.field public static final ADJ_MEM_FACTOR_COUNT:I = 0x4

.field public static final ADJ_MEM_FACTOR_CRITICAL:I = 0x3

.field public static final ADJ_MEM_FACTOR_LOW:I = 0x2

.field public static final ADJ_MEM_FACTOR_MODERATE:I = 0x1

.field public static final ADJ_MEM_FACTOR_NORMAL:I = 0x0

.field public static final ADJ_NOTHING:I = -0x1

.field public static final ADJ_SCREEN_MOD:I = 0x4

.field public static final ADJ_SCREEN_OFF:I = 0x0

.field public static final ADJ_SCREEN_ON:I = 0x4

.field public static final ALL_MEM_ADJ:[I

.field public static final ALL_PROC_STATES:[I

.field public static final ALL_SCREEN_ADJ:[I

.field public static final BACKGROUND_PROC_STATES:[I

.field static final BAD_TABLE:[I

.field public static COMMIT_PERIOD:J = 0x0L

.field public static COMMIT_UPTIME_PERIOD:J = 0x0L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/app/procstats/ProcessStats;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field static final DEBUG_PARCEL:Z = false

.field public static final FLAG_COMPLETE:I = 0x1

.field public static final FLAG_SHUTDOWN:I = 0x2

.field public static final FLAG_SYSPROPS:I = 0x4

.field private static final MAGIC:I = 0x50535454

.field public static final NON_CACHED_PROC_STATES:[I

.field private static final PARCEL_VERSION:I = 0x15

.field public static final PSS_AVERAGE:I = 0x2

.field public static final PSS_COUNT:I = 0x7

.field public static final PSS_MAXIMUM:I = 0x3

.field public static final PSS_MINIMUM:I = 0x1

.field public static final PSS_SAMPLE_COUNT:I = 0x0

.field public static final PSS_USS_AVERAGE:I = 0x5

.field public static final PSS_USS_MAXIMUM:I = 0x6

.field public static final PSS_USS_MINIMUM:I = 0x4

.field public static final SERVICE_NAME:Ljava/lang/String; = "procstats"

.field public static final STATE_BACKUP:I = 0x4

.field public static final STATE_CACHED_ACTIVITY:I = 0xb

.field public static final STATE_CACHED_ACTIVITY_CLIENT:I = 0xc

.field public static final STATE_CACHED_EMPTY:I = 0xd

.field public static final STATE_COUNT:I = 0xe

.field public static final STATE_HEAVY_WEIGHT:I = 0x5

.field public static final STATE_HOME:I = 0x9

.field public static final STATE_IMPORTANT_BACKGROUND:I = 0x3

.field public static final STATE_IMPORTANT_FOREGROUND:I = 0x2

.field public static final STATE_LAST_ACTIVITY:I = 0xa

.field public static final STATE_NOTHING:I = -0x1

.field public static final STATE_PERSISTENT:I = 0x0

.field public static final STATE_RECEIVER:I = 0x8

.field public static final STATE_SERVICE:I = 0x6

.field public static final STATE_SERVICE_RESTARTING:I = 0x7

.field public static final STATE_TOP:I = 0x1

.field public static final SYS_MEM_USAGE_CACHED_AVERAGE:I = 0x2

.field public static final SYS_MEM_USAGE_CACHED_MAXIMUM:I = 0x3

.field public static final SYS_MEM_USAGE_CACHED_MINIMUM:I = 0x1

.field public static final SYS_MEM_USAGE_COUNT:I = 0x10

.field public static final SYS_MEM_USAGE_FREE_AVERAGE:I = 0x5

.field public static final SYS_MEM_USAGE_FREE_MAXIMUM:I = 0x6

.field public static final SYS_MEM_USAGE_FREE_MINIMUM:I = 0x4

.field public static final SYS_MEM_USAGE_KERNEL_AVERAGE:I = 0xb

.field public static final SYS_MEM_USAGE_KERNEL_MAXIMUM:I = 0xc

.field public static final SYS_MEM_USAGE_KERNEL_MINIMUM:I = 0xa

.field public static final SYS_MEM_USAGE_NATIVE_AVERAGE:I = 0xe

.field public static final SYS_MEM_USAGE_NATIVE_MAXIMUM:I = 0xf

.field public static final SYS_MEM_USAGE_NATIVE_MINIMUM:I = 0xd

.field public static final SYS_MEM_USAGE_SAMPLE_COUNT:I = 0x0

.field public static final SYS_MEM_USAGE_ZRAM_AVERAGE:I = 0x8

.field public static final SYS_MEM_USAGE_ZRAM_MAXIMUM:I = 0x9

.field public static final SYS_MEM_USAGE_ZRAM_MINIMUM:I = 0x7

.field public static final TAG:Ljava/lang/String; = "ProcessStats"

.field private static final sPageTypeRegex:Ljava/util/regex/Pattern;


# instance fields
.field mCommonStringToIndex:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mFlags:I

.field mHasSwappedOutPss:Z

.field mIndexToCommonString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMemFactor:I

.field public final mMemFactorDurations:[J

.field public final mPackages:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/app/procstats/ProcessStats$PackageState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPageTypeLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPageTypeSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private final mPageTypeZones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field public mReadError:Ljava/lang/String;

.field mRunning:Z

.field mRuntime:Ljava/lang/String;

.field public mStartTime:J

.field public final mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

.field public final mSysMemUsageArgs:[J

.field public final mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

.field public mTimePeriodEndRealtime:J

.field public mTimePeriodEndUptime:J

.field public mTimePeriodStartClock:J

.field public mTimePeriodStartClockStr:Ljava/lang/String;

.field public mTimePeriodStartRealtime:J

.field public mTimePeriodStartUptime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 68
    const-wide/32 v0, 0xa4cb80

    #@4
    sput-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    #@6
    .line 73
    const-wide/32 v0, 0x36ee80

    #@9
    sput-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    #@b
    .line 135
    const/4 v0, 0x1

    #@c
    const/4 v1, 0x2

    #@d
    const/4 v2, 0x3

    #@e
    .line 134
    filled-new-array {v3, v0, v1, v2}, [I

    #@11
    move-result-object v0

    #@12
    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    #@14
    .line 137
    const/4 v0, 0x4

    #@15
    filled-new-array {v3, v0}, [I

    #@18
    move-result-object v0

    #@19
    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    #@1b
    .line 139
    const/16 v0, 0x9

    #@1d
    new-array v0, v0, [I

    #@1f
    fill-array-data v0, :array_0

    #@22
    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    #@24
    .line 145
    const/4 v0, 0x7

    #@25
    new-array v0, v0, [I

    #@27
    fill-array-data v0, :array_1

    #@2a
    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->BACKGROUND_PROC_STATES:[I

    #@2c
    .line 150
    const/16 v0, 0xe

    #@2e
    new-array v0, v0, [I

    #@30
    fill-array-data v0, :array_2

    #@33
    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    #@35
    .line 196
    const-string/jumbo v0, "^Node\\s+(\\d+),.*. type\\s+(\\w+)\\s+([\\s\\d]+?)\\s*$"

    #@38
    .line 195
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@3b
    move-result-object v0

    #@3c
    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->sPageTypeRegex:Ljava/util/regex/Pattern;

    #@3e
    .line 322
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$1;

    #@40
    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessStats$1;-><init>()V

    #@43
    .line 321
    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    #@45
    .line 527
    new-array v0, v3, [I

    #@47
    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->BAD_TABLE:[I

    #@49
    .line 59
    return-void

    #@4a
    .line 139
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    #@60
    .line 145
    :array_1
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    #@72
    .line 150
    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 167
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    #@5
    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    #@8
    .line 166
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@a
    .line 168
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    #@c
    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@11
    .line 170
    const/16 v0, 0x8

    #@13
    new-array v0, v0, [J

    #@15
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    #@17
    .line 171
    const/4 v0, -0x1

    #@18
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    #@1a
    .line 184
    new-instance v0, Lcom/android/internal/app/procstats/SparseMappingTable;

    #@1c
    invoke-direct {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@21
    .line 186
    const/16 v0, 0x10

    #@23
    new-array v0, v0, [J

    #@25
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    #@27
    .line 187
    new-instance v0, Lcom/android/internal/app/procstats/SysMemUsageTable;

    #@29
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@2b
    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    #@2e
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    #@30
    .line 197
    new-instance v0, Ljava/util/ArrayList;

    #@32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@35
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    #@37
    .line 198
    new-instance v0, Ljava/util/ArrayList;

    #@39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@3c
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    #@3e
    .line 199
    new-instance v0, Ljava/util/ArrayList;

    #@40
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@43
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    #@45
    .line 214
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->reset()V

    #@48
    .line 215
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V

    #@4b
    .line 213
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "running"    # Z

    #@0
    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 167
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    #@5
    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    #@8
    .line 166
    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@a
    .line 168
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    #@c
    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    #@f
    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@11
    .line 170
    const/16 v1, 0x8

    #@13
    new-array v1, v1, [J

    #@15
    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    #@17
    .line 171
    const/4 v1, -0x1

    #@18
    iput v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    #@1a
    .line 184
    new-instance v1, Lcom/android/internal/app/procstats/SparseMappingTable;

    #@1c
    invoke-direct {v1}, Lcom/android/internal/app/procstats/SparseMappingTable;-><init>()V

    #@1f
    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@21
    .line 186
    const/16 v1, 0x10

    #@23
    new-array v1, v1, [J

    #@25
    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    #@27
    .line 187
    new-instance v1, Lcom/android/internal/app/procstats/SysMemUsageTable;

    #@29
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@2b
    invoke-direct {v1, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    #@2e
    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    #@30
    .line 197
    new-instance v1, Ljava/util/ArrayList;

    #@32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@35
    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    #@37
    .line 198
    new-instance v1, Ljava/util/ArrayList;

    #@39
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@3c
    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    #@3e
    .line 199
    new-instance v1, Ljava/util/ArrayList;

    #@40
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@43
    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    #@45
    .line 202
    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    #@47
    .line 203
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->reset()V

    #@4a
    .line 204
    if-eqz p1, :cond_0

    #@4c
    .line 207
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    #@4e
    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    #@51
    .line 208
    .local v0, "info":Landroid/os/Debug$MemoryInfo;
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@54
    move-result v1

    #@55
    invoke-static {v1, v0}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V

    #@58
    .line 209
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss()Z

    #@5b
    move-result v1

    #@5c
    iput-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    #@5e
    .line 201
    .end local v0    # "info":Landroid/os/Debug$MemoryInfo;
    :cond_0
    return-void
.end method

.method private buildTimePeriodStartClockStr()V
    .locals 4

    #@0
    .prologue
    .line 523
    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    #@3
    .line 524
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    #@5
    .line 523
    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    #@f
    .line 522
    return-void
.end method

.method private dumpFragmentationLocked(Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 1417
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@5
    .line 1418
    const-string/jumbo v5, "Available pages by page size:"

    #@8
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b
    .line 1419
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v1

    #@11
    .line 1420
    .local v1, "NPAGETYPES":I
    const/4 v2, 0x0

    #@12
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@14
    .line 1421
    const-string/jumbo v5, "Zone %3d  %14s "

    #@17
    const/4 v6, 0x2

    #@18
    new-array v6, v6, [Ljava/lang/Object;

    #@1a
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v7

    #@20
    aput-object v7, v6, v8

    #@22
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v7

    #@28
    aput-object v7, v6, v9

    #@2a
    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@2d
    .line 1422
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v4

    #@33
    check-cast v4, [I

    #@35
    .line 1423
    .local v4, "sizes":[I
    if-nez v4, :cond_0

    #@37
    const/4 v0, 0x0

    #@38
    .line 1424
    .local v0, "N":I
    :goto_1
    const/4 v3, 0x0

    #@39
    .local v3, "j":I
    :goto_2
    if-ge v3, v0, :cond_1

    #@3b
    .line 1425
    const-string/jumbo v5, "%6d"

    #@3e
    new-array v6, v9, [Ljava/lang/Object;

    #@40
    aget v7, v4, v3

    #@42
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45
    move-result-object v7

    #@46
    aput-object v7, v6, v8

    #@48
    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@4b
    .line 1424
    add-int/lit8 v3, v3, 0x1

    #@4d
    goto :goto_2

    #@4e
    .line 1423
    .end local v0    # "N":I
    .end local v3    # "j":I
    :cond_0
    array-length v0, v4

    #@4f
    .restart local v0    # "N":I
    goto :goto_1

    #@50
    .line 1427
    .restart local v3    # "j":I
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@53
    .line 1420
    add-int/lit8 v2, v2, 0x1

    #@55
    goto :goto_0

    #@56
    .line 1416
    .end local v0    # "N":I
    .end local v3    # "j":I
    .end local v4    # "sizes":[I
    :cond_2
    return-void
.end method

.method private readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "val"    # I
    .param p3, "what"    # Ljava/lang/String;

    #@0
    .prologue
    .line 840
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .local v0, "got":I
    if-eq v0, p2, :cond_0

    #@6
    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "bad "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, ": "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@27
    .line 842
    const/4 v1, 0x0

    #@28
    return v1

    #@29
    .line 844
    :cond_0
    const/4 v1, 0x1

    #@2a
    return v1
.end method

.method private readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "version"    # I

    #@0
    .prologue
    .line 680
    const/16 v2, 0x9

    #@2
    if-gt p2, v2, :cond_0

    #@4
    .line 681
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    return-object v2

    #@9
    .line 683
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    .line 684
    .local v0, "index":I
    if-ltz v0, :cond_1

    #@f
    .line 685
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/lang/String;

    #@17
    return-object v2

    #@18
    .line 687
    :cond_1
    not-int v0, v0

    #@19
    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 689
    .local v1, "name":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@22
    move-result v2

    #@23
    if-gt v2, v0, :cond_2

    #@25
    .line 690
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    #@27
    const/4 v3, 0x0

    #@28
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    goto :goto_0

    #@2c
    .line 692
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 693
    return-object v1
.end method

.method private readCompactedLongArray(Landroid/os/Parcel;I[JI)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "version"    # I
    .param p3, "array"    # [J
    .param p4, "num"    # I

    #@0
    .prologue
    .line 643
    const/16 v4, 0xa

    #@2
    if-gt p2, v4, :cond_0

    #@4
    .line 644
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->readLongArray([J)V

    #@7
    .line 645
    return-void

    #@8
    .line 647
    :cond_0
    array-length v0, p3

    #@9
    .line 648
    .local v0, "alen":I
    if-le p4, v0, :cond_1

    #@b
    .line 649
    new-instance v4, Ljava/lang/RuntimeException;

    #@d
    new-instance v5, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v6, "bad array lengths: got "

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    const-string/jumbo v6, " array is "

    #@20
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v4

    #@30
    .line 652
    :cond_1
    const/4 v2, 0x0

    #@31
    .local v2, "i":I
    :goto_0
    if-ge v2, p4, :cond_3

    #@33
    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v3

    #@37
    .line 654
    .local v3, "val":I
    if-ltz v3, :cond_2

    #@39
    .line 655
    int-to-long v4, v3

    #@3a
    aput-wide v4, p3, v2

    #@3c
    .line 652
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 657
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v1

    #@43
    .line 658
    .local v1, "bottom":I
    not-int v4, v3

    #@44
    int-to-long v4, v4

    #@45
    const/16 v6, 0x20

    #@47
    shl-long/2addr v4, v6

    #@48
    int-to-long v6, v1

    #@49
    or-long/2addr v4, v6

    #@4a
    aput-wide v4, p3, v2

    #@4c
    goto :goto_1

    #@4d
    .line 661
    .end local v1    # "bottom":I
    .end local v3    # "val":I
    :cond_3
    :goto_2
    if-ge v2, v0, :cond_4

    #@4f
    .line 662
    const-wide/16 v4, 0x0

    #@51
    aput-wide v4, p3, v2

    #@53
    .line 663
    add-int/lit8 v2, v2, 0x1

    #@55
    goto :goto_2

    #@56
    .line 642
    :cond_4
    return-void
.end method

.method static readFully(Ljava/io/InputStream;[I)[B
    .locals 7
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "outLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 848
    const/4 v4, 0x0

    #@2
    .line 849
    .local v4, "pos":I
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    #@5
    move-result v2

    #@6
    .line 850
    .local v2, "initialAvail":I
    if-lez v2, :cond_1

    #@8
    add-int/lit8 v5, v2, 0x1

    #@a
    :goto_0
    new-array v1, v5, [B

    #@c
    .line 852
    .local v1, "data":[B
    :cond_0
    :goto_1
    array-length v5, v1

    #@d
    sub-int/2addr v5, v4

    #@e
    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    #@11
    move-result v0

    #@12
    .line 855
    .local v0, "amt":I
    if-gez v0, :cond_2

    #@14
    .line 858
    aput v4, p1, v6

    #@16
    .line 859
    return-object v1

    #@17
    .line 850
    .end local v0    # "amt":I
    .end local v1    # "data":[B
    :cond_1
    const/16 v5, 0x4000

    #@19
    goto :goto_0

    #@1a
    .line 861
    .restart local v0    # "amt":I
    .restart local v1    # "data":[B
    :cond_2
    add-int/2addr v4, v0

    #@1b
    .line 862
    array-length v5, v1

    #@1c
    if-lt v4, v5, :cond_0

    #@1e
    .line 863
    add-int/lit16 v5, v4, 0x4000

    #@20
    new-array v3, v5, [B

    #@22
    .line 866
    .local v3, "newData":[B
    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@25
    .line 867
    move-object v1, v3

    #@26
    goto :goto_1
.end method

.method private resetCommon()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5
    move-result-wide v0

    #@6
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    #@8
    .line 496
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->buildTimePeriodStartClockStr()V

    #@b
    .line 497
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@e
    move-result-wide v0

    #@f
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    #@11
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    #@13
    .line 498
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@16
    move-result-wide v0

    #@17
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    #@19
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    #@1b
    .line 499
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@1d
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->reset()V

    #@20
    .line 500
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    #@22
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    #@25
    .line 501
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    #@27
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->resetTable()V

    #@2a
    .line 502
    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    #@2c
    .line 503
    const/4 v0, 0x0

    #@2d
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@2f
    .line 504
    const/4 v0, 0x0

    #@30
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    #@32
    .line 505
    const/4 v0, 0x1

    #@33
    invoke-virtual {p0, v0}, Lcom/android/internal/app/procstats/ProcessStats;->evaluateSystemProperties(Z)Z

    #@36
    .line 506
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->updateFragmentation()V

    #@39
    .line 494
    return-void
.end method

.method private static splitAndParseNumbers(Ljava/lang/String;)[I
    .locals 12
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v11, 0x39

    #@2
    const/16 v10, 0x30

    #@4
    .line 581
    const/4 v3, 0x0

    #@5
    .line 582
    .local v3, "digit":Z
    const/4 v2, 0x0

    #@6
    .line 583
    .local v2, "count":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    .line 585
    .local v0, "N":I
    const/4 v4, 0x0

    #@b
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    #@d
    .line 586
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v1

    #@11
    .line 587
    .local v1, "c":C
    if-lt v1, v10, :cond_1

    #@13
    if-gt v1, v11, :cond_1

    #@15
    .line 588
    if-nez v3, :cond_0

    #@17
    .line 589
    const/4 v3, 0x1

    #@18
    .line 590
    add-int/lit8 v2, v2, 0x1

    #@1a
    .line 585
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 593
    :cond_1
    const/4 v3, 0x0

    #@1e
    goto :goto_1

    #@1f
    .line 597
    .end local v1    # "c":C
    :cond_2
    new-array v7, v2, [I

    #@21
    .line 598
    .local v7, "result":[I
    const/4 v5, 0x0

    #@22
    .line 599
    .local v5, "p":I
    const/4 v8, 0x0

    #@23
    .line 600
    .local v8, "val":I
    const/4 v4, 0x0

    #@24
    move v6, v5

    #@25
    .end local v5    # "p":I
    .local v6, "p":I
    :goto_2
    if-ge v4, v0, :cond_5

    #@27
    .line 601
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v1

    #@2b
    .line 602
    .restart local v1    # "c":C
    if-lt v1, v10, :cond_4

    #@2d
    if-gt v1, v11, :cond_4

    #@2f
    .line 603
    if-nez v3, :cond_3

    #@31
    .line 604
    const/4 v3, 0x1

    #@32
    .line 605
    add-int/lit8 v8, v1, -0x30

    #@34
    :goto_3
    move v5, v6

    #@35
    .line 600
    .end local v6    # "p":I
    .restart local v5    # "p":I
    :goto_4
    add-int/lit8 v4, v4, 0x1

    #@37
    move v6, v5

    #@38
    .end local v5    # "p":I
    .restart local v6    # "p":I
    goto :goto_2

    #@39
    .line 607
    :cond_3
    mul-int/lit8 v8, v8, 0xa

    #@3b
    .line 608
    add-int/lit8 v9, v1, -0x30

    #@3d
    add-int/2addr v8, v9

    #@3e
    goto :goto_3

    #@3f
    .line 611
    :cond_4
    if-eqz v3, :cond_7

    #@41
    .line 612
    const/4 v3, 0x0

    #@42
    .line 613
    add-int/lit8 v5, v6, 0x1

    #@44
    .end local v6    # "p":I
    .restart local v5    # "p":I
    aput v8, v7, v6

    #@46
    goto :goto_4

    #@47
    .line 617
    .end local v1    # "c":C
    .end local v5    # "p":I
    .restart local v6    # "p":I
    :cond_5
    if-lez v2, :cond_6

    #@49
    .line 618
    add-int/lit8 v9, v2, -0x1

    #@4b
    aput v8, v7, v9

    #@4d
    .line 620
    :cond_6
    return-object v7

    #@4e
    .restart local v1    # "c":C
    :cond_7
    move v5, v6

    #@4f
    .end local v6    # "p":I
    .restart local v5    # "p":I
    goto :goto_4
.end method

.method private writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 668
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    .line 669
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@a
    .line 670
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result v1

    #@e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 671
    return-void

    #@12
    .line 673
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@17
    move-result v1

    #@18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v0

    #@1c
    .line 674
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    #@1e
    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 675
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@24
    move-result v1

    #@25
    not-int v1, v1

    #@26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 676
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2c
    .line 667
    return-void
.end method

.method private writeCompactedLongArray(Landroid/os/Parcel;[JI)V
    .locals 10
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "array"    # [J
    .param p3, "num"    # I

    #@0
    .prologue
    const-wide/32 v8, 0x7fffffff

    #@3
    .line 625
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    #@6
    .line 626
    aget-wide v4, p2, v1

    #@8
    .line 627
    .local v4, "val":J
    const-wide/16 v6, 0x0

    #@a
    cmp-long v3, v4, v6

    #@c
    if-gez v3, :cond_0

    #@e
    .line 628
    const-string/jumbo v3, "ProcessStats"

    #@11
    new-instance v6, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v7, "Time val negative: "

    #@19
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v6

    #@25
    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 629
    const-wide/16 v4, 0x0

    #@2a
    .line 631
    :cond_0
    cmp-long v3, v4, v8

    #@2c
    if-gtz v3, :cond_1

    #@2e
    .line 632
    long-to-int v3, v4

    #@2f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 625
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 634
    :cond_1
    const/16 v3, 0x20

    #@37
    shr-long v6, v4, v3

    #@39
    and-long/2addr v6, v8

    #@3a
    long-to-int v3, v6

    #@3b
    not-int v2, v3

    #@3c
    .line 635
    .local v2, "top":I
    const-wide v6, 0xffffffffL

    #@41
    and-long/2addr v6, v4

    #@42
    long-to-int v0, v6

    #@43
    .line 636
    .local v0, "bottom":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 637
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@49
    goto :goto_1

    #@4a
    .line 624
    .end local v0    # "bottom":I
    .end local v2    # "top":I
    .end local v4    # "val":J
    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/app/procstats/ProcessStats;)V
    .locals 42
    .param p1, "other"    # Lcom/android/internal/app/procstats/ProcessStats;

    #@0
    .prologue
    .line 219
    move-object/from16 v0, p1

    #@2
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@4
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@7
    move-result-object v27

    #@8
    .line 220
    .local v27, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    const/16 v17, 0x0

    #@a
    .local v17, "ip":I
    :goto_0
    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    #@d
    move-result v4

    #@e
    move/from16 v0, v17

    #@10
    if-ge v0, v4, :cond_6

    #@12
    .line 221
    move-object/from16 v0, v27

    #@14
    move/from16 v1, v17

    #@16
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@19
    move-result-object v5

    #@1a
    check-cast v5, Ljava/lang/String;

    #@1c
    .line 222
    .local v5, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v27

    #@1e
    move/from16 v1, v17

    #@20
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@23
    move-result-object v32

    #@24
    check-cast v32, Landroid/util/SparseArray;

    #@26
    .line 223
    .local v32, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    const/16 v20, 0x0

    #@28
    .local v20, "iu":I
    :goto_1
    invoke-virtual/range {v32 .. v32}, Landroid/util/SparseArray;->size()I

    #@2b
    move-result v4

    #@2c
    move/from16 v0, v20

    #@2e
    if-ge v0, v4, :cond_5

    #@30
    .line 224
    move-object/from16 v0, v32

    #@32
    move/from16 v1, v20

    #@34
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@37
    move-result v6

    #@38
    .line 225
    .local v6, "uid":I
    move-object/from16 v0, v32

    #@3a
    move/from16 v1, v20

    #@3c
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@3f
    move-result-object v34

    #@40
    check-cast v34, Landroid/util/SparseArray;

    #@42
    .line 226
    .local v34, "versions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    const/16 v21, 0x0

    #@44
    .local v21, "iv":I
    :goto_2
    invoke-virtual/range {v34 .. v34}, Landroid/util/SparseArray;->size()I

    #@47
    move-result v4

    #@48
    move/from16 v0, v21

    #@4a
    if-ge v0, v4, :cond_4

    #@4c
    .line 227
    move-object/from16 v0, v34

    #@4e
    move/from16 v1, v21

    #@50
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@53
    move-result v7

    #@54
    .line 228
    .local v7, "vers":I
    move-object/from16 v0, v34

    #@56
    move/from16 v1, v21

    #@58
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@5b
    move-result-object v25

    #@5c
    check-cast v25, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    #@5e
    .line 229
    .local v25, "otherState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object/from16 v0, v25

    #@60
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@62
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@65
    move-result v14

    #@66
    .line 230
    .local v14, "NPROCS":I
    move-object/from16 v0, v25

    #@68
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@6a
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@6d
    move-result v15

    #@6e
    .line 231
    .local v15, "NSRVS":I
    const/16 v18, 0x0

    #@70
    .local v18, "iproc":I
    :goto_3
    move/from16 v0, v18

    #@72
    if-ge v0, v14, :cond_2

    #@74
    .line 232
    move-object/from16 v0, v25

    #@76
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@78
    move/from16 v0, v18

    #@7a
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@7d
    move-result-object v24

    #@7e
    check-cast v24, Lcom/android/internal/app/procstats/ProcessState;

    #@80
    .line 233
    .local v24, "otherProc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    #@83
    move-result-object v4

    #@84
    move-object/from16 v0, v24

    #@86
    if-eq v4, v0, :cond_1

    #@88
    .line 237
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    #@8b
    move-result-object v4

    #@8c
    .line 236
    move-object/from16 v0, p0

    #@8e
    invoke-virtual {v0, v5, v6, v7, v4}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    #@91
    move-result-object v8

    #@92
    .line 238
    .local v8, "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    #@95
    move-result-object v4

    #@96
    if-ne v4, v8, :cond_0

    #@98
    .line 240
    const/4 v4, 0x1

    #@99
    invoke-virtual {v8, v4}, Lcom/android/internal/app/procstats/ProcessState;->setMultiPackage(Z)V

    #@9c
    .line 241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@9f
    move-result-wide v22

    #@a0
    .line 242
    .local v22, "now":J
    move-object/from16 v0, p0

    #@a2
    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    #@a5
    move-result-object v28

    #@a6
    .line 244
    .local v28, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-wide/from16 v0, v22

    #@a8
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->clone(J)Lcom/android/internal/app/procstats/ProcessState;

    #@ab
    move-result-object v8

    #@ac
    .line 245
    move-object/from16 v0, v28

    #@ae
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@b0
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    #@b3
    move-result-object v9

    #@b4
    invoke-virtual {v4, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b7
    .line 247
    .end local v22    # "now":J
    .end local v28    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_0
    move-object/from16 v0, v24

    #@b9
    invoke-virtual {v8, v0}, Lcom/android/internal/app/procstats/ProcessState;->add(Lcom/android/internal/app/procstats/ProcessState;)V

    #@bc
    .line 231
    .end local v8    # "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_1
    add-int/lit8 v18, v18, 0x1

    #@be
    goto :goto_3

    #@bf
    .line 250
    .end local v24    # "otherProc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_2
    const/16 v19, 0x0

    #@c1
    .local v19, "isvc":I
    :goto_4
    move/from16 v0, v19

    #@c3
    if-ge v0, v15, :cond_3

    #@c5
    .line 251
    move-object/from16 v0, v25

    #@c7
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@c9
    move/from16 v0, v19

    #@cb
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@ce
    move-result-object v26

    #@cf
    check-cast v26, Lcom/android/internal/app/procstats/ServiceState;

    #@d1
    .line 255
    .local v26, "otherSvc":Lcom/android/internal/app/procstats/ServiceState;
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    #@d4
    move-result-object v8

    #@d5
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/app/procstats/ServiceState;->getName()Ljava/lang/String;

    #@d8
    move-result-object v9

    #@d9
    move-object/from16 v4, p0

    #@db
    .line 254
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    #@de
    move-result-object v31

    #@df
    .line 256
    .local v31, "thisSvc":Lcom/android/internal/app/procstats/ServiceState;
    move-object/from16 v0, v31

    #@e1
    move-object/from16 v1, v26

    #@e3
    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->add(Lcom/android/internal/app/procstats/ServiceState;)V

    #@e6
    .line 250
    add-int/lit8 v19, v19, 0x1

    #@e8
    goto :goto_4

    #@e9
    .line 226
    .end local v26    # "otherSvc":Lcom/android/internal/app/procstats/ServiceState;
    .end local v31    # "thisSvc":Lcom/android/internal/app/procstats/ServiceState;
    :cond_3
    add-int/lit8 v21, v21, 0x1

    #@eb
    goto/16 :goto_2

    #@ed
    .line 223
    .end local v7    # "vers":I
    .end local v14    # "NPROCS":I
    .end local v15    # "NSRVS":I
    .end local v18    # "iproc":I
    .end local v19    # "isvc":I
    .end local v25    # "otherState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_4
    add-int/lit8 v20, v20, 0x1

    #@ef
    goto/16 :goto_1

    #@f1
    .line 220
    .end local v6    # "uid":I
    .end local v21    # "iv":I
    .end local v34    # "versions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_5
    add-int/lit8 v17, v17, 0x1

    #@f3
    goto/16 :goto_0

    #@f5
    .line 262
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v20    # "iu":I
    .end local v32    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_6
    move-object/from16 v0, p1

    #@f7
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@f9
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@fc
    move-result-object v29

    #@fd
    .line 263
    .local v29, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    const/16 v17, 0x0

    #@ff
    :goto_5
    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    #@102
    move-result v4

    #@103
    move/from16 v0, v17

    #@105
    if-ge v0, v4, :cond_9

    #@107
    .line 264
    move-object/from16 v0, v29

    #@109
    move/from16 v1, v17

    #@10b
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@10e
    move-result-object v33

    #@10f
    check-cast v33, Landroid/util/SparseArray;

    #@111
    .line 265
    .local v33, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/16 v20, 0x0

    #@113
    .restart local v20    # "iu":I
    :goto_6
    invoke-virtual/range {v33 .. v33}, Landroid/util/SparseArray;->size()I

    #@116
    move-result v4

    #@117
    move/from16 v0, v20

    #@119
    if-ge v0, v4, :cond_8

    #@11b
    .line 266
    move-object/from16 v0, v33

    #@11d
    move/from16 v1, v20

    #@11f
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@122
    move-result v6

    #@123
    .line 267
    .restart local v6    # "uid":I
    move-object/from16 v0, v33

    #@125
    move/from16 v1, v20

    #@127
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@12a
    move-result-object v24

    #@12b
    check-cast v24, Lcom/android/internal/app/procstats/ProcessState;

    #@12d
    .line 268
    .restart local v24    # "otherProc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    #@130
    move-result-object v13

    #@131
    .line 269
    .local v13, "name":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    #@134
    move-result-object v10

    #@135
    .line 270
    .local v10, "pkg":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()I

    #@138
    move-result v7

    #@139
    .line 271
    .restart local v7    # "vers":I
    move-object/from16 v0, p0

    #@13b
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@13d
    invoke-virtual {v4, v13, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@140
    move-result-object v8

    #@141
    check-cast v8, Lcom/android/internal/app/procstats/ProcessState;

    #@143
    .line 273
    .restart local v8    # "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v8, :cond_7

    #@145
    .line 275
    new-instance v8, Lcom/android/internal/app/procstats/ProcessState;

    #@147
    .end local v8    # "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v9, p0

    #@149
    move v11, v6

    #@14a
    move v12, v7

    #@14b
    invoke-direct/range {v8 .. v13}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    #@14e
    .line 276
    .restart local v8    # "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v0, p0

    #@150
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@152
    invoke-virtual {v4, v13, v6, v8}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    #@155
    .line 277
    move-object/from16 v0, p0

    #@157
    invoke-virtual {v0, v10, v6, v7}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    #@15a
    move-result-object v30

    #@15b
    .line 278
    .local v30, "thisState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object/from16 v0, v30

    #@15d
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@15f
    invoke-virtual {v4, v13}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@162
    move-result v4

    #@163
    if-nez v4, :cond_7

    #@165
    .line 279
    move-object/from16 v0, v30

    #@167
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@169
    invoke-virtual {v4, v13, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16c
    .line 282
    .end local v30    # "thisState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_7
    move-object/from16 v0, v24

    #@16e
    invoke-virtual {v8, v0}, Lcom/android/internal/app/procstats/ProcessState;->add(Lcom/android/internal/app/procstats/ProcessState;)V

    #@171
    .line 265
    add-int/lit8 v20, v20, 0x1

    #@173
    goto :goto_6

    #@174
    .line 263
    .end local v6    # "uid":I
    .end local v7    # "vers":I
    .end local v8    # "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v24    # "otherProc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_8
    add-int/lit8 v17, v17, 0x1

    #@176
    goto :goto_5

    #@177
    .line 286
    .end local v20    # "iu":I
    .end local v33    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_9
    const/16 v16, 0x0

    #@179
    .local v16, "i":I
    :goto_7
    const/16 v4, 0x8

    #@17b
    move/from16 v0, v16

    #@17d
    if-ge v0, v4, :cond_a

    #@17f
    .line 290
    move-object/from16 v0, p0

    #@181
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    #@183
    aget-wide v36, v4, v16

    #@185
    move-object/from16 v0, p1

    #@187
    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    #@189
    aget-wide v38, v9, v16

    #@18b
    add-long v36, v36, v38

    #@18d
    aput-wide v36, v4, v16

    #@18f
    .line 286
    add-int/lit8 v16, v16, 0x1

    #@191
    goto :goto_7

    #@192
    .line 293
    :cond_a
    move-object/from16 v0, p0

    #@194
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    #@196
    move-object/from16 v0, p1

    #@198
    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    #@19a
    invoke-virtual {v4, v9}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(Lcom/android/internal/app/procstats/SysMemUsageTable;)V

    #@19d
    .line 295
    move-object/from16 v0, p1

    #@19f
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    #@1a1
    move-wide/from16 v36, v0

    #@1a3
    move-object/from16 v0, p0

    #@1a5
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    #@1a7
    move-wide/from16 v38, v0

    #@1a9
    cmp-long v4, v36, v38

    #@1ab
    if-gez v4, :cond_b

    #@1ad
    .line 296
    move-object/from16 v0, p1

    #@1af
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    #@1b1
    move-wide/from16 v36, v0

    #@1b3
    move-wide/from16 v0, v36

    #@1b5
    move-object/from16 v2, p0

    #@1b7
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    #@1b9
    .line 297
    move-object/from16 v0, p1

    #@1bb
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    #@1bd
    move-object/from16 v0, p0

    #@1bf
    iput-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    #@1c1
    .line 299
    :cond_b
    move-object/from16 v0, p0

    #@1c3
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    #@1c5
    move-wide/from16 v36, v0

    #@1c7
    move-object/from16 v0, p1

    #@1c9
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    #@1cb
    move-wide/from16 v38, v0

    #@1cd
    move-object/from16 v0, p1

    #@1cf
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    #@1d1
    move-wide/from16 v40, v0

    #@1d3
    sub-long v38, v38, v40

    #@1d5
    add-long v36, v36, v38

    #@1d7
    move-wide/from16 v0, v36

    #@1d9
    move-object/from16 v2, p0

    #@1db
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    #@1dd
    .line 300
    move-object/from16 v0, p0

    #@1df
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    #@1e1
    move-wide/from16 v36, v0

    #@1e3
    move-object/from16 v0, p1

    #@1e5
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    #@1e7
    move-wide/from16 v38, v0

    #@1e9
    move-object/from16 v0, p1

    #@1eb
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    #@1ed
    move-wide/from16 v40, v0

    #@1ef
    sub-long v38, v38, v40

    #@1f1
    add-long v36, v36, v38

    #@1f3
    move-wide/from16 v0, v36

    #@1f5
    move-object/from16 v2, p0

    #@1f7
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    #@1f9
    .line 302
    move-object/from16 v0, p0

    #@1fb
    iget-boolean v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    #@1fd
    move-object/from16 v0, p1

    #@1ff
    iget-boolean v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    #@201
    or-int/2addr v4, v9

    #@202
    move-object/from16 v0, p0

    #@204
    iput-boolean v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    #@206
    .line 218
    return-void
.end method

.method public addSysMemUsage(JJJJJ)V
    .locals 7
    .param p1, "cachedMem"    # J
    .param p3, "freeMem"    # J
    .param p5, "zramMem"    # J
    .param p7, "kernelMem"    # J
    .param p9, "nativeMem"    # J

    #@0
    .prologue
    .line 307
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    #@2
    const/4 v3, -0x1

    #@3
    if-eq v2, v3, :cond_1

    #@5
    .line 308
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    #@7
    mul-int/lit8 v1, v2, 0xe

    #@9
    .line 309
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    #@b
    const-wide/16 v4, 0x1

    #@d
    const/4 v3, 0x0

    #@e
    aput-wide v4, v2, v3

    #@10
    .line 310
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    #@12
    if-ge v0, v2, :cond_0

    #@14
    .line 311
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    #@16
    add-int/lit8 v3, v0, 0x1

    #@18
    aput-wide p1, v2, v3

    #@1a
    .line 312
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    #@1c
    add-int/lit8 v3, v0, 0x4

    #@1e
    aput-wide p3, v2, v3

    #@20
    .line 313
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    #@22
    add-int/lit8 v3, v0, 0x7

    #@24
    aput-wide p5, v2, v3

    #@26
    .line 314
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    #@28
    add-int/lit8 v3, v0, 0xa

    #@2a
    aput-wide p7, v2, v3

    #@2c
    .line 315
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    #@2e
    add-int/lit8 v3, v0, 0xd

    #@30
    aput-wide p9, v2, v3

    #@32
    .line 310
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 317
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    #@37
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    #@39
    const/4 v4, 0x0

    #@3a
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(I[JI)V

    #@3d
    .line 306
    .end local v0    # "i":I
    .end local v1    # "state":I
    :cond_1
    return-void
.end method

.method public collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;
    .locals 23
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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1531
    new-instance v10, Landroid/util/ArraySet;

    #@2
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    #@5
    .line 1532
    .local v10, "foundProcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/internal/app/procstats/ProcessState;>;"
    move-object/from16 v0, p0

    #@7
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@9
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@c
    move-result-object v17

    #@d
    .line 1533
    .local v17, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    const/4 v12, 0x0

    #@e
    .local v12, "ip":I
    :goto_0
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    #@11
    move-result v3

    #@12
    if-ge v12, v3, :cond_7

    #@14
    .line 1534
    move-object/from16 v0, v17

    #@16
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@19
    move-result-object v19

    #@1a
    check-cast v19, Ljava/lang/String;

    #@1c
    .line 1535
    .local v19, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v17

    #@1e
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@21
    move-result-object v20

    #@22
    check-cast v20, Landroid/util/SparseArray;

    #@24
    .line 1536
    .local v20, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    const/4 v14, 0x0

    #@25
    .local v14, "iu":I
    :goto_1
    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    #@28
    move-result v3

    #@29
    if-ge v14, v3, :cond_6

    #@2b
    .line 1537
    move-object/from16 v0, v20

    #@2d
    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@30
    move-result-object v22

    #@31
    check-cast v22, Landroid/util/SparseArray;

    #@33
    .line 1538
    .local v22, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    #@36
    move-result v9

    #@37
    .line 1539
    .local v9, "NVERS":I
    const/4 v15, 0x0

    #@38
    .local v15, "iv":I
    :goto_2
    if-ge v15, v9, :cond_5

    #@3a
    .line 1540
    move-object/from16 v0, v22

    #@3c
    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@3f
    move-result-object v21

    #@40
    check-cast v21, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    #@42
    .line 1541
    .local v21, "state":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object/from16 v0, v21

    #@44
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@46
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@49
    move-result v8

    #@4a
    .line 1542
    .local v8, "NPROCS":I
    if-eqz p7, :cond_3

    #@4c
    move-object/from16 v0, p7

    #@4e
    move-object/from16 v1, v19

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v18

    #@54
    .line 1543
    :goto_3
    const/4 v13, 0x0

    #@55
    .local v13, "iproc":I
    :goto_4
    if-ge v13, v8, :cond_4

    #@57
    .line 1544
    move-object/from16 v0, v21

    #@59
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@5b
    invoke-virtual {v3, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@5e
    move-result-object v2

    #@5f
    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    #@61
    .line 1545
    .local v2, "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v18, :cond_0

    #@63
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    move-object/from16 v0, p7

    #@69
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v3

    #@6d
    if-eqz v3, :cond_2

    #@6f
    .line 1548
    :cond_0
    if-eqz p8, :cond_1

    #@71
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    #@74
    move-result v3

    #@75
    if-eqz v3, :cond_2

    #@77
    .line 1551
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    #@7a
    move-result-object v3

    #@7b
    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@7e
    .line 1543
    :cond_2
    add-int/lit8 v13, v13, 0x1

    #@80
    goto :goto_4

    #@81
    .line 1542
    .end local v2    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v13    # "iproc":I
    :cond_3
    const/16 v18, 0x1

    #@83
    .local v18, "pkgMatch":Z
    goto :goto_3

    #@84
    .line 1539
    .end local v18    # "pkgMatch":Z
    .restart local v13    # "iproc":I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    #@86
    goto :goto_2

    #@87
    .line 1536
    .end local v8    # "NPROCS":I
    .end local v13    # "iproc":I
    .end local v21    # "state":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_5
    add-int/lit8 v14, v14, 0x1

    #@89
    goto :goto_1

    #@8a
    .line 1533
    .end local v9    # "NVERS":I
    .end local v15    # "iv":I
    .end local v22    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_6
    add-int/lit8 v12, v12, 0x1

    #@8c
    goto :goto_0

    #@8d
    .line 1556
    .end local v14    # "iu":I
    .end local v19    # "pkgName":Ljava/lang/String;
    .end local v20    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_7
    new-instance v16, Ljava/util/ArrayList;

    #@8f
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    #@92
    move-result v3

    #@93
    move-object/from16 v0, v16

    #@95
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@98
    .line 1557
    .local v16, "outProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/4 v11, 0x0

    #@99
    .local v11, "i":I
    :goto_5
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    #@9c
    move-result v3

    #@9d
    if-ge v11, v3, :cond_9

    #@9f
    .line 1558
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@a2
    move-result-object v2

    #@a3
    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    #@a5
    .restart local v2    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v3, p1

    #@a7
    move-object/from16 v4, p2

    #@a9
    move-object/from16 v5, p3

    #@ab
    move-wide/from16 v6, p5

    #@ad
    .line 1559
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessTimeLocked([I[I[IJ)J

    #@b0
    move-result-wide v4

    #@b1
    const-wide/16 v6, 0x0

    #@b3
    cmp-long v3, v4, v6

    #@b5
    if-lez v3, :cond_8

    #@b7
    .line 1560
    move-object/from16 v0, v16

    #@b9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@bc
    .line 1561
    move-object/from16 v0, p3

    #@be
    move-object/from16 v1, p4

    #@c0
    if-eq v0, v1, :cond_8

    #@c2
    move-object/from16 v3, p1

    #@c4
    move-object/from16 v4, p2

    #@c6
    move-object/from16 v5, p4

    #@c8
    move-wide/from16 v6, p5

    #@ca
    .line 1562
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessTimeLocked([I[I[IJ)J

    #@cd
    .line 1557
    :cond_8
    add-int/lit8 v11, v11, 0x1

    #@cf
    goto :goto_5

    #@d0
    .line 1566
    .end local v2    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_9
    sget-object v3, Lcom/android/internal/app/procstats/ProcessState;->COMPARATOR:Ljava/util/Comparator;

    #@d2
    move-object/from16 v0, v16

    #@d4
    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@d7
    .line 1567
    return-object v16
.end method

.method public computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 28
    .param p1, "data"    # Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    .param p2, "now"    # J

    #@0
    .prologue
    .line 333
    const-wide/16 v22, 0x0

    #@2
    move-wide/from16 v0, v22

    #@4
    move-object/from16 v2, p1

    #@6
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    #@8
    .line 334
    const/4 v4, 0x0

    #@9
    .local v4, "i":I
    :goto_0
    const/16 v22, 0xe

    #@b
    move/from16 v0, v22

    #@d
    if-ge v4, v0, :cond_0

    #@f
    .line 335
    move-object/from16 v0, p1

    #@11
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    #@13
    move-object/from16 v22, v0

    #@15
    const-wide/16 v24, 0x0

    #@17
    aput-wide v24, v22, v4

    #@19
    .line 336
    move-object/from16 v0, p1

    #@1b
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    #@1d
    move-object/from16 v22, v0

    #@1f
    const-wide/16 v24, 0x0

    #@21
    aput-wide v24, v22, v4

    #@23
    .line 337
    move-object/from16 v0, p1

    #@25
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    #@27
    move-object/from16 v22, v0

    #@29
    const-wide/16 v24, 0x0

    #@2b
    aput-wide v24, v22, v4

    #@2d
    .line 338
    move-object/from16 v0, p1

    #@2f
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    #@31
    move-object/from16 v22, v0

    #@33
    const/16 v23, 0x0

    #@35
    aput v23, v22, v4

    #@37
    .line 334
    add-int/lit8 v4, v4, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 340
    :cond_0
    const/4 v4, 0x0

    #@3b
    :goto_1
    const/16 v22, 0x10

    #@3d
    move/from16 v0, v22

    #@3f
    if-ge v4, v0, :cond_1

    #@41
    .line 341
    move-object/from16 v0, p1

    #@43
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    #@45
    move-object/from16 v22, v0

    #@47
    const-wide/16 v24, 0x0

    #@49
    aput-wide v24, v22, v4

    #@4b
    .line 340
    add-int/lit8 v4, v4, 0x1

    #@4d
    goto :goto_1

    #@4e
    .line 343
    :cond_1
    const-wide/16 v22, 0x0

    #@50
    move-wide/from16 v0, v22

    #@52
    move-object/from16 v2, p1

    #@54
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    #@56
    .line 344
    const-wide/16 v22, 0x0

    #@58
    move-wide/from16 v0, v22

    #@5a
    move-object/from16 v2, p1

    #@5c
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    #@5e
    .line 345
    const-wide/16 v22, 0x0

    #@60
    move-wide/from16 v0, v22

    #@62
    move-object/from16 v2, p1

    #@64
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    #@66
    .line 346
    const-wide/16 v22, 0x0

    #@68
    move-wide/from16 v0, v22

    #@6a
    move-object/from16 v2, p1

    #@6c
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    #@6e
    .line 347
    const-wide/16 v22, 0x0

    #@70
    move-wide/from16 v0, v22

    #@72
    move-object/from16 v2, p1

    #@74
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    #@76
    .line 348
    const/16 v22, 0x0

    #@78
    move/from16 v0, v22

    #@7a
    move-object/from16 v1, p1

    #@7c
    iput v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@7e
    .line 349
    move-object/from16 v0, p0

    #@80
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    #@82
    move-object/from16 v22, v0

    #@84
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getTotalMemUsage()[J

    #@87
    move-result-object v20

    #@88
    .line 350
    .local v20, "totalMemUsage":[J
    const/4 v8, 0x0

    #@89
    .local v8, "is":I
    :goto_2
    move-object/from16 v0, p1

    #@8b
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    #@8d
    move-object/from16 v22, v0

    #@8f
    move-object/from16 v0, v22

    #@91
    array-length v0, v0

    #@92
    move/from16 v22, v0

    #@94
    move/from16 v0, v22

    #@96
    if-ge v8, v0, :cond_5

    #@98
    .line 351
    const/4 v6, 0x0

    #@99
    .local v6, "im":I
    :goto_3
    move-object/from16 v0, p1

    #@9b
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    #@9d
    move-object/from16 v22, v0

    #@9f
    move-object/from16 v0, v22

    #@a1
    array-length v0, v0

    #@a2
    move/from16 v22, v0

    #@a4
    move/from16 v0, v22

    #@a6
    if-ge v6, v0, :cond_4

    #@a8
    .line 352
    move-object/from16 v0, p1

    #@aa
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    #@ac
    move-object/from16 v22, v0

    #@ae
    aget v22, v22, v8

    #@b0
    move-object/from16 v0, p1

    #@b2
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    #@b4
    move-object/from16 v23, v0

    #@b6
    aget v23, v23, v6

    #@b8
    add-int v11, v22, v23

    #@ba
    .line 353
    .local v11, "memBucket":I
    mul-int/lit8 v16, v11, 0xe

    #@bc
    .line 354
    .local v16, "stateBucket":I
    move-object/from16 v0, p0

    #@be
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    #@c0
    move-object/from16 v22, v0

    #@c2
    aget-wide v12, v22, v11

    #@c4
    .line 355
    .local v12, "memTime":J
    move-object/from16 v0, p0

    #@c6
    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    #@c8
    move/from16 v22, v0

    #@ca
    move/from16 v0, v22

    #@cc
    if-ne v0, v11, :cond_2

    #@ce
    .line 356
    move-object/from16 v0, p0

    #@d0
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    #@d2
    move-wide/from16 v22, v0

    #@d4
    sub-long v22, p2, v22

    #@d6
    add-long v12, v12, v22

    #@d8
    .line 358
    :cond_2
    move-object/from16 v0, p1

    #@da
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    #@dc
    move-wide/from16 v22, v0

    #@de
    add-long v22, v22, v12

    #@e0
    move-wide/from16 v0, v22

    #@e2
    move-object/from16 v2, p1

    #@e4
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    #@e6
    .line 359
    move-object/from16 v0, p0

    #@e8
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    #@ea
    move-object/from16 v22, v0

    #@ec
    move/from16 v0, v16

    #@ee
    int-to-byte v0, v0

    #@ef
    move/from16 v23, v0

    #@f1
    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKey(B)I

    #@f4
    move-result v17

    #@f5
    .line 360
    .local v17, "sysKey":I
    move-object/from16 v10, v20

    #@f7
    .line 361
    .local v10, "longs":[J
    const/4 v5, 0x0

    #@f8
    .line 362
    .local v5, "idx":I
    const/16 v22, -0x1

    #@fa
    move/from16 v0, v17

    #@fc
    move/from16 v1, v22

    #@fe
    if-eq v0, v1, :cond_3

    #@100
    .line 363
    move-object/from16 v0, p0

    #@102
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    #@104
    move-object/from16 v22, v0

    #@106
    move-object/from16 v0, v22

    #@108
    move/from16 v1, v17

    #@10a
    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    #@10d
    move-result-object v19

    #@10e
    .line 364
    .local v19, "tmpLongs":[J
    invoke-static/range {v17 .. v17}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    #@111
    move-result v18

    #@112
    .line 365
    .local v18, "tmpIndex":I
    add-int/lit8 v22, v18, 0x0

    #@114
    aget-wide v22, v19, v22

    #@116
    const-wide/16 v24, 0x3

    #@118
    cmp-long v22, v22, v24

    #@11a
    if-ltz v22, :cond_3

    #@11c
    .line 366
    move-object/from16 v0, p1

    #@11e
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    #@120
    move-object/from16 v22, v0

    #@122
    const/16 v23, 0x0

    #@124
    move-object/from16 v0, v22

    #@126
    move/from16 v1, v23

    #@128
    move-object/from16 v2, v20

    #@12a
    invoke-static {v0, v1, v2, v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    #@12d
    .line 367
    move-object/from16 v10, v19

    #@12f
    .line 368
    move/from16 v5, v18

    #@131
    .line 371
    .end local v18    # "tmpIndex":I
    .end local v19    # "tmpLongs":[J
    :cond_3
    move-object/from16 v0, p1

    #@133
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    #@135
    move-wide/from16 v22, v0

    #@137
    add-int/lit8 v24, v5, 0x2

    #@139
    aget-wide v24, v10, v24

    #@13b
    move-wide/from16 v0, v24

    #@13d
    long-to-double v0, v0

    #@13e
    move-wide/from16 v24, v0

    #@140
    .line 372
    long-to-double v0, v12

    #@141
    move-wide/from16 v26, v0

    #@143
    .line 371
    mul-double v24, v24, v26

    #@145
    add-double v22, v22, v24

    #@147
    move-wide/from16 v0, v22

    #@149
    move-object/from16 v2, p1

    #@14b
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    #@14d
    .line 373
    move-object/from16 v0, p1

    #@14f
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    #@151
    move-wide/from16 v22, v0

    #@153
    add-int/lit8 v24, v5, 0x5

    #@155
    aget-wide v24, v10, v24

    #@157
    move-wide/from16 v0, v24

    #@159
    long-to-double v0, v0

    #@15a
    move-wide/from16 v24, v0

    #@15c
    .line 374
    long-to-double v0, v12

    #@15d
    move-wide/from16 v26, v0

    #@15f
    .line 373
    mul-double v24, v24, v26

    #@161
    add-double v22, v22, v24

    #@163
    move-wide/from16 v0, v22

    #@165
    move-object/from16 v2, p1

    #@167
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    #@169
    .line 375
    move-object/from16 v0, p1

    #@16b
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    #@16d
    move-wide/from16 v22, v0

    #@16f
    add-int/lit8 v24, v5, 0x8

    #@171
    aget-wide v24, v10, v24

    #@173
    move-wide/from16 v0, v24

    #@175
    long-to-double v0, v0

    #@176
    move-wide/from16 v24, v0

    #@178
    .line 376
    long-to-double v0, v12

    #@179
    move-wide/from16 v26, v0

    #@17b
    .line 375
    mul-double v24, v24, v26

    #@17d
    add-double v22, v22, v24

    #@17f
    move-wide/from16 v0, v22

    #@181
    move-object/from16 v2, p1

    #@183
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    #@185
    .line 377
    move-object/from16 v0, p1

    #@187
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    #@189
    move-wide/from16 v22, v0

    #@18b
    add-int/lit8 v24, v5, 0xb

    #@18d
    aget-wide v24, v10, v24

    #@18f
    move-wide/from16 v0, v24

    #@191
    long-to-double v0, v0

    #@192
    move-wide/from16 v24, v0

    #@194
    .line 378
    long-to-double v0, v12

    #@195
    move-wide/from16 v26, v0

    #@197
    .line 377
    mul-double v24, v24, v26

    #@199
    add-double v22, v22, v24

    #@19b
    move-wide/from16 v0, v22

    #@19d
    move-object/from16 v2, p1

    #@19f
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    #@1a1
    .line 379
    move-object/from16 v0, p1

    #@1a3
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    #@1a5
    move-wide/from16 v22, v0

    #@1a7
    add-int/lit8 v24, v5, 0xe

    #@1a9
    aget-wide v24, v10, v24

    #@1ab
    move-wide/from16 v0, v24

    #@1ad
    long-to-double v0, v0

    #@1ae
    move-wide/from16 v24, v0

    #@1b0
    .line 380
    long-to-double v0, v12

    #@1b1
    move-wide/from16 v26, v0

    #@1b3
    .line 379
    mul-double v24, v24, v26

    #@1b5
    add-double v22, v22, v24

    #@1b7
    move-wide/from16 v0, v22

    #@1b9
    move-object/from16 v2, p1

    #@1bb
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    #@1bd
    .line 381
    move-object/from16 v0, p1

    #@1bf
    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@1c1
    move/from16 v22, v0

    #@1c3
    move/from16 v0, v22

    #@1c5
    int-to-long v0, v0

    #@1c6
    move-wide/from16 v22, v0

    #@1c8
    add-int/lit8 v24, v5, 0x0

    #@1ca
    aget-wide v24, v10, v24

    #@1cc
    add-long v22, v22, v24

    #@1ce
    move-wide/from16 v0, v22

    #@1d0
    long-to-int v0, v0

    #@1d1
    move/from16 v22, v0

    #@1d3
    move/from16 v0, v22

    #@1d5
    move-object/from16 v1, p1

    #@1d7
    iput v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@1d9
    .line 351
    add-int/lit8 v6, v6, 0x1

    #@1db
    goto/16 :goto_3

    #@1dd
    .line 350
    .end local v5    # "idx":I
    .end local v10    # "longs":[J
    .end local v11    # "memBucket":I
    .end local v12    # "memTime":J
    .end local v16    # "stateBucket":I
    .end local v17    # "sysKey":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    #@1df
    goto/16 :goto_2

    #@1e1
    .line 384
    .end local v6    # "im":I
    :cond_5
    move-object/from16 v0, p0

    #@1e3
    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    #@1e5
    move/from16 v22, v0

    #@1e7
    move/from16 v0, v22

    #@1e9
    move-object/from16 v1, p1

    #@1eb
    iput-boolean v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->hasSwappedOutPss:Z

    #@1ed
    .line 385
    move-object/from16 v0, p0

    #@1ef
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@1f1
    move-object/from16 v22, v0

    #@1f3
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@1f6
    move-result-object v15

    #@1f7
    .line 386
    .local v15, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    const/4 v7, 0x0

    #@1f8
    .local v7, "iproc":I
    :goto_4
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    #@1fb
    move-result v22

    #@1fc
    move/from16 v0, v22

    #@1fe
    if-ge v7, v0, :cond_7

    #@200
    .line 387
    invoke-virtual {v15, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@203
    move-result-object v21

    #@204
    check-cast v21, Landroid/util/SparseArray;

    #@206
    .line 388
    .local v21, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/4 v9, 0x0

    #@207
    .local v9, "iu":I
    :goto_5
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    #@20a
    move-result v22

    #@20b
    move/from16 v0, v22

    #@20d
    if-ge v9, v0, :cond_6

    #@20f
    .line 389
    move-object/from16 v0, v21

    #@211
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@214
    move-result-object v14

    #@215
    check-cast v14, Lcom/android/internal/app/procstats/ProcessState;

    #@217
    .line 390
    .local v14, "proc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v0, p1

    #@219
    move-wide/from16 v1, p2

    #@21b
    invoke-virtual {v14, v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->aggregatePss(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    #@21e
    .line 388
    add-int/lit8 v9, v9, 0x1

    #@220
    goto :goto_5

    #@221
    .line 386
    .end local v14    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    #@223
    goto :goto_4

    #@224
    .line 332
    .end local v9    # "iu":I
    .end local v21    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_7
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 698
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 51
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1571
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v8

    #@4
    .line 1572
    .local v8, "now":J
    move-object/from16 v0, p0

    #@6
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@8
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@b
    move-result-object v41

    #@c
    .line 1573
    .local v41, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    const-string/jumbo v3, "vers,5"

    #@f
    move-object/from16 v0, p1

    #@11
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14
    .line 1574
    const-string/jumbo v3, "period,"

    #@17
    move-object/from16 v0, p1

    #@19
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    #@20
    move-object/from16 v0, p1

    #@22
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25
    .line 1575
    const-string/jumbo v3, ","

    #@28
    move-object/from16 v0, p1

    #@2a
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d
    move-object/from16 v0, p0

    #@2f
    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    #@31
    move-object/from16 v0, p1

    #@33
    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    #@36
    const-string/jumbo v3, ","

    #@39
    move-object/from16 v0, p1

    #@3b
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e
    .line 1576
    move-object/from16 v0, p0

    #@40
    iget-boolean v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    #@42
    if-eqz v3, :cond_6

    #@44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@47
    move-result-wide v12

    #@48
    :goto_0
    move-object/from16 v0, p1

    #@4a
    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    #@4d
    .line 1577
    const/16 v40, 0x1

    #@4f
    .line 1578
    .local v40, "partial":Z
    move-object/from16 v0, p0

    #@51
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    #@53
    and-int/lit8 v3, v3, 0x2

    #@55
    if-eqz v3, :cond_0

    #@57
    .line 1579
    const-string/jumbo v3, ",shutdown"

    #@5a
    move-object/from16 v0, p1

    #@5c
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f
    .line 1580
    const/16 v40, 0x0

    #@61
    .line 1582
    :cond_0
    move-object/from16 v0, p0

    #@63
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    #@65
    and-int/lit8 v3, v3, 0x4

    #@67
    if-eqz v3, :cond_1

    #@69
    .line 1583
    const-string/jumbo v3, ",sysprops"

    #@6c
    move-object/from16 v0, p1

    #@6e
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    .line 1584
    const/16 v40, 0x0

    #@73
    .line 1586
    :cond_1
    move-object/from16 v0, p0

    #@75
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    #@77
    and-int/lit8 v3, v3, 0x1

    #@79
    if-eqz v3, :cond_2

    #@7b
    .line 1587
    const-string/jumbo v3, ",complete"

    #@7e
    move-object/from16 v0, p1

    #@80
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@83
    .line 1588
    const/16 v40, 0x0

    #@85
    .line 1590
    :cond_2
    if-eqz v40, :cond_3

    #@87
    .line 1591
    const-string/jumbo v3, ",partial"

    #@8a
    move-object/from16 v0, p1

    #@8c
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8f
    .line 1593
    :cond_3
    move-object/from16 v0, p0

    #@91
    iget-boolean v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    #@93
    if-eqz v3, :cond_4

    #@95
    .line 1594
    const-string/jumbo v3, ",swapped-out-pss"

    #@98
    move-object/from16 v0, p1

    #@9a
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9d
    .line 1596
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@a0
    .line 1597
    const-string/jumbo v3, "config,"

    #@a3
    move-object/from16 v0, p1

    #@a5
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    move-object/from16 v0, p0

    #@aa
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    #@ac
    move-object/from16 v0, p1

    #@ae
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b1
    .line 1598
    const/16 v33, 0x0

    #@b3
    .local v33, "ip":I
    :goto_1
    invoke-virtual/range {v41 .. v41}, Landroid/util/ArrayMap;->size()I

    #@b6
    move-result v3

    #@b7
    move/from16 v0, v33

    #@b9
    if-ge v0, v3, :cond_b

    #@bb
    .line 1599
    move-object/from16 v0, v41

    #@bd
    move/from16 v1, v33

    #@bf
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@c2
    move-result-object v4

    #@c3
    check-cast v4, Ljava/lang/String;

    #@c5
    .line 1600
    .local v4, "pkgName":Ljava/lang/String;
    if-eqz p2, :cond_5

    #@c7
    move-object/from16 v0, p2

    #@c9
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cc
    move-result v3

    #@cd
    if-eqz v3, :cond_a

    #@cf
    .line 1603
    :cond_5
    move-object/from16 v0, v41

    #@d1
    move/from16 v1, v33

    #@d3
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@d6
    move-result-object v48

    #@d7
    check-cast v48, Landroid/util/SparseArray;

    #@d9
    .line 1604
    .local v48, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    const/16 v36, 0x0

    #@db
    .local v36, "iu":I
    :goto_2
    invoke-virtual/range {v48 .. v48}, Landroid/util/SparseArray;->size()I

    #@de
    move-result v3

    #@df
    move/from16 v0, v36

    #@e1
    if-ge v0, v3, :cond_a

    #@e3
    .line 1605
    move-object/from16 v0, v48

    #@e5
    move/from16 v1, v36

    #@e7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@ea
    move-result v5

    #@eb
    .line 1606
    .local v5, "uid":I
    move-object/from16 v0, v48

    #@ed
    move/from16 v1, v36

    #@ef
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f2
    move-result-object v50

    #@f3
    check-cast v50, Landroid/util/SparseArray;

    #@f5
    .line 1607
    .local v50, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    const/16 v37, 0x0

    #@f7
    .local v37, "iv":I
    :goto_3
    invoke-virtual/range {v50 .. v50}, Landroid/util/SparseArray;->size()I

    #@fa
    move-result v3

    #@fb
    move/from16 v0, v37

    #@fd
    if-ge v0, v3, :cond_9

    #@ff
    .line 1608
    move-object/from16 v0, v50

    #@101
    move/from16 v1, v37

    #@103
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@106
    move-result v6

    #@107
    .line 1609
    .local v6, "vers":I
    move-object/from16 v0, v50

    #@109
    move/from16 v1, v37

    #@10b
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@10e
    move-result-object v42

    #@10f
    check-cast v42, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    #@111
    .line 1610
    .local v42, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object/from16 v0, v42

    #@113
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@115
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@118
    move-result v30

    #@119
    .line 1611
    .local v30, "NPROCS":I
    move-object/from16 v0, v42

    #@11b
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@11d
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@120
    move-result v31

    #@121
    .line 1612
    .local v31, "NSRVS":I
    const/16 v34, 0x0

    #@123
    .local v34, "iproc":I
    :goto_4
    move/from16 v0, v34

    #@125
    move/from16 v1, v30

    #@127
    if-ge v0, v1, :cond_7

    #@129
    .line 1613
    move-object/from16 v0, v42

    #@12b
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@12d
    move/from16 v0, v34

    #@12f
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@132
    move-result-object v2

    #@133
    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    #@135
    .line 1615
    .local v2, "proc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v0, v42

    #@137
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@139
    move/from16 v0, v34

    #@13b
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@13e
    move-result-object v7

    #@13f
    check-cast v7, Ljava/lang/String;

    #@141
    move-object/from16 v3, p1

    #@143
    .line 1614
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->dumpPackageProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IILjava/lang/String;J)V

    #@146
    .line 1612
    add-int/lit8 v34, v34, 0x1

    #@148
    goto :goto_4

    #@149
    .line 1576
    .end local v2    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "uid":I
    .end local v6    # "vers":I
    .end local v30    # "NPROCS":I
    .end local v31    # "NSRVS":I
    .end local v33    # "ip":I
    .end local v34    # "iproc":I
    .end local v36    # "iu":I
    .end local v37    # "iv":I
    .end local v40    # "partial":Z
    .end local v42    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v48    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v50    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_6
    move-object/from16 v0, p0

    #@14b
    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    #@14d
    goto/16 :goto_0

    #@14f
    .line 1617
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v5    # "uid":I
    .restart local v6    # "vers":I
    .restart local v30    # "NPROCS":I
    .restart local v31    # "NSRVS":I
    .restart local v33    # "ip":I
    .restart local v34    # "iproc":I
    .restart local v36    # "iu":I
    .restart local v37    # "iv":I
    .restart local v40    # "partial":Z
    .restart local v42    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v48    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v50    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_7
    const/16 v35, 0x0

    #@151
    .local v35, "isvc":I
    :goto_5
    move/from16 v0, v35

    #@153
    move/from16 v1, v31

    #@155
    if-ge v0, v1, :cond_8

    #@157
    .line 1619
    move-object/from16 v0, v42

    #@159
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@15b
    move/from16 v0, v35

    #@15d
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@160
    move-result-object v3

    #@161
    check-cast v3, Ljava/lang/String;

    #@163
    .line 1618
    invoke-static {v4, v3}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@166
    move-result-object v15

    #@167
    .line 1620
    .local v15, "serviceName":Ljava/lang/String;
    move-object/from16 v0, v42

    #@169
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@16b
    move/from16 v0, v35

    #@16d
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@170
    move-result-object v10

    #@171
    check-cast v10, Lcom/android/internal/app/procstats/ServiceState;

    #@173
    .local v10, "svc":Lcom/android/internal/app/procstats/ServiceState;
    move-object/from16 v11, p1

    #@175
    move-object v12, v4

    #@176
    move v13, v5

    #@177
    move v14, v6

    #@178
    move-wide/from16 v16, v8

    #@17a
    .line 1621
    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IILjava/lang/String;J)V

    #@17d
    .line 1617
    add-int/lit8 v35, v35, 0x1

    #@17f
    goto :goto_5

    #@180
    .line 1607
    .end local v10    # "svc":Lcom/android/internal/app/procstats/ServiceState;
    .end local v15    # "serviceName":Ljava/lang/String;
    :cond_8
    add-int/lit8 v37, v37, 0x1

    #@182
    goto/16 :goto_3

    #@184
    .line 1604
    .end local v6    # "vers":I
    .end local v30    # "NPROCS":I
    .end local v31    # "NSRVS":I
    .end local v34    # "iproc":I
    .end local v35    # "isvc":I
    .end local v42    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_9
    add-int/lit8 v36, v36, 0x1

    #@186
    goto/16 :goto_2

    #@188
    .line 1598
    .end local v5    # "uid":I
    .end local v36    # "iu":I
    .end local v37    # "iv":I
    .end local v48    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v50    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_a
    add-int/lit8 v33, v33, 0x1

    #@18a
    goto/16 :goto_1

    #@18c
    .line 1627
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    #@18e
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@190
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@193
    move-result-object v43

    #@194
    .line 1628
    .local v43, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    const/16 v33, 0x0

    #@196
    :goto_6
    invoke-virtual/range {v43 .. v43}, Landroid/util/ArrayMap;->size()I

    #@199
    move-result v3

    #@19a
    move/from16 v0, v33

    #@19c
    if-ge v0, v3, :cond_d

    #@19e
    .line 1629
    move-object/from16 v0, v43

    #@1a0
    move/from16 v1, v33

    #@1a2
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1a5
    move-result-object v18

    #@1a6
    check-cast v18, Ljava/lang/String;

    #@1a8
    .line 1630
    .local v18, "procName":Ljava/lang/String;
    move-object/from16 v0, v43

    #@1aa
    move/from16 v1, v33

    #@1ac
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1af
    move-result-object v49

    #@1b0
    check-cast v49, Landroid/util/SparseArray;

    #@1b2
    .line 1631
    .local v49, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/16 v36, 0x0

    #@1b4
    .restart local v36    # "iu":I
    :goto_7
    invoke-virtual/range {v49 .. v49}, Landroid/util/SparseArray;->size()I

    #@1b7
    move-result v3

    #@1b8
    move/from16 v0, v36

    #@1ba
    if-ge v0, v3, :cond_c

    #@1bc
    .line 1632
    move-object/from16 v0, v49

    #@1be
    move/from16 v1, v36

    #@1c0
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@1c3
    move-result v5

    #@1c4
    .line 1633
    .restart local v5    # "uid":I
    move-object/from16 v0, v49

    #@1c6
    move/from16 v1, v36

    #@1c8
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1cb
    move-result-object v16

    #@1cc
    check-cast v16, Lcom/android/internal/app/procstats/ProcessState;

    #@1ce
    .local v16, "procState":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v17, p1

    #@1d0
    move/from16 v19, v5

    #@1d2
    move-wide/from16 v20, v8

    #@1d4
    .line 1634
    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJ)V

    #@1d7
    .line 1631
    add-int/lit8 v36, v36, 0x1

    #@1d9
    goto :goto_7

    #@1da
    .line 1628
    .end local v5    # "uid":I
    .end local v16    # "procState":Lcom/android/internal/app/procstats/ProcessState;
    :cond_c
    add-int/lit8 v33, v33, 0x1

    #@1dc
    goto :goto_6

    #@1dd
    .line 1637
    .end local v18    # "procName":Ljava/lang/String;
    .end local v36    # "iu":I
    .end local v49    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_d
    const-string/jumbo v3, "total"

    #@1e0
    move-object/from16 v0, p1

    #@1e2
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e5
    .line 1638
    const-string/jumbo v21, ","

    #@1e8
    move-object/from16 v0, p0

    #@1ea
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    #@1ec
    move-object/from16 v22, v0

    #@1ee
    move-object/from16 v0, p0

    #@1f0
    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    #@1f2
    move/from16 v23, v0

    #@1f4
    move-object/from16 v0, p0

    #@1f6
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    #@1f8
    move-wide/from16 v24, v0

    #@1fa
    move-object/from16 v20, p1

    #@1fc
    move-wide/from16 v26, v8

    #@1fe
    invoke-static/range {v20 .. v27}, Lcom/android/internal/app/procstats/DumpUtils;->dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V

    #@201
    .line 1639
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@204
    .line 1640
    move-object/from16 v0, p0

    #@206
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    #@208
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    #@20b
    move-result v45

    #@20c
    .line 1641
    .local v45, "sysMemUsageCount":I
    if-lez v45, :cond_10

    #@20e
    .line 1642
    const-string/jumbo v3, "sysmemusage"

    #@211
    move-object/from16 v0, p1

    #@213
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@216
    .line 1643
    const/16 v32, 0x0

    #@218
    .local v32, "i":I
    :goto_8
    move/from16 v0, v32

    #@21a
    move/from16 v1, v45

    #@21c
    if-ge v0, v1, :cond_10

    #@21e
    .line 1644
    move-object/from16 v0, p0

    #@220
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    #@222
    move/from16 v0, v32

    #@224
    invoke-virtual {v3, v0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    #@227
    move-result v39

    #@228
    .line 1645
    .local v39, "key":I
    invoke-static/range {v39 .. v39}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    #@22b
    move-result v47

    #@22c
    .line 1646
    .local v47, "type":I
    const-string/jumbo v3, ","

    #@22f
    move-object/from16 v0, p1

    #@231
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@234
    .line 1647
    move-object/from16 v0, p1

    #@236
    move/from16 v1, v47

    #@238
    invoke-static {v0, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    #@23b
    .line 1648
    const/16 v38, 0x0

    #@23d
    .local v38, "j":I
    :goto_9
    const/16 v3, 0x10

    #@23f
    move/from16 v0, v38

    #@241
    if-ge v0, v3, :cond_f

    #@243
    .line 1649
    const/4 v3, 0x1

    #@244
    move/from16 v0, v38

    #@246
    if-le v0, v3, :cond_e

    #@248
    .line 1650
    const-string/jumbo v3, ":"

    #@24b
    move-object/from16 v0, p1

    #@24d
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@250
    .line 1652
    :cond_e
    move-object/from16 v0, p0

    #@252
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    #@254
    move/from16 v0, v39

    #@256
    move/from16 v1, v38

    #@258
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValue(II)J

    #@25b
    move-result-wide v12

    #@25c
    move-object/from16 v0, p1

    #@25e
    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    #@261
    .line 1648
    add-int/lit8 v38, v38, 0x1

    #@263
    goto :goto_9

    #@264
    .line 1643
    :cond_f
    add-int/lit8 v32, v32, 0x1

    #@266
    goto :goto_8

    #@267
    .line 1656
    .end local v32    # "i":I
    .end local v38    # "j":I
    .end local v39    # "key":I
    .end local v47    # "type":I
    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@26a
    .line 1657
    new-instance v46, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    #@26c
    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    #@26e
    .line 1658
    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    #@270
    .line 1657
    move-object/from16 v0, v46

    #@272
    invoke-direct {v0, v3, v7}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    #@275
    .line 1659
    .local v46, "totalMem":Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    move-object/from16 v0, p0

    #@277
    move-object/from16 v1, v46

    #@279
    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    #@27c
    .line 1660
    const-string/jumbo v3, "weights,"

    #@27f
    move-object/from16 v0, p1

    #@281
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@284
    .line 1661
    move-object/from16 v0, v46

    #@286
    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    #@288
    move-object/from16 v0, p1

    #@28a
    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    #@28d
    .line 1662
    const-string/jumbo v3, ","

    #@290
    move-object/from16 v0, p1

    #@292
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@295
    .line 1663
    move-object/from16 v0, v46

    #@297
    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    #@299
    move-object/from16 v0, p1

    #@29b
    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(D)V

    #@29e
    .line 1664
    const-string/jumbo v3, ":"

    #@2a1
    move-object/from16 v0, p1

    #@2a3
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a6
    .line 1665
    move-object/from16 v0, v46

    #@2a8
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@2aa
    move-object/from16 v0, p1

    #@2ac
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    #@2af
    .line 1666
    const-string/jumbo v3, ","

    #@2b2
    move-object/from16 v0, p1

    #@2b4
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b7
    .line 1667
    move-object/from16 v0, v46

    #@2b9
    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    #@2bb
    move-object/from16 v0, p1

    #@2bd
    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(D)V

    #@2c0
    .line 1668
    const-string/jumbo v3, ":"

    #@2c3
    move-object/from16 v0, p1

    #@2c5
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c8
    .line 1669
    move-object/from16 v0, v46

    #@2ca
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@2cc
    move-object/from16 v0, p1

    #@2ce
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    #@2d1
    .line 1670
    const-string/jumbo v3, ","

    #@2d4
    move-object/from16 v0, p1

    #@2d6
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d9
    .line 1671
    move-object/from16 v0, v46

    #@2db
    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    #@2dd
    move-object/from16 v0, p1

    #@2df
    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(D)V

    #@2e2
    .line 1672
    const-string/jumbo v3, ":"

    #@2e5
    move-object/from16 v0, p1

    #@2e7
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ea
    .line 1673
    move-object/from16 v0, v46

    #@2ec
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@2ee
    move-object/from16 v0, p1

    #@2f0
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    #@2f3
    .line 1674
    const-string/jumbo v3, ","

    #@2f6
    move-object/from16 v0, p1

    #@2f8
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2fb
    .line 1675
    move-object/from16 v0, v46

    #@2fd
    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    #@2ff
    move-object/from16 v0, p1

    #@301
    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(D)V

    #@304
    .line 1676
    const-string/jumbo v3, ":"

    #@307
    move-object/from16 v0, p1

    #@309
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30c
    .line 1677
    move-object/from16 v0, v46

    #@30e
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@310
    move-object/from16 v0, p1

    #@312
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    #@315
    .line 1678
    const-string/jumbo v3, ","

    #@318
    move-object/from16 v0, p1

    #@31a
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31d
    .line 1679
    move-object/from16 v0, v46

    #@31f
    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    #@321
    move-object/from16 v0, p1

    #@323
    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(D)V

    #@326
    .line 1680
    const-string/jumbo v3, ":"

    #@329
    move-object/from16 v0, p1

    #@32b
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32e
    .line 1681
    move-object/from16 v0, v46

    #@330
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@332
    move-object/from16 v0, p1

    #@334
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    #@337
    .line 1682
    const/16 v32, 0x0

    #@339
    .restart local v32    # "i":I
    :goto_a
    const/16 v3, 0xe

    #@33b
    move/from16 v0, v32

    #@33d
    if-ge v0, v3, :cond_11

    #@33f
    .line 1683
    const-string/jumbo v3, ","

    #@342
    move-object/from16 v0, p1

    #@344
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@347
    .line 1684
    move-object/from16 v0, v46

    #@349
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    #@34b
    aget-wide v12, v3, v32

    #@34d
    move-object/from16 v0, p1

    #@34f
    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(D)V

    #@352
    .line 1685
    const-string/jumbo v3, ":"

    #@355
    move-object/from16 v0, p1

    #@357
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@35a
    .line 1686
    move-object/from16 v0, v46

    #@35c
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    #@35e
    aget v3, v3, v32

    #@360
    move-object/from16 v0, p1

    #@362
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    #@365
    .line 1682
    add-int/lit8 v32, v32, 0x1

    #@367
    goto :goto_a

    #@368
    .line 1688
    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@36b
    .line 1690
    move-object/from16 v0, p0

    #@36d
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    #@36f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@372
    move-result v29

    #@373
    .line 1691
    .local v29, "NPAGETYPES":I
    const/16 v32, 0x0

    #@375
    :goto_b
    move/from16 v0, v32

    #@377
    move/from16 v1, v29

    #@379
    if-ge v0, v1, :cond_15

    #@37b
    .line 1692
    const-string/jumbo v3, "availablepages,"

    #@37e
    move-object/from16 v0, p1

    #@380
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@383
    .line 1693
    move-object/from16 v0, p0

    #@385
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    #@387
    move/from16 v0, v32

    #@389
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@38c
    move-result-object v3

    #@38d
    check-cast v3, Ljava/lang/String;

    #@38f
    move-object/from16 v0, p1

    #@391
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@394
    .line 1694
    const-string/jumbo v3, ","

    #@397
    move-object/from16 v0, p1

    #@399
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39c
    .line 1695
    move-object/from16 v0, p0

    #@39e
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    #@3a0
    move/from16 v0, v32

    #@3a2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3a5
    move-result-object v3

    #@3a6
    move-object/from16 v0, p1

    #@3a8
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@3ab
    .line 1696
    const-string/jumbo v3, ","

    #@3ae
    move-object/from16 v0, p1

    #@3b0
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b3
    .line 1697
    move-object/from16 v0, p0

    #@3b5
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    #@3b7
    move/from16 v0, v32

    #@3b9
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3bc
    move-result-object v44

    #@3bd
    check-cast v44, [I

    #@3bf
    .line 1698
    .local v44, "sizes":[I
    if-nez v44, :cond_13

    #@3c1
    const/16 v28, 0x0

    #@3c3
    .line 1699
    .local v28, "N":I
    :goto_c
    const/16 v38, 0x0

    #@3c5
    .restart local v38    # "j":I
    :goto_d
    move/from16 v0, v38

    #@3c7
    move/from16 v1, v28

    #@3c9
    if-ge v0, v1, :cond_14

    #@3cb
    .line 1700
    if-eqz v38, :cond_12

    #@3cd
    .line 1701
    const-string/jumbo v3, ","

    #@3d0
    move-object/from16 v0, p1

    #@3d2
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d5
    .line 1703
    :cond_12
    aget v3, v44, v38

    #@3d7
    move-object/from16 v0, p1

    #@3d9
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    #@3dc
    .line 1699
    add-int/lit8 v38, v38, 0x1

    #@3de
    goto :goto_d

    #@3df
    .line 1698
    .end local v28    # "N":I
    .end local v38    # "j":I
    :cond_13
    move-object/from16 v0, v44

    #@3e1
    array-length v0, v0

    #@3e2
    move/from16 v28, v0

    #@3e4
    .restart local v28    # "N":I
    goto :goto_c

    #@3e5
    .line 1705
    .restart local v38    # "j":I
    :cond_14
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@3e8
    .line 1691
    add-int/lit8 v32, v32, 0x1

    #@3ea
    goto :goto_b

    #@3eb
    .line 1570
    .end local v28    # "N":I
    .end local v38    # "j":I
    .end local v44    # "sizes":[I
    :cond_15
    return-void
.end method

.method dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "screenStates"    # [I
    .param p5, "memStates"    # [I
    .param p6, "procStates"    # [I
    .param p7, "sortProcStates"    # [I
    .param p8, "now"    # J
    .param p10, "totalTime"    # J
    .param p12, "reqPackage"    # Ljava/lang/String;
    .param p13, "activeOnly"    # Z

    #@0
    .prologue
    move-object v1, p0

    #@1
    move-object v2, p4

    #@2
    move-object v3, p5

    #@3
    move-object/from16 v4, p6

    #@5
    move-object/from16 v5, p7

    #@7
    move-wide/from16 v6, p8

    #@9
    move-object/from16 v8, p12

    #@b
    move/from16 v9, p13

    #@d
    .line 1516
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    #@10
    move-result-object v2

    #@11
    .line 1518
    .local v2, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v0

    #@15
    if-lez v0, :cond_1

    #@17
    .line 1519
    if-eqz p2, :cond_0

    #@19
    .line 1520
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@1c
    .line 1521
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f
    :cond_0
    move-object v0, p1

    #@20
    move-object v1, p3

    #@21
    move-object v3, p4

    #@22
    move-object v4, p5

    #@23
    move-object/from16 v5, p7

    #@25
    move-wide/from16 v6, p8

    #@27
    move-wide/from16 v8, p10

    #@29
    .line 1523
    invoke-static/range {v0 .. v9}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    #@2c
    .line 1515
    :cond_1
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V
    .locals 51
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "dumpSummary"    # Z
    .param p6, "dumpAll"    # Z
    .param p7, "activeOnly"    # Z

    #@0
    .prologue
    .line 1221
    move-object/from16 v0, p0

    #@2
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    #@4
    move-object/from16 v0, p0

    #@6
    iget v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    #@8
    .line 1222
    move-object/from16 v0, p0

    #@a
    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    #@c
    .line 1221
    const/4 v4, 0x0

    #@d
    const/4 v5, 0x0

    #@e
    move-wide/from16 v10, p3

    #@10
    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    #@13
    move-result-wide v14

    #@14
    .line 1223
    .local v14, "totalTime":J
    const/16 v44, 0x0

    #@16
    .line 1224
    .local v44, "sepNeeded":Z
    move-object/from16 v0, p0

    #@18
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    #@1a
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    #@1d
    move-result v5

    #@1e
    if-lez v5, :cond_0

    #@20
    .line 1225
    const-string/jumbo v5, "System memory usage:"

    #@23
    move-object/from16 v0, p1

    #@25
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28
    .line 1226
    move-object/from16 v0, p0

    #@2a
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    #@2c
    const-string/jumbo v6, "  "

    #@2f
    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    #@31
    sget-object v9, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    #@33
    move-object/from16 v0, p1

    #@35
    invoke-virtual {v5, v0, v6, v7, v9}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dump(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V

    #@38
    .line 1227
    const/16 v44, 0x1

    #@3a
    .line 1229
    :cond_0
    move-object/from16 v0, p0

    #@3c
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@3e
    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@41
    move-result-object v36

    #@42
    .line 1230
    .local v36, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    const/16 v40, 0x0

    #@44
    .line 1231
    .local v40, "printedHeader":Z
    const/16 v29, 0x0

    #@46
    .local v29, "ip":I
    :goto_0
    invoke-virtual/range {v36 .. v36}, Landroid/util/ArrayMap;->size()I

    #@49
    move-result v5

    #@4a
    move/from16 v0, v29

    #@4c
    if-ge v0, v5, :cond_1d

    #@4e
    .line 1232
    move-object/from16 v0, v36

    #@50
    move/from16 v1, v29

    #@52
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@55
    move-result-object v38

    #@56
    check-cast v38, Ljava/lang/String;

    #@58
    .line 1233
    .local v38, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v36

    #@5a
    move/from16 v1, v29

    #@5c
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@5f
    move-result-object v46

    #@60
    check-cast v46, Landroid/util/SparseArray;

    #@62
    .line 1234
    .local v46, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    const/16 v32, 0x0

    #@64
    .local v32, "iu":I
    :goto_1
    invoke-virtual/range {v46 .. v46}, Landroid/util/SparseArray;->size()I

    #@67
    move-result v5

    #@68
    move/from16 v0, v32

    #@6a
    if-ge v0, v5, :cond_1c

    #@6c
    .line 1235
    move-object/from16 v0, v46

    #@6e
    move/from16 v1, v32

    #@70
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@73
    move-result v45

    #@74
    .line 1236
    .local v45, "uid":I
    move-object/from16 v0, v46

    #@76
    move/from16 v1, v32

    #@78
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@7b
    move-result-object v49

    #@7c
    check-cast v49, Landroid/util/SparseArray;

    #@7e
    .line 1237
    .local v49, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    const/16 v33, 0x0

    #@80
    .local v33, "iv":I
    :goto_2
    invoke-virtual/range {v49 .. v49}, Landroid/util/SparseArray;->size()I

    #@83
    move-result v5

    #@84
    move/from16 v0, v33

    #@86
    if-ge v0, v5, :cond_1b

    #@88
    .line 1238
    move-object/from16 v0, v49

    #@8a
    move/from16 v1, v33

    #@8c
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@8f
    move-result v48

    #@90
    .line 1239
    .local v48, "vers":I
    move-object/from16 v0, v49

    #@92
    move/from16 v1, v33

    #@94
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@97
    move-result-object v39

    #@98
    check-cast v39, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    #@9a
    .line 1240
    .local v39, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object/from16 v0, v39

    #@9c
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@9e
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@a1
    move-result v16

    #@a2
    .line 1241
    .local v16, "NPROCS":I
    move-object/from16 v0, v39

    #@a4
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@a6
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@a9
    move-result v28

    #@aa
    .line 1242
    .local v28, "NSRVS":I
    if-eqz p2, :cond_3

    #@ac
    move-object/from16 v0, p2

    #@ae
    move-object/from16 v1, v38

    #@b0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b3
    move-result v37

    #@b4
    .line 1243
    .local v37, "pkgMatch":Z
    :goto_3
    if-nez v37, :cond_5

    #@b6
    .line 1244
    const/16 v42, 0x0

    #@b8
    .line 1245
    .local v42, "procMatch":Z
    const/16 v30, 0x0

    #@ba
    .local v30, "iproc":I
    :goto_4
    move/from16 v0, v30

    #@bc
    move/from16 v1, v16

    #@be
    if-ge v0, v1, :cond_1

    #@c0
    .line 1246
    move-object/from16 v0, v39

    #@c2
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@c4
    move/from16 v0, v30

    #@c6
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@c9
    move-result-object v4

    #@ca
    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    #@cc
    .line 1247
    .local v4, "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    #@cf
    move-result-object v5

    #@d0
    move-object/from16 v0, p2

    #@d2
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d5
    move-result v5

    #@d6
    if-eqz v5, :cond_4

    #@d8
    .line 1248
    const/16 v42, 0x1

    #@da
    .line 1252
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_1
    if-nez v42, :cond_5

    #@dc
    .line 1237
    .end local v42    # "procMatch":Z
    :cond_2
    add-int/lit8 v33, v33, 0x1

    #@de
    goto :goto_2

    #@df
    .line 1242
    .end local v30    # "iproc":I
    .end local v37    # "pkgMatch":Z
    :cond_3
    const/16 v37, 0x1

    #@e1
    goto :goto_3

    #@e2
    .line 1245
    .restart local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v30    # "iproc":I
    .restart local v37    # "pkgMatch":Z
    .restart local v42    # "procMatch":Z
    :cond_4
    add-int/lit8 v30, v30, 0x1

    #@e4
    goto :goto_4

    #@e5
    .line 1256
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v30    # "iproc":I
    .end local v42    # "procMatch":Z
    :cond_5
    if-gtz v16, :cond_6

    #@e7
    if-lez v28, :cond_9

    #@e9
    .line 1257
    :cond_6
    if-nez v40, :cond_8

    #@eb
    .line 1258
    if-eqz v44, :cond_7

    #@ed
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@f0
    .line 1259
    :cond_7
    const-string/jumbo v5, "Per-Package Stats:"

    #@f3
    move-object/from16 v0, p1

    #@f5
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f8
    .line 1260
    const/16 v40, 0x1

    #@fa
    .line 1261
    const/16 v44, 0x1

    #@fc
    .line 1263
    :cond_8
    const-string/jumbo v5, "  * "

    #@ff
    move-object/from16 v0, p1

    #@101
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@104
    move-object/from16 v0, p1

    #@106
    move-object/from16 v1, v38

    #@108
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10b
    const-string/jumbo v5, " / "

    #@10e
    move-object/from16 v0, p1

    #@110
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@113
    .line 1264
    move-object/from16 v0, p1

    #@115
    move/from16 v1, v45

    #@117
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@11a
    const-string/jumbo v5, " / v"

    #@11d
    move-object/from16 v0, p1

    #@11f
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@122
    .line 1265
    move-object/from16 v0, p1

    #@124
    move/from16 v1, v48

    #@126
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@129
    const-string/jumbo v5, ":"

    #@12c
    move-object/from16 v0, p1

    #@12e
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@131
    .line 1267
    :cond_9
    if-eqz p5, :cond_a

    #@133
    if-eqz p6, :cond_10

    #@135
    .line 1268
    :cond_a
    const/16 v30, 0x0

    #@137
    .restart local v30    # "iproc":I
    :goto_5
    move/from16 v0, v30

    #@139
    move/from16 v1, v16

    #@13b
    if-ge v0, v1, :cond_15

    #@13d
    .line 1269
    move-object/from16 v0, v39

    #@13f
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@141
    move/from16 v0, v30

    #@143
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@146
    move-result-object v4

    #@147
    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    #@149
    .line 1270
    .restart local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v37, :cond_b

    #@14b
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    #@14e
    move-result-object v5

    #@14f
    move-object/from16 v0, p2

    #@151
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@154
    move-result v5

    #@155
    if-eqz v5, :cond_d

    #@157
    .line 1273
    :cond_b
    if-eqz p7, :cond_c

    #@159
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    #@15c
    move-result v5

    #@15d
    if-eqz v5, :cond_e

    #@15f
    .line 1278
    :cond_c
    const-string/jumbo v5, "      Process "

    #@162
    move-object/from16 v0, p1

    #@164
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@167
    .line 1279
    move-object/from16 v0, v39

    #@169
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@16b
    move/from16 v0, v30

    #@16d
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@170
    move-result-object v5

    #@171
    check-cast v5, Ljava/lang/String;

    #@173
    move-object/from16 v0, p1

    #@175
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@178
    .line 1280
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    #@17b
    move-result-object v5

    #@17c
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    #@17f
    move-result v5

    #@180
    if-eqz v5, :cond_f

    #@182
    .line 1281
    const-string/jumbo v5, " (multi, "

    #@185
    move-object/from16 v0, p1

    #@187
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18a
    .line 1285
    :goto_6
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getDurationsBucketCount()I

    #@18d
    move-result v5

    #@18e
    move-object/from16 v0, p1

    #@190
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@193
    .line 1286
    const-string/jumbo v5, " entries)"

    #@196
    move-object/from16 v0, p1

    #@198
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19b
    .line 1287
    const-string/jumbo v5, ":"

    #@19e
    move-object/from16 v0, p1

    #@1a0
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a3
    .line 1288
    const-string/jumbo v6, "        "

    #@1a6
    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    #@1a8
    sget-object v8, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    #@1aa
    .line 1289
    sget-object v9, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    #@1ac
    move-object/from16 v5, p1

    #@1ae
    move-wide/from16 v10, p3

    #@1b0
    .line 1288
    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    #@1b3
    .line 1290
    const-string/jumbo v6, "        "

    #@1b6
    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    #@1b8
    sget-object v8, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    #@1ba
    .line 1291
    sget-object v9, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    #@1bc
    move-object/from16 v5, p1

    #@1be
    .line 1290
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    #@1c1
    .line 1292
    const-string/jumbo v5, "        "

    #@1c4
    move-object/from16 v0, p1

    #@1c6
    move/from16 v1, p6

    #@1c8
    invoke-virtual {v4, v0, v5, v1}, Lcom/android/internal/app/procstats/ProcessState;->dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    #@1cb
    .line 1268
    :cond_d
    :goto_7
    add-int/lit8 v30, v30, 0x1

    #@1cd
    goto/16 :goto_5

    #@1cf
    .line 1274
    :cond_e
    const-string/jumbo v5, "      (Not active: "

    #@1d2
    move-object/from16 v0, p1

    #@1d4
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d7
    .line 1275
    move-object/from16 v0, v39

    #@1d9
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@1db
    move/from16 v0, v30

    #@1dd
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1e0
    move-result-object v5

    #@1e1
    check-cast v5, Ljava/lang/String;

    #@1e3
    move-object/from16 v0, p1

    #@1e5
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e8
    const-string/jumbo v5, ")"

    #@1eb
    move-object/from16 v0, p1

    #@1ed
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f0
    goto :goto_7

    #@1f1
    .line 1283
    :cond_f
    const-string/jumbo v5, " (unique, "

    #@1f4
    move-object/from16 v0, p1

    #@1f6
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f9
    goto :goto_6

    #@1fa
    .line 1295
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v30    # "iproc":I
    :cond_10
    new-instance v8, Ljava/util/ArrayList;

    #@1fc
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@1ff
    .line 1296
    .local v8, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/16 v30, 0x0

    #@201
    .restart local v30    # "iproc":I
    :goto_8
    move/from16 v0, v30

    #@203
    move/from16 v1, v16

    #@205
    if-ge v0, v1, :cond_14

    #@207
    .line 1297
    move-object/from16 v0, v39

    #@209
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@20b
    move/from16 v0, v30

    #@20d
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@210
    move-result-object v4

    #@211
    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    #@213
    .line 1298
    .restart local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v37, :cond_11

    #@215
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    #@218
    move-result-object v5

    #@219
    move-object/from16 v0, p2

    #@21b
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21e
    move-result v5

    #@21f
    if-eqz v5, :cond_13

    #@221
    .line 1301
    :cond_11
    if-eqz p7, :cond_12

    #@223
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    #@226
    move-result v5

    #@227
    if-eqz v5, :cond_13

    #@229
    .line 1304
    :cond_12
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22c
    .line 1296
    :cond_13
    add-int/lit8 v30, v30, 0x1

    #@22e
    goto :goto_8

    #@22f
    .line 1306
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_14
    const-string/jumbo v7, "      "

    #@232
    .line 1307
    sget-object v9, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    #@234
    sget-object v10, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    #@236
    sget-object v11, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    #@238
    move-object/from16 v6, p1

    #@23a
    move-wide/from16 v12, p3

    #@23c
    .line 1306
    invoke-static/range {v6 .. v15}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    #@23f
    .line 1310
    .end local v8    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_15
    const/16 v31, 0x0

    #@241
    .local v31, "isvc":I
    :goto_9
    move/from16 v0, v31

    #@243
    move/from16 v1, v28

    #@245
    if-ge v0, v1, :cond_2

    #@247
    .line 1311
    move-object/from16 v0, v39

    #@249
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@24b
    move/from16 v0, v31

    #@24d
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@250
    move-result-object v17

    #@251
    check-cast v17, Lcom/android/internal/app/procstats/ServiceState;

    #@253
    .line 1312
    .local v17, "svc":Lcom/android/internal/app/procstats/ServiceState;
    if-nez v37, :cond_16

    #@255
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    #@258
    move-result-object v5

    #@259
    move-object/from16 v0, p2

    #@25b
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25e
    move-result v5

    #@25f
    if-eqz v5, :cond_18

    #@261
    .line 1315
    :cond_16
    if-eqz p7, :cond_17

    #@263
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    #@266
    move-result v5

    #@267
    if-eqz v5, :cond_19

    #@269
    .line 1320
    :cond_17
    if-eqz p6, :cond_1a

    #@26b
    .line 1321
    const-string/jumbo v5, "      Service "

    #@26e
    move-object/from16 v0, p1

    #@270
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@273
    .line 1325
    :goto_a
    move-object/from16 v0, v39

    #@275
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@277
    move/from16 v0, v31

    #@279
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@27c
    move-result-object v5

    #@27d
    check-cast v5, Ljava/lang/String;

    #@27f
    move-object/from16 v0, p1

    #@281
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@284
    .line 1326
    const-string/jumbo v5, ":"

    #@287
    move-object/from16 v0, p1

    #@289
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28c
    .line 1327
    const-string/jumbo v5, "        Process: "

    #@28f
    move-object/from16 v0, p1

    #@291
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@294
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    #@297
    move-result-object v5

    #@298
    move-object/from16 v0, p1

    #@29a
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@29d
    .line 1328
    const-string/jumbo v19, "        "

    #@2a0
    const-string/jumbo v20, "          "

    #@2a3
    const-string/jumbo v21, "    "

    #@2a6
    move-object/from16 v18, p1

    #@2a8
    move-wide/from16 v22, p3

    #@2aa
    move-wide/from16 v24, v14

    #@2ac
    move/from16 v26, p5

    #@2ae
    move/from16 v27, p6

    #@2b0
    invoke-virtual/range {v17 .. v27}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZ)V

    #@2b3
    .line 1310
    :cond_18
    :goto_b
    add-int/lit8 v31, v31, 0x1

    #@2b5
    goto :goto_9

    #@2b6
    .line 1316
    :cond_19
    const-string/jumbo v5, "      (Not active: "

    #@2b9
    move-object/from16 v0, p1

    #@2bb
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2be
    .line 1317
    move-object/from16 v0, v39

    #@2c0
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@2c2
    move/from16 v0, v31

    #@2c4
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@2c7
    move-result-object v5

    #@2c8
    check-cast v5, Ljava/lang/String;

    #@2ca
    move-object/from16 v0, p1

    #@2cc
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2cf
    const-string/jumbo v5, ")"

    #@2d2
    move-object/from16 v0, p1

    #@2d4
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2d7
    goto :goto_b

    #@2d8
    .line 1323
    :cond_1a
    const-string/jumbo v5, "      * "

    #@2db
    move-object/from16 v0, p1

    #@2dd
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e0
    goto :goto_a

    #@2e1
    .line 1234
    .end local v16    # "NPROCS":I
    .end local v17    # "svc":Lcom/android/internal/app/procstats/ServiceState;
    .end local v28    # "NSRVS":I
    .end local v30    # "iproc":I
    .end local v31    # "isvc":I
    .end local v37    # "pkgMatch":Z
    .end local v39    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v48    # "vers":I
    :cond_1b
    add-int/lit8 v32, v32, 0x1

    #@2e3
    goto/16 :goto_1

    #@2e5
    .line 1231
    .end local v33    # "iv":I
    .end local v45    # "uid":I
    .end local v49    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_1c
    add-int/lit8 v29, v29, 0x1

    #@2e7
    goto/16 :goto_0

    #@2e9
    .line 1335
    .end local v32    # "iu":I
    .end local v38    # "pkgName":Ljava/lang/String;
    .end local v46    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_1d
    move-object/from16 v0, p0

    #@2eb
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@2ed
    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@2f0
    move-result-object v41

    #@2f1
    .line 1336
    .local v41, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    const/16 v40, 0x0

    #@2f3
    .line 1337
    const/16 v34, 0x0

    #@2f5
    .local v34, "numShownProcs":I
    const/16 v35, 0x0

    #@2f7
    .line 1338
    .local v35, "numTotalProcs":I
    const/16 v29, 0x0

    #@2f9
    :goto_c
    invoke-virtual/range {v41 .. v41}, Landroid/util/ArrayMap;->size()I

    #@2fc
    move-result v5

    #@2fd
    move/from16 v0, v29

    #@2ff
    if-ge v0, v5, :cond_27

    #@301
    .line 1339
    move-object/from16 v0, v41

    #@303
    move/from16 v1, v29

    #@305
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@308
    move-result-object v43

    #@309
    check-cast v43, Ljava/lang/String;

    #@30b
    .line 1340
    .local v43, "procName":Ljava/lang/String;
    move-object/from16 v0, v41

    #@30d
    move/from16 v1, v29

    #@30f
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@312
    move-result-object v47

    #@313
    check-cast v47, Landroid/util/SparseArray;

    #@315
    .line 1341
    .local v47, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/16 v32, 0x0

    #@317
    .restart local v32    # "iu":I
    :goto_d
    invoke-virtual/range {v47 .. v47}, Landroid/util/SparseArray;->size()I

    #@31a
    move-result v5

    #@31b
    move/from16 v0, v32

    #@31d
    if-ge v0, v5, :cond_26

    #@31f
    .line 1342
    move-object/from16 v0, v47

    #@321
    move/from16 v1, v32

    #@323
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@326
    move-result v45

    #@327
    .line 1343
    .restart local v45    # "uid":I
    add-int/lit8 v35, v35, 0x1

    #@329
    .line 1344
    move-object/from16 v0, v47

    #@32b
    move/from16 v1, v32

    #@32d
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@330
    move-result-object v4

    #@331
    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    #@333
    .line 1345
    .restart local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->hasAnyData()Z

    #@336
    move-result v5

    #@337
    if-eqz v5, :cond_1f

    #@339
    .line 1341
    :cond_1e
    :goto_e
    add-int/lit8 v32, v32, 0x1

    #@33b
    goto :goto_d

    #@33c
    .line 1348
    :cond_1f
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    #@33f
    move-result v5

    #@340
    if-eqz v5, :cond_1e

    #@342
    .line 1351
    if-eqz p2, :cond_20

    #@344
    move-object/from16 v0, p2

    #@346
    move-object/from16 v1, v43

    #@348
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34b
    move-result v5

    #@34c
    if-eqz v5, :cond_24

    #@34e
    .line 1355
    :cond_20
    :goto_f
    add-int/lit8 v34, v34, 0x1

    #@350
    .line 1356
    if-eqz v44, :cond_21

    #@352
    .line 1357
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@355
    .line 1359
    :cond_21
    const/16 v44, 0x1

    #@357
    .line 1360
    if-nez v40, :cond_22

    #@359
    .line 1361
    const-string/jumbo v5, "Multi-Package Common Processes:"

    #@35c
    move-object/from16 v0, p1

    #@35e
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@361
    .line 1362
    const/16 v40, 0x1

    #@363
    .line 1364
    :cond_22
    if-eqz p7, :cond_23

    #@365
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    #@368
    move-result v5

    #@369
    if-eqz v5, :cond_25

    #@36b
    .line 1368
    :cond_23
    const-string/jumbo v5, "  * "

    #@36e
    move-object/from16 v0, p1

    #@370
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@373
    move-object/from16 v0, p1

    #@375
    move-object/from16 v1, v43

    #@377
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37a
    const-string/jumbo v5, " / "

    #@37d
    move-object/from16 v0, p1

    #@37f
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@382
    .line 1369
    move-object/from16 v0, p1

    #@384
    move/from16 v1, v45

    #@386
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@389
    .line 1370
    const-string/jumbo v5, " ("

    #@38c
    move-object/from16 v0, p1

    #@38e
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@391
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getDurationsBucketCount()I

    #@394
    move-result v5

    #@395
    move-object/from16 v0, p1

    #@397
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@39a
    .line 1371
    const-string/jumbo v5, " entries)"

    #@39d
    move-object/from16 v0, p1

    #@39f
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a2
    const-string/jumbo v5, ":"

    #@3a5
    move-object/from16 v0, p1

    #@3a7
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3aa
    .line 1372
    const-string/jumbo v20, "        "

    #@3ad
    sget-object v21, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    #@3af
    sget-object v22, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    #@3b1
    .line 1373
    sget-object v23, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    #@3b3
    move-object/from16 v18, v4

    #@3b5
    move-object/from16 v19, p1

    #@3b7
    move-wide/from16 v24, p3

    #@3b9
    .line 1372
    invoke-virtual/range {v18 .. v25}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    #@3bc
    .line 1374
    const-string/jumbo v20, "        "

    #@3bf
    sget-object v21, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    #@3c1
    sget-object v22, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    #@3c3
    sget-object v23, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    #@3c5
    move-object/from16 v18, v4

    #@3c7
    move-object/from16 v19, p1

    #@3c9
    invoke-virtual/range {v18 .. v23}, Lcom/android/internal/app/procstats/ProcessState;->dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    #@3cc
    .line 1375
    const-string/jumbo v5, "        "

    #@3cf
    move-object/from16 v0, p1

    #@3d1
    move/from16 v1, p6

    #@3d3
    invoke-virtual {v4, v0, v5, v1}, Lcom/android/internal/app/procstats/ProcessState;->dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    #@3d6
    goto/16 :goto_e

    #@3d8
    .line 1352
    :cond_24
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    #@3db
    move-result-object v5

    #@3dc
    move-object/from16 v0, p2

    #@3de
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e1
    move-result v5

    #@3e2
    if-eqz v5, :cond_1e

    #@3e4
    goto/16 :goto_f

    #@3e6
    .line 1365
    :cond_25
    const-string/jumbo v5, "      (Not active: "

    #@3e9
    move-object/from16 v0, p1

    #@3eb
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ee
    move-object/from16 v0, p1

    #@3f0
    move-object/from16 v1, v43

    #@3f2
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f5
    const-string/jumbo v5, ")"

    #@3f8
    move-object/from16 v0, p1

    #@3fa
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3fd
    goto/16 :goto_e

    #@3ff
    .line 1338
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v45    # "uid":I
    :cond_26
    add-int/lit8 v29, v29, 0x1

    #@401
    goto/16 :goto_c

    #@403
    .line 1378
    .end local v32    # "iu":I
    .end local v43    # "procName":Ljava/lang/String;
    .end local v47    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_27
    if-eqz p6, :cond_28

    #@405
    .line 1379
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@408
    .line 1380
    const-string/jumbo v5, "  Total procs: "

    #@40b
    move-object/from16 v0, p1

    #@40d
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@410
    move-object/from16 v0, p1

    #@412
    move/from16 v1, v34

    #@414
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@417
    .line 1381
    const-string/jumbo v5, " shown of "

    #@41a
    move-object/from16 v0, p1

    #@41c
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@41f
    move-object/from16 v0, p1

    #@421
    move/from16 v1, v35

    #@423
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@426
    const-string/jumbo v5, " total"

    #@429
    move-object/from16 v0, p1

    #@42b
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@42e
    .line 1384
    :cond_28
    if-eqz v44, :cond_29

    #@430
    .line 1385
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@433
    .line 1387
    :cond_29
    if-eqz p5, :cond_2b

    #@435
    .line 1388
    const-string/jumbo v5, "Summary:"

    #@438
    move-object/from16 v0, p1

    #@43a
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@43d
    move-object/from16 v19, p0

    #@43f
    move-object/from16 v20, p1

    #@441
    move-object/from16 v21, p2

    #@443
    move-wide/from16 v22, p3

    #@445
    move/from16 v24, p7

    #@447
    .line 1389
    invoke-virtual/range {v19 .. v24}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    #@44a
    .line 1394
    :goto_10
    if-eqz p6, :cond_2a

    #@44c
    .line 1395
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@44f
    .line 1396
    const-string/jumbo v5, "Internal state:"

    #@452
    move-object/from16 v0, p1

    #@454
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@457
    .line 1401
    const-string/jumbo v5, "  mRunning="

    #@45a
    move-object/from16 v0, p1

    #@45c
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45f
    move-object/from16 v0, p0

    #@461
    iget-boolean v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    #@463
    move-object/from16 v0, p1

    #@465
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@468
    .line 1404
    :cond_2a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/procstats/ProcessStats;->dumpFragmentationLocked(Ljava/io/PrintWriter;)V

    #@46b
    .line 1220
    return-void

    #@46c
    .line 1391
    :cond_2b
    move-object/from16 v0, p0

    #@46e
    move-object/from16 v1, p1

    #@470
    move-wide/from16 v2, p3

    #@472
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    #@475
    goto :goto_10
.end method

.method public dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .locals 19
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "activeOnly"    # Z

    #@0
    .prologue
    .line 1408
    move-object/from16 v0, p0

    #@2
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    #@4
    move-object/from16 v0, p0

    #@6
    iget v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    #@8
    .line 1409
    move-object/from16 v0, p0

    #@a
    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    #@c
    .line 1408
    const/4 v4, 0x0

    #@d
    const/4 v5, 0x0

    #@e
    move-wide/from16 v10, p3

    #@10
    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    #@13
    move-result-wide v14

    #@14
    .line 1410
    .local v14, "totalTime":J
    const-string/jumbo v7, "  "

    #@17
    sget-object v8, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    #@19
    sget-object v9, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    #@1b
    .line 1411
    sget-object v10, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    #@1d
    sget-object v11, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    #@1f
    .line 1410
    const/4 v6, 0x0

    #@20
    move-object/from16 v4, p0

    #@22
    move-object/from16 v5, p1

    #@24
    move-wide/from16 v12, p3

    #@26
    move-object/from16 v16, p2

    #@28
    move/from16 v17, p5

    #@2a
    invoke-virtual/range {v4 .. v17}, Lcom/android/internal/app/procstats/ProcessStats;->dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V

    #@2d
    .line 1412
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@30
    .line 1413
    move-object/from16 v0, p0

    #@32
    move-object/from16 v1, p1

    #@34
    move-wide/from16 v2, p3

    #@36
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    #@39
    .line 1407
    return-void
.end method

.method dumpTotalsLocked(Ljava/io/PrintWriter;J)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "now"    # J

    #@0
    .prologue
    .line 1449
    const-string/jumbo v4, "Run time Stats:"

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8
    .line 1450
    const-string/jumbo v5, "  "

    #@b
    move-object/from16 v0, p0

    #@d
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    #@f
    move-object/from16 v0, p0

    #@11
    iget v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    #@13
    move-object/from16 v0, p0

    #@15
    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    #@17
    move-object/from16 v4, p1

    #@19
    move-wide/from16 v10, p2

    #@1b
    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    #@1e
    .line 1451
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@21
    .line 1452
    const-string/jumbo v4, "Memory usage:"

    #@24
    move-object/from16 v0, p1

    #@26
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@29
    .line 1453
    new-instance v17, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    #@2b
    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    #@2d
    .line 1454
    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    #@2f
    .line 1453
    move-object/from16 v0, v17

    #@31
    invoke-direct {v0, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    #@34
    .line 1455
    .local v17, "totalMem":Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    move-object/from16 v0, p0

    #@36
    move-object/from16 v1, v17

    #@38
    move-wide/from16 v2, p2

    #@3a
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    #@3d
    .line 1456
    const-wide/16 v12, 0x0

    #@3f
    .line 1457
    .local v12, "totalPss":J
    const-string/jumbo v6, "  "

    #@42
    const-string/jumbo v7, "Kernel "

    #@45
    move-object/from16 v0, v17

    #@47
    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    #@49
    .line 1458
    move-object/from16 v0, v17

    #@4b
    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    #@4d
    move-object/from16 v0, v17

    #@4f
    iget v14, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@51
    move-object/from16 v4, p0

    #@53
    move-object/from16 v5, p1

    #@55
    .line 1457
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    #@58
    move-result-wide v12

    #@59
    .line 1459
    const-string/jumbo v6, "  "

    #@5c
    const-string/jumbo v7, "Native "

    #@5f
    move-object/from16 v0, v17

    #@61
    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    #@63
    .line 1460
    move-object/from16 v0, v17

    #@65
    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    #@67
    move-object/from16 v0, v17

    #@69
    iget v14, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@6b
    move-object/from16 v4, p0

    #@6d
    move-object/from16 v5, p1

    #@6f
    .line 1459
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    #@72
    move-result-wide v12

    #@73
    .line 1461
    const/4 v15, 0x0

    #@74
    .local v15, "i":I
    :goto_0
    const/16 v4, 0xe

    #@76
    if-ge v15, v4, :cond_1

    #@78
    .line 1463
    const/4 v4, 0x7

    #@79
    if-eq v15, v4, :cond_0

    #@7b
    .line 1464
    const-string/jumbo v6, "  "

    #@7e
    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    #@80
    aget-object v7, v4, v15

    #@82
    .line 1465
    move-object/from16 v0, v17

    #@84
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    #@86
    aget-wide v8, v4, v15

    #@88
    move-object/from16 v0, v17

    #@8a
    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    #@8c
    .line 1466
    move-object/from16 v0, v17

    #@8e
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    #@90
    aget v14, v4, v15

    #@92
    move-object/from16 v4, p0

    #@94
    move-object/from16 v5, p1

    #@96
    .line 1464
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    #@99
    move-result-wide v12

    #@9a
    .line 1461
    :cond_0
    add-int/lit8 v15, v15, 0x1

    #@9c
    goto :goto_0

    #@9d
    .line 1469
    :cond_1
    const-string/jumbo v6, "  "

    #@a0
    const-string/jumbo v7, "Cached "

    #@a3
    move-object/from16 v0, v17

    #@a5
    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    #@a7
    .line 1470
    move-object/from16 v0, v17

    #@a9
    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    #@ab
    move-object/from16 v0, v17

    #@ad
    iget v14, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@af
    move-object/from16 v4, p0

    #@b1
    move-object/from16 v5, p1

    #@b3
    .line 1469
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    #@b6
    move-result-wide v12

    #@b7
    .line 1471
    const-string/jumbo v6, "  "

    #@ba
    const-string/jumbo v7, "Free   "

    #@bd
    move-object/from16 v0, v17

    #@bf
    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    #@c1
    .line 1472
    move-object/from16 v0, v17

    #@c3
    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    #@c5
    move-object/from16 v0, v17

    #@c7
    iget v14, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@c9
    move-object/from16 v4, p0

    #@cb
    move-object/from16 v5, p1

    #@cd
    .line 1471
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    #@d0
    move-result-wide v12

    #@d1
    .line 1473
    const-string/jumbo v6, "  "

    #@d4
    const-string/jumbo v7, "Z-Ram  "

    #@d7
    move-object/from16 v0, v17

    #@d9
    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    #@db
    .line 1474
    move-object/from16 v0, v17

    #@dd
    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    #@df
    move-object/from16 v0, v17

    #@e1
    iget v14, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@e3
    move-object/from16 v4, p0

    #@e5
    move-object/from16 v5, p1

    #@e7
    .line 1473
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    #@ea
    move-result-wide v12

    #@eb
    .line 1475
    const-string/jumbo v4, "  TOTAL  : "

    #@ee
    move-object/from16 v0, p1

    #@f0
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f3
    .line 1476
    move-object/from16 v0, p1

    #@f5
    invoke-static {v0, v12, v13}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@f8
    .line 1477
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@fb
    .line 1478
    const-string/jumbo v6, "  "

    #@fe
    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    #@100
    const/4 v5, 0x7

    #@101
    aget-object v7, v4, v5

    #@103
    .line 1479
    move-object/from16 v0, v17

    #@105
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    #@107
    const/4 v5, 0x7

    #@108
    aget-wide v8, v4, v5

    #@10a
    move-object/from16 v0, v17

    #@10c
    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    #@10e
    .line 1480
    move-object/from16 v0, v17

    #@110
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    #@112
    const/4 v5, 0x7

    #@113
    aget v14, v4, v5

    #@115
    move-object/from16 v4, p0

    #@117
    move-object/from16 v5, p1

    #@119
    .line 1478
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    #@11c
    .line 1481
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@11f
    .line 1482
    const-string/jumbo v4, "          Start time: "

    #@122
    move-object/from16 v0, p1

    #@124
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@127
    .line 1483
    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    #@12a
    move-object/from16 v0, p0

    #@12c
    iget-wide v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    #@12e
    invoke-static {v4, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    #@131
    move-result-object v4

    #@132
    move-object/from16 v0, p1

    #@134
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@137
    .line 1484
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@13a
    .line 1485
    const-string/jumbo v4, "  Total elapsed time: "

    #@13d
    move-object/from16 v0, p1

    #@13f
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@142
    .line 1487
    move-object/from16 v0, p0

    #@144
    iget-boolean v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    #@146
    if-eqz v4, :cond_7

    #@148
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@14b
    move-result-wide v4

    #@14c
    .line 1488
    :goto_1
    move-object/from16 v0, p0

    #@14e
    iget-wide v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    #@150
    .line 1487
    sub-long/2addr v4, v6

    #@151
    .line 1486
    move-object/from16 v0, p1

    #@153
    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@156
    .line 1489
    const/16 v16, 0x1

    #@158
    .line 1490
    .local v16, "partial":Z
    move-object/from16 v0, p0

    #@15a
    iget v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    #@15c
    and-int/lit8 v4, v4, 0x2

    #@15e
    if-eqz v4, :cond_2

    #@160
    .line 1491
    const-string/jumbo v4, " (shutdown)"

    #@163
    move-object/from16 v0, p1

    #@165
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@168
    .line 1492
    const/16 v16, 0x0

    #@16a
    .line 1494
    :cond_2
    move-object/from16 v0, p0

    #@16c
    iget v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    #@16e
    and-int/lit8 v4, v4, 0x4

    #@170
    if-eqz v4, :cond_3

    #@172
    .line 1495
    const-string/jumbo v4, " (sysprops)"

    #@175
    move-object/from16 v0, p1

    #@177
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17a
    .line 1496
    const/16 v16, 0x0

    #@17c
    .line 1498
    :cond_3
    move-object/from16 v0, p0

    #@17e
    iget v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    #@180
    and-int/lit8 v4, v4, 0x1

    #@182
    if-eqz v4, :cond_4

    #@184
    .line 1499
    const-string/jumbo v4, " (complete)"

    #@187
    move-object/from16 v0, p1

    #@189
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18c
    .line 1500
    const/16 v16, 0x0

    #@18e
    .line 1502
    :cond_4
    if-eqz v16, :cond_5

    #@190
    .line 1503
    const-string/jumbo v4, " (partial)"

    #@193
    move-object/from16 v0, p1

    #@195
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@198
    .line 1505
    :cond_5
    move-object/from16 v0, p0

    #@19a
    iget-boolean v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    #@19c
    if-eqz v4, :cond_6

    #@19e
    .line 1506
    const-string/jumbo v4, " (swapped-out-pss)"

    #@1a1
    move-object/from16 v0, p1

    #@1a3
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a6
    .line 1508
    :cond_6
    const/16 v4, 0x20

    #@1a8
    move-object/from16 v0, p1

    #@1aa
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@1ad
    .line 1509
    move-object/from16 v0, p0

    #@1af
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    #@1b1
    move-object/from16 v0, p1

    #@1b3
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b6
    .line 1510
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@1b9
    .line 1448
    return-void

    #@1ba
    .line 1487
    .end local v16    # "partial":Z
    :cond_7
    move-object/from16 v0, p0

    #@1bc
    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    #@1be
    goto :goto_1
.end method

.method public evaluateSystemProperties(Z)Z
    .locals 4
    .param p1, "update"    # Z

    #@0
    .prologue
    .line 510
    const/4 v0, 0x0

    #@1
    .line 511
    .local v0, "changed":Z
    const-string/jumbo v2, "persist.sys.dalvik.vm.lib.2"

    #@4
    .line 512
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 511
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 513
    .local v1, "runtime":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    #@12
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_0

    #@18
    .line 514
    const/4 v0, 0x1

    #@19
    .line 515
    if-eqz p1, :cond_0

    #@1b
    .line 516
    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    #@1d
    .line 519
    :cond_0
    return v0
.end method

.method public getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # I

    #@0
    .prologue
    .line 1119
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@2
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/util/SparseArray;

    #@8
    .line 1120
    .local v1, "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    if-nez v1, :cond_0

    #@a
    .line 1121
    new-instance v1, Landroid/util/SparseArray;

    #@c
    .end local v1    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@f
    .line 1122
    .restart local v1    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@11
    invoke-virtual {v2, p1, p2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 1124
    :cond_0
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    #@1a
    .line 1125
    .local v0, "as":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    if-eqz v0, :cond_1

    #@1c
    .line 1126
    return-object v0

    #@1d
    .line 1128
    :cond_1
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    #@1f
    .end local v0    # "as":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    invoke-direct {v0, p1, p2}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    #@22
    .line 1129
    .restart local v0    # "as":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@25
    .line 1130
    return-object v0
.end method

.method public getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # I
    .param p4, "processName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1135
    invoke-virtual/range {p0 .. p3}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    #@3
    move-result-object v23

    #@4
    .line 1136
    .local v23, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object/from16 v0, v23

    #@6
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@8
    move-object/from16 v0, p4

    #@a
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v4

    #@e
    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    #@10
    .line 1137
    .local v4, "ps":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v4, :cond_0

    #@12
    .line 1138
    return-object v4

    #@13
    .line 1140
    :cond_0
    move-object/from16 v0, p0

    #@15
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@17
    move-object/from16 v0, p4

    #@19
    move/from16 v1, p2

    #@1b
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    #@21
    .line 1141
    .local v2, "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v2, :cond_1

    #@23
    .line 1142
    new-instance v2, Lcom/android/internal/app/procstats/ProcessState;

    #@25
    .end local v2    # "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v3, p0

    #@27
    move-object/from16 v4, p1

    #@29
    move/from16 v5, p2

    #@2b
    move/from16 v6, p3

    #@2d
    move-object/from16 v7, p4

    #@2f
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    #@32
    .line 1143
    .end local v4    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v2    # "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v0, p0

    #@34
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@36
    move-object/from16 v0, p4

    #@38
    move/from16 v1, p2

    #@3a
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    #@3d
    .line 1146
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    #@40
    move-result v3

    #@41
    if-nez v3, :cond_6

    #@43
    .line 1147
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    move-object/from16 v0, p1

    #@49
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v3

    #@4d
    if-eqz v3, :cond_2

    #@4f
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()I

    #@52
    move-result v3

    #@53
    move/from16 v0, p3

    #@55
    if-ne v0, v3, :cond_2

    #@57
    .line 1150
    move-object v4, v2

    #@58
    .line 1198
    .restart local v4    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    :goto_0
    move-object/from16 v0, v23

    #@5a
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@5c
    move-object/from16 v0, p4

    #@5e
    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    .line 1200
    return-object v4

    #@62
    .line 1157
    .end local v4    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    :cond_2
    const/4 v3, 0x1

    #@63
    invoke-virtual {v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->setMultiPackage(Z)V

    #@66
    .line 1162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@69
    move-result-wide v10

    #@6a
    .line 1165
    .local v10, "now":J
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    .line 1166
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()I

    #@71
    move-result v5

    #@72
    .line 1165
    move-object/from16 v0, p0

    #@74
    move/from16 v1, p2

    #@76
    invoke-virtual {v0, v3, v1, v5}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    #@79
    move-result-object v21

    #@7a
    .line 1167
    .local v21, "commonPkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    if-eqz v21, :cond_4

    #@7c
    .line 1168
    invoke-virtual {v2, v10, v11}, Lcom/android/internal/app/procstats/ProcessState;->clone(J)Lcom/android/internal/app/procstats/ProcessState;

    #@7f
    move-result-object v20

    #@80
    .line 1171
    .local v20, "cloned":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v0, v21

    #@82
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@84
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    #@87
    move-result-object v5

    #@88
    move-object/from16 v0, v20

    #@8a
    invoke-virtual {v3, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8d
    .line 1174
    move-object/from16 v0, v21

    #@8f
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@91
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@94
    move-result v3

    #@95
    add-int/lit8 v22, v3, -0x1

    #@97
    .local v22, "i":I
    :goto_1
    if-ltz v22, :cond_5

    #@99
    .line 1175
    move-object/from16 v0, v21

    #@9b
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@9d
    move/from16 v0, v22

    #@9f
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@a2
    move-result-object v24

    #@a3
    check-cast v24, Lcom/android/internal/app/procstats/ServiceState;

    #@a5
    .line 1176
    .local v24, "ss":Lcom/android/internal/app/procstats/ServiceState;
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/procstats/ServiceState;->getProcess()Lcom/android/internal/app/procstats/ProcessState;

    #@a8
    move-result-object v3

    #@a9
    if-ne v3, v2, :cond_3

    #@ab
    .line 1178
    move-object/from16 v0, v24

    #@ad
    move-object/from16 v1, v20

    #@af
    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->setProcess(Lcom/android/internal/app/procstats/ProcessState;)V

    #@b2
    .line 1174
    :cond_3
    add-int/lit8 v22, v22, -0x1

    #@b4
    goto :goto_1

    #@b5
    .line 1184
    .end local v20    # "cloned":Lcom/android/internal/app/procstats/ProcessState;
    .end local v22    # "i":I
    .end local v24    # "ss":Lcom/android/internal/app/procstats/ServiceState;
    :cond_4
    const-string/jumbo v3, "ProcessStats"

    #@b8
    new-instance v5, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v6, "Cloning proc state: no package state "

    #@c0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v5

    #@c4
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    #@c7
    move-result-object v6

    #@c8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v5

    #@cc
    .line 1185
    const-string/jumbo v6, "/"

    #@cf
    .line 1184
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v5

    #@d3
    move/from16 v0, p2

    #@d5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v5

    #@d9
    .line 1185
    const-string/jumbo v6, " for proc "

    #@dc
    .line 1184
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v5

    #@e0
    .line 1185
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    #@e3
    move-result-object v6

    #@e4
    .line 1184
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v5

    #@e8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v5

    #@ec
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ef
    .line 1188
    :cond_5
    new-instance v4, Lcom/android/internal/app/procstats/ProcessState;

    #@f1
    move-object v5, v2

    #@f2
    move-object/from16 v6, p1

    #@f4
    move/from16 v7, p2

    #@f6
    move/from16 v8, p3

    #@f8
    move-object/from16 v9, p4

    #@fa
    invoke-direct/range {v4 .. v11}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    #@fd
    .restart local v4    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    goto/16 :goto_0

    #@ff
    .line 1194
    .end local v4    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    .end local v10    # "now":J
    .end local v21    # "commonPkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_6
    new-instance v4, Lcom/android/internal/app/procstats/ProcessState;

    #@101
    .line 1195
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@104
    move-result-wide v18

    #@105
    move-object v12, v4

    #@106
    move-object v13, v2

    #@107
    move-object/from16 v14, p1

    #@109
    move/from16 v15, p2

    #@10b
    move/from16 v16, p3

    #@10d
    move-object/from16 v17, p4

    #@10f
    .line 1194
    invoke-direct/range {v12 .. v19}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    #@112
    .restart local v4    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    goto/16 :goto_0
.end method

.method public getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1205
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    #@3
    move-result-object v6

    #@4
    .line 1206
    .local v6, "as":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v1, p5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/internal/app/procstats/ServiceState;

    #@c
    .line 1207
    .local v0, "ss":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v0, :cond_0

    #@e
    .line 1209
    return-object v0

    #@f
    .line 1211
    :cond_0
    if-eqz p4, :cond_1

    #@11
    .line 1212
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    #@14
    move-result-object v5

    #@15
    .line 1213
    :goto_0
    new-instance v0, Lcom/android/internal/app/procstats/ServiceState;

    #@17
    .end local v0    # "ss":Lcom/android/internal/app/procstats/ServiceState;
    move-object v1, p0

    #@18
    move-object v2, p1

    #@19
    move-object v3, p5

    #@1a
    move-object v4, p4

    #@1b
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/ServiceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    #@1e
    .line 1214
    .restart local v0    # "ss":Lcom/android/internal/app/procstats/ServiceState;
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@20
    invoke-virtual {v1, p5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 1216
    return-object v0

    #@24
    .line 1212
    :cond_1
    const/4 v5, 0x0

    #@25
    .local v5, "ps":Lcom/android/internal/app/procstats/ProcessState;
    goto :goto_0
.end method

.method printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "memWeight"    # D
    .param p6, "totalTime"    # J
    .param p8, "curTotalMem"    # J
    .param p10, "samples"    # I

    #@0
    .prologue
    .line 1433
    const-wide/16 v4, 0x0

    #@2
    cmpl-double v4, p4, v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 1434
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    #@8
    mul-double/2addr v4, p4

    #@9
    long-to-double v6, p6

    #@a
    div-double/2addr v4, v6

    #@b
    double-to-long v2, v4

    #@c
    .line 1435
    .local v2, "mem":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    .line 1436
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    .line 1437
    const-string/jumbo v4, ": "

    #@15
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    .line 1438
    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@1b
    .line 1439
    const-string/jumbo v4, " ("

    #@1e
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21
    .line 1440
    move/from16 v0, p10

    #@23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@26
    .line 1441
    const-string/jumbo v4, " samples)"

    #@29
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    .line 1442
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@2f
    .line 1443
    add-long v4, p8, v2

    #@31
    return-wide v4

    #@32
    .line 1445
    .end local v2    # "mem":J
    :cond_0
    return-wide p8
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 874
    const/4 v4, 0x1

    #@1
    :try_start_0
    new-array v2, v4, [I

    #@3
    .line 875
    .local v2, "len":[I
    invoke-static {p1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readFully(Ljava/io/InputStream;[I)[B

    #@6
    move-result-object v3

    #@7
    .line 876
    .local v3, "raw":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@a
    move-result-object v1

    #@b
    .line 877
    .local v1, "in":Landroid/os/Parcel;
    const/4 v4, 0x0

    #@c
    aget v4, v2, v4

    #@e
    const/4 v5, 0x0

    #@f
    invoke-virtual {v1, v3, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    #@12
    .line 878
    const/4 v4, 0x0

    #@13
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    #@16
    .line 879
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    #@19
    .line 881
    invoke-virtual {p0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 872
    .end local v1    # "in":Landroid/os/Parcel;
    .end local v2    # "len":[I
    .end local v3    # "raw":[B
    :goto_0
    return-void

    #@1d
    .line 882
    :catch_0
    move-exception v0

    #@1e
    .line 883
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v5, "caught exception: "

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    iput-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@34
    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 32
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 888
    move-object/from16 v0, p0

    #@2
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@4
    invoke-virtual {v11}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@7
    move-result-object v11

    #@8
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    #@b
    move-result v11

    #@c
    if-gtz v11, :cond_1

    #@e
    .line 889
    move-object/from16 v0, p0

    #@10
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@12
    invoke-virtual {v11}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@15
    move-result-object v11

    #@16
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    #@19
    move-result v11

    #@1a
    if-lez v11, :cond_2

    #@1c
    const/16 v23, 0x1

    #@1e
    .line 890
    .local v23, "hadData":Z
    :goto_0
    if-eqz v23, :cond_0

    #@20
    .line 891
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    #@23
    .line 894
    :cond_0
    const-string/jumbo v11, "magic number"

    #@26
    const v12, 0x50535454

    #@29
    move-object/from16 v0, p0

    #@2b
    move-object/from16 v1, p1

    #@2d
    invoke-direct {v0, v1, v12, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    #@30
    move-result v11

    #@31
    if-nez v11, :cond_3

    #@33
    .line 895
    return-void

    #@34
    .line 888
    .end local v23    # "hadData":Z
    :cond_1
    const/16 v23, 0x1

    #@36
    goto :goto_0

    #@37
    .line 889
    :cond_2
    const/16 v23, 0x0

    #@39
    goto :goto_0

    #@3a
    .line 897
    .restart local v23    # "hadData":Z
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v27

    #@3e
    .line 898
    .local v27, "version":I
    const/16 v11, 0x15

    #@40
    move/from16 v0, v27

    #@42
    if-eq v0, v11, :cond_4

    #@44
    .line 899
    new-instance v11, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v12, "bad version: "

    #@4c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v11

    #@50
    move/from16 v0, v27

    #@52
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v11

    #@56
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v11

    #@5a
    move-object/from16 v0, p0

    #@5c
    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@5e
    .line 900
    return-void

    #@5f
    .line 902
    :cond_4
    const-string/jumbo v11, "state count"

    #@62
    const/16 v12, 0xe

    #@64
    move-object/from16 v0, p0

    #@66
    move-object/from16 v1, p1

    #@68
    invoke-direct {v0, v1, v12, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    #@6b
    move-result v11

    #@6c
    if-nez v11, :cond_5

    #@6e
    .line 903
    return-void

    #@6f
    .line 905
    :cond_5
    const-string/jumbo v11, "adj count"

    #@72
    const/16 v12, 0x8

    #@74
    move-object/from16 v0, p0

    #@76
    move-object/from16 v1, p1

    #@78
    invoke-direct {v0, v1, v12, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    #@7b
    move-result v11

    #@7c
    if-nez v11, :cond_6

    #@7e
    .line 906
    return-void

    #@7f
    .line 908
    :cond_6
    const-string/jumbo v11, "pss count"

    #@82
    const/4 v12, 0x7

    #@83
    move-object/from16 v0, p0

    #@85
    move-object/from16 v1, p1

    #@87
    invoke-direct {v0, v1, v12, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    #@8a
    move-result v11

    #@8b
    if-nez v11, :cond_7

    #@8d
    .line 909
    return-void

    #@8e
    .line 911
    :cond_7
    const-string/jumbo v11, "sys mem usage count"

    #@91
    const/16 v12, 0x10

    #@93
    move-object/from16 v0, p0

    #@95
    move-object/from16 v1, p1

    #@97
    invoke-direct {v0, v1, v12, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    #@9a
    move-result v11

    #@9b
    if-nez v11, :cond_8

    #@9d
    .line 912
    return-void

    #@9e
    .line 914
    :cond_8
    const-string/jumbo v11, "longs size"

    #@a1
    const/16 v12, 0x1000

    #@a3
    move-object/from16 v0, p0

    #@a5
    move-object/from16 v1, p1

    #@a7
    invoke-direct {v0, v1, v12, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    #@aa
    move-result v11

    #@ab
    if-nez v11, :cond_9

    #@ad
    .line 915
    return-void

    #@ae
    .line 918
    :cond_9
    new-instance v11, Ljava/util/ArrayList;

    #@b0
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@b3
    move-object/from16 v0, p0

    #@b5
    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    #@b7
    .line 920
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@ba
    move-result-wide v30

    #@bb
    move-wide/from16 v0, v30

    #@bd
    move-object/from16 v2, p0

    #@bf
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    #@c1
    .line 921
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessStats;->buildTimePeriodStartClockStr()V

    #@c4
    .line 922
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@c7
    move-result-wide v30

    #@c8
    move-wide/from16 v0, v30

    #@ca
    move-object/from16 v2, p0

    #@cc
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    #@ce
    .line 923
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@d1
    move-result-wide v30

    #@d2
    move-wide/from16 v0, v30

    #@d4
    move-object/from16 v2, p0

    #@d6
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    #@d8
    .line 924
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@db
    move-result-wide v30

    #@dc
    move-wide/from16 v0, v30

    #@de
    move-object/from16 v2, p0

    #@e0
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    #@e2
    .line 925
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@e5
    move-result-wide v30

    #@e6
    move-wide/from16 v0, v30

    #@e8
    move-object/from16 v2, p0

    #@ea
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    #@ec
    .line 926
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ef
    move-result-object v11

    #@f0
    move-object/from16 v0, p0

    #@f2
    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    #@f4
    .line 927
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@f7
    move-result v11

    #@f8
    if-eqz v11, :cond_a

    #@fa
    const/4 v11, 0x1

    #@fb
    :goto_1
    move-object/from16 v0, p0

    #@fd
    iput-boolean v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    #@ff
    .line 928
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@102
    move-result v11

    #@103
    move-object/from16 v0, p0

    #@105
    iput v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    #@107
    .line 929
    move-object/from16 v0, p0

    #@109
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@10b
    move-object/from16 v0, p1

    #@10d
    invoke-virtual {v11, v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->readFromParcel(Landroid/os/Parcel;)V

    #@110
    .line 930
    move-object/from16 v0, p0

    #@112
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    #@114
    move-object/from16 v0, p0

    #@116
    iget-object v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    #@118
    array-length v12, v12

    #@119
    move-object/from16 v0, p0

    #@11b
    move-object/from16 v1, p1

    #@11d
    move/from16 v2, v27

    #@11f
    invoke-direct {v0, v1, v2, v11, v12}, Lcom/android/internal/app/procstats/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    #@122
    .line 931
    move-object/from16 v0, p0

    #@124
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    #@126
    move-object/from16 v0, p1

    #@128
    invoke-virtual {v11, v0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->readFromParcel(Landroid/os/Parcel;)Z

    #@12b
    move-result v11

    #@12c
    if-nez v11, :cond_b

    #@12e
    .line 932
    return-void

    #@12f
    .line 927
    :cond_a
    const/4 v11, 0x0

    #@130
    goto :goto_1

    #@131
    .line 935
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@134
    move-result v18

    #@135
    .line 936
    .local v18, "NPROC":I
    if-gez v18, :cond_c

    #@137
    .line 937
    new-instance v11, Ljava/lang/StringBuilder;

    #@139
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@13c
    const-string/jumbo v12, "bad process count: "

    #@13f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v11

    #@143
    move/from16 v0, v18

    #@145
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@148
    move-result-object v11

    #@149
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14c
    move-result-object v11

    #@14d
    move-object/from16 v0, p0

    #@14f
    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@151
    .line 938
    return-void

    #@152
    .line 940
    :cond_c
    if-lez v18, :cond_14

    #@154
    .line 941
    add-int/lit8 v18, v18, -0x1

    #@156
    .line 942
    move-object/from16 v0, p0

    #@158
    move-object/from16 v1, p1

    #@15a
    move/from16 v2, v27

    #@15c
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    #@15f
    move-result-object v9

    #@160
    .line 943
    .local v9, "procName":Ljava/lang/String;
    if-nez v9, :cond_d

    #@162
    .line 944
    const-string/jumbo v11, "bad process name"

    #@165
    move-object/from16 v0, p0

    #@167
    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@169
    .line 945
    return-void

    #@16a
    .line 947
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@16d
    move-result v21

    #@16e
    .line 948
    .local v21, "NUID":I
    if-gez v21, :cond_f

    #@170
    .line 949
    new-instance v11, Ljava/lang/StringBuilder;

    #@172
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@175
    const-string/jumbo v12, "bad uid count: "

    #@178
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v11

    #@17c
    move/from16 v0, v21

    #@17e
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@181
    move-result-object v11

    #@182
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@185
    move-result-object v11

    #@186
    move-object/from16 v0, p0

    #@188
    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@18a
    .line 950
    return-void

    #@18b
    .line 978
    .local v4, "proc":Lcom/android/internal/app/procstats/ProcessState;
    .local v6, "pkgName":Ljava/lang/String;
    .local v7, "uid":I
    .local v8, "vers":I
    :cond_e
    move-object/from16 v0, p0

    #@18d
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@18f
    invoke-virtual {v11, v9, v7, v4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    #@192
    .line 952
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "vers":I
    :cond_f
    if-lez v21, :cond_c

    #@194
    .line 953
    add-int/lit8 v21, v21, -0x1

    #@196
    .line 954
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@199
    move-result v7

    #@19a
    .line 955
    .restart local v7    # "uid":I
    if-gez v7, :cond_10

    #@19c
    .line 956
    new-instance v11, Ljava/lang/StringBuilder;

    #@19e
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@1a1
    const-string/jumbo v12, "bad uid: "

    #@1a4
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v11

    #@1a8
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v11

    #@1ac
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1af
    move-result-object v11

    #@1b0
    move-object/from16 v0, p0

    #@1b2
    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@1b4
    .line 957
    return-void

    #@1b5
    .line 959
    :cond_10
    move-object/from16 v0, p0

    #@1b7
    move-object/from16 v1, p1

    #@1b9
    move/from16 v2, v27

    #@1bb
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    #@1be
    move-result-object v6

    #@1bf
    .line 960
    .restart local v6    # "pkgName":Ljava/lang/String;
    if-nez v6, :cond_11

    #@1c1
    .line 961
    const-string/jumbo v11, "bad process package name"

    #@1c4
    move-object/from16 v0, p0

    #@1c6
    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@1c8
    .line 962
    return-void

    #@1c9
    .line 964
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@1cc
    move-result v8

    #@1cd
    .line 965
    .restart local v8    # "vers":I
    if-eqz v23, :cond_12

    #@1cf
    move-object/from16 v0, p0

    #@1d1
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@1d3
    invoke-virtual {v11, v9, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@1d6
    move-result-object v11

    #@1d7
    check-cast v11, Lcom/android/internal/app/procstats/ProcessState;

    #@1d9
    move-object v4, v11

    #@1da
    .line 966
    .restart local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :goto_2
    if-eqz v4, :cond_13

    #@1dc
    .line 967
    const/4 v11, 0x0

    #@1dd
    move-object/from16 v0, p1

    #@1df
    invoke-virtual {v4, v0, v11}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    #@1e2
    move-result v11

    #@1e3
    if-nez v11, :cond_e

    #@1e5
    .line 968
    return-void

    #@1e6
    .line 965
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_12
    const/4 v4, 0x0

    #@1e7
    goto :goto_2

    #@1e8
    .line 971
    .restart local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_13
    new-instance v4, Lcom/android/internal/app/procstats/ProcessState;

    #@1ea
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v5, p0

    #@1ec
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    #@1ef
    .line 972
    .restart local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    const/4 v11, 0x1

    #@1f0
    move-object/from16 v0, p1

    #@1f2
    invoke-virtual {v4, v0, v11}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    #@1f5
    move-result v11

    #@1f6
    if-nez v11, :cond_e

    #@1f8
    .line 973
    return-void

    #@1f9
    .line 984
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "vers":I
    .end local v9    # "procName":Ljava/lang/String;
    .end local v21    # "NUID":I
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@1fc
    move-result v17

    #@1fd
    .line 985
    .local v17, "NPKG":I
    if-gez v17, :cond_15

    #@1ff
    .line 986
    new-instance v11, Ljava/lang/StringBuilder;

    #@201
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@204
    const-string/jumbo v12, "bad package count: "

    #@207
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20a
    move-result-object v11

    #@20b
    move/from16 v0, v17

    #@20d
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@210
    move-result-object v11

    #@211
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@214
    move-result-object v11

    #@215
    move-object/from16 v0, p0

    #@217
    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@219
    .line 987
    return-void

    #@21a
    .line 989
    :cond_15
    if-lez v17, :cond_29

    #@21c
    .line 990
    add-int/lit8 v17, v17, -0x1

    #@21e
    .line 991
    move-object/from16 v0, p0

    #@220
    move-object/from16 v1, p1

    #@222
    move/from16 v2, v27

    #@224
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    #@227
    move-result-object v6

    #@228
    .line 992
    .restart local v6    # "pkgName":Ljava/lang/String;
    if-nez v6, :cond_16

    #@22a
    .line 993
    const-string/jumbo v11, "bad package name"

    #@22d
    move-object/from16 v0, p0

    #@22f
    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@231
    .line 994
    return-void

    #@232
    .line 996
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@235
    move-result v21

    #@236
    .line 997
    .restart local v21    # "NUID":I
    if-gez v21, :cond_17

    #@238
    .line 998
    new-instance v11, Ljava/lang/StringBuilder;

    #@23a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@23d
    const-string/jumbo v12, "bad uid count: "

    #@240
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@243
    move-result-object v11

    #@244
    move/from16 v0, v21

    #@246
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@249
    move-result-object v11

    #@24a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24d
    move-result-object v11

    #@24e
    move-object/from16 v0, p0

    #@250
    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@252
    .line 999
    return-void

    #@253
    .line 1001
    :cond_17
    if-lez v21, :cond_15

    #@255
    .line 1002
    add-int/lit8 v21, v21, -0x1

    #@257
    .line 1003
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@25a
    move-result v7

    #@25b
    .line 1004
    .restart local v7    # "uid":I
    if-gez v7, :cond_18

    #@25d
    .line 1005
    new-instance v11, Ljava/lang/StringBuilder;

    #@25f
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@262
    const-string/jumbo v12, "bad uid: "

    #@265
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@268
    move-result-object v11

    #@269
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26c
    move-result-object v11

    #@26d
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@270
    move-result-object v11

    #@271
    move-object/from16 v0, p0

    #@273
    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@275
    .line 1006
    return-void

    #@276
    .line 1008
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@279
    move-result v22

    #@27a
    .line 1009
    .local v22, "NVERS":I
    if-gez v22, :cond_19

    #@27c
    .line 1010
    new-instance v11, Ljava/lang/StringBuilder;

    #@27e
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@281
    const-string/jumbo v12, "bad versions count: "

    #@284
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@287
    move-result-object v11

    #@288
    move/from16 v0, v22

    #@28a
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28d
    move-result-object v11

    #@28e
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@291
    move-result-object v11

    #@292
    move-object/from16 v0, p0

    #@294
    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@296
    .line 1011
    return-void

    #@297
    .line 1013
    :cond_19
    if-lez v22, :cond_17

    #@299
    .line 1014
    add-int/lit8 v22, v22, -0x1

    #@29b
    .line 1015
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@29e
    move-result v8

    #@29f
    .line 1016
    .restart local v8    # "vers":I
    new-instance v26, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    #@2a1
    move-object/from16 v0, v26

    #@2a3
    invoke-direct {v0, v6, v7}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    #@2a6
    .line 1017
    .local v26, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object/from16 v0, p0

    #@2a8
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@2aa
    invoke-virtual {v11, v6, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@2ad
    move-result-object v28

    #@2ae
    check-cast v28, Landroid/util/SparseArray;

    #@2b0
    .line 1018
    .local v28, "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    if-nez v28, :cond_1a

    #@2b2
    .line 1019
    new-instance v28, Landroid/util/SparseArray;

    #@2b4
    .end local v28    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-direct/range {v28 .. v28}, Landroid/util/SparseArray;-><init>()V

    #@2b7
    .line 1020
    .restart local v28    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    move-object/from16 v0, p0

    #@2b9
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@2bb
    move-object/from16 v0, v28

    #@2bd
    invoke-virtual {v11, v6, v7, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    #@2c0
    .line 1022
    :cond_1a
    move-object/from16 v0, v28

    #@2c2
    move-object/from16 v1, v26

    #@2c4
    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@2c7
    .line 1023
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@2ca
    move-result v19

    #@2cb
    .line 1024
    .local v19, "NPROCS":I
    if-gez v19, :cond_1c

    #@2cd
    .line 1025
    new-instance v11, Ljava/lang/StringBuilder;

    #@2cf
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@2d2
    const-string/jumbo v12, "bad package process count: "

    #@2d5
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d8
    move-result-object v11

    #@2d9
    move/from16 v0, v19

    #@2db
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2de
    move-result-object v11

    #@2df
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e2
    move-result-object v11

    #@2e3
    move-object/from16 v0, p0

    #@2e5
    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@2e7
    .line 1026
    return-void

    #@2e8
    .line 1064
    .restart local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .local v5, "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v9    # "procName":Ljava/lang/String;
    .local v24, "hasProc":I
    :cond_1b
    move-object/from16 v0, v26

    #@2ea
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@2ec
    invoke-virtual {v11, v9, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ef
    .line 1028
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v5    # "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v9    # "procName":Ljava/lang/String;
    .end local v24    # "hasProc":I
    :cond_1c
    :goto_3
    if-lez v19, :cond_22

    #@2f1
    .line 1029
    add-int/lit8 v19, v19, -0x1

    #@2f3
    .line 1030
    move-object/from16 v0, p0

    #@2f5
    move-object/from16 v1, p1

    #@2f7
    move/from16 v2, v27

    #@2f9
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    #@2fc
    move-result-object v9

    #@2fd
    .line 1031
    .restart local v9    # "procName":Ljava/lang/String;
    if-nez v9, :cond_1d

    #@2ff
    .line 1032
    const-string/jumbo v11, "bad package process name"

    #@302
    move-object/from16 v0, p0

    #@304
    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@306
    .line 1033
    return-void

    #@307
    .line 1035
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@30a
    move-result v24

    #@30b
    .line 1038
    .restart local v24    # "hasProc":I
    move-object/from16 v0, p0

    #@30d
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@30f
    invoke-virtual {v11, v9, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@312
    move-result-object v5

    #@313
    check-cast v5, Lcom/android/internal/app/procstats/ProcessState;

    #@315
    .line 1041
    .restart local v5    # "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v5, :cond_1e

    #@317
    .line 1042
    new-instance v11, Ljava/lang/StringBuilder;

    #@319
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@31c
    const-string/jumbo v12, "no common proc: "

    #@31f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@322
    move-result-object v11

    #@323
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@326
    move-result-object v11

    #@327
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32a
    move-result-object v11

    #@32b
    move-object/from16 v0, p0

    #@32d
    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@32f
    .line 1043
    return-void

    #@330
    .line 1045
    :cond_1e
    if-eqz v24, :cond_21

    #@332
    .line 1050
    if-eqz v23, :cond_1f

    #@334
    move-object/from16 v0, v26

    #@336
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@338
    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33b
    move-result-object v11

    #@33c
    check-cast v11, Lcom/android/internal/app/procstats/ProcessState;

    #@33e
    move-object v4, v11

    #@33f
    .line 1051
    .restart local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :goto_4
    if-eqz v4, :cond_20

    #@341
    .line 1052
    const/4 v11, 0x0

    #@342
    move-object/from16 v0, p1

    #@344
    invoke-virtual {v4, v0, v11}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    #@347
    move-result v11

    #@348
    if-nez v11, :cond_1b

    #@34a
    .line 1053
    return-void

    #@34b
    .line 1050
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_1f
    const/4 v4, 0x0

    #@34c
    goto :goto_4

    #@34d
    .line 1056
    .restart local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_20
    new-instance v4, Lcom/android/internal/app/procstats/ProcessState;

    #@34f
    .line 1057
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    const-wide/16 v10, 0x0

    #@351
    .line 1056
    invoke-direct/range {v4 .. v11}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    #@354
    .line 1058
    .restart local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    const/4 v11, 0x1

    #@355
    move-object/from16 v0, p1

    #@357
    invoke-virtual {v4, v0, v11}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    #@35a
    move-result v11

    #@35b
    if-nez v11, :cond_1b

    #@35d
    .line 1059
    return-void

    #@35e
    .line 1068
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_21
    move-object/from16 v0, v26

    #@360
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@362
    invoke-virtual {v11, v9, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@365
    goto :goto_3

    #@366
    .line 1071
    .end local v5    # "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v9    # "procName":Ljava/lang/String;
    .end local v24    # "hasProc":I
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@369
    move-result v20

    #@36a
    .line 1072
    .local v20, "NSRVS":I
    if-gez v20, :cond_24

    #@36c
    .line 1073
    new-instance v11, Ljava/lang/StringBuilder;

    #@36e
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@371
    const-string/jumbo v12, "bad package service count: "

    #@374
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@377
    move-result-object v11

    #@378
    move/from16 v0, v20

    #@37a
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37d
    move-result-object v11

    #@37e
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@381
    move-result-object v11

    #@382
    move-object/from16 v0, p0

    #@384
    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@386
    .line 1074
    return-void

    #@387
    .line 1093
    .local v10, "serv":Lcom/android/internal/app/procstats/ServiceState;
    .local v13, "serviceName":Ljava/lang/String;
    :cond_23
    move-object/from16 v0, v26

    #@389
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@38b
    invoke-virtual {v11, v13, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38e
    .line 1076
    .end local v10    # "serv":Lcom/android/internal/app/procstats/ServiceState;
    .end local v13    # "serviceName":Ljava/lang/String;
    :cond_24
    if-lez v20, :cond_19

    #@390
    .line 1077
    add-int/lit8 v20, v20, -0x1

    #@392
    .line 1078
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@395
    move-result-object v13

    #@396
    .line 1079
    .restart local v13    # "serviceName":Ljava/lang/String;
    if-nez v13, :cond_25

    #@398
    .line 1080
    const-string/jumbo v11, "bad package service name"

    #@39b
    move-object/from16 v0, p0

    #@39d
    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@39f
    .line 1081
    return-void

    #@3a0
    .line 1083
    :cond_25
    const/16 v11, 0x9

    #@3a2
    move/from16 v0, v27

    #@3a4
    if-le v0, v11, :cond_27

    #@3a6
    move-object/from16 v0, p0

    #@3a8
    move-object/from16 v1, p1

    #@3aa
    move/from16 v2, v27

    #@3ac
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    #@3af
    move-result-object v14

    #@3b0
    .line 1084
    :goto_5
    if-eqz v23, :cond_28

    #@3b2
    move-object/from16 v0, v26

    #@3b4
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@3b6
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3b9
    move-result-object v11

    #@3ba
    check-cast v11, Lcom/android/internal/app/procstats/ServiceState;

    #@3bc
    move-object v10, v11

    #@3bd
    .line 1085
    .restart local v10    # "serv":Lcom/android/internal/app/procstats/ServiceState;
    :goto_6
    if-nez v10, :cond_26

    #@3bf
    .line 1086
    new-instance v10, Lcom/android/internal/app/procstats/ServiceState;

    #@3c1
    .end local v10    # "serv":Lcom/android/internal/app/procstats/ServiceState;
    const/4 v15, 0x0

    #@3c2
    move-object/from16 v11, p0

    #@3c4
    move-object v12, v6

    #@3c5
    invoke-direct/range {v10 .. v15}, Lcom/android/internal/app/procstats/ServiceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    #@3c8
    .line 1088
    .restart local v10    # "serv":Lcom/android/internal/app/procstats/ServiceState;
    :cond_26
    move-object/from16 v0, p1

    #@3ca
    invoke-virtual {v10, v0}, Lcom/android/internal/app/procstats/ServiceState;->readFromParcel(Landroid/os/Parcel;)Z

    #@3cd
    move-result v11

    #@3ce
    if-nez v11, :cond_23

    #@3d0
    .line 1089
    return-void

    #@3d1
    .line 1083
    .end local v10    # "serv":Lcom/android/internal/app/procstats/ServiceState;
    :cond_27
    const/4 v14, 0x0

    #@3d2
    .local v14, "processName":Ljava/lang/String;
    goto :goto_5

    #@3d3
    .line 1084
    .end local v14    # "processName":Ljava/lang/String;
    :cond_28
    const/4 v10, 0x0

    #@3d4
    goto :goto_6

    #@3d5
    .line 1100
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "vers":I
    .end local v13    # "serviceName":Ljava/lang/String;
    .end local v19    # "NPROCS":I
    .end local v20    # "NSRVS":I
    .end local v21    # "NUID":I
    .end local v22    # "NVERS":I
    .end local v26    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v28    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_29
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3d8
    move-result v16

    #@3d9
    .line 1101
    .local v16, "NPAGETYPES":I
    move-object/from16 v0, p0

    #@3db
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    #@3dd
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    #@3e0
    .line 1102
    move-object/from16 v0, p0

    #@3e2
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    #@3e4
    move/from16 v0, v16

    #@3e6
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    #@3e9
    .line 1103
    move-object/from16 v0, p0

    #@3eb
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    #@3ed
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    #@3f0
    .line 1104
    move-object/from16 v0, p0

    #@3f2
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    #@3f4
    move/from16 v0, v16

    #@3f6
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    #@3f9
    .line 1105
    move-object/from16 v0, p0

    #@3fb
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    #@3fd
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    #@400
    .line 1106
    move-object/from16 v0, p0

    #@402
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    #@404
    move/from16 v0, v16

    #@406
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    #@409
    .line 1107
    const/16 v25, 0x0

    #@40b
    .local v25, "i":I
    :goto_7
    move/from16 v0, v25

    #@40d
    move/from16 v1, v16

    #@40f
    if-ge v0, v1, :cond_2a

    #@411
    .line 1108
    move-object/from16 v0, p0

    #@413
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    #@415
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@418
    move-result v12

    #@419
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41c
    move-result-object v12

    #@41d
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@420
    .line 1109
    move-object/from16 v0, p0

    #@422
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    #@424
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@427
    move-result-object v12

    #@428
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@42b
    .line 1110
    move-object/from16 v0, p0

    #@42d
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    #@42f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    #@432
    move-result-object v12

    #@433
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@436
    .line 1107
    add-int/lit8 v25, v25, 0x1

    #@438
    goto :goto_7

    #@439
    .line 1113
    :cond_2a
    const/4 v11, 0x0

    #@43a
    move-object/from16 v0, p0

    #@43c
    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    #@43e
    .line 887
    return-void
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 397
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetCommon()V

    #@3
    .line 398
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@5
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    #@c
    .line 399
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@e
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    #@15
    .line 400
    const/4 v0, -0x1

    #@16
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    #@18
    .line 401
    const-wide/16 v0, 0x0

    #@1a
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    #@1c
    .line 395
    return-void
.end method

.method public resetSafely()V
    .locals 19

    #@0
    .prologue
    .line 407
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetCommon()V

    #@3
    .line 410
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6
    move-result-wide v8

    #@7
    .line 411
    .local v8, "now":J
    move-object/from16 v0, p0

    #@9
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@b
    move-object/from16 v17, v0

    #@d
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@10
    move-result-object v11

    #@11
    .line 412
    .local v11, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    #@14
    move-result v17

    #@15
    add-int/lit8 v2, v17, -0x1

    #@17
    .local v2, "ip":I
    :goto_0
    if-ltz v2, :cond_1

    #@19
    .line 413
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1c
    move-result-object v15

    #@1d
    check-cast v15, Landroid/util/SparseArray;

    #@1f
    .line 414
    .local v15, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    #@22
    move-result v17

    #@23
    add-int/lit8 v5, v17, -0x1

    #@25
    .local v5, "iu":I
    :goto_1
    if-ltz v5, :cond_0

    #@27
    .line 415
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2a
    move-result-object v17

    #@2b
    check-cast v17, Lcom/android/internal/app/procstats/ProcessState;

    #@2d
    const/16 v18, 0x0

    #@2f
    move/from16 v0, v18

    #@31
    move-object/from16 v1, v17

    #@33
    iput v0, v1, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    #@35
    .line 414
    add-int/lit8 v5, v5, -0x1

    #@37
    goto :goto_1

    #@38
    .line 412
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@3a
    goto :goto_0

    #@3b
    .line 421
    .end local v5    # "iu":I
    .end local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_1
    move-object/from16 v0, p0

    #@3d
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@3f
    move-object/from16 v17, v0

    #@41
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@44
    move-result-object v7

    #@45
    .line 422
    .local v7, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    #@48
    move-result v17

    #@49
    add-int/lit8 v2, v17, -0x1

    #@4b
    :goto_2
    if-ltz v2, :cond_b

    #@4d
    .line 423
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@50
    move-result-object v14

    #@51
    check-cast v14, Landroid/util/SparseArray;

    #@53
    .line 424
    .local v14, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    #@56
    move-result v17

    #@57
    add-int/lit8 v5, v17, -0x1

    #@59
    .restart local v5    # "iu":I
    :goto_3
    if-ltz v5, :cond_9

    #@5b
    .line 425
    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@5e
    move-result-object v16

    #@5f
    check-cast v16, Landroid/util/SparseArray;

    #@61
    .line 426
    .local v16, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    #@64
    move-result v17

    #@65
    add-int/lit8 v6, v17, -0x1

    #@67
    .local v6, "iv":I
    :goto_4
    if-ltz v6, :cond_7

    #@69
    .line 427
    move-object/from16 v0, v16

    #@6b
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@6e
    move-result-object v10

    #@6f
    check-cast v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    #@71
    .line 428
    .local v10, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@73
    move-object/from16 v17, v0

    #@75
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    #@78
    move-result v17

    #@79
    add-int/lit8 v3, v17, -0x1

    #@7b
    .local v3, "iproc":I
    :goto_5
    if-ltz v3, :cond_3

    #@7d
    .line 429
    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@7f
    move-object/from16 v17, v0

    #@81
    move-object/from16 v0, v17

    #@83
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@86
    move-result-object v12

    #@87
    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    #@89
    .line 430
    .local v12, "ps":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    #@8c
    move-result v17

    #@8d
    if-eqz v17, :cond_2

    #@8f
    .line 431
    invoke-virtual {v12, v8, v9}, Lcom/android/internal/app/procstats/ProcessState;->resetSafely(J)V

    #@92
    .line 432
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    #@95
    move-result-object v17

    #@96
    move-object/from16 v0, v17

    #@98
    iget v0, v0, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    #@9a
    move/from16 v18, v0

    #@9c
    add-int/lit8 v18, v18, 0x1

    #@9e
    move/from16 v0, v18

    #@a0
    move-object/from16 v1, v17

    #@a2
    iput v0, v1, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    #@a4
    .line 433
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    #@a7
    move-result-object v17

    #@a8
    move-object/from16 v0, v17

    #@aa
    iput-object v12, v0, Lcom/android/internal/app/procstats/ProcessState;->tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

    #@ac
    .line 428
    :goto_6
    add-int/lit8 v3, v3, -0x1

    #@ae
    goto :goto_5

    #@af
    .line 435
    :cond_2
    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@b1
    move-object/from16 v17, v0

    #@b3
    move-object/from16 v0, v17

    #@b5
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@b8
    move-result-object v17

    #@b9
    check-cast v17, Lcom/android/internal/app/procstats/ProcessState;

    #@bb
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/procstats/ProcessState;->makeDead()V

    #@be
    .line 436
    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@c0
    move-object/from16 v17, v0

    #@c2
    move-object/from16 v0, v17

    #@c4
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@c7
    goto :goto_6

    #@c8
    .line 439
    .end local v12    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    :cond_3
    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@ca
    move-object/from16 v17, v0

    #@cc
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    #@cf
    move-result v17

    #@d0
    add-int/lit8 v4, v17, -0x1

    #@d2
    .local v4, "isvc":I
    :goto_7
    if-ltz v4, :cond_5

    #@d4
    .line 440
    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@d6
    move-object/from16 v17, v0

    #@d8
    move-object/from16 v0, v17

    #@da
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@dd
    move-result-object v13

    #@de
    check-cast v13, Lcom/android/internal/app/procstats/ServiceState;

    #@e0
    .line 441
    .local v13, "ss":Lcom/android/internal/app/procstats/ServiceState;
    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    #@e3
    move-result v17

    #@e4
    if-eqz v17, :cond_4

    #@e6
    .line 442
    invoke-virtual {v13, v8, v9}, Lcom/android/internal/app/procstats/ServiceState;->resetSafely(J)V

    #@e9
    .line 439
    :goto_8
    add-int/lit8 v4, v4, -0x1

    #@eb
    goto :goto_7

    #@ec
    .line 444
    :cond_4
    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@ee
    move-object/from16 v17, v0

    #@f0
    move-object/from16 v0, v17

    #@f2
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@f5
    goto :goto_8

    #@f6
    .line 447
    .end local v13    # "ss":Lcom/android/internal/app/procstats/ServiceState;
    :cond_5
    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@f8
    move-object/from16 v17, v0

    #@fa
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    #@fd
    move-result v17

    #@fe
    if-gtz v17, :cond_6

    #@100
    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@102
    move-object/from16 v17, v0

    #@104
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    #@107
    move-result v17

    #@108
    if-gtz v17, :cond_6

    #@10a
    .line 448
    move-object/from16 v0, v16

    #@10c
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->removeAt(I)V

    #@10f
    .line 426
    :cond_6
    add-int/lit8 v6, v6, -0x1

    #@111
    goto/16 :goto_4

    #@113
    .line 451
    .end local v3    # "iproc":I
    .end local v4    # "isvc":I
    .end local v10    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    #@116
    move-result v17

    #@117
    if-gtz v17, :cond_8

    #@119
    .line 452
    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->removeAt(I)V

    #@11c
    .line 424
    :cond_8
    add-int/lit8 v5, v5, -0x1

    #@11e
    goto/16 :goto_3

    #@120
    .line 455
    .end local v6    # "iv":I
    .end local v16    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_9
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    #@123
    move-result v17

    #@124
    if-gtz v17, :cond_a

    #@126
    .line 456
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@129
    .line 422
    :cond_a
    add-int/lit8 v2, v2, -0x1

    #@12b
    goto/16 :goto_2

    #@12d
    .line 461
    .end local v5    # "iu":I
    .end local v14    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_b
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    #@130
    move-result v17

    #@131
    add-int/lit8 v2, v17, -0x1

    #@133
    :goto_9
    if-ltz v2, :cond_11

    #@135
    .line 462
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@138
    move-result-object v15

    #@139
    check-cast v15, Landroid/util/SparseArray;

    #@13b
    .line 463
    .restart local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    #@13e
    move-result v17

    #@13f
    add-int/lit8 v5, v17, -0x1

    #@141
    .restart local v5    # "iu":I
    :goto_a
    if-ltz v5, :cond_f

    #@143
    .line 464
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@146
    move-result-object v12

    #@147
    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    #@149
    .line 465
    .restart local v12    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    #@14c
    move-result v17

    #@14d
    if-nez v17, :cond_c

    #@14f
    iget v0, v12, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    #@151
    move/from16 v17, v0

    #@153
    if-lez v17, :cond_e

    #@155
    .line 472
    :cond_c
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->isActive()Z

    #@158
    move-result v17

    #@159
    if-nez v17, :cond_d

    #@15b
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    #@15e
    move-result v17

    #@15f
    if-eqz v17, :cond_d

    #@161
    iget v0, v12, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    #@163
    move/from16 v17, v0

    #@165
    const/16 v18, 0x1

    #@167
    move/from16 v0, v17

    #@169
    move/from16 v1, v18

    #@16b
    if-ne v0, v1, :cond_d

    #@16d
    .line 474
    iget-object v12, v12, Lcom/android/internal/app/procstats/ProcessState;->tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

    #@16f
    .line 475
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->makeStandalone()V

    #@172
    .line 476
    invoke-virtual {v15, v5, v12}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    #@175
    .line 463
    :goto_b
    add-int/lit8 v5, v5, -0x1

    #@177
    goto :goto_a

    #@178
    .line 478
    :cond_d
    invoke-virtual {v12, v8, v9}, Lcom/android/internal/app/procstats/ProcessState;->resetSafely(J)V

    #@17b
    goto :goto_b

    #@17c
    .line 481
    :cond_e
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->makeDead()V

    #@17f
    .line 482
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->removeAt(I)V

    #@182
    goto :goto_b

    #@183
    .line 485
    .end local v12    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    :cond_f
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    #@186
    move-result v17

    #@187
    if-gtz v17, :cond_10

    #@189
    .line 486
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@18c
    .line 461
    :cond_10
    add-int/lit8 v2, v2, -0x1

    #@18e
    goto :goto_9

    #@18f
    .line 490
    .end local v5    # "iu":I
    .end local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_11
    move-object/from16 v0, p0

    #@191
    iput-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    #@193
    .line 405
    return-void
.end method

.method public updateFragmentation()V
    .locals 9

    #@0
    .prologue
    .line 535
    const/4 v4, 0x0

    #@1
    .line 537
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    #@3
    new-instance v7, Ljava/io/FileReader;

    #@5
    const-string/jumbo v8, "/proc/pagetypeinfo"

    #@8
    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    #@b
    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 538
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->sPageTypeRegex:Ljava/util/regex/Pattern;

    #@10
    const-string/jumbo v8, ""

    #@13
    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@16
    move-result-object v3

    #@17
    .line 539
    .local v3, "matcher":Ljava/util/regex/Matcher;
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    #@1c
    .line 540
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    #@21
    .line 541
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    #@26
    .line 543
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@29
    move-result-object v2

    #@2a
    .line 544
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_2

    #@2c
    .line 564
    if-eqz v5, :cond_1

    #@2e
    .line 566
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@31
    .line 533
    :cond_1
    :goto_1
    return-void

    #@32
    .line 547
    :cond_2
    :try_start_3
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@35
    .line 548
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    #@38
    move-result v7

    #@39
    if-eqz v7, :cond_0

    #@3b
    .line 549
    const/4 v7, 0x1

    #@3c
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@3f
    move-result-object v7

    #@40
    const/16 v8, 0xa

    #@42
    invoke-static {v7, v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    #@45
    move-result-object v6

    #@46
    .line 550
    .local v6, "zone":Ljava/lang/Integer;
    if-eqz v6, :cond_0

    #@48
    .line 553
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    #@4a
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4d
    .line 554
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    #@4f
    const/4 v8, 0x2

    #@50
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@53
    move-result-object v8

    #@54
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@57
    .line 555
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    #@59
    const/4 v8, 0x3

    #@5a
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@5d
    move-result-object v8

    #@5e
    invoke-static {v8}, Lcom/android/internal/app/procstats/ProcessStats;->splitAndParseNumbers(Ljava/lang/String;)[I

    #@61
    move-result-object v8

    #@62
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@65
    goto :goto_0

    #@66
    .line 558
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v6    # "zone":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    #@67
    .local v1, "ex":Ljava/io/IOException;
    move-object v4, v5

    #@68
    .line 559
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    #@6a
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    #@6d
    .line 560
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    #@6f
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    #@72
    .line 561
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    #@74
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@77
    .line 564
    if-eqz v4, :cond_3

    #@79
    .line 566
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    #@7c
    .line 562
    :cond_3
    :goto_3
    return-void

    #@7d
    .line 567
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "matcher":Ljava/util/regex/Matcher;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    #@7e
    .local v0, "allHopeIsLost":Ljava/io/IOException;
    goto :goto_1

    #@7f
    .end local v0    # "allHopeIsLost":Ljava/io/IOException;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    #@80
    .restart local v0    # "allHopeIsLost":Ljava/io/IOException;
    goto :goto_3

    #@81
    .line 563
    .end local v0    # "allHopeIsLost":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    #@82
    .line 564
    :goto_4
    if-eqz v4, :cond_4

    #@84
    .line 566
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@87
    .line 563
    :cond_4
    :goto_5
    throw v7

    #@88
    .line 567
    :catch_3
    move-exception v0

    #@89
    .restart local v0    # "allHopeIsLost":Ljava/io/IOException;
    goto :goto_5

    #@8a
    .line 563
    .end local v0    # "allHopeIsLost":Ljava/io/IOException;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    #@8b
    move-object v4, v5

    #@8c
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    goto :goto_4

    #@8d
    .line 558
    .local v4, "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    #@8e
    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 703
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    #@7
    .line 702
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;JI)V
    .locals 32
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 708
    const v25, 0x50535454

    #@3
    move-object/from16 v0, p1

    #@5
    move/from16 v1, v25

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 709
    const/16 v25, 0x15

    #@c
    move-object/from16 v0, p1

    #@e
    move/from16 v1, v25

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 710
    const/16 v25, 0xe

    #@15
    move-object/from16 v0, p1

    #@17
    move/from16 v1, v25

    #@19
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 711
    const/16 v25, 0x8

    #@1e
    move-object/from16 v0, p1

    #@20
    move/from16 v1, v25

    #@22
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 712
    const/16 v25, 0x7

    #@27
    move-object/from16 v0, p1

    #@29
    move/from16 v1, v25

    #@2b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 713
    const/16 v25, 0x10

    #@30
    move-object/from16 v0, p1

    #@32
    move/from16 v1, v25

    #@34
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 714
    const/16 v25, 0x1000

    #@39
    move-object/from16 v0, p1

    #@3b
    move/from16 v1, v25

    #@3d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@40
    .line 716
    new-instance v25, Landroid/util/ArrayMap;

    #@42
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@46
    move-object/from16 v26, v0

    #@48
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/app/ProcessMap;->size()I

    #@4b
    move-result v26

    #@4c
    invoke-direct/range {v25 .. v26}, Landroid/util/ArrayMap;-><init>(I)V

    #@4f
    move-object/from16 v0, v25

    #@51
    move-object/from16 v1, p0

    #@53
    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    #@55
    .line 719
    move-object/from16 v0, p0

    #@57
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@59
    move-object/from16 v25, v0

    #@5b
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@5e
    move-result-object v20

    #@5f
    .line 720
    .local v20, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    #@62
    move-result v6

    #@63
    .line 721
    .local v6, "NPROC":I
    const/4 v12, 0x0

    #@64
    .local v12, "ip":I
    :goto_0
    if-ge v12, v6, :cond_1

    #@66
    .line 722
    move-object/from16 v0, v20

    #@68
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@6b
    move-result-object v23

    #@6c
    check-cast v23, Landroid/util/SparseArray;

    #@6e
    .line 723
    .local v23, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    #@71
    move-result v9

    #@72
    .line 724
    .local v9, "NUID":I
    const/4 v15, 0x0

    #@73
    .local v15, "iu":I
    :goto_1
    if-ge v15, v9, :cond_0

    #@75
    .line 725
    move-object/from16 v0, v23

    #@77
    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@7a
    move-result-object v25

    #@7b
    check-cast v25, Lcom/android/internal/app/procstats/ProcessState;

    #@7d
    move-object/from16 v0, v25

    #@7f
    move-wide/from16 v1, p2

    #@81
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    #@84
    .line 724
    add-int/lit8 v15, v15, 0x1

    #@86
    goto :goto_1

    #@87
    .line 721
    :cond_0
    add-int/lit8 v12, v12, 0x1

    #@89
    goto :goto_0

    #@8a
    .line 728
    .end local v9    # "NUID":I
    .end local v15    # "iu":I
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_1
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@8e
    move-object/from16 v25, v0

    #@90
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@93
    move-result-object v17

    #@94
    .line 729
    .local v17, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    #@97
    move-result v5

    #@98
    .line 730
    .local v5, "NPKG":I
    const/4 v12, 0x0

    #@99
    :goto_2
    if-ge v12, v5, :cond_7

    #@9b
    .line 731
    move-object/from16 v0, v17

    #@9d
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@a0
    move-result-object v22

    #@a1
    check-cast v22, Landroid/util/SparseArray;

    #@a3
    .line 732
    .local v22, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    #@a6
    move-result v9

    #@a7
    .line 733
    .restart local v9    # "NUID":I
    const/4 v15, 0x0

    #@a8
    .restart local v15    # "iu":I
    :goto_3
    if-ge v15, v9, :cond_6

    #@aa
    .line 734
    move-object/from16 v0, v22

    #@ac
    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@af
    move-result-object v24

    #@b0
    check-cast v24, Landroid/util/SparseArray;

    #@b2
    .line 735
    .local v24, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    #@b5
    move-result v10

    #@b6
    .line 736
    .local v10, "NVERS":I
    const/16 v16, 0x0

    #@b8
    .local v16, "iv":I
    :goto_4
    move/from16 v0, v16

    #@ba
    if-ge v0, v10, :cond_5

    #@bc
    .line 737
    move-object/from16 v0, v24

    #@be
    move/from16 v1, v16

    #@c0
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@c3
    move-result-object v18

    #@c4
    check-cast v18, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    #@c6
    .line 738
    .local v18, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object/from16 v0, v18

    #@c8
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@ca
    move-object/from16 v25, v0

    #@cc
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    #@cf
    move-result v7

    #@d0
    .line 739
    .local v7, "NPROCS":I
    const/4 v13, 0x0

    #@d1
    .local v13, "iproc":I
    :goto_5
    if-ge v13, v7, :cond_3

    #@d3
    .line 740
    move-object/from16 v0, v18

    #@d5
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@d7
    move-object/from16 v25, v0

    #@d9
    move-object/from16 v0, v25

    #@db
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@de
    move-result-object v19

    #@df
    check-cast v19, Lcom/android/internal/app/procstats/ProcessState;

    #@e1
    .line 741
    .local v19, "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    #@e4
    move-result-object v25

    #@e5
    move-object/from16 v0, v25

    #@e7
    move-object/from16 v1, v19

    #@e9
    if-eq v0, v1, :cond_2

    #@eb
    .line 742
    move-object/from16 v0, v19

    #@ed
    move-wide/from16 v1, p2

    #@ef
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    #@f2
    .line 739
    :cond_2
    add-int/lit8 v13, v13, 0x1

    #@f4
    goto :goto_5

    #@f5
    .line 745
    .end local v19    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_3
    move-object/from16 v0, v18

    #@f7
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@f9
    move-object/from16 v25, v0

    #@fb
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    #@fe
    move-result v8

    #@ff
    .line 746
    .local v8, "NSRVS":I
    const/4 v14, 0x0

    #@100
    .local v14, "isvc":I
    :goto_6
    if-ge v14, v8, :cond_4

    #@102
    .line 747
    move-object/from16 v0, v18

    #@104
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@106
    move-object/from16 v25, v0

    #@108
    move-object/from16 v0, v25

    #@10a
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@10d
    move-result-object v25

    #@10e
    check-cast v25, Lcom/android/internal/app/procstats/ServiceState;

    #@110
    move-object/from16 v0, v25

    #@112
    move-wide/from16 v1, p2

    #@114
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->commitStateTime(J)V

    #@117
    .line 746
    add-int/lit8 v14, v14, 0x1

    #@119
    goto :goto_6

    #@11a
    .line 736
    :cond_4
    add-int/lit8 v16, v16, 0x1

    #@11c
    goto :goto_4

    #@11d
    .line 733
    .end local v7    # "NPROCS":I
    .end local v8    # "NSRVS":I
    .end local v13    # "iproc":I
    .end local v14    # "isvc":I
    .end local v18    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_5
    add-int/lit8 v15, v15, 0x1

    #@11f
    goto :goto_3

    #@120
    .line 730
    .end local v10    # "NVERS":I
    .end local v16    # "iv":I
    .end local v24    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_6
    add-int/lit8 v12, v12, 0x1

    #@122
    goto/16 :goto_2

    #@124
    .line 753
    .end local v9    # "NUID":I
    .end local v15    # "iu":I
    .end local v22    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_7
    move-object/from16 v0, p0

    #@126
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    #@128
    move-wide/from16 v26, v0

    #@12a
    move-object/from16 v0, p1

    #@12c
    move-wide/from16 v1, v26

    #@12e
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@131
    .line 754
    move-object/from16 v0, p0

    #@133
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    #@135
    move-wide/from16 v26, v0

    #@137
    move-object/from16 v0, p1

    #@139
    move-wide/from16 v1, v26

    #@13b
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@13e
    .line 755
    move-object/from16 v0, p0

    #@140
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    #@142
    move-wide/from16 v26, v0

    #@144
    move-object/from16 v0, p1

    #@146
    move-wide/from16 v1, v26

    #@148
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@14b
    .line 756
    move-object/from16 v0, p0

    #@14d
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    #@14f
    move-wide/from16 v26, v0

    #@151
    move-object/from16 v0, p1

    #@153
    move-wide/from16 v1, v26

    #@155
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@158
    .line 757
    move-object/from16 v0, p0

    #@15a
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    #@15c
    move-wide/from16 v26, v0

    #@15e
    move-object/from16 v0, p1

    #@160
    move-wide/from16 v1, v26

    #@162
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@165
    .line 758
    move-object/from16 v0, p0

    #@167
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    #@169
    move-object/from16 v25, v0

    #@16b
    move-object/from16 v0, p1

    #@16d
    move-object/from16 v1, v25

    #@16f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@172
    .line 759
    move-object/from16 v0, p0

    #@174
    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    #@176
    move/from16 v25, v0

    #@178
    if-eqz v25, :cond_9

    #@17a
    const/16 v25, 0x1

    #@17c
    :goto_7
    move-object/from16 v0, p1

    #@17e
    move/from16 v1, v25

    #@180
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@183
    .line 760
    move-object/from16 v0, p0

    #@185
    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    #@187
    move/from16 v25, v0

    #@189
    move-object/from16 v0, p1

    #@18b
    move/from16 v1, v25

    #@18d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@190
    .line 762
    move-object/from16 v0, p0

    #@192
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@194
    move-object/from16 v25, v0

    #@196
    move-object/from16 v0, v25

    #@198
    move-object/from16 v1, p1

    #@19a
    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->writeToParcel(Landroid/os/Parcel;)V

    #@19d
    .line 764
    move-object/from16 v0, p0

    #@19f
    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    #@1a1
    move/from16 v25, v0

    #@1a3
    const/16 v26, -0x1

    #@1a5
    move/from16 v0, v25

    #@1a7
    move/from16 v1, v26

    #@1a9
    if-eq v0, v1, :cond_8

    #@1ab
    .line 765
    move-object/from16 v0, p0

    #@1ad
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    #@1af
    move-object/from16 v25, v0

    #@1b1
    move-object/from16 v0, p0

    #@1b3
    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    #@1b5
    move/from16 v26, v0

    #@1b7
    aget-wide v28, v25, v26

    #@1b9
    move-object/from16 v0, p0

    #@1bb
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    #@1bd
    move-wide/from16 v30, v0

    #@1bf
    sub-long v30, p2, v30

    #@1c1
    add-long v28, v28, v30

    #@1c3
    aput-wide v28, v25, v26

    #@1c5
    .line 766
    move-wide/from16 v0, p2

    #@1c7
    move-object/from16 v2, p0

    #@1c9
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    #@1cb
    .line 768
    :cond_8
    move-object/from16 v0, p0

    #@1cd
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    #@1cf
    move-object/from16 v25, v0

    #@1d1
    move-object/from16 v0, p0

    #@1d3
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    #@1d5
    move-object/from16 v26, v0

    #@1d7
    move-object/from16 v0, v26

    #@1d9
    array-length v0, v0

    #@1da
    move/from16 v26, v0

    #@1dc
    move-object/from16 v0, p0

    #@1de
    move-object/from16 v1, p1

    #@1e0
    move-object/from16 v2, v25

    #@1e2
    move/from16 v3, v26

    #@1e4
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    #@1e7
    .line 770
    move-object/from16 v0, p0

    #@1e9
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    #@1eb
    move-object/from16 v25, v0

    #@1ed
    move-object/from16 v0, v25

    #@1ef
    move-object/from16 v1, p1

    #@1f1
    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->writeToParcel(Landroid/os/Parcel;)V

    #@1f4
    .line 772
    move-object/from16 v0, p1

    #@1f6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1f9
    .line 773
    const/4 v12, 0x0

    #@1fa
    :goto_8
    if-ge v12, v6, :cond_b

    #@1fc
    .line 774
    move-object/from16 v0, v20

    #@1fe
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@201
    move-result-object v25

    #@202
    check-cast v25, Ljava/lang/String;

    #@204
    move-object/from16 v0, p0

    #@206
    move-object/from16 v1, p1

    #@208
    move-object/from16 v2, v25

    #@20a
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    #@20d
    .line 775
    move-object/from16 v0, v20

    #@20f
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@212
    move-result-object v23

    #@213
    check-cast v23, Landroid/util/SparseArray;

    #@215
    .line 776
    .restart local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    #@218
    move-result v9

    #@219
    .line 777
    .restart local v9    # "NUID":I
    move-object/from16 v0, p1

    #@21b
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@21e
    .line 778
    const/4 v15, 0x0

    #@21f
    .restart local v15    # "iu":I
    :goto_9
    if-ge v15, v9, :cond_a

    #@221
    .line 779
    move-object/from16 v0, v23

    #@223
    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    #@226
    move-result v25

    #@227
    move-object/from16 v0, p1

    #@229
    move/from16 v1, v25

    #@22b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@22e
    .line 780
    move-object/from16 v0, v23

    #@230
    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@233
    move-result-object v19

    #@234
    check-cast v19, Lcom/android/internal/app/procstats/ProcessState;

    #@236
    .line 781
    .restart local v19    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    #@239
    move-result-object v25

    #@23a
    move-object/from16 v0, p0

    #@23c
    move-object/from16 v1, p1

    #@23e
    move-object/from16 v2, v25

    #@240
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    #@243
    .line 782
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()I

    #@246
    move-result v25

    #@247
    move-object/from16 v0, p1

    #@249
    move/from16 v1, v25

    #@24b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@24e
    .line 783
    move-object/from16 v0, v19

    #@250
    move-object/from16 v1, p1

    #@252
    move-wide/from16 v2, p2

    #@254
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    #@257
    .line 778
    add-int/lit8 v15, v15, 0x1

    #@259
    goto :goto_9

    #@25a
    .line 759
    .end local v9    # "NUID":I
    .end local v15    # "iu":I
    .end local v19    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_9
    const/16 v25, 0x0

    #@25c
    goto/16 :goto_7

    #@25e
    .line 773
    .restart local v9    # "NUID":I
    .restart local v15    # "iu":I
    .restart local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_a
    add-int/lit8 v12, v12, 0x1

    #@260
    goto :goto_8

    #@261
    .line 786
    .end local v9    # "NUID":I
    .end local v15    # "iu":I
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_b
    move-object/from16 v0, p1

    #@263
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@266
    .line 787
    const/4 v12, 0x0

    #@267
    :goto_a
    if-ge v12, v5, :cond_11

    #@269
    .line 788
    move-object/from16 v0, v17

    #@26b
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@26e
    move-result-object v25

    #@26f
    check-cast v25, Ljava/lang/String;

    #@271
    move-object/from16 v0, p0

    #@273
    move-object/from16 v1, p1

    #@275
    move-object/from16 v2, v25

    #@277
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    #@27a
    .line 789
    move-object/from16 v0, v17

    #@27c
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@27f
    move-result-object v22

    #@280
    check-cast v22, Landroid/util/SparseArray;

    #@282
    .line 790
    .restart local v22    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    #@285
    move-result v9

    #@286
    .line 791
    .restart local v9    # "NUID":I
    move-object/from16 v0, p1

    #@288
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@28b
    .line 792
    const/4 v15, 0x0

    #@28c
    .restart local v15    # "iu":I
    :goto_b
    if-ge v15, v9, :cond_10

    #@28e
    .line 793
    move-object/from16 v0, v22

    #@290
    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    #@293
    move-result v25

    #@294
    move-object/from16 v0, p1

    #@296
    move/from16 v1, v25

    #@298
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@29b
    .line 794
    move-object/from16 v0, v22

    #@29d
    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2a0
    move-result-object v24

    #@2a1
    check-cast v24, Landroid/util/SparseArray;

    #@2a3
    .line 795
    .restart local v24    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    #@2a6
    move-result v10

    #@2a7
    .line 796
    .restart local v10    # "NVERS":I
    move-object/from16 v0, p1

    #@2a9
    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@2ac
    .line 797
    const/16 v16, 0x0

    #@2ae
    .restart local v16    # "iv":I
    :goto_c
    move/from16 v0, v16

    #@2b0
    if-ge v0, v10, :cond_f

    #@2b2
    .line 798
    move-object/from16 v0, v24

    #@2b4
    move/from16 v1, v16

    #@2b6
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@2b9
    move-result v25

    #@2ba
    move-object/from16 v0, p1

    #@2bc
    move/from16 v1, v25

    #@2be
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2c1
    .line 799
    move-object/from16 v0, v24

    #@2c3
    move/from16 v1, v16

    #@2c5
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2c8
    move-result-object v18

    #@2c9
    check-cast v18, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    #@2cb
    .line 800
    .restart local v18    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object/from16 v0, v18

    #@2cd
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@2cf
    move-object/from16 v25, v0

    #@2d1
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    #@2d4
    move-result v7

    #@2d5
    .line 801
    .restart local v7    # "NPROCS":I
    move-object/from16 v0, p1

    #@2d7
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@2da
    .line 802
    const/4 v13, 0x0

    #@2db
    .restart local v13    # "iproc":I
    :goto_d
    if-ge v13, v7, :cond_d

    #@2dd
    .line 803
    move-object/from16 v0, v18

    #@2df
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@2e1
    move-object/from16 v25, v0

    #@2e3
    move-object/from16 v0, v25

    #@2e5
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@2e8
    move-result-object v25

    #@2e9
    check-cast v25, Ljava/lang/String;

    #@2eb
    move-object/from16 v0, p0

    #@2ed
    move-object/from16 v1, p1

    #@2ef
    move-object/from16 v2, v25

    #@2f1
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    #@2f4
    .line 804
    move-object/from16 v0, v18

    #@2f6
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@2f8
    move-object/from16 v25, v0

    #@2fa
    move-object/from16 v0, v25

    #@2fc
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2ff
    move-result-object v19

    #@300
    check-cast v19, Lcom/android/internal/app/procstats/ProcessState;

    #@302
    .line 805
    .restart local v19    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    #@305
    move-result-object v25

    #@306
    move-object/from16 v0, v25

    #@308
    move-object/from16 v1, v19

    #@30a
    if-ne v0, v1, :cond_c

    #@30c
    .line 807
    const/16 v25, 0x0

    #@30e
    move-object/from16 v0, p1

    #@310
    move/from16 v1, v25

    #@312
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@315
    .line 802
    :goto_e
    add-int/lit8 v13, v13, 0x1

    #@317
    goto :goto_d

    #@318
    .line 810
    :cond_c
    const/16 v25, 0x1

    #@31a
    move-object/from16 v0, p1

    #@31c
    move/from16 v1, v25

    #@31e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@321
    .line 811
    move-object/from16 v0, v19

    #@323
    move-object/from16 v1, p1

    #@325
    move-wide/from16 v2, p2

    #@327
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    #@32a
    goto :goto_e

    #@32b
    .line 814
    .end local v19    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_d
    move-object/from16 v0, v18

    #@32d
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@32f
    move-object/from16 v25, v0

    #@331
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    #@334
    move-result v8

    #@335
    .line 815
    .restart local v8    # "NSRVS":I
    move-object/from16 v0, p1

    #@337
    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@33a
    .line 816
    const/4 v14, 0x0

    #@33b
    .restart local v14    # "isvc":I
    :goto_f
    if-ge v14, v8, :cond_e

    #@33d
    .line 817
    move-object/from16 v0, v18

    #@33f
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@341
    move-object/from16 v25, v0

    #@343
    move-object/from16 v0, v25

    #@345
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@348
    move-result-object v25

    #@349
    check-cast v25, Ljava/lang/String;

    #@34b
    move-object/from16 v0, p1

    #@34d
    move-object/from16 v1, v25

    #@34f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@352
    .line 818
    move-object/from16 v0, v18

    #@354
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@356
    move-object/from16 v25, v0

    #@358
    move-object/from16 v0, v25

    #@35a
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@35d
    move-result-object v21

    #@35e
    check-cast v21, Lcom/android/internal/app/procstats/ServiceState;

    #@360
    .line 819
    .local v21, "svc":Lcom/android/internal/app/procstats/ServiceState;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    #@363
    move-result-object v25

    #@364
    move-object/from16 v0, p0

    #@366
    move-object/from16 v1, p1

    #@368
    move-object/from16 v2, v25

    #@36a
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    #@36d
    .line 820
    move-object/from16 v0, v21

    #@36f
    move-object/from16 v1, p1

    #@371
    move-wide/from16 v2, p2

    #@373
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->writeToParcel(Landroid/os/Parcel;J)V

    #@376
    .line 816
    add-int/lit8 v14, v14, 0x1

    #@378
    goto :goto_f

    #@379
    .line 797
    .end local v21    # "svc":Lcom/android/internal/app/procstats/ServiceState;
    :cond_e
    add-int/lit8 v16, v16, 0x1

    #@37b
    goto/16 :goto_c

    #@37d
    .line 792
    .end local v7    # "NPROCS":I
    .end local v8    # "NSRVS":I
    .end local v13    # "iproc":I
    .end local v14    # "isvc":I
    .end local v18    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_f
    add-int/lit8 v15, v15, 0x1

    #@37f
    goto/16 :goto_b

    #@381
    .line 787
    .end local v10    # "NVERS":I
    .end local v16    # "iv":I
    .end local v24    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_10
    add-int/lit8 v12, v12, 0x1

    #@383
    goto/16 :goto_a

    #@385
    .line 827
    .end local v9    # "NUID":I
    .end local v15    # "iu":I
    .end local v22    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_11
    move-object/from16 v0, p0

    #@387
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    #@389
    move-object/from16 v25, v0

    #@38b
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    #@38e
    move-result v4

    #@38f
    .line 828
    .local v4, "NPAGETYPES":I
    move-object/from16 v0, p1

    #@391
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@394
    .line 829
    const/4 v11, 0x0

    #@395
    .local v11, "i":I
    :goto_10
    if-ge v11, v4, :cond_12

    #@397
    .line 830
    move-object/from16 v0, p0

    #@399
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    #@39b
    move-object/from16 v25, v0

    #@39d
    move-object/from16 v0, v25

    #@39f
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3a2
    move-result-object v25

    #@3a3
    check-cast v25, Ljava/lang/Integer;

    #@3a5
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    #@3a8
    move-result v25

    #@3a9
    move-object/from16 v0, p1

    #@3ab
    move/from16 v1, v25

    #@3ad
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3b0
    .line 831
    move-object/from16 v0, p0

    #@3b2
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    #@3b4
    move-object/from16 v25, v0

    #@3b6
    move-object/from16 v0, v25

    #@3b8
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3bb
    move-result-object v25

    #@3bc
    check-cast v25, Ljava/lang/String;

    #@3be
    move-object/from16 v0, p1

    #@3c0
    move-object/from16 v1, v25

    #@3c2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3c5
    .line 832
    move-object/from16 v0, p0

    #@3c7
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    #@3c9
    move-object/from16 v25, v0

    #@3cb
    move-object/from16 v0, v25

    #@3cd
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3d0
    move-result-object v25

    #@3d1
    check-cast v25, [I

    #@3d3
    move-object/from16 v0, p1

    #@3d5
    move-object/from16 v1, v25

    #@3d7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@3da
    .line 829
    add-int/lit8 v11, v11, 0x1

    #@3dc
    goto :goto_10

    #@3dd
    .line 835
    :cond_12
    const/16 v25, 0x0

    #@3df
    move-object/from16 v0, v25

    #@3e1
    move-object/from16 v1, p0

    #@3e3
    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    #@3e5
    .line 707
    return-void
.end method
