.class public final Lcom/android/internal/app/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ProcessStats$PssAggr;,
        Lcom/android/internal/app/ProcessStats$DurationsTable;,
        Lcom/android/internal/app/ProcessStats$ProcessStateHolder;,
        Lcom/android/internal/app/ProcessStats$ProcessState;,
        Lcom/android/internal/app/ProcessStats$ServiceState;,
        Lcom/android/internal/app/ProcessStats$PackageState;,
        Lcom/android/internal/app/ProcessStats$ProcessDataCollection;,
        Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;,
        Lcom/android/internal/app/ProcessStats$1;
    }
.end annotation


# static fields
.field public static final ADJ_COUNT:I = 0x8

.field public static final ADJ_MEM_FACTOR_COUNT:I = 0x4

.field public static final ADJ_MEM_FACTOR_CRITICAL:I = 0x3

.field public static final ADJ_MEM_FACTOR_LOW:I = 0x2

.field public static final ADJ_MEM_FACTOR_MODERATE:I = 0x1

.field public static final ADJ_MEM_FACTOR_NORMAL:I = 0x0

.field public static final ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

.field static final ADJ_MEM_TAGS:[Ljava/lang/String;

.field public static final ADJ_NOTHING:I = -0x1

.field public static final ADJ_SCREEN_MOD:I = 0x4

.field public static final ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

.field public static final ADJ_SCREEN_OFF:I = 0x0

.field public static final ADJ_SCREEN_ON:I = 0x4

.field static final ADJ_SCREEN_TAGS:[Ljava/lang/String;

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
            "Lcom/android/internal/app/ProcessStats;",
            ">;"
        }
    .end annotation
.end field

.field static final CSV_SEP:Ljava/lang/String; = "\t"

.field static final DEBUG:Z = false

.field static final DEBUG_PARCEL:Z = false

.field public static final FLAG_COMPLETE:I = 0x1

.field public static final FLAG_SHUTDOWN:I = 0x2

.field public static final FLAG_SYSPROPS:I = 0x4

.field static final LONGS_SIZE:I = 0x1000

.field private static final MAGIC:I = 0x50535453

.field public static final NON_CACHED_PROC_STATES:[I

.field static OFFSET_ARRAY_MASK:I = 0x0

.field static OFFSET_ARRAY_SHIFT:I = 0x0

.field static OFFSET_INDEX_MASK:I = 0x0

.field static OFFSET_INDEX_SHIFT:I = 0x0

.field static OFFSET_TYPE_MASK:I = 0x0

.field static OFFSET_TYPE_SHIFT:I = 0x0

.field private static final PARCEL_VERSION:I = 0x12

.field static final PROCESS_STATE_TO_STATE:[I

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

.field static final STATE_NAMES:[Ljava/lang/String;

.field public static final STATE_NAMES_CSV:[Ljava/lang/String;

.field public static final STATE_NOTHING:I = -0x1

.field public static final STATE_PERSISTENT:I = 0x0

.field public static final STATE_RECEIVER:I = 0x8

.field public static final STATE_SERVICE:I = 0x6

.field public static final STATE_SERVICE_RESTARTING:I = 0x7

.field static final STATE_TAGS:[Ljava/lang/String;

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

.field static final TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field mAddLongTable:[I

.field mAddLongTableSize:I

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

.field final mLongs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[J>;"
        }
    .end annotation
.end field

.field public mMemFactor:I

.field public final mMemFactorDurations:[J

.field mNextLong:I

.field public final mPackages:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/app/ProcessStats$PackageState;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field public mReadError:Ljava/lang/String;

.field mRunning:Z

.field mRuntime:Ljava/lang/String;

.field public mStartTime:J

.field public final mSysMemUsageArgs:[J

.field public mSysMemUsageTable:[I

.field public mSysMemUsageTableSize:I

.field public mTimePeriodEndRealtime:J

.field public mTimePeriodEndUptime:J

.field public mTimePeriodStartClock:J

.field public mTimePeriodStartClockStr:Ljava/lang/String;

.field public mTimePeriodStartRealtime:J

.field public mTimePeriodStartUptime:J


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/app/ProcessStats;Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats;->readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 56
    const-wide/32 v0, 0xa4cb80

    #@8
    sput-wide v0, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    #@a
    .line 61
    const-wide/32 v0, 0x36ee80

    #@d
    sput-wide v0, Lcom/android/internal/app/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    #@f
    .line 122
    filled-new-array {v3, v4, v5, v6}, [I

    #@12
    move-result-object v0

    #@13
    sput-object v0, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    #@15
    .line 125
    filled-new-array {v3, v7}, [I

    #@18
    move-result-object v0

    #@19
    sput-object v0, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    #@1b
    .line 127
    const/16 v0, 0x9

    #@1d
    new-array v0, v0, [I

    #@1f
    fill-array-data v0, :array_0

    #@22
    sput-object v0, Lcom/android/internal/app/ProcessStats;->NON_CACHED_PROC_STATES:[I

    #@24
    .line 133
    const/4 v0, 0x7

    #@25
    new-array v0, v0, [I

    #@27
    fill-array-data v0, :array_1

    #@2a
    sput-object v0, Lcom/android/internal/app/ProcessStats;->BACKGROUND_PROC_STATES:[I

    #@2c
    .line 139
    const/16 v0, 0x11

    #@2e
    new-array v0, v0, [I

    #@30
    fill-array-data v0, :array_2

    #@33
    sput-object v0, Lcom/android/internal/app/ProcessStats;->PROCESS_STATE_TO_STATE:[I

    #@35
    .line 159
    const/16 v0, 0xe

    #@37
    new-array v0, v0, [I

    #@39
    fill-array-data v0, :array_3

    #@3c
    sput-object v0, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    #@3e
    .line 166
    const/16 v0, 0xe

    #@40
    new-array v0, v0, [Ljava/lang/String;

    #@42
    .line 167
    const-string/jumbo v1, "Persist"

    #@45
    aput-object v1, v0, v3

    #@47
    const-string/jumbo v1, "Top    "

    #@4a
    aput-object v1, v0, v4

    #@4c
    const-string/jumbo v1, "ImpFg  "

    #@4f
    aput-object v1, v0, v5

    #@51
    const-string/jumbo v1, "ImpBg  "

    #@54
    aput-object v1, v0, v6

    #@56
    .line 168
    const-string/jumbo v1, "Backup "

    #@59
    aput-object v1, v0, v7

    #@5b
    const-string/jumbo v1, "HeavyWt"

    #@5e
    const/4 v2, 0x5

    #@5f
    aput-object v1, v0, v2

    #@61
    const-string/jumbo v1, "Service"

    #@64
    const/4 v2, 0x6

    #@65
    aput-object v1, v0, v2

    #@67
    const-string/jumbo v1, "ServRst"

    #@6a
    const/4 v2, 0x7

    #@6b
    aput-object v1, v0, v2

    #@6d
    .line 169
    const-string/jumbo v1, "Receivr"

    #@70
    const/16 v2, 0x8

    #@72
    aput-object v1, v0, v2

    #@74
    const-string/jumbo v1, "Home   "

    #@77
    const/16 v2, 0x9

    #@79
    aput-object v1, v0, v2

    #@7b
    .line 170
    const-string/jumbo v1, "LastAct"

    #@7e
    const/16 v2, 0xa

    #@80
    aput-object v1, v0, v2

    #@82
    const-string/jumbo v1, "CchAct "

    #@85
    const/16 v2, 0xb

    #@87
    aput-object v1, v0, v2

    #@89
    const-string/jumbo v1, "CchCAct"

    #@8c
    const/16 v2, 0xc

    #@8e
    aput-object v1, v0, v2

    #@90
    const-string/jumbo v1, "CchEmty"

    #@93
    const/16 v2, 0xd

    #@95
    aput-object v1, v0, v2

    #@97
    .line 166
    sput-object v0, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    #@99
    .line 173
    new-array v0, v5, [Ljava/lang/String;

    #@9b
    .line 174
    const-string/jumbo v1, "off"

    #@9e
    aput-object v1, v0, v3

    #@a0
    const-string/jumbo v1, "on"

    #@a3
    aput-object v1, v0, v4

    #@a5
    .line 173
    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    #@a7
    .line 177
    new-array v0, v7, [Ljava/lang/String;

    #@a9
    .line 178
    const-string/jumbo v1, "norm"

    #@ac
    aput-object v1, v0, v3

    #@ae
    const-string/jumbo v1, "mod"

    #@b1
    aput-object v1, v0, v4

    #@b3
    const-string/jumbo v1, "low"

    #@b6
    aput-object v1, v0, v5

    #@b8
    const-string/jumbo v1, "crit"

    #@bb
    aput-object v1, v0, v6

    #@bd
    .line 177
    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    #@bf
    .line 181
    const/16 v0, 0xe

    #@c1
    new-array v0, v0, [Ljava/lang/String;

    #@c3
    .line 182
    const-string/jumbo v1, "pers"

    #@c6
    aput-object v1, v0, v3

    #@c8
    const-string/jumbo v1, "top"

    #@cb
    aput-object v1, v0, v4

    #@cd
    const-string/jumbo v1, "impfg"

    #@d0
    aput-object v1, v0, v5

    #@d2
    const-string/jumbo v1, "impbg"

    #@d5
    aput-object v1, v0, v6

    #@d7
    const-string/jumbo v1, "backup"

    #@da
    aput-object v1, v0, v7

    #@dc
    const-string/jumbo v1, "heavy"

    #@df
    const/4 v2, 0x5

    #@e0
    aput-object v1, v0, v2

    #@e2
    .line 183
    const-string/jumbo v1, "service"

    #@e5
    const/4 v2, 0x6

    #@e6
    aput-object v1, v0, v2

    #@e8
    const-string/jumbo v1, "service-rs"

    #@eb
    const/4 v2, 0x7

    #@ec
    aput-object v1, v0, v2

    #@ee
    const-string/jumbo v1, "receiver"

    #@f1
    const/16 v2, 0x8

    #@f3
    aput-object v1, v0, v2

    #@f5
    const-string/jumbo v1, "home"

    #@f8
    const/16 v2, 0x9

    #@fa
    aput-object v1, v0, v2

    #@fc
    const-string/jumbo v1, "lastact"

    #@ff
    const/16 v2, 0xa

    #@101
    aput-object v1, v0, v2

    #@103
    .line 184
    const-string/jumbo v1, "cch-activity"

    #@106
    const/16 v2, 0xb

    #@108
    aput-object v1, v0, v2

    #@10a
    const-string/jumbo v1, "cch-aclient"

    #@10d
    const/16 v2, 0xc

    #@10f
    aput-object v1, v0, v2

    #@111
    const-string/jumbo v1, "cch-empty"

    #@114
    const/16 v2, 0xd

    #@116
    aput-object v1, v0, v2

    #@118
    .line 181
    sput-object v0, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

    #@11a
    .line 187
    new-array v0, v5, [Ljava/lang/String;

    #@11c
    .line 188
    const-string/jumbo v1, "0"

    #@11f
    aput-object v1, v0, v3

    #@121
    const-string/jumbo v1, "1"

    #@124
    aput-object v1, v0, v4

    #@126
    .line 187
    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    #@128
    .line 191
    new-array v0, v7, [Ljava/lang/String;

    #@12a
    .line 192
    const-string/jumbo v1, "n"

    #@12d
    aput-object v1, v0, v3

    #@12f
    const-string/jumbo v1, "m"

    #@132
    aput-object v1, v0, v4

    #@134
    const-string/jumbo v1, "l"

    #@137
    aput-object v1, v0, v5

    #@139
    const-string/jumbo v1, "c"

    #@13c
    aput-object v1, v0, v6

    #@13e
    .line 191
    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_TAGS:[Ljava/lang/String;

    #@140
    .line 195
    const/16 v0, 0xe

    #@142
    new-array v0, v0, [Ljava/lang/String;

    #@144
    .line 196
    const-string/jumbo v1, "p"

    #@147
    aput-object v1, v0, v3

    #@149
    const-string/jumbo v1, "t"

    #@14c
    aput-object v1, v0, v4

    #@14e
    const-string/jumbo v1, "f"

    #@151
    aput-object v1, v0, v5

    #@153
    const-string/jumbo v1, "b"

    #@156
    aput-object v1, v0, v6

    #@158
    const-string/jumbo v1, "u"

    #@15b
    aput-object v1, v0, v7

    #@15d
    const-string/jumbo v1, "w"

    #@160
    const/4 v2, 0x5

    #@161
    aput-object v1, v0, v2

    #@163
    .line 197
    const-string/jumbo v1, "s"

    #@166
    const/4 v2, 0x6

    #@167
    aput-object v1, v0, v2

    #@169
    const-string/jumbo v1, "x"

    #@16c
    const/4 v2, 0x7

    #@16d
    aput-object v1, v0, v2

    #@16f
    const-string/jumbo v1, "r"

    #@172
    const/16 v2, 0x8

    #@174
    aput-object v1, v0, v2

    #@176
    const-string/jumbo v1, "h"

    #@179
    const/16 v2, 0x9

    #@17b
    aput-object v1, v0, v2

    #@17d
    const-string/jumbo v1, "l"

    #@180
    const/16 v2, 0xa

    #@182
    aput-object v1, v0, v2

    #@184
    const-string/jumbo v1, "a"

    #@187
    const/16 v2, 0xb

    #@189
    aput-object v1, v0, v2

    #@18b
    const-string/jumbo v1, "c"

    #@18e
    const/16 v2, 0xc

    #@190
    aput-object v1, v0, v2

    #@192
    const-string/jumbo v1, "e"

    #@195
    const/16 v2, 0xd

    #@197
    aput-object v1, v0, v2

    #@199
    .line 195
    sput-object v0, Lcom/android/internal/app/ProcessStats;->STATE_TAGS:[Ljava/lang/String;

    #@19b
    .line 208
    sput v3, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    #@19d
    .line 209
    const/16 v0, 0xff

    #@19f
    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    #@1a1
    .line 211
    const/16 v0, 0x8

    #@1a3
    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    #@1a5
    .line 212
    const/16 v0, 0xff

    #@1a7
    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    #@1a9
    .line 214
    const/16 v0, 0x10

    #@1ab
    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    #@1ad
    .line 215
    const v0, 0xffff

    #@1b0
    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    #@1b2
    .line 412
    new-instance v0, Lcom/android/internal/app/ProcessStats$1;

    #@1b4
    invoke-direct {v0}, Lcom/android/internal/app/ProcessStats$1;-><init>()V

    #@1b7
    .line 411
    sput-object v0, Lcom/android/internal/app/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b9
    .line 1398
    new-array v0, v3, [I

    #@1bb
    sput-object v0, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    #@1bd
    .line 47
    return-void

    #@1be
    .line 127
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

    #@1d4
    .line 133
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

    #@1e6
    .line 139
    :array_2
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

    #@20c
    .line 159
    :array_3
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
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 222
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    #@5
    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    #@8
    .line 221
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@a
    .line 223
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    #@c
    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@11
    .line 225
    const/16 v0, 0x8

    #@13
    new-array v0, v0, [J

    #@15
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    #@17
    .line 226
    const/4 v0, -0x1

    #@18
    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    #@1a
    .line 229
    const/4 v0, 0x0

    #@1b
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    #@1d
    .line 230
    const/4 v0, 0x0

    #@1e
    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    #@20
    .line 231
    const/16 v0, 0x10

    #@22
    new-array v0, v0, [J

    #@24
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    #@26
    .line 242
    new-instance v0, Ljava/util/ArrayList;

    #@28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2b
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@2d
    .line 260
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats;->reset()V

    #@30
    .line 261
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V

    #@33
    .line 259
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "running"    # Z

    #@0
    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 222
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    #@5
    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    #@8
    .line 221
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@a
    .line 223
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    #@c
    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@11
    .line 225
    const/16 v0, 0x8

    #@13
    new-array v0, v0, [J

    #@15
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    #@17
    .line 226
    const/4 v0, -0x1

    #@18
    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    #@1a
    .line 229
    const/4 v0, 0x0

    #@1b
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    #@1d
    .line 230
    const/4 v0, 0x0

    #@1e
    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    #@20
    .line 231
    const/16 v0, 0x10

    #@22
    new-array v0, v0, [J

    #@24
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    #@26
    .line 242
    new-instance v0, Ljava/util/ArrayList;

    #@28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2b
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@2d
    .line 255
    iput-boolean p1, p0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    #@2f
    .line 256
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats;->reset()V

    #@32
    .line 254
    return-void
.end method

.method static addSysMemUsage([JI[JI)V
    .locals 12
    .param p0, "dstData"    # [J
    .param p1, "dstOff"    # I
    .param p2, "addData"    # [J
    .param p3, "addOff"    # I

    #@0
    .prologue
    .line 387
    add-int/lit8 v5, p1, 0x0

    #@2
    aget-wide v2, p0, v5

    #@4
    .line 388
    .local v2, "dstCount":J
    add-int/lit8 v5, p3, 0x0

    #@6
    aget-wide v0, p2, v5

    #@8
    .line 389
    .local v0, "addCount":J
    const-wide/16 v6, 0x0

    #@a
    cmp-long v5, v2, v6

    #@c
    if-nez v5, :cond_0

    #@e
    .line 390
    add-int/lit8 v5, p1, 0x0

    #@10
    aput-wide v0, p0, v5

    #@12
    .line 391
    const/4 v4, 0x1

    #@13
    .local v4, "i":I
    :goto_0
    const/16 v5, 0x10

    #@15
    if-ge v4, v5, :cond_3

    #@17
    .line 392
    add-int v5, p1, v4

    #@19
    add-int v6, p3, v4

    #@1b
    aget-wide v6, p2, v6

    #@1d
    aput-wide v6, p0, v5

    #@1f
    .line 391
    add-int/lit8 v4, v4, 0x1

    #@21
    goto :goto_0

    #@22
    .line 394
    .end local v4    # "i":I
    :cond_0
    const-wide/16 v6, 0x0

    #@24
    cmp-long v5, v0, v6

    #@26
    if-lez v5, :cond_3

    #@28
    .line 395
    add-int/lit8 v5, p1, 0x0

    #@2a
    add-long v6, v2, v0

    #@2c
    aput-wide v6, p0, v5

    #@2e
    .line 396
    const/4 v4, 0x1

    #@2f
    .restart local v4    # "i":I
    :goto_1
    const/16 v5, 0x10

    #@31
    if-ge v4, v5, :cond_3

    #@33
    .line 397
    add-int v5, p1, v4

    #@35
    aget-wide v6, p0, v5

    #@37
    add-int v5, p3, v4

    #@39
    aget-wide v8, p2, v5

    #@3b
    cmp-long v5, v6, v8

    #@3d
    if-lez v5, :cond_1

    #@3f
    .line 398
    add-int v5, p1, v4

    #@41
    add-int v6, p3, v4

    #@43
    aget-wide v6, p2, v6

    #@45
    aput-wide v6, p0, v5

    #@47
    .line 400
    :cond_1
    add-int v5, p1, v4

    #@49
    add-int/lit8 v5, v5, 0x1

    #@4b
    .line 401
    add-int v6, p1, v4

    #@4d
    add-int/lit8 v6, v6, 0x1

    #@4f
    aget-wide v6, p0, v6

    #@51
    long-to-double v6, v6

    #@52
    long-to-double v8, v2

    #@53
    mul-double/2addr v6, v8

    #@54
    .line 402
    add-int v8, p3, v4

    #@56
    add-int/lit8 v8, v8, 0x1

    #@58
    aget-wide v8, p2, v8

    #@5a
    long-to-double v8, v8

    #@5b
    long-to-double v10, v0

    #@5c
    mul-double/2addr v8, v10

    #@5d
    .line 401
    add-double/2addr v6, v8

    #@5e
    .line 403
    add-long v8, v2, v0

    #@60
    long-to-double v8, v8

    #@61
    .line 400
    div-double/2addr v6, v8

    #@62
    double-to-long v6, v6

    #@63
    aput-wide v6, p0, v5

    #@65
    .line 404
    add-int v5, p1, v4

    #@67
    add-int/lit8 v5, v5, 0x2

    #@69
    aget-wide v6, p0, v5

    #@6b
    add-int v5, p3, v4

    #@6d
    add-int/lit8 v5, v5, 0x2

    #@6f
    aget-wide v8, p2, v5

    #@71
    cmp-long v5, v6, v8

    #@73
    if-gez v5, :cond_2

    #@75
    .line 405
    add-int v5, p1, v4

    #@77
    add-int/lit8 v5, v5, 0x2

    #@79
    add-int v6, p3, v4

    #@7b
    add-int/lit8 v6, v6, 0x2

    #@7d
    aget-wide v6, p2, v6

    #@7f
    aput-wide v6, p0, v5

    #@81
    .line 396
    :cond_2
    add-int/lit8 v4, v4, 0x3

    #@83
    goto :goto_1

    #@84
    .line 386
    .end local v4    # "i":I
    :cond_3
    return-void
.end method

.method static binarySearch([III)I
    .locals 6
    .param p0, "array"    # [I
    .param p1, "size"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 1977
    const/4 v1, 0x0

    #@1
    .line 1978
    .local v1, "lo":I
    add-int/lit8 v0, p1, -0x1

    #@3
    .line 1980
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_2

    #@5
    .line 1981
    add-int v4, v1, v0

    #@7
    ushr-int/lit8 v2, v4, 0x1

    #@9
    .line 1982
    .local v2, "mid":I
    aget v4, p0, v2

    #@b
    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    #@d
    shr-int/2addr v4, v5

    #@e
    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    #@10
    and-int v3, v4, v5

    #@12
    .line 1984
    .local v3, "midVal":I
    if-ge v3, p2, :cond_0

    #@14
    .line 1985
    add-int/lit8 v1, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1986
    :cond_0
    if-le v3, p2, :cond_1

    #@19
    .line 1987
    add-int/lit8 v0, v2, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1989
    :cond_1
    return v2

    #@1d
    .line 1992
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_2
    not-int v4, v1

    #@1e
    return v4
.end method

.method private buildTimePeriodStartClockStr()V
    .locals 4

    #@0
    .prologue
    .line 1394
    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    #@3
    .line 1395
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    #@5
    .line 1394
    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    #@f
    .line 1393
    return-void
.end method

.method public static computeProcessData(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;J)V
    .locals 28
    .param p0, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p1, "data"    # Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    .param p2, "now"    # J

    #@0
    .prologue
    .line 590
    const-wide/16 v22, 0x0

    #@2
    move-wide/from16 v0, v22

    #@4
    move-object/from16 v2, p1

    #@6
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    #@8
    .line 592
    const-wide/16 v22, 0x0

    #@a
    move-wide/from16 v0, v22

    #@c
    move-object/from16 v2, p1

    #@e
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    #@10
    const-wide/16 v22, 0x0

    #@12
    move-wide/from16 v0, v22

    #@14
    move-object/from16 v2, p1

    #@16
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    #@18
    const-wide/16 v22, 0x0

    #@1a
    move-wide/from16 v0, v22

    #@1c
    move-object/from16 v2, p1

    #@1e
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    #@20
    .line 591
    const-wide/16 v22, 0x0

    #@22
    move-wide/from16 v0, v22

    #@24
    move-object/from16 v2, p1

    #@26
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    #@28
    const-wide/16 v22, 0x0

    #@2a
    move-wide/from16 v0, v22

    #@2c
    move-object/from16 v2, p1

    #@2e
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    #@30
    const-wide/16 v22, 0x0

    #@32
    move-wide/from16 v0, v22

    #@34
    move-object/from16 v2, p1

    #@36
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    #@38
    const-wide/16 v22, 0x0

    #@3a
    move-wide/from16 v0, v22

    #@3c
    move-object/from16 v2, p1

    #@3e
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    #@40
    .line 593
    const/4 v11, 0x0

    #@41
    .local v11, "is":I
    :goto_0
    move-object/from16 v0, p1

    #@43
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->screenStates:[I

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
    .line 594
    const/4 v9, 0x0

    #@51
    .local v9, "im":I
    :goto_1
    move-object/from16 v0, p1

    #@53
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->memStates:[I

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
    .line 595
    const/4 v10, 0x0

    #@61
    .local v10, "ip":I
    :goto_2
    move-object/from16 v0, p1

    #@63
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->procStates:[I

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
    .line 596
    move-object/from16 v0, p1

    #@72
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->screenStates:[I

    #@74
    move-object/from16 v22, v0

    #@76
    aget v22, v22, v11

    #@78
    move-object/from16 v0, p1

    #@7a
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->memStates:[I

    #@7c
    move-object/from16 v23, v0

    #@7e
    aget v23, v23, v9

    #@80
    add-int v22, v22, v23

    #@82
    mul-int/lit8 v22, v22, 0xe

    #@84
    .line 597
    move-object/from16 v0, p1

    #@86
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->procStates:[I

    #@88
    move-object/from16 v23, v0

    #@8a
    aget v23, v23, v10

    #@8c
    .line 596
    add-int v8, v22, v23

    #@8e
    .line 598
    .local v8, "bucket":I
    move-object/from16 v0, p1

    #@90
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    #@92
    move-wide/from16 v22, v0

    #@94
    move-object/from16 v0, p0

    #@96
    move-wide/from16 v1, p2

    #@98
    invoke-virtual {v0, v8, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    #@9b
    move-result-wide v24

    #@9c
    add-long v22, v22, v24

    #@9e
    move-wide/from16 v0, v22

    #@a0
    move-object/from16 v2, p1

    #@a2
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    #@a4
    .line 599
    move-object/from16 v0, p0

    #@a6
    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssSampleCount(I)J

    #@a9
    move-result-wide v20

    #@aa
    .line 600
    .local v20, "samples":J
    const-wide/16 v22, 0x0

    #@ac
    cmp-long v22, v20, v22

    #@ae
    if-lez v22, :cond_1

    #@b0
    .line 601
    move-object/from16 v0, p0

    #@b2
    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMinimum(I)J

    #@b5
    move-result-wide v16

    #@b6
    .line 602
    .local v16, "minPss":J
    move-object/from16 v0, p0

    #@b8
    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssAverage(I)J

    #@bb
    move-result-wide v4

    #@bc
    .line 603
    .local v4, "avgPss":J
    move-object/from16 v0, p0

    #@be
    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMaximum(I)J

    #@c1
    move-result-wide v12

    #@c2
    .line 604
    .local v12, "maxPss":J
    move-object/from16 v0, p0

    #@c4
    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMinimum(I)J

    #@c7
    move-result-wide v18

    #@c8
    .line 605
    .local v18, "minUss":J
    move-object/from16 v0, p0

    #@ca
    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssAverage(I)J

    #@cd
    move-result-wide v6

    #@ce
    .line 606
    .local v6, "avgUss":J
    move-object/from16 v0, p0

    #@d0
    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMaximum(I)J

    #@d3
    move-result-wide v14

    #@d4
    .line 607
    .local v14, "maxUss":J
    move-object/from16 v0, p1

    #@d6
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    #@d8
    move-wide/from16 v22, v0

    #@da
    const-wide/16 v24, 0x0

    #@dc
    cmp-long v22, v22, v24

    #@de
    if-nez v22, :cond_2

    #@e0
    .line 608
    move-wide/from16 v0, v16

    #@e2
    move-object/from16 v2, p1

    #@e4
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    #@e6
    .line 609
    move-object/from16 v0, p1

    #@e8
    iput-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    #@ea
    .line 610
    move-object/from16 v0, p1

    #@ec
    iput-wide v12, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    #@ee
    .line 611
    move-wide/from16 v0, v18

    #@f0
    move-object/from16 v2, p1

    #@f2
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    #@f4
    .line 612
    move-object/from16 v0, p1

    #@f6
    iput-wide v6, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    #@f8
    .line 613
    move-object/from16 v0, p1

    #@fa
    iput-wide v14, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    #@fc
    .line 632
    :cond_0
    :goto_3
    move-object/from16 v0, p1

    #@fe
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    #@100
    move-wide/from16 v22, v0

    #@102
    add-long v22, v22, v20

    #@104
    move-wide/from16 v0, v22

    #@106
    move-object/from16 v2, p1

    #@108
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    #@10a
    .line 595
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
    .line 615
    .restart local v4    # "avgPss":J
    .restart local v6    # "avgUss":J
    .restart local v12    # "maxPss":J
    .restart local v14    # "maxUss":J
    .restart local v16    # "minPss":J
    .restart local v18    # "minUss":J
    :cond_2
    move-object/from16 v0, p1

    #@110
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    #@112
    move-wide/from16 v22, v0

    #@114
    cmp-long v22, v16, v22

    #@116
    if-gez v22, :cond_3

    #@118
    .line 616
    move-wide/from16 v0, v16

    #@11a
    move-object/from16 v2, p1

    #@11c
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    #@11e
    .line 618
    :cond_3
    move-object/from16 v0, p1

    #@120
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

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
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

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
    .line 619
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
    .line 618
    add-double v22, v22, v24

    #@142
    .line 619
    move-object/from16 v0, p1

    #@144
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

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
    .line 618
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
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    #@15c
    .line 620
    move-object/from16 v0, p1

    #@15e
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    #@160
    move-wide/from16 v22, v0

    #@162
    cmp-long v22, v12, v22

    #@164
    if-lez v22, :cond_4

    #@166
    .line 621
    move-object/from16 v0, p1

    #@168
    iput-wide v12, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    #@16a
    .line 623
    :cond_4
    move-object/from16 v0, p1

    #@16c
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    #@16e
    move-wide/from16 v22, v0

    #@170
    cmp-long v22, v18, v22

    #@172
    if-gez v22, :cond_5

    #@174
    .line 624
    move-wide/from16 v0, v18

    #@176
    move-object/from16 v2, p1

    #@178
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    #@17a
    .line 626
    :cond_5
    move-object/from16 v0, p1

    #@17c
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

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
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

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
    .line 627
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
    .line 626
    add-double v22, v22, v24

    #@19e
    .line 627
    move-object/from16 v0, p1

    #@1a0
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

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
    .line 626
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
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    #@1b8
    .line 628
    move-object/from16 v0, p1

    #@1ba
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    #@1bc
    move-wide/from16 v22, v0

    #@1be
    cmp-long v22, v14, v22

    #@1c0
    if-lez v22, :cond_0

    #@1c2
    .line 629
    move-object/from16 v0, p1

    #@1c4
    iput-wide v14, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    #@1c6
    goto/16 :goto_3

    #@1c8
    .line 594
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
    .line 593
    .end local v10    # "ip":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    #@1ce
    goto/16 :goto_0

    #@1d0
    .line 589
    .end local v9    # "im":I
    :cond_8
    return-void
.end method

.method static computeProcessTimeLocked(Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)J
    .locals 8
    .param p0, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p1, "screenStates"    # [I
    .param p2, "memStates"    # [I
    .param p3, "procStates"    # [I
    .param p4, "now"    # J

    #@0
    .prologue
    .line 641
    const-wide/16 v4, 0x0

    #@2
    .line 651
    .local v4, "totalTime":J
    const/4 v3, 0x0

    #@3
    .local v3, "is":I
    :goto_0
    array-length v6, p1

    #@4
    if-ge v3, v6, :cond_2

    #@6
    .line 652
    const/4 v1, 0x0

    #@7
    .local v1, "im":I
    :goto_1
    array-length v6, p2

    #@8
    if-ge v1, v6, :cond_1

    #@a
    .line 653
    const/4 v2, 0x0

    #@b
    .local v2, "ip":I
    :goto_2
    array-length v6, p3

    #@c
    if-ge v2, v6, :cond_0

    #@e
    .line 654
    aget v6, p1, v3

    #@10
    aget v7, p2, v1

    #@12
    add-int/2addr v6, v7

    #@13
    mul-int/lit8 v6, v6, 0xe

    #@15
    .line 655
    aget v7, p3, v2

    #@17
    .line 654
    add-int v0, v6, v7

    #@19
    .line 656
    .local v0, "bucket":I
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    #@1c
    move-result-wide v6

    #@1d
    add-long/2addr v4, v6

    #@1e
    .line 653
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_2

    #@21
    .line 652
    .end local v0    # "bucket":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_1

    #@24
    .line 651
    .end local v2    # "ip":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@26
    goto :goto_0

    #@27
    .line 660
    .end local v1    # "im":I
    :cond_2
    iput-wide v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpTotalTime:J

    #@29
    .line 661
    return-wide v4
.end method

.method static dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V
    .locals 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sep"    # Ljava/lang/String;
    .param p2, "durations"    # [J
    .param p3, "curState"    # I
    .param p4, "curStartTime"    # J
    .param p6, "now"    # J

    #@0
    .prologue
    .line 536
    const/4 v1, 0x0

    #@1
    .local v1, "iscreen":I
    :goto_0
    const/16 v3, 0x8

    #@3
    if-ge v1, v3, :cond_3

    #@5
    .line 537
    const/4 v0, 0x0

    #@6
    .local v0, "imem":I
    :goto_1
    const/4 v3, 0x4

    #@7
    if-ge v0, v3, :cond_2

    #@9
    .line 538
    add-int v2, v0, v1

    #@b
    .line 539
    .local v2, "state":I
    aget-wide v4, p2, v2

    #@d
    .line 540
    .local v4, "time":J
    if-ne p3, v2, :cond_0

    #@f
    .line 541
    sub-long v6, p6, p4

    #@11
    add-long/2addr v4, v6

    #@12
    .line 543
    :cond_0
    const-wide/16 v6, 0x0

    #@14
    cmp-long v3, v4, v6

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 544
    invoke-static {p0, v2, v4, v5}, Lcom/android/internal/app/ProcessStats;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    #@1b
    .line 537
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_1

    #@1e
    .line 536
    .end local v2    # "state":I
    .end local v4    # "time":J
    :cond_2
    add-int/lit8 v1, v1, 0x4

    #@20
    goto :goto_0

    #@21
    .line 535
    .end local v0    # "imem":I
    :cond_3
    return-void
.end method

.method static dumpAllProcessPssCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;)V
    .locals 23
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;

    #@0
    .prologue
    .line 1235
    const/4 v8, 0x0

    #@1
    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p1

    #@3
    iget v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    #@5
    if-ge v8, v15, :cond_0

    #@7
    .line 1236
    move-object/from16 v0, p1

    #@9
    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@b
    aget v9, v15, v8

    #@d
    .line 1237
    .local v9, "off":I
    sget v15, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    #@f
    shr-int v15, v9, v15

    #@11
    sget v22, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    #@13
    and-int v14, v15, v22

    #@15
    .line 1238
    .local v14, "type":I
    move-object/from16 v0, p1

    #@17
    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@19
    const/16 v22, 0x0

    #@1b
    move/from16 v0, v22

    #@1d
    invoke-virtual {v15, v9, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@20
    move-result-wide v6

    #@21
    .line 1239
    .local v6, "count":J
    move-object/from16 v0, p1

    #@23
    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@25
    const/16 v22, 0x1

    #@27
    move/from16 v0, v22

    #@29
    invoke-virtual {v15, v9, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@2c
    move-result-wide v12

    #@2d
    .line 1240
    .local v12, "min":J
    move-object/from16 v0, p1

    #@2f
    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@31
    const/16 v22, 0x2

    #@33
    move/from16 v0, v22

    #@35
    invoke-virtual {v15, v9, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@38
    move-result-wide v4

    #@39
    .line 1241
    .local v4, "avg":J
    move-object/from16 v0, p1

    #@3b
    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@3d
    const/16 v22, 0x3

    #@3f
    move/from16 v0, v22

    #@41
    invoke-virtual {v15, v9, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@44
    move-result-wide v10

    #@45
    .line 1242
    .local v10, "max":J
    move-object/from16 v0, p1

    #@47
    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@49
    const/16 v22, 0x4

    #@4b
    move/from16 v0, v22

    #@4d
    invoke-virtual {v15, v9, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@50
    move-result-wide v20

    #@51
    .line 1243
    .local v20, "umin":J
    move-object/from16 v0, p1

    #@53
    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@55
    const/16 v22, 0x5

    #@57
    move/from16 v0, v22

    #@59
    invoke-virtual {v15, v9, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@5c
    move-result-wide v16

    #@5d
    .line 1244
    .local v16, "uavg":J
    move-object/from16 v0, p1

    #@5f
    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@61
    const/16 v22, 0x6

    #@63
    move/from16 v0, v22

    #@65
    invoke-virtual {v15, v9, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@68
    move-result-wide v18

    #@69
    .line 1245
    .local v18, "umax":J
    const/16 v15, 0x2c

    #@6b
    move-object/from16 v0, p0

    #@6d
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    #@70
    .line 1246
    move-object/from16 v0, p0

    #@72
    invoke-static {v0, v14}, Lcom/android/internal/app/ProcessStats;->printProcStateTag(Ljava/io/PrintWriter;I)V

    #@75
    .line 1247
    const/16 v15, 0x3a

    #@77
    move-object/from16 v0, p0

    #@79
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    #@7c
    .line 1248
    move-object/from16 v0, p0

    #@7e
    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    #@81
    .line 1249
    const/16 v15, 0x3a

    #@83
    move-object/from16 v0, p0

    #@85
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    #@88
    .line 1250
    move-object/from16 v0, p0

    #@8a
    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    #@8d
    .line 1251
    const/16 v15, 0x3a

    #@8f
    move-object/from16 v0, p0

    #@91
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    #@94
    .line 1252
    move-object/from16 v0, p0

    #@96
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@99
    .line 1253
    const/16 v15, 0x3a

    #@9b
    move-object/from16 v0, p0

    #@9d
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    #@a0
    .line 1254
    move-object/from16 v0, p0

    #@a2
    invoke-virtual {v0, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    #@a5
    .line 1255
    const/16 v15, 0x3a

    #@a7
    move-object/from16 v0, p0

    #@a9
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    #@ac
    .line 1256
    move-object/from16 v0, p0

    #@ae
    move-wide/from16 v1, v20

    #@b0
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@b3
    .line 1257
    const/16 v15, 0x3a

    #@b5
    move-object/from16 v0, p0

    #@b7
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    #@ba
    .line 1258
    move-object/from16 v0, p0

    #@bc
    move-wide/from16 v1, v16

    #@be
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@c1
    .line 1259
    const/16 v15, 0x3a

    #@c3
    move-object/from16 v0, p0

    #@c5
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    #@c8
    .line 1260
    move-object/from16 v0, p0

    #@ca
    move-wide/from16 v1, v18

    #@cc
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@cf
    .line 1235
    add-int/lit8 v8, v8, 0x1

    #@d1
    goto/16 :goto_0

    #@d3
    .line 1234
    .end local v4    # "avg":J
    .end local v6    # "count":J
    .end local v9    # "off":I
    .end local v10    # "max":J
    .end local v12    # "min":J
    .end local v14    # "type":I
    .end local v16    # "uavg":J
    .end local v18    # "umax":J
    .end local v20    # "umin":J
    :cond_0
    return-void
.end method

.method static dumpAllProcessStateCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;J)V
    .locals 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "now"    # J

    #@0
    .prologue
    .line 1218
    const/4 v0, 0x0

    #@1
    .line 1219
    .local v0, "didCurState":Z
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    #@4
    if-ge v1, v6, :cond_1

    #@6
    .line 1220
    iget-object v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTable:[I

    #@8
    aget v2, v6, v1

    #@a
    .line 1221
    .local v2, "off":I
    sget v6, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    #@c
    shr-int v6, v2, v6

    #@e
    sget v7, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    #@10
    and-int v3, v6, v7

    #@12
    .line 1222
    .local v3, "type":I
    iget-object v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@14
    const/4 v7, 0x0

    #@15
    invoke-virtual {v6, v2, v7}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@18
    move-result-wide v4

    #@19
    .line 1223
    .local v4, "time":J
    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    #@1b
    if-ne v6, v3, :cond_0

    #@1d
    .line 1224
    const/4 v0, 0x1

    #@1e
    .line 1225
    iget-wide v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    #@20
    sub-long v6, p2, v6

    #@22
    add-long/2addr v4, v6

    #@23
    .line 1227
    :cond_0
    invoke-static {p0, v3, v4, v5}, Lcom/android/internal/app/ProcessStats;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    #@26
    .line 1219
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1229
    .end local v2    # "off":I
    .end local v3    # "type":I
    .end local v4    # "time":J
    :cond_1
    if-nez v0, :cond_2

    #@2b
    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    #@2d
    const/4 v7, -0x1

    #@2e
    if-eq v6, v7, :cond_2

    #@30
    .line 1230
    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    #@32
    iget-wide v8, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    #@34
    sub-long v8, p2, v8

    #@36
    invoke-static {p0, v6, v8, v9}, Lcom/android/internal/app/ProcessStats;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    #@39
    .line 1217
    :cond_2
    return-void
.end method

.method private dumpProcessInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;Z)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p4, "dumpAll"    # Z

    #@0
    .prologue
    .line 2099
    if-eqz p4, :cond_1

    #@2
    .line 2100
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5
    const-string/jumbo v0, "myID="

    #@8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    .line 2101
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@e
    move-result v0

    #@f
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16
    .line 2102
    const-string/jumbo v0, " mCommonProcess="

    #@19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c
    .line 2103
    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

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
    .line 2104
    const-string/jumbo v0, " mPackage="

    #@2c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    #@31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@34
    .line 2105
    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    #@36
    if-eqz v0, :cond_0

    #@38
    .line 2106
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b
    const-string/jumbo v0, "mMultiPackage="

    #@3e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@41
    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    #@43
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@46
    .line 2108
    :cond_0
    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@48
    if-eq p3, v0, :cond_1

    #@4a
    .line 2109
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    const-string/jumbo v0, "Common Proc: "

    #@50
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53
    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@55
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@57
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    .line 2110
    const-string/jumbo v0, "/"

    #@5d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@62
    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    #@64
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@67
    .line 2111
    const-string/jumbo v0, " pkg="

    #@6a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6d
    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@6f
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    #@71
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@74
    .line 2114
    :cond_1
    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    #@76
    if-eqz v0, :cond_2

    #@78
    .line 2115
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7b
    const-string/jumbo v0, "mActive="

    #@7e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@81
    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    #@83
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@86
    .line 2117
    :cond_2
    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    #@88
    if-eqz v0, :cond_3

    #@8a
    .line 2118
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8d
    const-string/jumbo v0, "mDead="

    #@90
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@93
    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    #@95
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@98
    .line 2120
    :cond_3
    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    #@9a
    if-nez v0, :cond_4

    #@9c
    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    #@9e
    if-eqz v0, :cond_5

    #@a0
    .line 2121
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a3
    const-string/jumbo v0, "mNumActiveServices="

    #@a6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a9
    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    #@ab
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@ae
    .line 2122
    const-string/jumbo v0, " mNumStartedServices="

    #@b1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b4
    .line 2123
    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    #@b6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@b9
    .line 2098
    :cond_5
    return-void
.end method

.method static dumpProcessList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJ)V
    .locals 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;[I[I[IJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1062
    .local p2, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v3, "  "

    #@c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 1063
    .local v1, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v0

    #@18
    add-int/lit8 v8, v0, -0x1

    #@1a
    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    #@1c
    .line 1064
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@22
    .line 1065
    .local v2, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25
    .line 1066
    iget-object v0, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@27
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a
    .line 1067
    const-string/jumbo v0, " / "

    #@2d
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30
    .line 1068
    iget v0, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    #@32
    invoke-static {p0, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@35
    .line 1069
    const-string/jumbo v0, " ("

    #@38
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b
    .line 1070
    iget v0, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    #@3d
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    #@40
    .line 1071
    const-string/jumbo v0, " entries)"

    #@43
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    .line 1072
    const-string/jumbo v0, ":"

    #@49
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4c
    move-object v0, p0

    #@4d
    move-object v3, p3

    #@4e
    move-object v4, p4

    #@4f
    move-object v5, p5

    #@50
    move-wide/from16 v6, p6

    #@52
    .line 1073
    invoke-static/range {v0 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V

    #@55
    .line 1074
    iget v0, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    #@57
    if-lez v0, :cond_0

    #@59
    move-object v0, p0

    #@5a
    move-object v3, p3

    #@5b
    move-object v4, p4

    #@5c
    move-object v5, p5

    #@5d
    .line 1075
    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats;->dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V

    #@60
    .line 1063
    :cond_0
    add-int/lit8 v8, v8, -0x1

    #@62
    goto :goto_0

    #@63
    .line 1061
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1
    return-void
.end method

.method public static dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V
    .locals 12
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sepScreenStates"    # Z
    .param p3, "screenStates"    # [I
    .param p4, "sepMemStates"    # Z
    .param p5, "memStates"    # [I
    .param p6, "sepProcStates"    # Z
    .param p7, "procStates"    # [I
    .param p8, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;Z[IZ[IZ[IJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1160
    .local p1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const-string/jumbo v0, "process"

    #@3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 1161
    const-string/jumbo v0, "\t"

    #@9
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 1162
    const-string/jumbo v0, "uid"

    #@f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    .line 1163
    const-string/jumbo v0, "\t"

    #@15
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    .line 1164
    const-string/jumbo v0, "vers"

    #@1b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e
    .line 1165
    const-string/jumbo v4, "\t"

    #@21
    if-eqz p2, :cond_0

    #@23
    move-object v3, p3

    #@24
    .line 1166
    :goto_0
    if-eqz p4, :cond_1

    #@26
    move-object/from16 v2, p5

    #@28
    .line 1167
    :goto_1
    if-eqz p6, :cond_2

    #@2a
    move-object/from16 v0, p7

    #@2c
    .line 1165
    :goto_2
    invoke-static {p0, v4, v3, v2, v0}, Lcom/android/internal/app/ProcessStats;->dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    #@2f
    .line 1168
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    #@32
    .line 1169
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@35
    move-result v0

    #@36
    add-int/lit8 v10, v0, -0x1

    #@38
    .local v10, "i":I
    :goto_3
    if-ltz v10, :cond_3

    #@3a
    .line 1170
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3d
    move-result-object v1

    #@3e
    check-cast v1, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@40
    .line 1171
    .local v1, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@42
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45
    .line 1172
    const-string/jumbo v0, "\t"

    #@48
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b
    .line 1173
    iget v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    #@4d
    invoke-static {p0, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@50
    .line 1174
    const-string/jumbo v0, "\t"

    #@53
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    .line 1175
    iget v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    #@58
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    #@5b
    move-object v0, p0

    #@5c
    move v2, p2

    #@5d
    move-object v3, p3

    #@5e
    move/from16 v4, p4

    #@60
    move-object/from16 v5, p5

    #@62
    move/from16 v6, p6

    #@64
    move-object/from16 v7, p7

    #@66
    move-wide/from16 v8, p8

    #@68
    .line 1176
    invoke-static/range {v0 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpProcessStateCsv(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Z[IZ[IZ[IJ)V

    #@6b
    .line 1178
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    #@6e
    .line 1169
    add-int/lit8 v10, v10, -0x1

    #@70
    goto :goto_3

    #@71
    .line 1165
    .end local v1    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v10    # "i":I
    :cond_0
    const/4 v0, 0x0

    #@72
    move-object v3, v0

    #@73
    goto :goto_0

    #@74
    .line 1166
    :cond_1
    const/4 v0, 0x0

    #@75
    move-object v2, v0

    #@76
    goto :goto_1

    #@77
    .line 1167
    :cond_2
    const/4 v0, 0x0

    #@78
    goto :goto_2

    #@79
    .line 1159
    .restart local v10    # "i":I
    :cond_3
    return-void
.end method

.method static dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V
    .locals 18
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I

    #@0
    .prologue
    .line 872
    const/4 v10, 0x0

    #@1
    .line 873
    .local v10, "printedHeader":Z
    const/4 v12, -0x1

    #@2
    .line 874
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
    .line 875
    const/4 v11, -0x1

    #@9
    .line 876
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
    .line 877
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
    .line 878
    aget v9, p3, v8

    #@17
    .line 879
    .local v9, "iscreen":I
    aget v6, p4, v3

    #@19
    .line 880
    .local v6, "imem":I
    add-int v13, v9, v6

    #@1b
    mul-int/lit8 v13, v13, 0xe

    #@1d
    aget v14, p5, v7

    #@1f
    add-int v2, v13, v14

    #@21
    .line 881
    .local v2, "bucket":I
    move-object/from16 v0, p2

    #@23
    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssSampleCount(I)J

    #@26
    move-result-wide v4

    #@27
    .line 882
    .local v4, "count":J
    const-wide/16 v14, 0x0

    #@29
    cmp-long v13, v4, v14

    #@2b
    if-lez v13, :cond_3

    #@2d
    .line 883
    if-nez v10, :cond_0

    #@2f
    .line 884
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32
    .line 885
    const-string/jumbo v13, "PSS/USS ("

    #@35
    move-object/from16 v0, p0

    #@37
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a
    .line 886
    move-object/from16 v0, p2

    #@3c
    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    #@3e
    move-object/from16 v0, p0

    #@40
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    #@43
    .line 887
    const-string/jumbo v13, " entries):"

    #@46
    move-object/from16 v0, p0

    #@48
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4b
    .line 888
    const/4 v10, 0x1

    #@4c
    .line 890
    :cond_0
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f
    .line 891
    const-string/jumbo v13, "  "

    #@52
    move-object/from16 v0, p0

    #@54
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57
    .line 892
    move-object/from16 v0, p3

    #@59
    array-length v13, v0

    #@5a
    const/4 v14, 0x1

    #@5b
    if-le v13, v14, :cond_1

    #@5d
    .line 893
    if-eq v12, v9, :cond_4

    #@5f
    move v13, v9

    #@60
    :goto_3
    move-object/from16 v0, p0

    #@62
    invoke-static {v0, v13}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    #@65
    .line 895
    move v12, v9

    #@66
    .line 897
    :cond_1
    move-object/from16 v0, p4

    #@68
    array-length v13, v0

    #@69
    const/4 v14, 0x1

    #@6a
    if-le v13, v14, :cond_2

    #@6c
    .line 898
    if-eq v11, v6, :cond_5

    #@6e
    move v13, v6

    #@6f
    :goto_4
    const/16 v14, 0x2f

    #@71
    move-object/from16 v0, p0

    #@73
    invoke-static {v0, v13, v14}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    #@76
    .line 899
    move v11, v6

    #@77
    .line 901
    :cond_2
    sget-object v13, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    #@79
    aget v14, p5, v7

    #@7b
    aget-object v13, v13, v14

    #@7d
    move-object/from16 v0, p0

    #@7f
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@82
    const-string/jumbo v13, ": "

    #@85
    move-object/from16 v0, p0

    #@87
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8a
    .line 902
    move-object/from16 v0, p0

    #@8c
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@8f
    .line 903
    const-string/jumbo v13, " samples "

    #@92
    move-object/from16 v0, p0

    #@94
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@97
    .line 904
    move-object/from16 v0, p2

    #@99
    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMinimum(I)J

    #@9c
    move-result-wide v14

    #@9d
    const-wide/16 v16, 0x400

    #@9f
    mul-long v14, v14, v16

    #@a1
    move-object/from16 v0, p0

    #@a3
    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@a6
    .line 905
    const-string/jumbo v13, " "

    #@a9
    move-object/from16 v0, p0

    #@ab
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ae
    .line 906
    move-object/from16 v0, p2

    #@b0
    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssAverage(I)J

    #@b3
    move-result-wide v14

    #@b4
    const-wide/16 v16, 0x400

    #@b6
    mul-long v14, v14, v16

    #@b8
    move-object/from16 v0, p0

    #@ba
    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@bd
    .line 907
    const-string/jumbo v13, " "

    #@c0
    move-object/from16 v0, p0

    #@c2
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c5
    .line 908
    move-object/from16 v0, p2

    #@c7
    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMaximum(I)J

    #@ca
    move-result-wide v14

    #@cb
    const-wide/16 v16, 0x400

    #@cd
    mul-long v14, v14, v16

    #@cf
    move-object/from16 v0, p0

    #@d1
    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@d4
    .line 909
    const-string/jumbo v13, " / "

    #@d7
    move-object/from16 v0, p0

    #@d9
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@dc
    .line 910
    move-object/from16 v0, p2

    #@de
    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMinimum(I)J

    #@e1
    move-result-wide v14

    #@e2
    const-wide/16 v16, 0x400

    #@e4
    mul-long v14, v14, v16

    #@e6
    move-object/from16 v0, p0

    #@e8
    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@eb
    .line 911
    const-string/jumbo v13, " "

    #@ee
    move-object/from16 v0, p0

    #@f0
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f3
    .line 912
    move-object/from16 v0, p2

    #@f5
    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssAverage(I)J

    #@f8
    move-result-wide v14

    #@f9
    const-wide/16 v16, 0x400

    #@fb
    mul-long v14, v14, v16

    #@fd
    move-object/from16 v0, p0

    #@ff
    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@102
    .line 913
    const-string/jumbo v13, " "

    #@105
    move-object/from16 v0, p0

    #@107
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10a
    .line 914
    move-object/from16 v0, p2

    #@10c
    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMaximum(I)J

    #@10f
    move-result-wide v14

    #@110
    const-wide/16 v16, 0x400

    #@112
    mul-long v14, v14, v16

    #@114
    move-object/from16 v0, p0

    #@116
    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@119
    .line 915
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    #@11c
    .line 877
    :cond_3
    add-int/lit8 v7, v7, 0x1

    #@11e
    goto/16 :goto_2

    #@120
    .line 894
    :cond_4
    const/4 v13, -0x1

    #@121
    goto/16 :goto_3

    #@123
    .line 898
    :cond_5
    const/4 v13, -0x1

    #@124
    goto/16 :goto_4

    #@126
    .line 876
    .end local v2    # "bucket":I
    .end local v4    # "count":J
    .end local v6    # "imem":I
    .end local v9    # "iscreen":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@128
    goto/16 :goto_1

    #@12a
    .line 874
    .end local v7    # "ip":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    #@12c
    goto/16 :goto_0

    #@12e
    .line 920
    .end local v3    # "im":I
    .end local v11    # "printedMem":I
    :cond_8
    move-object/from16 v0, p2

    #@130
    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    #@132
    if-eqz v13, :cond_9

    #@134
    .line 921
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@137
    const-string/jumbo v13, "Killed for excessive wake locks: "

    #@13a
    move-object/from16 v0, p0

    #@13c
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13f
    .line 922
    move-object/from16 v0, p2

    #@141
    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    #@143
    move-object/from16 v0, p0

    #@145
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    #@148
    const-string/jumbo v13, " times"

    #@14b
    move-object/from16 v0, p0

    #@14d
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@150
    .line 924
    :cond_9
    move-object/from16 v0, p2

    #@152
    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    #@154
    if-eqz v13, :cond_a

    #@156
    .line 925
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@159
    const-string/jumbo v13, "Killed for excessive CPU use: "

    #@15c
    move-object/from16 v0, p0

    #@15e
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@161
    .line 926
    move-object/from16 v0, p2

    #@163
    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    #@165
    move-object/from16 v0, p0

    #@167
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    #@16a
    const-string/jumbo v13, " times"

    #@16d
    move-object/from16 v0, p0

    #@16f
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@172
    .line 928
    :cond_a
    move-object/from16 v0, p2

    #@174
    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    #@176
    if-eqz v13, :cond_b

    #@178
    .line 929
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17b
    const-string/jumbo v13, "Killed from cached state: "

    #@17e
    move-object/from16 v0, p0

    #@180
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@183
    .line 930
    move-object/from16 v0, p2

    #@185
    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    #@187
    move-object/from16 v0, p0

    #@189
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    #@18c
    const-string/jumbo v13, " times from pss "

    #@18f
    move-object/from16 v0, p0

    #@191
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@194
    .line 931
    move-object/from16 v0, p2

    #@196
    iget-wide v14, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    #@198
    const-wide/16 v16, 0x400

    #@19a
    mul-long v14, v14, v16

    #@19c
    move-object/from16 v0, p0

    #@19e
    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@1a1
    const-string/jumbo v13, "-"

    #@1a4
    move-object/from16 v0, p0

    #@1a6
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a9
    .line 932
    move-object/from16 v0, p2

    #@1ab
    iget-wide v14, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    #@1ad
    const-wide/16 v16, 0x400

    #@1af
    mul-long v14, v14, v16

    #@1b1
    move-object/from16 v0, p0

    #@1b3
    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@1b6
    const-string/jumbo v13, "-"

    #@1b9
    move-object/from16 v0, p0

    #@1bb
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1be
    .line 933
    move-object/from16 v0, p2

    #@1c0
    iget-wide v14, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    #@1c2
    const-wide/16 v16, 0x400

    #@1c4
    mul-long v14, v14, v16

    #@1c6
    move-object/from16 v0, p0

    #@1c8
    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@1cb
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    #@1ce
    .line 871
    :cond_b
    return-void
.end method

.method static dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V
    .locals 20
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J

    #@0
    .prologue
    .line 824
    const-wide/16 v16, 0x0

    #@2
    .line 825
    .local v16, "totalTime":J
    const/4 v11, -0x1

    #@3
    .line 826
    .local v11, "printedScreen":I
    const/4 v8, 0x0

    #@4
    .local v8, "is":I
    :goto_0
    move-object/from16 v0, p3

    #@6
    array-length v13, v0

    #@7
    if-ge v8, v13, :cond_8

    #@9
    .line 827
    const/4 v10, -0x1

    #@a
    .line 828
    .local v10, "printedMem":I
    const/4 v5, 0x0

    #@b
    .local v5, "im":I
    :goto_1
    move-object/from16 v0, p4

    #@d
    array-length v13, v0

    #@e
    if-ge v5, v13, :cond_7

    #@10
    .line 829
    const/4 v7, 0x0

    #@11
    .local v7, "ip":I
    :goto_2
    move-object/from16 v0, p5

    #@13
    array-length v13, v0

    #@14
    if-ge v7, v13, :cond_6

    #@16
    .line 830
    aget v9, p3, v8

    #@18
    .line 831
    .local v9, "iscreen":I
    aget v6, p4, v5

    #@1a
    .line 832
    .local v6, "imem":I
    add-int v13, v9, v6

    #@1c
    mul-int/lit8 v13, v13, 0xe

    #@1e
    aget v18, p5, v7

    #@20
    add-int v4, v13, v18

    #@22
    .line 833
    .local v4, "bucket":I
    move-object/from16 v0, p2

    #@24
    move-wide/from16 v1, p6

    #@26
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    #@29
    move-result-wide v14

    #@2a
    .line 834
    .local v14, "time":J
    const-string/jumbo v12, ""

    #@2d
    .line 835
    .local v12, "running":Ljava/lang/String;
    move-object/from16 v0, p2

    #@2f
    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    #@31
    if-ne v13, v4, :cond_0

    #@33
    .line 836
    const-string/jumbo v12, " (running)"

    #@36
    .line 838
    :cond_0
    const-wide/16 v18, 0x0

    #@38
    cmp-long v13, v14, v18

    #@3a
    if-eqz v13, :cond_3

    #@3c
    .line 839
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f
    .line 840
    move-object/from16 v0, p3

    #@41
    array-length v13, v0

    #@42
    const/16 v18, 0x1

    #@44
    move/from16 v0, v18

    #@46
    if-le v13, v0, :cond_1

    #@48
    .line 841
    if-eq v11, v9, :cond_4

    #@4a
    move v13, v9

    #@4b
    :goto_3
    move-object/from16 v0, p0

    #@4d
    invoke-static {v0, v13}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    #@50
    .line 843
    move v11, v9

    #@51
    .line 845
    :cond_1
    move-object/from16 v0, p4

    #@53
    array-length v13, v0

    #@54
    const/16 v18, 0x1

    #@56
    move/from16 v0, v18

    #@58
    if-le v13, v0, :cond_2

    #@5a
    .line 846
    if-eq v10, v6, :cond_5

    #@5c
    move v13, v6

    #@5d
    :goto_4
    const/16 v18, 0x2f

    #@5f
    move-object/from16 v0, p0

    #@61
    move/from16 v1, v18

    #@63
    invoke-static {v0, v13, v1}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    #@66
    .line 847
    move v10, v6

    #@67
    .line 849
    :cond_2
    sget-object v13, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    #@69
    aget v18, p5, v7

    #@6b
    aget-object v13, v13, v18

    #@6d
    move-object/from16 v0, p0

    #@6f
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@72
    const-string/jumbo v13, ": "

    #@75
    move-object/from16 v0, p0

    #@77
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7a
    .line 850
    move-object/from16 v0, p0

    #@7c
    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@7f
    move-object/from16 v0, p0

    #@81
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@84
    .line 851
    add-long v16, v16, v14

    #@86
    .line 829
    :cond_3
    add-int/lit8 v7, v7, 0x1

    #@88
    goto :goto_2

    #@89
    .line 842
    :cond_4
    const/4 v13, -0x1

    #@8a
    goto :goto_3

    #@8b
    .line 846
    :cond_5
    const/4 v13, -0x1

    #@8c
    goto :goto_4

    #@8d
    .line 828
    .end local v4    # "bucket":I
    .end local v6    # "imem":I
    .end local v9    # "iscreen":I
    .end local v12    # "running":Ljava/lang/String;
    .end local v14    # "time":J
    :cond_6
    add-int/lit8 v5, v5, 0x1

    #@8f
    goto/16 :goto_1

    #@91
    .line 826
    .end local v7    # "ip":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    #@93
    goto/16 :goto_0

    #@95
    .line 856
    .end local v5    # "im":I
    .end local v10    # "printedMem":I
    :cond_8
    const-wide/16 v18, 0x0

    #@97
    cmp-long v13, v16, v18

    #@99
    if-eqz v13, :cond_b

    #@9b
    .line 857
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9e
    .line 858
    move-object/from16 v0, p3

    #@a0
    array-length v13, v0

    #@a1
    const/16 v18, 0x1

    #@a3
    move/from16 v0, v18

    #@a5
    if-le v13, v0, :cond_9

    #@a7
    .line 859
    const/4 v13, -0x1

    #@a8
    move-object/from16 v0, p0

    #@aa
    invoke-static {v0, v13}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    #@ad
    .line 861
    :cond_9
    move-object/from16 v0, p4

    #@af
    array-length v13, v0

    #@b0
    const/16 v18, 0x1

    #@b2
    move/from16 v0, v18

    #@b4
    if-le v13, v0, :cond_a

    #@b6
    .line 862
    const/4 v13, -0x1

    #@b7
    const/16 v18, 0x2f

    #@b9
    move-object/from16 v0, p0

    #@bb
    move/from16 v1, v18

    #@bd
    invoke-static {v0, v13, v1}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    #@c0
    .line 864
    :cond_a
    const-string/jumbo v13, "TOTAL  : "

    #@c3
    move-object/from16 v0, p0

    #@c5
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c8
    .line 865
    move-wide/from16 v0, v16

    #@ca
    move-object/from16 v2, p0

    #@cc
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@cf
    .line 866
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    #@d2
    .line 823
    :cond_b
    return-void
.end method

.method static dumpProcessStateCsv(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Z[IZ[IZ[IJ)V
    .locals 28
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "sepScreenStates"    # Z
    .param p3, "screenStates"    # [I
    .param p4, "sepMemStates"    # Z
    .param p5, "memStates"    # [I
    .param p6, "sepProcStates"    # Z
    .param p7, "procStates"    # [I
    .param p8, "now"    # J

    #@0
    .prologue
    .line 1028
    if-eqz p2, :cond_0

    #@2
    move-object/from16 v0, p3

    #@4
    array-length v9, v0

    #@5
    .line 1029
    .local v9, "NSS":I
    :goto_0
    if-eqz p4, :cond_1

    #@7
    move-object/from16 v0, p5

    #@9
    array-length v5, v0

    #@a
    .line 1030
    .local v5, "NMS":I
    :goto_1
    if-eqz p6, :cond_2

    #@c
    move-object/from16 v0, p7

    #@e
    array-length v7, v0

    #@f
    .line 1031
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
    .line 1032
    const/4 v12, 0x0

    #@16
    .local v12, "ims":I
    :goto_4
    if-ge v12, v5, :cond_10

    #@18
    .line 1033
    const/4 v14, 0x0

    #@19
    .local v14, "ips":I
    :goto_5
    if-ge v14, v7, :cond_f

    #@1b
    .line 1034
    if-eqz p2, :cond_3

    #@1d
    aget v24, p3, v16

    #@1f
    .line 1035
    .local v24, "vsscreen":I
    :goto_6
    if-eqz p4, :cond_4

    #@21
    aget v22, p5, v12

    #@23
    .line 1036
    .local v22, "vsmem":I
    :goto_7
    if-eqz p6, :cond_5

    #@25
    aget v23, p7, v14

    #@27
    .line 1037
    .local v23, "vsproc":I
    :goto_8
    if-eqz p2, :cond_6

    #@29
    const/4 v8, 0x1

    #@2a
    .line 1038
    .local v8, "NSA":I
    :goto_9
    if-eqz p4, :cond_7

    #@2c
    const/4 v4, 0x1

    #@2d
    .line 1039
    .local v4, "NMA":I
    :goto_a
    if-eqz p6, :cond_8

    #@2f
    const/4 v6, 0x1

    #@30
    .line 1040
    .local v6, "NPA":I
    :goto_b
    const-wide/16 v18, 0x0

    #@32
    .line 1041
    .local v18, "totalTime":J
    const/4 v15, 0x0

    #@33
    .local v15, "isa":I
    :goto_c
    if-ge v15, v8, :cond_e

    #@35
    .line 1042
    const/4 v11, 0x0

    #@36
    .local v11, "ima":I
    :goto_d
    if-ge v11, v4, :cond_d

    #@38
    .line 1043
    const/4 v13, 0x0

    #@39
    .local v13, "ipa":I
    :goto_e
    if-ge v13, v6, :cond_c

    #@3b
    .line 1044
    if-eqz p2, :cond_9

    #@3d
    const/16 v21, 0x0

    #@3f
    .line 1045
    .local v21, "vascreen":I
    :goto_f
    if-eqz p4, :cond_a

    #@41
    const/16 v17, 0x0

    #@43
    .line 1046
    .local v17, "vamem":I
    :goto_10
    if-eqz p6, :cond_b

    #@45
    const/16 v20, 0x0

    #@47
    .line 1047
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
    .line 1049
    .local v10, "bucket":I
    move-object/from16 v0, p1

    #@55
    move-wide/from16 v1, p8

    #@57
    invoke-virtual {v0, v10, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    #@5a
    move-result-wide v26

    #@5b
    add-long v18, v18, v26

    #@5d
    .line 1043
    add-int/lit8 v13, v13, 0x1

    #@5f
    goto :goto_e

    #@60
    .line 1028
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
    .line 1029
    :cond_1
    const/4 v5, 0x1

    #@63
    .restart local v5    # "NMS":I
    goto :goto_1

    #@64
    .line 1030
    :cond_2
    const/4 v7, 0x1

    #@65
    .restart local v7    # "NPS":I
    goto :goto_2

    #@66
    .line 1034
    .restart local v12    # "ims":I
    .restart local v14    # "ips":I
    .restart local v16    # "iss":I
    :cond_3
    const/16 v24, 0x0

    #@68
    .restart local v24    # "vsscreen":I
    goto :goto_6

    #@69
    .line 1035
    :cond_4
    const/16 v22, 0x0

    #@6b
    .restart local v22    # "vsmem":I
    goto :goto_7

    #@6c
    .line 1036
    :cond_5
    const/16 v23, 0x0

    #@6e
    .restart local v23    # "vsproc":I
    goto :goto_8

    #@6f
    .line 1037
    :cond_6
    move-object/from16 v0, p3

    #@71
    array-length v8, v0

    #@72
    .restart local v8    # "NSA":I
    goto :goto_9

    #@73
    .line 1038
    :cond_7
    move-object/from16 v0, p5

    #@75
    array-length v4, v0

    #@76
    .restart local v4    # "NMA":I
    goto :goto_a

    #@77
    .line 1039
    :cond_8
    move-object/from16 v0, p7

    #@79
    array-length v6, v0

    #@7a
    .restart local v6    # "NPA":I
    goto :goto_b

    #@7b
    .line 1044
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
    .line 1045
    :cond_a
    aget v17, p5, v11

    #@80
    .restart local v17    # "vamem":I
    goto :goto_10

    #@81
    .line 1046
    :cond_b
    aget v20, p7, v13

    #@83
    .restart local v20    # "vaproc":I
    goto :goto_11

    #@84
    .line 1042
    .end local v17    # "vamem":I
    .end local v20    # "vaproc":I
    .end local v21    # "vascreen":I
    :cond_c
    add-int/lit8 v11, v11, 0x1

    #@86
    goto :goto_d

    #@87
    .line 1041
    .end local v13    # "ipa":I
    :cond_d
    add-int/lit8 v15, v15, 0x1

    #@89
    goto :goto_c

    #@8a
    .line 1053
    .end local v11    # "ima":I
    :cond_e
    const-string/jumbo v25, "\t"

    #@8d
    move-object/from16 v0, p0

    #@8f
    move-object/from16 v1, v25

    #@91
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@94
    .line 1054
    move-object/from16 v0, p0

    #@96
    move-wide/from16 v1, v18

    #@98
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@9b
    .line 1033
    add-int/lit8 v14, v14, 0x1

    #@9d
    goto/16 :goto_5

    #@9f
    .line 1032
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
    .line 1031
    .end local v14    # "ips":I
    :cond_10
    add-int/lit8 v16, v16, 0x1

    #@a5
    goto/16 :goto_3

    #@a7
    .line 1027
    .end local v12    # "ims":I
    :cond_11
    return-void
.end method

.method static dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V
    .locals 13
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
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
    .line 1083
    new-instance v6, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    #@2
    move-object/from16 v0, p4

    #@4
    move-object/from16 v1, p5

    #@6
    move-object/from16 v2, p6

    #@8
    invoke-direct {v6, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    #@b
    .line 1085
    .local v6, "totals":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    move-wide/from16 v0, p7

    #@d
    invoke-static {p1, v6, v0, v1}, Lcom/android/internal/app/ProcessStats;->computeProcessData(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;J)V

    #@10
    .line 1086
    iget-wide v8, v6, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

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
    .line 1088
    .local v4, "percentage":D
    const-wide v8, 0x3f747ae147ae147bL    # 0.005

    #@20
    cmpl-double v7, v4, v8

    #@22
    if-gez v7, :cond_0

    #@24
    iget-wide v8, v6, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    #@26
    const-wide/16 v10, 0x0

    #@28
    cmp-long v7, v8, v10

    #@2a
    if-eqz v7, :cond_3

    #@2c
    .line 1089
    :cond_0
    if-eqz p2, :cond_1

    #@2e
    .line 1090
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    .line 1092
    :cond_1
    if-eqz p3, :cond_2

    #@33
    .line 1093
    move-object/from16 v0, p3

    #@35
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38
    .line 1095
    :cond_2
    move-wide/from16 v0, p9

    #@3a
    move/from16 v2, p11

    #@3c
    invoke-virtual {v6, p0, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->print(Ljava/io/PrintWriter;JZ)V

    #@3f
    .line 1096
    if-eqz p2, :cond_3

    #@41
    .line 1097
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    #@44
    .line 1082
    :cond_3
    return-void
.end method

.method static dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IZJJ)V
    .locals 13
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "inclUidVers"    # Z
    .param p7, "now"    # J
    .param p9, "totalTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;[I[I[IZJJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1105
    .local p2, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v1

    #@4
    add-int/lit8 v0, v1, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@8
    .line 1106
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@e
    .line 1107
    .local v2, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    .line 1108
    const-string/jumbo v1, "* "

    #@14
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    .line 1109
    iget-object v1, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@19
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c
    .line 1110
    const-string/jumbo v1, " / "

    #@1f
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22
    .line 1111
    iget v1, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    #@24
    invoke-static {p0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@27
    .line 1112
    const-string/jumbo v1, " / v"

    #@2a
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d
    .line 1113
    iget v1, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    #@2f
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@32
    .line 1114
    const-string/jumbo v1, ":"

    #@35
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38
    .line 1115
    const-string/jumbo v4, "         TOTAL: "

    #@3b
    .line 1116
    const/4 v12, 0x1

    #@3c
    move-object v1, p0

    #@3d
    move-object v3, p1

    #@3e
    move-object/from16 v5, p3

    #@40
    move-object/from16 v6, p4

    #@42
    move-object/from16 v7, p5

    #@44
    move-wide/from16 v8, p7

    #@46
    move-wide/from16 v10, p9

    #@48
    .line 1115
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@4b
    .line 1117
    const-string/jumbo v4, "    Persistent: "

    #@4e
    .line 1118
    const/4 v1, 0x1

    #@4f
    new-array v7, v1, [I

    #@51
    const/4 v1, 0x0

    #@52
    const/4 v3, 0x0

    #@53
    aput v1, v7, v3

    #@55
    const/4 v12, 0x1

    #@56
    move-object v1, p0

    #@57
    move-object v3, p1

    #@58
    move-object/from16 v5, p3

    #@5a
    move-object/from16 v6, p4

    #@5c
    move-wide/from16 v8, p7

    #@5e
    move-wide/from16 v10, p9

    #@60
    .line 1117
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@63
    .line 1119
    const-string/jumbo v4, "           Top: "

    #@66
    .line 1120
    const/4 v1, 0x1

    #@67
    new-array v7, v1, [I

    #@69
    const/4 v1, 0x1

    #@6a
    const/4 v3, 0x0

    #@6b
    aput v1, v7, v3

    #@6d
    const/4 v12, 0x1

    #@6e
    move-object v1, p0

    #@6f
    move-object v3, p1

    #@70
    move-object/from16 v5, p3

    #@72
    move-object/from16 v6, p4

    #@74
    move-wide/from16 v8, p7

    #@76
    move-wide/from16 v10, p9

    #@78
    .line 1119
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@7b
    .line 1121
    const-string/jumbo v4, "        Imp Fg: "

    #@7e
    .line 1122
    const/4 v1, 0x1

    #@7f
    new-array v7, v1, [I

    #@81
    const/4 v1, 0x2

    #@82
    const/4 v3, 0x0

    #@83
    aput v1, v7, v3

    #@85
    const/4 v12, 0x1

    #@86
    move-object v1, p0

    #@87
    move-object v3, p1

    #@88
    move-object/from16 v5, p3

    #@8a
    move-object/from16 v6, p4

    #@8c
    move-wide/from16 v8, p7

    #@8e
    move-wide/from16 v10, p9

    #@90
    .line 1121
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@93
    .line 1123
    const-string/jumbo v4, "        Imp Bg: "

    #@96
    .line 1124
    const/4 v1, 0x1

    #@97
    new-array v7, v1, [I

    #@99
    const/4 v1, 0x3

    #@9a
    const/4 v3, 0x0

    #@9b
    aput v1, v7, v3

    #@9d
    const/4 v12, 0x1

    #@9e
    move-object v1, p0

    #@9f
    move-object v3, p1

    #@a0
    move-object/from16 v5, p3

    #@a2
    move-object/from16 v6, p4

    #@a4
    move-wide/from16 v8, p7

    #@a6
    move-wide/from16 v10, p9

    #@a8
    .line 1123
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@ab
    .line 1125
    const-string/jumbo v4, "        Backup: "

    #@ae
    .line 1126
    const/4 v1, 0x1

    #@af
    new-array v7, v1, [I

    #@b1
    const/4 v1, 0x4

    #@b2
    const/4 v3, 0x0

    #@b3
    aput v1, v7, v3

    #@b5
    const/4 v12, 0x1

    #@b6
    move-object v1, p0

    #@b7
    move-object v3, p1

    #@b8
    move-object/from16 v5, p3

    #@ba
    move-object/from16 v6, p4

    #@bc
    move-wide/from16 v8, p7

    #@be
    move-wide/from16 v10, p9

    #@c0
    .line 1125
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@c3
    .line 1127
    const-string/jumbo v4, "     Heavy Wgt: "

    #@c6
    .line 1128
    const/4 v1, 0x1

    #@c7
    new-array v7, v1, [I

    #@c9
    const/4 v1, 0x5

    #@ca
    const/4 v3, 0x0

    #@cb
    aput v1, v7, v3

    #@cd
    const/4 v12, 0x1

    #@ce
    move-object v1, p0

    #@cf
    move-object v3, p1

    #@d0
    move-object/from16 v5, p3

    #@d2
    move-object/from16 v6, p4

    #@d4
    move-wide/from16 v8, p7

    #@d6
    move-wide/from16 v10, p9

    #@d8
    .line 1127
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@db
    .line 1129
    const-string/jumbo v4, "       Service: "

    #@de
    .line 1130
    const/4 v1, 0x1

    #@df
    new-array v7, v1, [I

    #@e1
    const/4 v1, 0x6

    #@e2
    const/4 v3, 0x0

    #@e3
    aput v1, v7, v3

    #@e5
    const/4 v12, 0x1

    #@e6
    move-object v1, p0

    #@e7
    move-object v3, p1

    #@e8
    move-object/from16 v5, p3

    #@ea
    move-object/from16 v6, p4

    #@ec
    move-wide/from16 v8, p7

    #@ee
    move-wide/from16 v10, p9

    #@f0
    .line 1129
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@f3
    .line 1131
    const-string/jumbo v4, "    Service Rs: "

    #@f6
    .line 1132
    const/4 v1, 0x1

    #@f7
    new-array v7, v1, [I

    #@f9
    const/4 v1, 0x7

    #@fa
    const/4 v3, 0x0

    #@fb
    aput v1, v7, v3

    #@fd
    const/4 v12, 0x1

    #@fe
    move-object v1, p0

    #@ff
    move-object v3, p1

    #@100
    move-object/from16 v5, p3

    #@102
    move-object/from16 v6, p4

    #@104
    move-wide/from16 v8, p7

    #@106
    move-wide/from16 v10, p9

    #@108
    .line 1131
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@10b
    .line 1133
    const-string/jumbo v4, "      Receiver: "

    #@10e
    .line 1134
    const/4 v1, 0x1

    #@10f
    new-array v7, v1, [I

    #@111
    const/16 v1, 0x8

    #@113
    const/4 v3, 0x0

    #@114
    aput v1, v7, v3

    #@116
    const/4 v12, 0x1

    #@117
    move-object v1, p0

    #@118
    move-object v3, p1

    #@119
    move-object/from16 v5, p3

    #@11b
    move-object/from16 v6, p4

    #@11d
    move-wide/from16 v8, p7

    #@11f
    move-wide/from16 v10, p9

    #@121
    .line 1133
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@124
    .line 1135
    const-string/jumbo v4, "        (Home): "

    #@127
    .line 1136
    const/4 v1, 0x1

    #@128
    new-array v7, v1, [I

    #@12a
    const/16 v1, 0x9

    #@12c
    const/4 v3, 0x0

    #@12d
    aput v1, v7, v3

    #@12f
    const/4 v12, 0x1

    #@130
    move-object v1, p0

    #@131
    move-object v3, p1

    #@132
    move-object/from16 v5, p3

    #@134
    move-object/from16 v6, p4

    #@136
    move-wide/from16 v8, p7

    #@138
    move-wide/from16 v10, p9

    #@13a
    .line 1135
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@13d
    .line 1137
    const-string/jumbo v4, "    (Last Act): "

    #@140
    .line 1138
    const/4 v1, 0x1

    #@141
    new-array v7, v1, [I

    #@143
    const/16 v1, 0xa

    #@145
    const/4 v3, 0x0

    #@146
    aput v1, v7, v3

    #@148
    const/4 v12, 0x1

    #@149
    move-object v1, p0

    #@14a
    move-object v3, p1

    #@14b
    move-object/from16 v5, p3

    #@14d
    move-object/from16 v6, p4

    #@14f
    move-wide/from16 v8, p7

    #@151
    move-wide/from16 v10, p9

    #@153
    .line 1137
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@156
    .line 1139
    const-string/jumbo v4, "      (Cached): "

    #@159
    .line 1140
    const/16 v1, 0xb

    #@15b
    const/16 v3, 0xc

    #@15d
    .line 1141
    const/16 v5, 0xd

    #@15f
    .line 1140
    filled-new-array {v1, v3, v5}, [I

    #@162
    move-result-object v7

    #@163
    .line 1141
    const/4 v12, 0x1

    #@164
    move-object v1, p0

    #@165
    move-object v3, p1

    #@166
    move-object/from16 v5, p3

    #@168
    move-object/from16 v6, p4

    #@16a
    move-wide/from16 v8, p7

    #@16c
    move-wide/from16 v10, p9

    #@16e
    .line 1139
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    #@171
    .line 1105
    add-int/lit8 v0, v0, -0x1

    #@173
    goto/16 :goto_0

    #@175
    .line 1104
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_0
    return-void
.end method

.method static dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V
    .locals 12
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # I
    .param p5, "serviceName"    # Ljava/lang/String;
    .param p6, "svc"    # Lcom/android/internal/app/ProcessStats$ServiceState;
    .param p7, "serviceType"    # I
    .param p8, "opCount"    # I
    .param p9, "curState"    # I
    .param p10, "curStartTime"    # J
    .param p12, "now"    # J

    #@0
    .prologue
    .line 553
    if-gtz p8, :cond_0

    #@2
    .line 554
    return-void

    #@3
    .line 556
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 557
    const-string/jumbo v9, ","

    #@9
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 558
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    .line 559
    const-string/jumbo v9, ","

    #@12
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15
    .line 560
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(I)V

    #@18
    .line 561
    const-string/jumbo v9, ","

    #@1b
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e
    .line 562
    move/from16 v0, p4

    #@20
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    #@23
    .line 563
    const-string/jumbo v9, ","

    #@26
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29
    .line 564
    move-object/from16 v0, p5

    #@2b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e
    .line 565
    const-string/jumbo v9, ","

    #@31
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    .line 566
    move/from16 v0, p8

    #@36
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    #@39
    .line 567
    const/4 v2, 0x0

    #@3a
    .line 568
    .local v2, "didCurState":Z
    const/4 v3, 0x0

    #@3b
    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p6

    #@3d
    iget v9, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mDurationsTableSize:I

    #@3f
    if-ge v3, v9, :cond_3

    #@41
    .line 569
    move-object/from16 v0, p6

    #@43
    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mDurationsTable:[I

    #@45
    aget v5, v9, v3

    #@47
    .line 570
    .local v5, "off":I
    sget v9, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    #@49
    shr-int v9, v5, v9

    #@4b
    sget v10, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    #@4d
    and-int v8, v9, v10

    #@4f
    .line 571
    .local v8, "type":I
    div-int/lit8 v4, v8, 0x4

    #@51
    .line 572
    .local v4, "memFactor":I
    rem-int/lit8 v8, v8, 0x4

    #@53
    .line 573
    move/from16 v0, p7

    #@55
    if-eq v8, v0, :cond_1

    #@57
    .line 568
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 576
    :cond_1
    move-object/from16 v0, p6

    #@5c
    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@5e
    const/4 v10, 0x0

    #@5f
    invoke-virtual {v9, v5, v10}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@62
    move-result-wide v6

    #@63
    .line 577
    .local v6, "time":J
    move/from16 v0, p9

    #@65
    if-ne v0, v4, :cond_2

    #@67
    .line 578
    const/4 v2, 0x1

    #@68
    .line 579
    sub-long v10, p12, p10

    #@6a
    add-long/2addr v6, v10

    #@6b
    .line 581
    :cond_2
    invoke-static {p0, v4, v6, v7}, Lcom/android/internal/app/ProcessStats;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    #@6e
    goto :goto_1

    #@6f
    .line 583
    .end local v4    # "memFactor":I
    .end local v5    # "off":I
    .end local v6    # "time":J
    .end local v8    # "type":I
    :cond_3
    if-nez v2, :cond_4

    #@71
    const/4 v9, -0x1

    #@72
    move/from16 v0, p9

    #@74
    if-eq v0, v9, :cond_4

    #@76
    .line 584
    sub-long v10, p12, p10

    #@78
    move/from16 v0, p9

    #@7a
    invoke-static {p0, v0, v10, v11}, Lcom/android/internal/app/ProcessStats;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    #@7d
    .line 586
    :cond_4
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    #@80
    .line 552
    return-void
.end method

.method public static dumpSingleServiceTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIJJ)J
    .locals 23
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "service"    # Lcom/android/internal/app/ProcessStats$ServiceState;
    .param p3, "serviceType"    # I
    .param p4, "curState"    # I
    .param p5, "curStartTime"    # J
    .param p7, "now"    # J

    #@0
    .prologue
    .line 2333
    const-wide/16 v20, 0x0

    #@2
    .line 2334
    .local v20, "totalTime":J
    const/4 v15, -0x1

    #@3
    .line 2335
    .local v15, "printedScreen":I
    const/4 v13, 0x0

    #@4
    .local v13, "iscreen":I
    :goto_0
    const/16 v4, 0x8

    #@6
    if-ge v13, v4, :cond_6

    #@8
    .line 2336
    const/4 v14, -0x1

    #@9
    .line 2337
    .local v14, "printedMem":I
    const/4 v12, 0x0

    #@a
    .local v12, "imem":I
    :goto_1
    const/4 v4, 0x4

    #@b
    if-ge v12, v4, :cond_5

    #@d
    .line 2338
    add-int v9, v12, v13

    #@f
    .local v9, "state":I
    move-object/from16 v4, p2

    #@11
    move/from16 v5, p3

    #@13
    move/from16 v6, p4

    #@15
    move-wide/from16 v7, p5

    #@17
    move-wide/from16 v10, p7

    #@19
    .line 2339
    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats$ServiceState;->-wrap0(Lcom/android/internal/app/ProcessStats$ServiceState;IIJIJ)J

    #@1c
    move-result-wide v18

    #@1d
    .line 2341
    .local v18, "time":J
    const-string/jumbo v16, ""

    #@20
    .line 2342
    .local v16, "running":Ljava/lang/String;
    move/from16 v0, p4

    #@22
    if-ne v0, v9, :cond_0

    #@24
    if-eqz p0, :cond_0

    #@26
    .line 2343
    const-string/jumbo v16, " (running)"

    #@29
    .line 2345
    :cond_0
    const-wide/16 v4, 0x0

    #@2b
    cmp-long v4, v18, v4

    #@2d
    if-eqz v4, :cond_2

    #@2f
    .line 2346
    if-eqz p0, :cond_1

    #@31
    .line 2347
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    .line 2348
    if-eq v15, v13, :cond_3

    #@36
    move v4, v13

    #@37
    :goto_2
    move-object/from16 v0, p0

    #@39
    invoke-static {v0, v4}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    #@3c
    .line 2350
    move v15, v13

    #@3d
    .line 2351
    if-eq v14, v12, :cond_4

    #@3f
    move v4, v12

    #@40
    :goto_3
    const/4 v5, 0x0

    #@41
    move-object/from16 v0, p0

    #@43
    invoke-static {v0, v4, v5}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    #@46
    .line 2352
    move v14, v12

    #@47
    .line 2353
    const-string/jumbo v4, ": "

    #@4a
    move-object/from16 v0, p0

    #@4c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f
    .line 2354
    move-wide/from16 v0, v18

    #@51
    move-object/from16 v2, p0

    #@53
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@56
    move-object/from16 v0, p0

    #@58
    move-object/from16 v1, v16

    #@5a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5d
    .line 2356
    :cond_1
    add-long v20, v20, v18

    #@5f
    .line 2337
    :cond_2
    add-int/lit8 v12, v12, 0x1

    #@61
    goto :goto_1

    #@62
    .line 2349
    :cond_3
    const/4 v4, -0x1

    #@63
    goto :goto_2

    #@64
    .line 2351
    :cond_4
    const/4 v4, -0x1

    #@65
    goto :goto_3

    #@66
    .line 2335
    .end local v9    # "state":I
    .end local v16    # "running":Ljava/lang/String;
    .end local v18    # "time":J
    :cond_5
    add-int/lit8 v13, v13, 0x4

    #@68
    goto :goto_0

    #@69
    .line 2360
    .end local v12    # "imem":I
    .end local v14    # "printedMem":I
    :cond_6
    const-wide/16 v4, 0x0

    #@6b
    cmp-long v4, v20, v4

    #@6d
    if-eqz v4, :cond_7

    #@6f
    if-eqz p0, :cond_7

    #@71
    .line 2361
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@74
    .line 2362
    const-string/jumbo v4, "    TOTAL: "

    #@77
    move-object/from16 v0, p0

    #@79
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7c
    .line 2363
    move-wide/from16 v0, v20

    #@7e
    move-object/from16 v2, p0

    #@80
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@83
    .line 2364
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    #@86
    .line 2366
    :cond_7
    return-wide v20
.end method

.method public static dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J
    .locals 12
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "durations"    # [J
    .param p3, "curState"    # I
    .param p4, "curStartTime"    # J
    .param p6, "now"    # J

    #@0
    .prologue
    .line 496
    const-wide/16 v8, 0x0

    #@2
    .line 497
    .local v8, "totalTime":J
    const/4 v3, -0x1

    #@3
    .line 498
    .local v3, "printedScreen":I
    const/4 v1, 0x0

    #@4
    .local v1, "iscreen":I
    :goto_0
    const/16 v10, 0x8

    #@6
    if-ge v1, v10, :cond_6

    #@8
    .line 499
    const/4 v2, -0x1

    #@9
    .line 500
    .local v2, "printedMem":I
    const/4 v0, 0x0

    #@a
    .local v0, "imem":I
    :goto_1
    const/4 v10, 0x4

    #@b
    if-ge v0, v10, :cond_5

    #@d
    .line 501
    add-int v5, v0, v1

    #@f
    .line 502
    .local v5, "state":I
    aget-wide v6, p2, v5

    #@11
    .line 503
    .local v6, "time":J
    const-string/jumbo v4, ""

    #@14
    .line 504
    .local v4, "running":Ljava/lang/String;
    if-ne p3, v5, :cond_0

    #@16
    .line 505
    sub-long v10, p6, p4

    #@18
    add-long/2addr v6, v10

    #@19
    .line 506
    if-eqz p0, :cond_0

    #@1b
    .line 507
    const-string/jumbo v4, " (running)"

    #@1e
    .line 510
    :cond_0
    const-wide/16 v10, 0x0

    #@20
    cmp-long v10, v6, v10

    #@22
    if-eqz v10, :cond_2

    #@24
    .line 511
    if-eqz p0, :cond_1

    #@26
    .line 512
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29
    .line 513
    if-eq v3, v1, :cond_3

    #@2b
    move v10, v1

    #@2c
    :goto_2
    invoke-static {p0, v10}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    #@2f
    .line 515
    move v3, v1

    #@30
    .line 516
    if-eq v2, v0, :cond_4

    #@32
    move v10, v0

    #@33
    :goto_3
    const/4 v11, 0x0

    #@34
    invoke-static {p0, v10, v11}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    #@37
    .line 517
    move v2, v0

    #@38
    .line 518
    const-string/jumbo v10, ": "

    #@3b
    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e
    .line 519
    invoke-static {v6, v7, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@41
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@44
    .line 521
    :cond_1
    add-long/2addr v8, v6

    #@45
    .line 500
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@47
    goto :goto_1

    #@48
    .line 514
    :cond_3
    const/4 v10, -0x1

    #@49
    goto :goto_2

    #@4a
    .line 516
    :cond_4
    const/4 v10, -0x1

    #@4b
    goto :goto_3

    #@4c
    .line 498
    .end local v4    # "running":Ljava/lang/String;
    .end local v5    # "state":I
    .end local v6    # "time":J
    :cond_5
    add-int/lit8 v1, v1, 0x4

    #@4e
    goto :goto_0

    #@4f
    .line 525
    .end local v0    # "imem":I
    .end local v2    # "printedMem":I
    :cond_6
    const-wide/16 v10, 0x0

    #@51
    cmp-long v10, v8, v10

    #@53
    if-eqz v10, :cond_7

    #@55
    if-eqz p0, :cond_7

    #@57
    .line 526
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    .line 527
    const-string/jumbo v10, "    TOTAL: "

    #@5d
    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    .line 528
    invoke-static {v8, v9, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@63
    .line 529
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    #@66
    .line 531
    :cond_7
    return-wide v8
.end method

.method static dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V
    .locals 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sep"    # Ljava/lang/String;
    .param p2, "screenStates"    # [I
    .param p3, "memStates"    # [I
    .param p4, "procStates"    # [I

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 995
    if-eqz p2, :cond_5

    #@3
    array-length v2, p2

    #@4
    .line 996
    .local v2, "NS":I
    :goto_0
    if-eqz p3, :cond_6

    #@6
    array-length v0, p3

    #@7
    .line 997
    .local v0, "NM":I
    :goto_1
    if-eqz p4, :cond_7

    #@9
    array-length v1, p4

    #@a
    .line 998
    .local v1, "NP":I
    :goto_2
    const/4 v5, 0x0

    #@b
    .local v5, "is":I
    :goto_3
    if-ge v5, v2, :cond_a

    #@d
    .line 999
    const/4 v3, 0x0

    #@e
    .local v3, "im":I
    :goto_4
    if-ge v3, v0, :cond_9

    #@10
    .line 1000
    const/4 v4, 0x0

    #@11
    .local v4, "ip":I
    :goto_5
    if-ge v4, v1, :cond_8

    #@13
    .line 1001
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16
    .line 1002
    const/4 v6, 0x0

    #@17
    .line 1003
    .local v6, "printed":Z
    if-eqz p2, :cond_0

    #@19
    array-length v7, p2

    #@1a
    if-le v7, v9, :cond_0

    #@1c
    .line 1004
    aget v7, p2, v5

    #@1e
    invoke-static {p0, v7}, Lcom/android/internal/app/ProcessStats;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    #@21
    .line 1005
    const/4 v6, 0x1

    #@22
    .line 1007
    :cond_0
    if-eqz p3, :cond_2

    #@24
    array-length v7, p3

    #@25
    if-le v7, v9, :cond_2

    #@27
    .line 1008
    if-eqz v6, :cond_1

    #@29
    .line 1009
    const-string/jumbo v7, "-"

    #@2c
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    .line 1011
    :cond_1
    aget v7, p3, v3

    #@31
    invoke-static {p0, v7}, Lcom/android/internal/app/ProcessStats;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    #@34
    .line 1012
    const/4 v6, 0x1

    #@35
    .line 1014
    :cond_2
    if-eqz p4, :cond_4

    #@37
    array-length v7, p4

    #@38
    if-le v7, v9, :cond_4

    #@3a
    .line 1015
    if-eqz v6, :cond_3

    #@3c
    .line 1016
    const-string/jumbo v7, "-"

    #@3f
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42
    .line 1018
    :cond_3
    sget-object v7, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

    #@44
    aget v8, p4, v4

    #@46
    aget-object v7, v7, v8

    #@48
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b
    .line 1000
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@4d
    goto :goto_5

    #@4e
    .line 995
    .end local v0    # "NM":I
    .end local v1    # "NP":I
    .end local v2    # "NS":I
    .end local v3    # "im":I
    .end local v4    # "ip":I
    .end local v5    # "is":I
    .end local v6    # "printed":Z
    :cond_5
    const/4 v2, 0x1

    #@4f
    .restart local v2    # "NS":I
    goto :goto_0

    #@50
    .line 996
    :cond_6
    const/4 v0, 0x1

    #@51
    .restart local v0    # "NM":I
    goto :goto_1

    #@52
    .line 997
    :cond_7
    const/4 v1, 0x1

    #@53
    .restart local v1    # "NP":I
    goto :goto_2

    #@54
    .line 999
    .restart local v3    # "im":I
    .restart local v4    # "ip":I
    .restart local v5    # "is":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    #@56
    goto :goto_4

    #@57
    .line 998
    .end local v4    # "ip":I
    :cond_9
    add-int/lit8 v5, v5, 0x1

    #@59
    goto :goto_3

    #@5a
    .line 994
    .end local v3    # "im":I
    :cond_a
    return-void
.end method

.method static printAdjTag(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I

    #@0
    .prologue
    .line 1199
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    #@6
    move-result p1

    #@7
    .line 1200
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_TAGS:[Ljava/lang/String;

    #@9
    const/4 v1, 0x1

    #@a
    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    #@d
    .line 1198
    return-void
.end method

.method static printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 1211
    const/16 v0, 0x2c

    #@2
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    #@5
    .line 1212
    invoke-static {p0, p1}, Lcom/android/internal/app/ProcessStats;->printAdjTag(Ljava/io/PrintWriter;I)V

    #@8
    .line 1213
    const/16 v0, 0x3a

    #@a
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    #@d
    .line 1214
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    #@10
    .line 1210
    return-void
.end method

.method static printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "array"    # [Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "mod"    # I

    #@0
    .prologue
    .line 1183
    div-int v0, p2, p3

    #@2
    .line 1184
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@4
    array-length v1, p1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 1185
    aget-object v1, p1, v0

    #@9
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 1189
    :goto_0
    mul-int v1, v0, p3

    #@e
    sub-int v1, p2, v1

    #@10
    return v1

    #@11
    .line 1187
    :cond_0
    const/16 v1, 0x3f

    #@13
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@16
    goto :goto_0
.end method

.method static printLongOffset(I)Ljava/lang/String;
    .locals 3
    .param p0, "off"    # I

    #@0
    .prologue
    .line 1959
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x10

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 1960
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "a"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    #@f
    shr-int v1, p0, v1

    #@11
    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    #@13
    and-int/2addr v1, v2

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    .line 1961
    const-string/jumbo v1, "i"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    #@1f
    shr-int v1, p0, v1

    #@21
    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    #@23
    and-int/2addr v1, v2

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    .line 1962
    const-string/jumbo v1, "t"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    #@2f
    shr-int v1, p0, v1

    #@31
    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    #@33
    and-int/2addr v1, v2

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    .line 1963
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    return-object v1
.end method

.method private static printMemLabel(Ljava/io/PrintWriter;IC)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I
    .param p2, "sep"    # C

    #@0
    .prologue
    .line 456
    packed-switch p1, :pswitch_data_0

    #@3
    .line 478
    const-string/jumbo v0, "????"

    #@6
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 479
    if-eqz p2, :cond_0

    #@b
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    #@e
    .line 455
    :cond_0
    :goto_0
    return-void

    #@f
    .line 458
    :pswitch_0
    const-string/jumbo v0, "    "

    #@12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15
    .line 459
    if-eqz p2, :cond_0

    #@17
    const/16 v0, 0x20

    #@19
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    #@1c
    goto :goto_0

    #@1d
    .line 462
    :pswitch_1
    const-string/jumbo v0, "Norm"

    #@20
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    .line 463
    if-eqz p2, :cond_0

    #@25
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    #@28
    goto :goto_0

    #@29
    .line 466
    :pswitch_2
    const-string/jumbo v0, "Mod "

    #@2c
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    .line 467
    if-eqz p2, :cond_0

    #@31
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    #@34
    goto :goto_0

    #@35
    .line 470
    :pswitch_3
    const-string/jumbo v0, "Low "

    #@38
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b
    .line 471
    if-eqz p2, :cond_0

    #@3d
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    #@40
    goto :goto_0

    #@41
    .line 474
    :pswitch_4
    const-string/jumbo v0, "Crit"

    #@44
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47
    .line 475
    if-eqz p2, :cond_0

    #@49
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    #@4c
    goto :goto_0

    #@4d
    .line 456
    nop

    #@4e
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static printMemLabelCsv(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 485
    if-ltz p1, :cond_0

    #@2
    .line 486
    const/4 v0, 0x3

    #@3
    if-gt p1, v0, :cond_1

    #@5
    .line 487
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    #@7
    aget-object v0, v0, p1

    #@9
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 484
    :cond_0
    :goto_0
    return-void

    #@d
    .line 489
    :cond_1
    const-string/jumbo v0, "???"

    #@10
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13
    goto :goto_0
.end method

.method static printPercent(Ljava/io/PrintWriter;D)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "fraction"    # D

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1146
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    #@4
    mul-double/2addr p1, v0

    #@5
    .line 1147
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@7
    cmpg-double v0, p1, v0

    #@9
    if-gez v0, :cond_0

    #@b
    .line 1148
    const-string/jumbo v0, "%.2f"

    #@e
    new-array v1, v2, [Ljava/lang/Object;

    #@10
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@13
    move-result-object v2

    #@14
    aput-object v2, v1, v3

    #@16
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d
    .line 1154
    :goto_0
    const-string/jumbo v0, "%"

    #@20
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    .line 1145
    return-void

    #@24
    .line 1149
    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    #@26
    cmpg-double v0, p1, v0

    #@28
    if-gez v0, :cond_1

    #@2a
    .line 1150
    const-string/jumbo v0, "%.1f"

    #@2d
    new-array v1, v2, [Ljava/lang/Object;

    #@2f
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@32
    move-result-object v2

    #@33
    aput-object v2, v1, v3

    #@35
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    goto :goto_0

    #@3d
    .line 1152
    :cond_1
    const-string/jumbo v0, "%.0f"

    #@40
    new-array v1, v2, [Ljava/lang/Object;

    #@42
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@45
    move-result-object v2

    #@46
    aput-object v2, v1, v3

    #@48
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f
    goto :goto_0
.end method

.method static printProcStateTag(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I

    #@0
    .prologue
    .line 1193
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    #@2
    const/16 v1, 0x38

    #@4
    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    #@7
    move-result p1

    #@8
    .line 1194
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_TAGS:[Ljava/lang/String;

    #@a
    const/16 v1, 0xe

    #@c
    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    #@f
    move-result p1

    #@10
    .line 1195
    sget-object v0, Lcom/android/internal/app/ProcessStats;->STATE_TAGS:[Ljava/lang/String;

    #@12
    const/4 v1, 0x1

    #@13
    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    #@16
    .line 1192
    return-void
.end method

.method static printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 1204
    const/16 v0, 0x2c

    #@2
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    #@5
    .line 1205
    invoke-static {p0, p1}, Lcom/android/internal/app/ProcessStats;->printProcStateTag(Ljava/io/PrintWriter;I)V

    #@8
    .line 1206
    const/16 v0, 0x3a

    #@a
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    #@d
    .line 1207
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    #@10
    .line 1203
    return-void
.end method

.method private static printScreenLabel(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 423
    packed-switch p1, :pswitch_data_0

    #@3
    .line 434
    :pswitch_0
    const-string/jumbo v0, "????/"

    #@6
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 422
    :goto_0
    return-void

    #@a
    .line 425
    :pswitch_1
    const-string/jumbo v0, "     "

    #@d
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10
    goto :goto_0

    #@11
    .line 428
    :pswitch_2
    const-string/jumbo v0, "SOff/"

    #@14
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    goto :goto_0

    #@18
    .line 431
    :pswitch_3
    const-string/jumbo v0, "SOn /"

    #@1b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e
    goto :goto_0

    #@1f
    .line 423
    nop

    #@20
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static printScreenLabelCsv(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 440
    packed-switch p1, :pswitch_data_0

    #@3
    .line 450
    :pswitch_0
    const-string/jumbo v0, "???"

    #@6
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 439
    :goto_0
    :pswitch_1
    return-void

    #@a
    .line 444
    :pswitch_2
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    #@c
    const/4 v1, 0x0

    #@d
    aget-object v0, v0, v1

    #@f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    goto :goto_0

    #@13
    .line 447
    :pswitch_3
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    #@15
    const/4 v1, 0x1

    #@16
    aget-object v0, v0, v1

    #@18
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b
    goto :goto_0

    #@1c
    .line 440
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "val"    # I
    .param p3, "what"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1641
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .local v0, "got":I
    if-eq v0, p2, :cond_0

    #@6
    .line 1642
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
    iput-object v1, p0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@27
    .line 1643
    const/4 v1, 0x0

    #@28
    return v1

    #@29
    .line 1645
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
    .line 1479
    const/16 v2, 0x9

    #@2
    if-gt p2, v2, :cond_0

    #@4
    .line 1480
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    return-object v2

    #@9
    .line 1482
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    .line 1483
    .local v0, "index":I
    if-ltz v0, :cond_1

    #@f
    .line 1484
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/lang/String;

    #@17
    return-object v2

    #@18
    .line 1486
    :cond_1
    not-int v0, v0

    #@19
    .line 1487
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 1488
    .local v1, "name":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@22
    move-result v2

    #@23
    if-gt v2, v0, :cond_2

    #@25
    .line 1489
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    #@27
    const/4 v3, 0x0

    #@28
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    goto :goto_0

    #@2c
    .line 1491
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 1492
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
    .line 1442
    const/16 v4, 0xa

    #@2
    if-gt p2, v4, :cond_0

    #@4
    .line 1443
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->readLongArray([J)V

    #@7
    .line 1444
    return-void

    #@8
    .line 1446
    :cond_0
    array-length v0, p3

    #@9
    .line 1447
    .local v0, "alen":I
    if-le p4, v0, :cond_1

    #@b
    .line 1448
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
    .line 1451
    :cond_1
    const/4 v2, 0x0

    #@31
    .local v2, "i":I
    :goto_0
    if-ge v2, p4, :cond_3

    #@33
    .line 1452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v3

    #@37
    .line 1453
    .local v3, "val":I
    if-ltz v3, :cond_2

    #@39
    .line 1454
    int-to-long v4, v3

    #@3a
    aput-wide v4, p3, v2

    #@3c
    .line 1451
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 1456
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v1

    #@43
    .line 1457
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
    .line 1460
    .end local v1    # "bottom":I
    .end local v3    # "val":I
    :cond_3
    :goto_2
    if-ge v2, v0, :cond_4

    #@4f
    .line 1461
    const-wide/16 v4, 0x0

    #@51
    aput-wide v4, p3, v2

    #@53
    .line 1462
    add-int/lit8 v2, v2, 0x1

    #@55
    goto :goto_2

    #@56
    .line 1441
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
    .line 1649
    const/4 v4, 0x0

    #@2
    .line 1650
    .local v4, "pos":I
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    #@5
    move-result v2

    #@6
    .line 1651
    .local v2, "initialAvail":I
    if-lez v2, :cond_1

    #@8
    add-int/lit8 v5, v2, 0x1

    #@a
    :goto_0
    new-array v1, v5, [B

    #@c
    .line 1653
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
    .line 1656
    .local v0, "amt":I
    if-gez v0, :cond_2

    #@14
    .line 1659
    aput v4, p1, v6

    #@16
    .line 1660
    return-object v1

    #@17
    .line 1651
    .end local v0    # "amt":I
    .end local v1    # "data":[B
    :cond_1
    const/16 v5, 0x4000

    #@19
    goto :goto_0

    #@1a
    .line 1662
    .restart local v0    # "amt":I
    .restart local v1    # "data":[B
    :cond_2
    add-int/2addr v4, v0

    #@1b
    .line 1663
    array-length v5, v1

    #@1c
    if-lt v4, v5, :cond_0

    #@1e
    .line 1664
    add-int/lit16 v5, v4, 0x4000

    #@20
    new-array v3, v5, [B

    #@22
    .line 1667
    .local v3, "newData":[B
    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@25
    .line 1668
    move-object v1, v3

    #@26
    goto :goto_1
.end method

.method private readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v1

    #@5
    .line 1402
    .local v1, "size":I
    if-gez v1, :cond_0

    #@7
    .line 1403
    const-string/jumbo v3, "ProcessStats"

    #@a
    new-instance v4, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v5, "Ignoring existing stats; bad "

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    const-string/jumbo v5, " table size: "

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 1404
    sget-object v3, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    #@2e
    return-object v3

    #@2f
    .line 1406
    :cond_0
    if-nez v1, :cond_1

    #@31
    .line 1407
    return-object v6

    #@32
    .line 1409
    :cond_1
    new-array v2, v1, [I

    #@34
    .line 1410
    .local v2, "table":[I
    const/4 v0, 0x0

    #@35
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@37
    .line 1411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v3

    #@3b
    aput v3, v2, v0

    #@3d
    .line 1414
    aget v3, v2, v0

    #@3f
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ProcessStats;->validateLongOffset(I)Z

    #@42
    move-result v3

    #@43
    if-nez v3, :cond_2

    #@45
    .line 1415
    const-string/jumbo v3, "ProcessStats"

    #@48
    new-instance v4, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v5, "Ignoring existing stats; bad "

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    const-string/jumbo v5, " table entry: "

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    .line 1416
    aget v5, v2, v0

    #@61
    invoke-static {v5}, Lcom/android/internal/app/ProcessStats;->printLongOffset(I)Ljava/lang/String;

    #@64
    move-result-object v5

    #@65
    .line 1415
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v4

    #@6d
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    .line 1417
    return-object v6

    #@71
    .line 1410
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@73
    goto :goto_0

    #@74
    .line 1420
    :cond_3
    return-object v2
.end method

.method private resetCommon()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    .line 1364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7
    move-result-wide v0

    #@8
    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    #@a
    .line 1365
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats;->buildTimePeriodStartClockStr()V

    #@d
    .line 1366
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@10
    move-result-wide v0

    #@11
    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    #@13
    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    #@15
    .line 1367
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@18
    move-result-wide v0

    #@19
    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    #@1b
    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartUptime:J

    #@1d
    .line 1368
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@22
    .line 1369
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@24
    const/16 v1, 0x1000

    #@26
    new-array v1, v1, [J

    #@28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    .line 1370
    iput v2, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    #@2d
    .line 1371
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    #@2f
    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    #@32
    .line 1372
    iput-object v3, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    #@34
    .line 1373
    iput v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    #@36
    .line 1374
    iput-wide v4, p0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    #@38
    .line 1375
    iput-object v3, p0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@3a
    .line 1376
    iput v2, p0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    #@3c
    .line 1377
    const/4 v0, 0x1

    #@3d
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ProcessStats;->evaluateSystemProperties(Z)Z

    #@40
    .line 1363
    return-void
.end method

.method private writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1467
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    .line 1468
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@a
    .line 1469
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result v1

    #@e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1470
    return-void

    #@12
    .line 1472
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@17
    move-result v1

    #@18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v0

    #@1c
    .line 1473
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    #@1e
    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 1474
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@24
    move-result v1

    #@25
    not-int v1, v1

    #@26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 1475
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2c
    .line 1466
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
    .line 1424
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    #@6
    .line 1425
    aget-wide v4, p2, v1

    #@8
    .line 1426
    .local v4, "val":J
    const-wide/16 v6, 0x0

    #@a
    cmp-long v3, v4, v6

    #@c
    if-gez v3, :cond_0

    #@e
    .line 1427
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
    .line 1428
    const-wide/16 v4, 0x0

    #@2a
    .line 1430
    :cond_0
    cmp-long v3, v4, v8

    #@2c
    if-gtz v3, :cond_1

    #@2e
    .line 1431
    long-to-int v3, v4

    #@2f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 1424
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 1433
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
    .line 1434
    .local v2, "top":I
    const-wide/32 v6, 0xfffffff

    #@3f
    and-long/2addr v6, v4

    #@40
    long-to-int v0, v6

    #@41
    .line 1435
    .local v0, "bottom":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@44
    .line 1436
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@47
    goto :goto_1

    #@48
    .line 1423
    .end local v0    # "bottom":I
    .end local v2    # "top":I
    .end local v4    # "val":J
    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/app/ProcessStats;)V
    .locals 40
    .param p1, "other"    # Lcom/android/internal/app/ProcessStats;

    #@0
    .prologue
    .line 265
    move-object/from16 v0, p1

    #@2
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@4
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@7
    move-result-object v29

    #@8
    .line 266
    .local v29, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    const/16 v18, 0x0

    #@a
    .local v18, "ip":I
    :goto_0
    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    #@d
    move-result v4

    #@e
    move/from16 v0, v18

    #@10
    if-ge v0, v4, :cond_6

    #@12
    .line 267
    move-object/from16 v0, v29

    #@14
    move/from16 v1, v18

    #@16
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@19
    move-result-object v5

    #@1a
    check-cast v5, Ljava/lang/String;

    #@1c
    .line 268
    .local v5, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v29

    #@1e
    move/from16 v1, v18

    #@20
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@23
    move-result-object v35

    #@24
    check-cast v35, Landroid/util/SparseArray;

    #@26
    .line 269
    .local v35, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/16 v21, 0x0

    #@28
    .local v21, "iu":I
    :goto_1
    invoke-virtual/range {v35 .. v35}, Landroid/util/SparseArray;->size()I

    #@2b
    move-result v4

    #@2c
    move/from16 v0, v21

    #@2e
    if-ge v0, v4, :cond_5

    #@30
    .line 270
    move-object/from16 v0, v35

    #@32
    move/from16 v1, v21

    #@34
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@37
    move-result v6

    #@38
    .line 271
    .local v6, "uid":I
    move-object/from16 v0, v35

    #@3a
    move/from16 v1, v21

    #@3c
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@3f
    move-result-object v37

    #@40
    check-cast v37, Landroid/util/SparseArray;

    #@42
    .line 272
    .local v37, "versions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v22, 0x0

    #@44
    .local v22, "iv":I
    :goto_2
    invoke-virtual/range {v37 .. v37}, Landroid/util/SparseArray;->size()I

    #@47
    move-result v4

    #@48
    move/from16 v0, v22

    #@4a
    if-ge v0, v4, :cond_4

    #@4c
    .line 273
    move-object/from16 v0, v37

    #@4e
    move/from16 v1, v22

    #@50
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@53
    move-result v7

    #@54
    .line 274
    .local v7, "vers":I
    move-object/from16 v0, v37

    #@56
    move/from16 v1, v22

    #@58
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@5b
    move-result-object v27

    #@5c
    check-cast v27, Lcom/android/internal/app/ProcessStats$PackageState;

    #@5e
    .line 275
    .local v27, "otherState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v27

    #@60
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@62
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@65
    move-result v14

    #@66
    .line 276
    .local v14, "NPROCS":I
    move-object/from16 v0, v27

    #@68
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@6a
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@6d
    move-result v15

    #@6e
    .line 277
    .local v15, "NSRVS":I
    const/16 v19, 0x0

    #@70
    .local v19, "iproc":I
    :goto_3
    move/from16 v0, v19

    #@72
    if-ge v0, v14, :cond_2

    #@74
    .line 278
    move-object/from16 v0, v27

    #@76
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@78
    move/from16 v0, v19

    #@7a
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@7d
    move-result-object v26

    #@7e
    check-cast v26, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@80
    .line 279
    .local v26, "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v26

    #@82
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@84
    move-object/from16 v0, v26

    #@86
    if-eq v4, v0, :cond_1

    #@88
    .line 283
    move-object/from16 v0, v26

    #@8a
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@8c
    .line 282
    move-object/from16 v0, p0

    #@8e
    invoke-virtual {v0, v5, v6, v7, v4}, Lcom/android/internal/app/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    #@91
    move-result-object v8

    #@92
    .line 284
    .local v8, "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v4, v8, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@94
    if-ne v4, v8, :cond_0

    #@96
    .line 286
    const/4 v4, 0x1

    #@97
    iput-boolean v4, v8, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    #@99
    .line 287
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@9c
    move-result-wide v24

    #@9d
    .line 288
    .local v24, "now":J
    move-object/from16 v0, p0

    #@9f
    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;

    #@a2
    move-result-object v30

    #@a3
    .line 290
    .local v30, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v4, v8, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    #@a5
    move-wide/from16 v0, v24

    #@a7
    invoke-virtual {v8, v4, v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->clone(Ljava/lang/String;J)Lcom/android/internal/app/ProcessStats$ProcessState;

    #@aa
    move-result-object v8

    #@ab
    .line 291
    move-object/from16 v0, v30

    #@ad
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@af
    iget-object v9, v8, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@b1
    invoke-virtual {v4, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b4
    .line 293
    .end local v24    # "now":J
    .end local v30    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_0
    move-object/from16 v0, v26

    #@b6
    invoke-virtual {v8, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->add(Lcom/android/internal/app/ProcessStats$ProcessState;)V

    #@b9
    .line 277
    .end local v8    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1
    add-int/lit8 v19, v19, 0x1

    #@bb
    goto :goto_3

    #@bc
    .line 296
    .end local v26    # "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_2
    const/16 v20, 0x0

    #@be
    .local v20, "isvc":I
    :goto_4
    move/from16 v0, v20

    #@c0
    if-ge v0, v15, :cond_3

    #@c2
    .line 297
    move-object/from16 v0, v27

    #@c4
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@c6
    move/from16 v0, v20

    #@c8
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@cb
    move-result-object v28

    #@cc
    check-cast v28, Lcom/android/internal/app/ProcessStats$ServiceState;

    #@ce
    .line 301
    .local v28, "otherSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v28

    #@d0
    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    #@d2
    move-object/from16 v0, v28

    #@d4
    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    #@d6
    move-object/from16 v4, p0

    #@d8
    .line 300
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;

    #@db
    move-result-object v34

    #@dc
    .line 302
    .local v34, "thisSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v34

    #@de
    move-object/from16 v1, v28

    #@e0
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->add(Lcom/android/internal/app/ProcessStats$ServiceState;)V

    #@e3
    .line 296
    add-int/lit8 v20, v20, 0x1

    #@e5
    goto :goto_4

    #@e6
    .line 272
    .end local v28    # "otherSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v34    # "thisSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_3
    add-int/lit8 v22, v22, 0x1

    #@e8
    goto/16 :goto_2

    #@ea
    .line 269
    .end local v7    # "vers":I
    .end local v14    # "NPROCS":I
    .end local v15    # "NSRVS":I
    .end local v19    # "iproc":I
    .end local v20    # "isvc":I
    .end local v27    # "otherState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_4
    add-int/lit8 v21, v21, 0x1

    #@ec
    goto/16 :goto_1

    #@ee
    .line 266
    .end local v6    # "uid":I
    .end local v22    # "iv":I
    .end local v37    # "versions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_5
    add-int/lit8 v18, v18, 0x1

    #@f0
    goto/16 :goto_0

    #@f2
    .line 308
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v21    # "iu":I
    .end local v35    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_6
    move-object/from16 v0, p1

    #@f4
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@f6
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@f9
    move-result-object v31

    #@fa
    .line 309
    .local v31, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/16 v18, 0x0

    #@fc
    :goto_5
    invoke-virtual/range {v31 .. v31}, Landroid/util/ArrayMap;->size()I

    #@ff
    move-result v4

    #@100
    move/from16 v0, v18

    #@102
    if-ge v0, v4, :cond_9

    #@104
    .line 310
    move-object/from16 v0, v31

    #@106
    move/from16 v1, v18

    #@108
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@10b
    move-result-object v36

    #@10c
    check-cast v36, Landroid/util/SparseArray;

    #@10e
    .line 311
    .local v36, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v21, 0x0

    #@110
    .restart local v21    # "iu":I
    :goto_6
    invoke-virtual/range {v36 .. v36}, Landroid/util/SparseArray;->size()I

    #@113
    move-result v4

    #@114
    move/from16 v0, v21

    #@116
    if-ge v0, v4, :cond_8

    #@118
    .line 312
    move-object/from16 v0, v36

    #@11a
    move/from16 v1, v21

    #@11c
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@11f
    move-result v6

    #@120
    .line 313
    .restart local v6    # "uid":I
    move-object/from16 v0, v36

    #@122
    move/from16 v1, v21

    #@124
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@127
    move-result-object v26

    #@128
    check-cast v26, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@12a
    .line 314
    .restart local v26    # "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    #@12c
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@12e
    move-object/from16 v0, v26

    #@130
    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@132
    invoke-virtual {v4, v9, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@135
    move-result-object v8

    #@136
    check-cast v8, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@138
    .line 316
    .restart local v8    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v8, :cond_7

    #@13a
    .line 318
    new-instance v8, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@13c
    .end local v8    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v26

    #@13e
    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    #@140
    move-object/from16 v0, v26

    #@142
    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    #@144
    .line 319
    move-object/from16 v0, v26

    #@146
    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@148
    move-object/from16 v9, p0

    #@14a
    move v11, v6

    #@14b
    .line 318
    invoke-direct/range {v8 .. v13}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    #@14e
    .line 320
    .restart local v8    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    #@150
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@152
    move-object/from16 v0, v26

    #@154
    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@156
    invoke-virtual {v4, v9, v6, v8}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    #@159
    .line 321
    move-object/from16 v0, v26

    #@15b
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    #@15d
    .line 322
    move-object/from16 v0, v26

    #@15f
    iget v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    #@161
    .line 321
    move-object/from16 v0, p0

    #@163
    invoke-virtual {v0, v4, v6, v9}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;

    #@166
    move-result-object v33

    #@167
    .line 323
    .local v33, "thisState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v33

    #@169
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@16b
    move-object/from16 v0, v26

    #@16d
    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@16f
    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@172
    move-result v4

    #@173
    if-nez v4, :cond_7

    #@175
    .line 324
    move-object/from16 v0, v33

    #@177
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@179
    move-object/from16 v0, v26

    #@17b
    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@17d
    invoke-virtual {v4, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@180
    .line 327
    .end local v33    # "thisState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_7
    move-object/from16 v0, v26

    #@182
    invoke-virtual {v8, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->add(Lcom/android/internal/app/ProcessStats$ProcessState;)V

    #@185
    .line 311
    add-int/lit8 v21, v21, 0x1

    #@187
    goto :goto_6

    #@188
    .line 309
    .end local v6    # "uid":I
    .end local v8    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v26    # "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_8
    add-int/lit8 v18, v18, 0x1

    #@18a
    goto/16 :goto_5

    #@18c
    .line 331
    .end local v21    # "iu":I
    .end local v36    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_9
    const/16 v17, 0x0

    #@18e
    .local v17, "i":I
    :goto_7
    const/16 v4, 0x8

    #@190
    move/from16 v0, v17

    #@192
    if-ge v0, v4, :cond_a

    #@194
    .line 335
    move-object/from16 v0, p0

    #@196
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    #@198
    aget-wide v10, v4, v17

    #@19a
    move-object/from16 v0, p1

    #@19c
    iget-object v9, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    #@19e
    aget-wide v12, v9, v17

    #@1a0
    add-long/2addr v10, v12

    #@1a1
    aput-wide v10, v4, v17

    #@1a3
    .line 331
    add-int/lit8 v17, v17, 0x1

    #@1a5
    goto :goto_7

    #@1a6
    .line 338
    :cond_a
    const/16 v17, 0x0

    #@1a8
    :goto_8
    move-object/from16 v0, p1

    #@1aa
    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    #@1ac
    move/from16 v0, v17

    #@1ae
    if-ge v0, v4, :cond_b

    #@1b0
    .line 339
    move-object/from16 v0, p1

    #@1b2
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    #@1b4
    aget v16, v4, v17

    #@1b6
    .line 340
    .local v16, "ent":I
    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    #@1b8
    shr-int v4, v16, v4

    #@1ba
    sget v9, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    #@1bc
    and-int v32, v4, v9

    #@1be
    .line 341
    .local v32, "state":I
    move-object/from16 v0, p1

    #@1c0
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@1c2
    sget v9, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    #@1c4
    shr-int v9, v16, v9

    #@1c6
    sget v10, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    #@1c8
    and-int/2addr v9, v10

    #@1c9
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1cc
    move-result-object v23

    #@1cd
    check-cast v23, [J

    #@1cf
    .line 342
    .local v23, "longs":[J
    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    #@1d1
    shr-int v4, v16, v4

    #@1d3
    sget v9, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    #@1d5
    and-int/2addr v4, v9

    #@1d6
    move-object/from16 v0, p0

    #@1d8
    move/from16 v1, v32

    #@1da
    move-object/from16 v2, v23

    #@1dc
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/app/ProcessStats;->addSysMemUsage(I[JI)V

    #@1df
    .line 338
    add-int/lit8 v17, v17, 0x1

    #@1e1
    goto :goto_8

    #@1e2
    .line 345
    .end local v16    # "ent":I
    .end local v23    # "longs":[J
    .end local v32    # "state":I
    :cond_b
    move-object/from16 v0, p1

    #@1e4
    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    #@1e6
    move-object/from16 v0, p0

    #@1e8
    iget-wide v12, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    #@1ea
    cmp-long v4, v10, v12

    #@1ec
    if-gez v4, :cond_c

    #@1ee
    .line 346
    move-object/from16 v0, p1

    #@1f0
    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    #@1f2
    move-object/from16 v0, p0

    #@1f4
    iput-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    #@1f6
    .line 347
    move-object/from16 v0, p1

    #@1f8
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    #@1fa
    move-object/from16 v0, p0

    #@1fc
    iput-object v4, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    #@1fe
    .line 349
    :cond_c
    move-object/from16 v0, p0

    #@200
    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    #@202
    move-object/from16 v0, p1

    #@204
    iget-wide v12, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    #@206
    move-object/from16 v0, p1

    #@208
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    #@20a
    move-wide/from16 v38, v0

    #@20c
    sub-long v12, v12, v38

    #@20e
    add-long/2addr v10, v12

    #@20f
    move-object/from16 v0, p0

    #@211
    iput-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    #@213
    .line 350
    move-object/from16 v0, p0

    #@215
    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    #@217
    move-object/from16 v0, p1

    #@219
    iget-wide v12, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    #@21b
    move-object/from16 v0, p1

    #@21d
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartUptime:J

    #@21f
    move-wide/from16 v38, v0

    #@221
    sub-long v12, v12, v38

    #@223
    add-long/2addr v10, v12

    #@224
    move-object/from16 v0, p0

    #@226
    iput-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    #@228
    .line 264
    return-void
.end method

.method addLongData(III)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "type"    # I
    .param p3, "num"    # I

    #@0
    .prologue
    .line 1922
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ProcessStats;->allocLongData(I)I

    #@3
    move-result v0

    #@4
    .line 1924
    .local v0, "off":I
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    #@a
    .line 1925
    :goto_0
    iget v2, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    #@c
    or-int v3, p2, v0

    #@e
    .line 1923
    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    #@14
    .line 1926
    iget v1, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    iput v1, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    #@1a
    .line 1927
    return v0

    #@1b
    .line 1924
    :cond_0
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    #@1d
    goto :goto_0
.end method

.method addSysMemUsage(I[JI)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "data"    # [J
    .param p3, "dataOff"    # I

    #@0
    .prologue
    .line 370
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    #@2
    iget v4, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    #@4
    invoke-static {v3, v4, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    #@7
    move-result v0

    #@8
    .line 372
    .local v0, "idx":I
    if-ltz v0, :cond_0

    #@a
    .line 373
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    #@c
    aget v2, v3, v0

    #@e
    .line 381
    .local v2, "off":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@10
    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    #@12
    shr-int v4, v2, v4

    #@14
    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    #@16
    and-int/2addr v4, v5

    #@17
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, [J

    #@1d
    .line 382
    .local v1, "longs":[J
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    #@1f
    shr-int v3, v2, v3

    #@21
    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    #@23
    and-int v0, v3, v4

    #@25
    .line 383
    invoke-static {v1, v0, p2, p3}, Lcom/android/internal/app/ProcessStats;->addSysMemUsage([JI[JI)V

    #@28
    .line 369
    return-void

    #@29
    .line 375
    .end local v1    # "longs":[J
    .end local v2    # "off":I
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    #@2b
    iput-object v3, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    #@2d
    .line 376
    iget v3, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    #@2f
    iput v3, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    #@31
    .line 377
    not-int v3, v0

    #@32
    const/16 v4, 0x10

    #@34
    invoke-virtual {p0, v3, p1, v4}, Lcom/android/internal/app/ProcessStats;->addLongData(III)I

    #@37
    move-result v2

    #@38
    .line 378
    .restart local v2    # "off":I
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    #@3a
    iput-object v3, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    #@3c
    .line 379
    iget v3, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    #@3e
    iput v3, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    #@40
    goto :goto_0
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
    .line 355
    iget v2, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    #@2
    const/4 v3, -0x1

    #@3
    if-eq v2, v3, :cond_1

    #@5
    .line 356
    iget v2, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    #@7
    mul-int/lit8 v1, v2, 0xe

    #@9
    .line 357
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    #@b
    const-wide/16 v4, 0x1

    #@d
    const/4 v3, 0x0

    #@e
    aput-wide v4, v2, v3

    #@10
    .line 358
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    #@12
    if-ge v0, v2, :cond_0

    #@14
    .line 359
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    #@16
    add-int/lit8 v3, v0, 0x1

    #@18
    aput-wide p1, v2, v3

    #@1a
    .line 360
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    #@1c
    add-int/lit8 v3, v0, 0x4

    #@1e
    aput-wide p3, v2, v3

    #@20
    .line 361
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    #@22
    add-int/lit8 v3, v0, 0x7

    #@24
    aput-wide p5, v2, v3

    #@26
    .line 362
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    #@28
    add-int/lit8 v3, v0, 0xa

    #@2a
    aput-wide p7, v2, v3

    #@2c
    .line 363
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    #@2e
    add-int/lit8 v3, v0, 0xd

    #@30
    aput-wide p9, v2, v3

    #@32
    .line 358
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 365
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    #@37
    const/4 v3, 0x0

    #@38
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->addSysMemUsage(I[JI)V

    #@3b
    .line 354
    .end local v0    # "i":I
    .end local v1    # "state":I
    :cond_1
    return-void
.end method

.method allocLongData(I)I
    .locals 6
    .param p1, "num"    # I

    #@0
    .prologue
    .line 1931
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v3

    #@6
    add-int/lit8 v2, v3, -0x1

    #@8
    .line 1932
    .local v2, "whichLongs":I
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, [J

    #@10
    .line 1933
    .local v0, "longs":[J
    iget v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    #@12
    add-int/2addr v3, p1

    #@13
    array-length v4, v0

    #@14
    if-le v3, v4, :cond_0

    #@16
    .line 1934
    const/16 v3, 0x1000

    #@18
    new-array v0, v3, [J

    #@1a
    .line 1935
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1f
    .line 1936
    add-int/lit8 v2, v2, 0x1

    #@21
    .line 1937
    const/4 v3, 0x0

    #@22
    iput v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    #@24
    .line 1939
    :cond_0
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    #@26
    shl-int v3, v2, v3

    #@28
    iget v4, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    #@2a
    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    #@2c
    shl-int/2addr v4, v5

    #@2d
    or-int v1, v3, v4

    #@2f
    .line 1940
    .local v1, "off":I
    iget v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    #@31
    add-int/2addr v3, p1

    #@32
    iput v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    #@34
    .line 1941
    return v1
.end method

.method collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "itemName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2547
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 2548
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    .line 2549
    .local v0, "ITEMLEN":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@d
    move-result v1

    #@e
    .line 2550
    .local v1, "PKGLEN":I
    if-ne v0, v1, :cond_0

    #@10
    .line 2551
    const-string/jumbo v2, ""

    #@13
    return-object v2

    #@14
    .line 2552
    :cond_0
    if-lt v0, v1, :cond_1

    #@16
    .line 2553
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v2

    #@1a
    const/16 v3, 0x2e

    #@1c
    if-ne v2, v3, :cond_1

    #@1e
    .line 2554
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    return-object v2

    #@23
    .line 2558
    .end local v0    # "ITEMLEN":I
    .end local v1    # "PKGLEN":I
    :cond_1
    return-object p2
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
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2497
    new-instance v10, Landroid/util/ArraySet;

    #@2
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    #@5
    .line 2498
    .local v10, "foundProcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    move-object/from16 v0, p0

    #@7
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@9
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@c
    move-result-object v17

    #@d
    .line 2499
    .local v17, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
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
    .line 2500
    move-object/from16 v0, v17

    #@16
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@19
    move-result-object v19

    #@1a
    check-cast v19, Ljava/lang/String;

    #@1c
    .line 2501
    .local v19, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v17

    #@1e
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@21
    move-result-object v20

    #@22
    check-cast v20, Landroid/util/SparseArray;

    #@24
    .line 2502
    .local v20, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
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
    .line 2503
    move-object/from16 v0, v20

    #@2d
    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@30
    move-result-object v22

    #@31
    check-cast v22, Landroid/util/SparseArray;

    #@33
    .line 2504
    .local v22, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    #@36
    move-result v9

    #@37
    .line 2505
    .local v9, "NVERS":I
    const/4 v15, 0x0

    #@38
    .local v15, "iv":I
    :goto_2
    if-ge v15, v9, :cond_5

    #@3a
    .line 2506
    move-object/from16 v0, v22

    #@3c
    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@3f
    move-result-object v21

    #@40
    check-cast v21, Lcom/android/internal/app/ProcessStats$PackageState;

    #@42
    .line 2507
    .local v21, "state":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v21

    #@44
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@46
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@49
    move-result v8

    #@4a
    .line 2508
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
    .line 2509
    :goto_3
    const/4 v13, 0x0

    #@55
    .local v13, "iproc":I
    :goto_4
    if-ge v13, v8, :cond_4

    #@57
    .line 2510
    move-object/from16 v0, v21

    #@59
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@5b
    invoke-virtual {v3, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@5e
    move-result-object v2

    #@5f
    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@61
    .line 2511
    .local v2, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v18, :cond_0

    #@63
    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@65
    move-object/from16 v0, p7

    #@67
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v3

    #@6b
    if-eqz v3, :cond_2

    #@6d
    .line 2514
    :cond_0
    if-eqz p8, :cond_1

    #@6f
    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    #@72
    move-result v3

    #@73
    if-eqz v3, :cond_2

    #@75
    .line 2517
    :cond_1
    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@77
    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@7a
    .line 2509
    :cond_2
    add-int/lit8 v13, v13, 0x1

    #@7c
    goto :goto_4

    #@7d
    .line 2508
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v13    # "iproc":I
    :cond_3
    const/16 v18, 0x1

    #@7f
    .local v18, "pkgMatch":Z
    goto :goto_3

    #@80
    .line 2505
    .end local v18    # "pkgMatch":Z
    .restart local v13    # "iproc":I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    #@82
    goto :goto_2

    #@83
    .line 2502
    .end local v8    # "NPROCS":I
    .end local v13    # "iproc":I
    .end local v21    # "state":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_5
    add-int/lit8 v14, v14, 0x1

    #@85
    goto :goto_1

    #@86
    .line 2499
    .end local v9    # "NVERS":I
    .end local v15    # "iv":I
    .end local v22    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_6
    add-int/lit8 v12, v12, 0x1

    #@88
    goto :goto_0

    #@89
    .line 2522
    .end local v14    # "iu":I
    .end local v19    # "pkgName":Ljava/lang/String;
    .end local v20    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_7
    new-instance v16, Ljava/util/ArrayList;

    #@8b
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    #@8e
    move-result v3

    #@8f
    move-object/from16 v0, v16

    #@91
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@94
    .line 2523
    .local v16, "outProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/4 v11, 0x0

    #@95
    .local v11, "i":I
    :goto_5
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    #@98
    move-result v3

    #@99
    if-ge v11, v3, :cond_9

    #@9b
    .line 2524
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@9e
    move-result-object v2

    #@9f
    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@a1
    .restart local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v3, p1

    #@a3
    move-object/from16 v4, p2

    #@a5
    move-object/from16 v5, p3

    #@a7
    move-wide/from16 v6, p5

    #@a9
    .line 2525
    invoke-static/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->computeProcessTimeLocked(Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)J

    #@ac
    move-result-wide v4

    #@ad
    const-wide/16 v6, 0x0

    #@af
    cmp-long v3, v4, v6

    #@b1
    if-lez v3, :cond_8

    #@b3
    .line 2526
    move-object/from16 v0, v16

    #@b5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b8
    .line 2527
    move-object/from16 v0, p3

    #@ba
    move-object/from16 v1, p4

    #@bc
    if-eq v0, v1, :cond_8

    #@be
    move-object/from16 v3, p1

    #@c0
    move-object/from16 v4, p2

    #@c2
    move-object/from16 v5, p4

    #@c4
    move-wide/from16 v6, p5

    #@c6
    .line 2528
    invoke-static/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->computeProcessTimeLocked(Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)J

    #@c9
    .line 2523
    :cond_8
    add-int/lit8 v11, v11, 0x1

    #@cb
    goto :goto_5

    #@cc
    .line 2532
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_9
    new-instance v3, Lcom/android/internal/app/ProcessStats$2;

    #@ce
    move-object/from16 v0, p0

    #@d0
    invoke-direct {v3, v0}, Lcom/android/internal/app/ProcessStats$2;-><init>(Lcom/android/internal/app/ProcessStats;)V

    #@d3
    move-object/from16 v0, v16

    #@d5
    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@d8
    .line 2543
    return-object v16
.end method

.method public computeTotalMemoryUse(Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 48
    .param p1, "data"    # Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;
    .param p2, "now"    # J

    #@0
    .prologue
    .line 676
    const-wide/16 v42, 0x0

    #@2
    move-wide/from16 v0, v42

    #@4
    move-object/from16 v2, p1

    #@6
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    #@8
    .line 677
    const/4 v14, 0x0

    #@9
    .local v14, "i":I
    :goto_0
    const/16 v41, 0xe

    #@b
    move/from16 v0, v41

    #@d
    if-ge v14, v0, :cond_0

    #@f
    .line 678
    move-object/from16 v0, p1

    #@11
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    #@13
    move-object/from16 v41, v0

    #@15
    const-wide/16 v42, 0x0

    #@17
    aput-wide v42, v41, v14

    #@19
    .line 679
    move-object/from16 v0, p1

    #@1b
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    #@1d
    move-object/from16 v41, v0

    #@1f
    const-wide/16 v42, 0x0

    #@21
    aput-wide v42, v41, v14

    #@23
    .line 680
    move-object/from16 v0, p1

    #@25
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    #@27
    move-object/from16 v41, v0

    #@29
    const-wide/16 v42, 0x0

    #@2b
    aput-wide v42, v41, v14

    #@2d
    .line 681
    move-object/from16 v0, p1

    #@2f
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    #@31
    move-object/from16 v41, v0

    #@33
    const/16 v42, 0x0

    #@35
    aput v42, v41, v14

    #@37
    .line 677
    add-int/lit8 v14, v14, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 683
    :cond_0
    const/4 v14, 0x0

    #@3b
    :goto_1
    const/16 v41, 0x10

    #@3d
    move/from16 v0, v41

    #@3f
    if-ge v14, v0, :cond_1

    #@41
    .line 684
    move-object/from16 v0, p1

    #@43
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    #@45
    move-object/from16 v41, v0

    #@47
    const-wide/16 v42, 0x0

    #@49
    aput-wide v42, v41, v14

    #@4b
    .line 683
    add-int/lit8 v14, v14, 0x1

    #@4d
    goto :goto_1

    #@4e
    .line 686
    :cond_1
    const-wide/16 v42, 0x0

    #@50
    move-wide/from16 v0, v42

    #@52
    move-object/from16 v2, p1

    #@54
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    #@56
    .line 687
    const-wide/16 v42, 0x0

    #@58
    move-wide/from16 v0, v42

    #@5a
    move-object/from16 v2, p1

    #@5c
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    #@5e
    .line 688
    const-wide/16 v42, 0x0

    #@60
    move-wide/from16 v0, v42

    #@62
    move-object/from16 v2, p1

    #@64
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    #@66
    .line 689
    const-wide/16 v42, 0x0

    #@68
    move-wide/from16 v0, v42

    #@6a
    move-object/from16 v2, p1

    #@6c
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    #@6e
    .line 690
    const-wide/16 v42, 0x0

    #@70
    move-wide/from16 v0, v42

    #@72
    move-object/from16 v2, p1

    #@74
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    #@76
    .line 691
    const/16 v41, 0x0

    #@78
    move/from16 v0, v41

    #@7a
    move-object/from16 v1, p1

    #@7c
    iput v0, v1, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@7e
    .line 692
    const/16 v41, 0x10

    #@80
    move/from16 v0, v41

    #@82
    new-array v0, v0, [J

    #@84
    move-object/from16 v38, v0

    #@86
    .line 693
    .local v38, "totalMemUsage":[J
    const/4 v14, 0x0

    #@87
    :goto_2
    move-object/from16 v0, p0

    #@89
    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    #@8b
    move/from16 v41, v0

    #@8d
    move/from16 v0, v41

    #@8f
    if-ge v14, v0, :cond_2

    #@91
    .line 694
    move-object/from16 v0, p0

    #@93
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    #@95
    move-object/from16 v41, v0

    #@97
    aget v9, v41, v14

    #@99
    .line 695
    .local v9, "ent":I
    move-object/from16 v0, p0

    #@9b
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@9d
    move-object/from16 v41, v0

    #@9f
    sget v42, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    #@a1
    shr-int v42, v9, v42

    #@a3
    sget v43, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    #@a5
    and-int v42, v42, v43

    #@a7
    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@aa
    move-result-object v20

    #@ab
    check-cast v20, [J

    #@ad
    .line 696
    .local v20, "longs":[J
    sget v41, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    #@af
    shr-int v41, v9, v41

    #@b1
    sget v42, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    #@b3
    and-int v15, v41, v42

    #@b5
    .line 697
    .local v15, "idx":I
    const/16 v41, 0x0

    #@b7
    move-object/from16 v0, v38

    #@b9
    move/from16 v1, v41

    #@bb
    move-object/from16 v2, v20

    #@bd
    invoke-static {v0, v1, v2, v15}, Lcom/android/internal/app/ProcessStats;->addSysMemUsage([JI[JI)V

    #@c0
    .line 693
    add-int/lit8 v14, v14, 0x1

    #@c2
    goto :goto_2

    #@c3
    .line 699
    .end local v9    # "ent":I
    .end local v15    # "idx":I
    .end local v20    # "longs":[J
    :cond_2
    const/16 v18, 0x0

    #@c5
    .local v18, "is":I
    :goto_3
    move-object/from16 v0, p1

    #@c7
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    #@c9
    move-object/from16 v41, v0

    #@cb
    move-object/from16 v0, v41

    #@cd
    array-length v0, v0

    #@ce
    move/from16 v41, v0

    #@d0
    move/from16 v0, v18

    #@d2
    move/from16 v1, v41

    #@d4
    if-ge v0, v1, :cond_6

    #@d6
    .line 700
    const/16 v16, 0x0

    #@d8
    .local v16, "im":I
    :goto_4
    move-object/from16 v0, p1

    #@da
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    #@dc
    move-object/from16 v41, v0

    #@de
    move-object/from16 v0, v41

    #@e0
    array-length v0, v0

    #@e1
    move/from16 v41, v0

    #@e3
    move/from16 v0, v16

    #@e5
    move/from16 v1, v41

    #@e7
    if-ge v0, v1, :cond_5

    #@e9
    .line 701
    move-object/from16 v0, p1

    #@eb
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    #@ed
    move-object/from16 v41, v0

    #@ef
    aget v41, v41, v18

    #@f1
    move-object/from16 v0, p1

    #@f3
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    #@f5
    move-object/from16 v42, v0

    #@f7
    aget v42, v42, v16

    #@f9
    add-int v21, v41, v42

    #@fb
    .line 702
    .local v21, "memBucket":I
    mul-int/lit8 v32, v21, 0xe

    #@fd
    .line 703
    .local v32, "stateBucket":I
    move-object/from16 v0, p0

    #@ff
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    #@101
    move-object/from16 v41, v0

    #@103
    aget-wide v22, v41, v21

    #@105
    .line 704
    .local v22, "memTime":J
    move-object/from16 v0, p0

    #@107
    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    #@109
    move/from16 v41, v0

    #@10b
    move/from16 v0, v41

    #@10d
    move/from16 v1, v21

    #@10f
    if-ne v0, v1, :cond_3

    #@111
    .line 705
    move-object/from16 v0, p0

    #@113
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    #@115
    move-wide/from16 v42, v0

    #@117
    sub-long v42, p2, v42

    #@119
    add-long v22, v22, v42

    #@11b
    .line 707
    :cond_3
    move-object/from16 v0, p1

    #@11d
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    #@11f
    move-wide/from16 v42, v0

    #@121
    add-long v42, v42, v22

    #@123
    move-wide/from16 v0, v42

    #@125
    move-object/from16 v2, p1

    #@127
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    #@129
    .line 708
    move-object/from16 v0, p0

    #@12b
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    #@12d
    move-object/from16 v41, v0

    #@12f
    move-object/from16 v0, p0

    #@131
    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    #@133
    move/from16 v42, v0

    #@135
    move-object/from16 v0, v41

    #@137
    move/from16 v1, v42

    #@139
    move/from16 v2, v32

    #@13b
    invoke-static {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    #@13e
    move-result v33

    #@13f
    .line 709
    .local v33, "sysIdx":I
    move-object/from16 v20, v38

    #@141
    .line 710
    .restart local v20    # "longs":[J
    const/4 v15, 0x0

    #@142
    .line 711
    .restart local v15    # "idx":I
    if-ltz v33, :cond_4

    #@144
    .line 712
    move-object/from16 v0, p0

    #@146
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    #@148
    move-object/from16 v41, v0

    #@14a
    aget v9, v41, v33

    #@14c
    .line 713
    .restart local v9    # "ent":I
    move-object/from16 v0, p0

    #@14e
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@150
    move-object/from16 v41, v0

    #@152
    sget v42, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    #@154
    shr-int v42, v9, v42

    #@156
    sget v43, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    #@158
    and-int v42, v42, v43

    #@15a
    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15d
    move-result-object v37

    #@15e
    check-cast v37, [J

    #@160
    .line 714
    .local v37, "tmpLongs":[J
    sget v41, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    #@162
    shr-int v41, v9, v41

    #@164
    sget v42, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    #@166
    and-int v36, v41, v42

    #@168
    .line 715
    .local v36, "tmpIdx":I
    add-int/lit8 v41, v36, 0x0

    #@16a
    aget-wide v42, v37, v41

    #@16c
    const-wide/16 v44, 0x3

    #@16e
    cmp-long v41, v42, v44

    #@170
    if-ltz v41, :cond_4

    #@172
    .line 716
    move-object/from16 v0, p1

    #@174
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    #@176
    move-object/from16 v41, v0

    #@178
    const/16 v42, 0x0

    #@17a
    move-object/from16 v0, v41

    #@17c
    move/from16 v1, v42

    #@17e
    move-object/from16 v2, v20

    #@180
    invoke-static {v0, v1, v2, v15}, Lcom/android/internal/app/ProcessStats;->addSysMemUsage([JI[JI)V

    #@183
    .line 717
    move-object/from16 v20, v37

    #@185
    .line 718
    move/from16 v15, v36

    #@187
    .line 721
    .end local v9    # "ent":I
    .end local v36    # "tmpIdx":I
    .end local v37    # "tmpLongs":[J
    :cond_4
    move-object/from16 v0, p1

    #@189
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    #@18b
    move-wide/from16 v42, v0

    #@18d
    add-int/lit8 v41, v15, 0x2

    #@18f
    aget-wide v44, v20, v41

    #@191
    move-wide/from16 v0, v44

    #@193
    long-to-double v0, v0

    #@194
    move-wide/from16 v44, v0

    #@196
    .line 722
    move-wide/from16 v0, v22

    #@198
    long-to-double v0, v0

    #@199
    move-wide/from16 v46, v0

    #@19b
    .line 721
    mul-double v44, v44, v46

    #@19d
    add-double v42, v42, v44

    #@19f
    move-wide/from16 v0, v42

    #@1a1
    move-object/from16 v2, p1

    #@1a3
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    #@1a5
    .line 723
    move-object/from16 v0, p1

    #@1a7
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    #@1a9
    move-wide/from16 v42, v0

    #@1ab
    add-int/lit8 v41, v15, 0x5

    #@1ad
    aget-wide v44, v20, v41

    #@1af
    move-wide/from16 v0, v44

    #@1b1
    long-to-double v0, v0

    #@1b2
    move-wide/from16 v44, v0

    #@1b4
    .line 724
    move-wide/from16 v0, v22

    #@1b6
    long-to-double v0, v0

    #@1b7
    move-wide/from16 v46, v0

    #@1b9
    .line 723
    mul-double v44, v44, v46

    #@1bb
    add-double v42, v42, v44

    #@1bd
    move-wide/from16 v0, v42

    #@1bf
    move-object/from16 v2, p1

    #@1c1
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    #@1c3
    .line 725
    move-object/from16 v0, p1

    #@1c5
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    #@1c7
    move-wide/from16 v42, v0

    #@1c9
    add-int/lit8 v41, v15, 0x8

    #@1cb
    aget-wide v44, v20, v41

    #@1cd
    move-wide/from16 v0, v44

    #@1cf
    long-to-double v0, v0

    #@1d0
    move-wide/from16 v44, v0

    #@1d2
    .line 726
    move-wide/from16 v0, v22

    #@1d4
    long-to-double v0, v0

    #@1d5
    move-wide/from16 v46, v0

    #@1d7
    .line 725
    mul-double v44, v44, v46

    #@1d9
    add-double v42, v42, v44

    #@1db
    move-wide/from16 v0, v42

    #@1dd
    move-object/from16 v2, p1

    #@1df
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    #@1e1
    .line 727
    move-object/from16 v0, p1

    #@1e3
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    #@1e5
    move-wide/from16 v42, v0

    #@1e7
    add-int/lit8 v41, v15, 0xb

    #@1e9
    aget-wide v44, v20, v41

    #@1eb
    move-wide/from16 v0, v44

    #@1ed
    long-to-double v0, v0

    #@1ee
    move-wide/from16 v44, v0

    #@1f0
    .line 728
    move-wide/from16 v0, v22

    #@1f2
    long-to-double v0, v0

    #@1f3
    move-wide/from16 v46, v0

    #@1f5
    .line 727
    mul-double v44, v44, v46

    #@1f7
    add-double v42, v42, v44

    #@1f9
    move-wide/from16 v0, v42

    #@1fb
    move-object/from16 v2, p1

    #@1fd
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    #@1ff
    .line 729
    move-object/from16 v0, p1

    #@201
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    #@203
    move-wide/from16 v42, v0

    #@205
    add-int/lit8 v41, v15, 0xe

    #@207
    aget-wide v44, v20, v41

    #@209
    move-wide/from16 v0, v44

    #@20b
    long-to-double v0, v0

    #@20c
    move-wide/from16 v44, v0

    #@20e
    .line 730
    move-wide/from16 v0, v22

    #@210
    long-to-double v0, v0

    #@211
    move-wide/from16 v46, v0

    #@213
    .line 729
    mul-double v44, v44, v46

    #@215
    add-double v42, v42, v44

    #@217
    move-wide/from16 v0, v42

    #@219
    move-object/from16 v2, p1

    #@21b
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    #@21d
    .line 731
    move-object/from16 v0, p1

    #@21f
    iget v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@221
    move/from16 v41, v0

    #@223
    move/from16 v0, v41

    #@225
    int-to-long v0, v0

    #@226
    move-wide/from16 v42, v0

    #@228
    add-int/lit8 v41, v15, 0x0

    #@22a
    aget-wide v44, v20, v41

    #@22c
    add-long v42, v42, v44

    #@22e
    move-wide/from16 v0, v42

    #@230
    long-to-int v0, v0

    #@231
    move/from16 v41, v0

    #@233
    move/from16 v0, v41

    #@235
    move-object/from16 v1, p1

    #@237
    iput v0, v1, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@239
    .line 700
    add-int/lit8 v16, v16, 0x1

    #@23b
    goto/16 :goto_4

    #@23d
    .line 699
    .end local v15    # "idx":I
    .end local v20    # "longs":[J
    .end local v21    # "memBucket":I
    .end local v22    # "memTime":J
    .end local v32    # "stateBucket":I
    .end local v33    # "sysIdx":I
    :cond_5
    add-int/lit8 v18, v18, 0x1

    #@23f
    goto/16 :goto_3

    #@241
    .line 734
    .end local v16    # "im":I
    :cond_6
    move-object/from16 v0, p0

    #@243
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@245
    move-object/from16 v41, v0

    #@247
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@24a
    move-result-object v28

    #@24b
    .line 735
    .local v28, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/16 v17, 0x0

    #@24d
    .local v17, "iproc":I
    :goto_5
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    #@250
    move-result v41

    #@251
    move/from16 v0, v17

    #@253
    move/from16 v1, v41

    #@255
    if-ge v0, v1, :cond_1b

    #@257
    .line 736
    move-object/from16 v0, v28

    #@259
    move/from16 v1, v17

    #@25b
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@25e
    move-result-object v40

    #@25f
    check-cast v40, Landroid/util/SparseArray;

    #@261
    .line 737
    .local v40, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v19, 0x0

    #@263
    .local v19, "iu":I
    :goto_6
    invoke-virtual/range {v40 .. v40}, Landroid/util/SparseArray;->size()I

    #@266
    move-result v41

    #@267
    move/from16 v0, v19

    #@269
    move/from16 v1, v41

    #@26b
    if-ge v0, v1, :cond_1a

    #@26d
    .line 738
    move-object/from16 v0, v40

    #@26f
    move/from16 v1, v19

    #@271
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@274
    move-result-object v27

    #@275
    check-cast v27, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@277
    .line 739
    .local v27, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    new-instance v12, Lcom/android/internal/app/ProcessStats$PssAggr;

    #@279
    invoke-direct {v12}, Lcom/android/internal/app/ProcessStats$PssAggr;-><init>()V

    #@27c
    .line 740
    .local v12, "fgPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    new-instance v7, Lcom/android/internal/app/ProcessStats$PssAggr;

    #@27e
    invoke-direct {v7}, Lcom/android/internal/app/ProcessStats$PssAggr;-><init>()V

    #@281
    .line 741
    .local v7, "bgPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    new-instance v8, Lcom/android/internal/app/ProcessStats$PssAggr;

    #@283
    invoke-direct {v8}, Lcom/android/internal/app/ProcessStats$PssAggr;-><init>()V

    #@286
    .line 742
    .local v8, "cachedPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    const/4 v13, 0x0

    #@287
    .line 743
    .local v13, "havePss":Z
    const/4 v14, 0x0

    #@288
    :goto_7
    move-object/from16 v0, v27

    #@28a
    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    #@28c
    move/from16 v41, v0

    #@28e
    move/from16 v0, v41

    #@290
    if-ge v14, v0, :cond_a

    #@292
    .line 744
    move-object/from16 v0, v27

    #@294
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTable:[I

    #@296
    move-object/from16 v41, v0

    #@298
    aget v26, v41, v14

    #@29a
    .line 745
    .local v26, "off":I
    sget v41, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    #@29c
    shr-int v41, v26, v41

    #@29e
    sget v42, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    #@2a0
    and-int v39, v41, v42

    #@2a2
    .line 746
    .local v39, "type":I
    rem-int/lit8 v29, v39, 0xe

    #@2a4
    .line 747
    .local v29, "procState":I
    move-object/from16 v0, v27

    #@2a6
    move/from16 v1, v39

    #@2a8
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssSampleCount(I)J

    #@2ab
    move-result-wide v30

    #@2ac
    .line 748
    .local v30, "samples":J
    const-wide/16 v42, 0x0

    #@2ae
    cmp-long v41, v30, v42

    #@2b0
    if-lez v41, :cond_7

    #@2b2
    .line 749
    move-object/from16 v0, v27

    #@2b4
    move/from16 v1, v39

    #@2b6
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssAverage(I)J

    #@2b9
    move-result-wide v4

    #@2ba
    .line 750
    .local v4, "avg":J
    const/4 v13, 0x1

    #@2bb
    .line 751
    const/16 v41, 0x2

    #@2bd
    move/from16 v0, v29

    #@2bf
    move/from16 v1, v41

    #@2c1
    if-gt v0, v1, :cond_8

    #@2c3
    .line 752
    move-wide/from16 v0, v30

    #@2c5
    invoke-virtual {v12, v4, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    #@2c8
    .line 743
    .end local v4    # "avg":J
    :cond_7
    :goto_8
    add-int/lit8 v14, v14, 0x1

    #@2ca
    goto :goto_7

    #@2cb
    .line 753
    .restart local v4    # "avg":J
    :cond_8
    const/16 v41, 0x8

    #@2cd
    move/from16 v0, v29

    #@2cf
    move/from16 v1, v41

    #@2d1
    if-gt v0, v1, :cond_9

    #@2d3
    .line 754
    move-wide/from16 v0, v30

    #@2d5
    invoke-virtual {v7, v4, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    #@2d8
    goto :goto_8

    #@2d9
    .line 756
    :cond_9
    move-wide/from16 v0, v30

    #@2db
    invoke-virtual {v8, v4, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    #@2de
    goto :goto_8

    #@2df
    .line 760
    .end local v4    # "avg":J
    .end local v26    # "off":I
    .end local v29    # "procState":I
    .end local v30    # "samples":J
    .end local v39    # "type":I
    :cond_a
    if-nez v13, :cond_c

    #@2e1
    .line 737
    :cond_b
    add-int/lit8 v19, v19, 0x1

    #@2e3
    goto :goto_6

    #@2e4
    .line 763
    :cond_c
    const/4 v10, 0x0

    #@2e5
    .line 764
    .local v10, "fgHasBg":Z
    const/4 v11, 0x0

    #@2e6
    .line 765
    .local v11, "fgHasCached":Z
    const/4 v6, 0x0

    #@2e7
    .line 766
    .local v6, "bgHasCached":Z
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@2e9
    move-wide/from16 v42, v0

    #@2eb
    const-wide/16 v44, 0x3

    #@2ed
    cmp-long v41, v42, v44

    #@2ef
    if-gez v41, :cond_d

    #@2f1
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@2f3
    move-wide/from16 v42, v0

    #@2f5
    const-wide/16 v44, 0x0

    #@2f7
    cmp-long v41, v42, v44

    #@2f9
    if-lez v41, :cond_d

    #@2fb
    .line 767
    const/4 v10, 0x1

    #@2fc
    .line 768
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    #@2fe
    move-wide/from16 v42, v0

    #@300
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@302
    move-wide/from16 v44, v0

    #@304
    move-wide/from16 v0, v42

    #@306
    move-wide/from16 v2, v44

    #@308
    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    #@30b
    .line 770
    :cond_d
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@30d
    move-wide/from16 v42, v0

    #@30f
    const-wide/16 v44, 0x3

    #@311
    cmp-long v41, v42, v44

    #@313
    if-gez v41, :cond_e

    #@315
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@317
    move-wide/from16 v42, v0

    #@319
    const-wide/16 v44, 0x0

    #@31b
    cmp-long v41, v42, v44

    #@31d
    if-lez v41, :cond_e

    #@31f
    .line 771
    const/4 v11, 0x1

    #@320
    .line 772
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    #@322
    move-wide/from16 v42, v0

    #@324
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@326
    move-wide/from16 v44, v0

    #@328
    move-wide/from16 v0, v42

    #@32a
    move-wide/from16 v2, v44

    #@32c
    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    #@32f
    .line 774
    :cond_e
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@331
    move-wide/from16 v42, v0

    #@333
    const-wide/16 v44, 0x3

    #@335
    cmp-long v41, v42, v44

    #@337
    if-gez v41, :cond_f

    #@339
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@33b
    move-wide/from16 v42, v0

    #@33d
    const-wide/16 v44, 0x0

    #@33f
    cmp-long v41, v42, v44

    #@341
    if-lez v41, :cond_f

    #@343
    .line 775
    const/4 v6, 0x1

    #@344
    .line 776
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    #@346
    move-wide/from16 v42, v0

    #@348
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@34a
    move-wide/from16 v44, v0

    #@34c
    move-wide/from16 v0, v42

    #@34e
    move-wide/from16 v2, v44

    #@350
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    #@353
    .line 778
    :cond_f
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@355
    move-wide/from16 v42, v0

    #@357
    const-wide/16 v44, 0x3

    #@359
    cmp-long v41, v42, v44

    #@35b
    if-gez v41, :cond_10

    #@35d
    if-eqz v10, :cond_14

    #@35f
    .line 781
    :cond_10
    :goto_9
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@361
    move-wide/from16 v42, v0

    #@363
    const-wide/16 v44, 0x3

    #@365
    cmp-long v41, v42, v44

    #@367
    if-gez v41, :cond_11

    #@369
    if-eqz v6, :cond_15

    #@36b
    .line 784
    :cond_11
    :goto_a
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@36d
    move-wide/from16 v42, v0

    #@36f
    const-wide/16 v44, 0x3

    #@371
    cmp-long v41, v42, v44

    #@373
    if-gez v41, :cond_12

    #@375
    if-eqz v11, :cond_16

    #@377
    .line 787
    :cond_12
    :goto_b
    const/4 v14, 0x0

    #@378
    :goto_c
    move-object/from16 v0, v27

    #@37a
    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    #@37c
    move/from16 v41, v0

    #@37e
    move/from16 v0, v41

    #@380
    if-ge v14, v0, :cond_b

    #@382
    .line 788
    move-object/from16 v0, v27

    #@384
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTable:[I

    #@386
    move-object/from16 v41, v0

    #@388
    aget v26, v41, v14

    #@38a
    .line 789
    .restart local v26    # "off":I
    sget v41, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    #@38c
    shr-int v41, v26, v41

    #@38e
    sget v42, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    #@390
    and-int v39, v41, v42

    #@392
    .line 790
    .restart local v39    # "type":I
    const/16 v41, 0x0

    #@394
    move-object/from16 v0, p0

    #@396
    move/from16 v1, v26

    #@398
    move/from16 v2, v41

    #@39a
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@39d
    move-result-wide v34

    #@39e
    .line 791
    .local v34, "time":J
    move-object/from16 v0, v27

    #@3a0
    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    #@3a2
    move/from16 v41, v0

    #@3a4
    move/from16 v0, v41

    #@3a6
    move/from16 v1, v39

    #@3a8
    if-ne v0, v1, :cond_13

    #@3aa
    .line 792
    move-object/from16 v0, v27

    #@3ac
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    #@3ae
    move-wide/from16 v42, v0

    #@3b0
    sub-long v42, p2, v42

    #@3b2
    add-long v34, v34, v42

    #@3b4
    .line 794
    :cond_13
    rem-int/lit8 v29, v39, 0xe

    #@3b6
    .line 795
    .restart local v29    # "procState":I
    move-object/from16 v0, p1

    #@3b8
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    #@3ba
    move-object/from16 v41, v0

    #@3bc
    aget-wide v42, v41, v29

    #@3be
    add-long v42, v42, v34

    #@3c0
    aput-wide v42, v41, v29

    #@3c2
    .line 796
    move-object/from16 v0, v27

    #@3c4
    move/from16 v1, v39

    #@3c6
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssSampleCount(I)J

    #@3c9
    move-result-wide v30

    #@3ca
    .line 798
    .restart local v30    # "samples":J
    const-wide/16 v42, 0x0

    #@3cc
    cmp-long v41, v30, v42

    #@3ce
    if-lez v41, :cond_17

    #@3d0
    .line 799
    move-object/from16 v0, v27

    #@3d2
    move/from16 v1, v39

    #@3d4
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssAverage(I)J

    #@3d7
    move-result-wide v4

    #@3d8
    .line 810
    .restart local v4    # "avg":J
    :goto_d
    move-object/from16 v0, p1

    #@3da
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    #@3dc
    move-object/from16 v41, v0

    #@3de
    aget-wide v42, v41, v29

    #@3e0
    move-wide/from16 v0, v42

    #@3e2
    long-to-double v0, v0

    #@3e3
    move-wide/from16 v42, v0

    #@3e5
    .line 811
    move-object/from16 v0, p1

    #@3e7
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    #@3e9
    move-object/from16 v41, v0

    #@3eb
    aget v41, v41, v29

    #@3ed
    move/from16 v0, v41

    #@3ef
    int-to-double v0, v0

    #@3f0
    move-wide/from16 v44, v0

    #@3f2
    .line 810
    mul-double v42, v42, v44

    #@3f4
    .line 812
    long-to-double v0, v4

    #@3f5
    move-wide/from16 v44, v0

    #@3f7
    move-wide/from16 v0, v30

    #@3f9
    long-to-double v0, v0

    #@3fa
    move-wide/from16 v46, v0

    #@3fc
    mul-double v44, v44, v46

    #@3fe
    .line 810
    add-double v42, v42, v44

    #@400
    .line 813
    move-object/from16 v0, p1

    #@402
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    #@404
    move-object/from16 v41, v0

    #@406
    aget v41, v41, v29

    #@408
    move/from16 v0, v41

    #@40a
    int-to-long v0, v0

    #@40b
    move-wide/from16 v44, v0

    #@40d
    add-long v44, v44, v30

    #@40f
    move-wide/from16 v0, v44

    #@411
    long-to-double v0, v0

    #@412
    move-wide/from16 v44, v0

    #@414
    .line 810
    div-double v24, v42, v44

    #@416
    .line 814
    .local v24, "newAvg":D
    move-object/from16 v0, p1

    #@418
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    #@41a
    move-object/from16 v41, v0

    #@41c
    move-wide/from16 v0, v24

    #@41e
    double-to-long v0, v0

    #@41f
    move-wide/from16 v42, v0

    #@421
    aput-wide v42, v41, v29

    #@423
    .line 815
    move-object/from16 v0, p1

    #@425
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    #@427
    move-object/from16 v41, v0

    #@429
    aget v42, v41, v29

    #@42b
    move/from16 v0, v42

    #@42d
    int-to-long v0, v0

    #@42e
    move-wide/from16 v42, v0

    #@430
    add-long v42, v42, v30

    #@432
    move-wide/from16 v0, v42

    #@434
    long-to-int v0, v0

    #@435
    move/from16 v42, v0

    #@437
    aput v42, v41, v29

    #@439
    .line 816
    move-object/from16 v0, p1

    #@43b
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    #@43d
    move-object/from16 v41, v0

    #@43f
    aget-wide v42, v41, v29

    #@441
    long-to-double v0, v4

    #@442
    move-wide/from16 v44, v0

    #@444
    move-wide/from16 v0, v34

    #@446
    long-to-double v0, v0

    #@447
    move-wide/from16 v46, v0

    #@449
    mul-double v44, v44, v46

    #@44b
    add-double v42, v42, v44

    #@44d
    aput-wide v42, v41, v29

    #@44f
    .line 787
    add-int/lit8 v14, v14, 0x1

    #@451
    goto/16 :goto_c

    #@453
    .line 778
    .end local v4    # "avg":J
    .end local v24    # "newAvg":D
    .end local v26    # "off":I
    .end local v29    # "procState":I
    .end local v30    # "samples":J
    .end local v34    # "time":J
    .end local v39    # "type":I
    :cond_14
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@455
    move-wide/from16 v42, v0

    #@457
    const-wide/16 v44, 0x0

    #@459
    cmp-long v41, v42, v44

    #@45b
    if-lez v41, :cond_10

    #@45d
    .line 779
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    #@45f
    move-wide/from16 v42, v0

    #@461
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@463
    move-wide/from16 v44, v0

    #@465
    move-wide/from16 v0, v42

    #@467
    move-wide/from16 v2, v44

    #@469
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    #@46c
    goto/16 :goto_9

    #@46e
    .line 781
    :cond_15
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@470
    move-wide/from16 v42, v0

    #@472
    const-wide/16 v44, 0x0

    #@474
    cmp-long v41, v42, v44

    #@476
    if-lez v41, :cond_11

    #@478
    .line 782
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    #@47a
    move-wide/from16 v42, v0

    #@47c
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@47e
    move-wide/from16 v44, v0

    #@480
    move-wide/from16 v0, v42

    #@482
    move-wide/from16 v2, v44

    #@484
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    #@487
    goto/16 :goto_a

    #@489
    .line 784
    :cond_16
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@48b
    move-wide/from16 v42, v0

    #@48d
    const-wide/16 v44, 0x0

    #@48f
    cmp-long v41, v42, v44

    #@491
    if-lez v41, :cond_12

    #@493
    .line 785
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    #@495
    move-wide/from16 v42, v0

    #@497
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@499
    move-wide/from16 v44, v0

    #@49b
    move-wide/from16 v0, v42

    #@49d
    move-wide/from16 v2, v44

    #@49f
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    #@4a2
    goto/16 :goto_b

    #@4a4
    .line 800
    .restart local v26    # "off":I
    .restart local v29    # "procState":I
    .restart local v30    # "samples":J
    .restart local v34    # "time":J
    .restart local v39    # "type":I
    :cond_17
    const/16 v41, 0x2

    #@4a6
    move/from16 v0, v29

    #@4a8
    move/from16 v1, v41

    #@4aa
    if-gt v0, v1, :cond_18

    #@4ac
    .line 801
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@4ae
    move-wide/from16 v30, v0

    #@4b0
    .line 802
    iget-wide v4, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    #@4b2
    .restart local v4    # "avg":J
    goto/16 :goto_d

    #@4b4
    .line 803
    .end local v4    # "avg":J
    :cond_18
    const/16 v41, 0x8

    #@4b6
    move/from16 v0, v29

    #@4b8
    move/from16 v1, v41

    #@4ba
    if-gt v0, v1, :cond_19

    #@4bc
    .line 804
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@4be
    move-wide/from16 v30, v0

    #@4c0
    .line 805
    iget-wide v4, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    #@4c2
    .restart local v4    # "avg":J
    goto/16 :goto_d

    #@4c4
    .line 807
    .end local v4    # "avg":J
    :cond_19
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@4c6
    move-wide/from16 v30, v0

    #@4c8
    .line 808
    iget-wide v4, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    #@4ca
    .restart local v4    # "avg":J
    goto/16 :goto_d

    #@4cc
    .line 735
    .end local v4    # "avg":J
    .end local v6    # "bgHasCached":Z
    .end local v7    # "bgPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    .end local v8    # "cachedPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    .end local v10    # "fgHasBg":Z
    .end local v11    # "fgHasCached":Z
    .end local v12    # "fgPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    .end local v13    # "havePss":Z
    .end local v26    # "off":I
    .end local v27    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v29    # "procState":I
    .end local v30    # "samples":J
    .end local v34    # "time":J
    .end local v39    # "type":I
    :cond_1a
    add-int/lit8 v17, v17, 0x1

    #@4ce
    goto/16 :goto_5

    #@4d0
    .line 675
    .end local v19    # "iu":I
    .end local v40    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_1b
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1497
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 48
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2562
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v16

    #@4
    .line 2563
    .local v16, "now":J
    move-object/from16 v0, p0

    #@6
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@8
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@b
    move-result-object v37

    #@c
    .line 2564
    .local v37, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    const-string/jumbo v4, "vers,5"

    #@f
    move-object/from16 v0, p1

    #@11
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14
    .line 2565
    const-string/jumbo v4, "period,"

    #@17
    move-object/from16 v0, p1

    #@19
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    #@20
    move-object/from16 v0, p1

    #@22
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25
    .line 2566
    const-string/jumbo v4, ","

    #@28
    move-object/from16 v0, p1

    #@2a
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d
    move-object/from16 v0, p0

    #@2f
    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    #@31
    move-object/from16 v0, p1

    #@33
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@36
    const-string/jumbo v4, ","

    #@39
    move-object/from16 v0, p1

    #@3b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e
    .line 2567
    move-object/from16 v0, p0

    #@40
    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    #@42
    if-eqz v4, :cond_8

    #@44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@47
    move-result-wide v4

    #@48
    :goto_0
    move-object/from16 v0, p1

    #@4a
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@4d
    .line 2568
    const/16 v36, 0x1

    #@4f
    .line 2569
    .local v36, "partial":Z
    move-object/from16 v0, p0

    #@51
    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    #@53
    and-int/lit8 v4, v4, 0x2

    #@55
    if-eqz v4, :cond_0

    #@57
    .line 2570
    const-string/jumbo v4, ",shutdown"

    #@5a
    move-object/from16 v0, p1

    #@5c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f
    .line 2571
    const/16 v36, 0x0

    #@61
    .line 2573
    :cond_0
    move-object/from16 v0, p0

    #@63
    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    #@65
    and-int/lit8 v4, v4, 0x4

    #@67
    if-eqz v4, :cond_1

    #@69
    .line 2574
    const-string/jumbo v4, ",sysprops"

    #@6c
    move-object/from16 v0, p1

    #@6e
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    .line 2575
    const/16 v36, 0x0

    #@73
    .line 2577
    :cond_1
    move-object/from16 v0, p0

    #@75
    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    #@77
    and-int/lit8 v4, v4, 0x1

    #@79
    if-eqz v4, :cond_2

    #@7b
    .line 2578
    const-string/jumbo v4, ",complete"

    #@7e
    move-object/from16 v0, p1

    #@80
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@83
    .line 2579
    const/16 v36, 0x0

    #@85
    .line 2581
    :cond_2
    if-eqz v36, :cond_3

    #@87
    .line 2582
    const-string/jumbo v4, ",partial"

    #@8a
    move-object/from16 v0, p1

    #@8c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8f
    .line 2584
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@92
    .line 2585
    const-string/jumbo v4, "config,"

    #@95
    move-object/from16 v0, p1

    #@97
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9a
    move-object/from16 v0, p0

    #@9c
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    #@9e
    move-object/from16 v0, p1

    #@a0
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a3
    .line 2586
    const/16 v29, 0x0

    #@a5
    .local v29, "ip":I
    :goto_1
    invoke-virtual/range {v37 .. v37}, Landroid/util/ArrayMap;->size()I

    #@a8
    move-result v4

    #@a9
    move/from16 v0, v29

    #@ab
    if-ge v0, v4, :cond_e

    #@ad
    .line 2587
    move-object/from16 v0, v37

    #@af
    move/from16 v1, v29

    #@b1
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@b4
    move-result-object v6

    #@b5
    check-cast v6, Ljava/lang/String;

    #@b7
    .line 2588
    .local v6, "pkgName":Ljava/lang/String;
    if-eqz p2, :cond_4

    #@b9
    move-object/from16 v0, p2

    #@bb
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@be
    move-result v4

    #@bf
    if-eqz v4, :cond_d

    #@c1
    .line 2591
    :cond_4
    move-object/from16 v0, v37

    #@c3
    move/from16 v1, v29

    #@c5
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@c8
    move-result-object v45

    #@c9
    check-cast v45, Landroid/util/SparseArray;

    #@cb
    .line 2592
    .local v45, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/16 v32, 0x0

    #@cd
    .local v32, "iu":I
    :goto_2
    invoke-virtual/range {v45 .. v45}, Landroid/util/SparseArray;->size()I

    #@d0
    move-result v4

    #@d1
    move/from16 v0, v32

    #@d3
    if-ge v0, v4, :cond_d

    #@d5
    .line 2593
    move-object/from16 v0, v45

    #@d7
    move/from16 v1, v32

    #@d9
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@dc
    move-result v7

    #@dd
    .line 2594
    .local v7, "uid":I
    move-object/from16 v0, v45

    #@df
    move/from16 v1, v32

    #@e1
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e4
    move-result-object v47

    #@e5
    check-cast v47, Landroid/util/SparseArray;

    #@e7
    .line 2595
    .local v47, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v33, 0x0

    #@e9
    .local v33, "iv":I
    :goto_3
    invoke-virtual/range {v47 .. v47}, Landroid/util/SparseArray;->size()I

    #@ec
    move-result v4

    #@ed
    move/from16 v0, v33

    #@ef
    if-ge v0, v4, :cond_c

    #@f1
    .line 2596
    move-object/from16 v0, v47

    #@f3
    move/from16 v1, v33

    #@f5
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@f8
    move-result v8

    #@f9
    .line 2597
    .local v8, "vers":I
    move-object/from16 v0, v47

    #@fb
    move/from16 v1, v33

    #@fd
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@100
    move-result-object v38

    #@101
    check-cast v38, Lcom/android/internal/app/ProcessStats$PackageState;

    #@103
    .line 2598
    .local v38, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v38

    #@105
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@107
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@10a
    move-result v26

    #@10b
    .line 2599
    .local v26, "NPROCS":I
    move-object/from16 v0, v38

    #@10d
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@10f
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@112
    move-result v27

    #@113
    .line 2600
    .local v27, "NSRVS":I
    const/16 v30, 0x0

    #@115
    .local v30, "iproc":I
    :goto_4
    move/from16 v0, v30

    #@117
    move/from16 v1, v26

    #@119
    if-ge v0, v1, :cond_a

    #@11b
    .line 2601
    move-object/from16 v0, v38

    #@11d
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@11f
    move/from16 v0, v30

    #@121
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@124
    move-result-object v39

    #@125
    check-cast v39, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@127
    .line 2602
    .local v39, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    const-string/jumbo v4, "pkgproc,"

    #@12a
    move-object/from16 v0, p1

    #@12c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12f
    .line 2603
    move-object/from16 v0, p1

    #@131
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@134
    .line 2604
    const-string/jumbo v4, ","

    #@137
    move-object/from16 v0, p1

    #@139
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13c
    .line 2605
    move-object/from16 v0, p1

    #@13e
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    #@141
    .line 2606
    const-string/jumbo v4, ","

    #@144
    move-object/from16 v0, p1

    #@146
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@149
    .line 2607
    move-object/from16 v0, p1

    #@14b
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    #@14e
    .line 2608
    const-string/jumbo v4, ","

    #@151
    move-object/from16 v0, p1

    #@153
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@156
    .line 2609
    move-object/from16 v0, v38

    #@158
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@15a
    move/from16 v0, v30

    #@15c
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@15f
    move-result-object v4

    #@160
    check-cast v4, Ljava/lang/String;

    #@162
    move-object/from16 v0, p0

    #@164
    invoke-virtual {v0, v6, v4}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@167
    move-result-object v4

    #@168
    move-object/from16 v0, p1

    #@16a
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16d
    .line 2610
    move-object/from16 v0, p1

    #@16f
    move-object/from16 v1, v39

    #@171
    move-wide/from16 v2, v16

    #@173
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessStateCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;J)V

    #@176
    .line 2611
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@179
    .line 2612
    move-object/from16 v0, v39

    #@17b
    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    #@17d
    if-lez v4, :cond_5

    #@17f
    .line 2613
    const-string/jumbo v4, "pkgpss,"

    #@182
    move-object/from16 v0, p1

    #@184
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@187
    .line 2614
    move-object/from16 v0, p1

    #@189
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18c
    .line 2615
    const-string/jumbo v4, ","

    #@18f
    move-object/from16 v0, p1

    #@191
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@194
    .line 2616
    move-object/from16 v0, p1

    #@196
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    #@199
    .line 2617
    const-string/jumbo v4, ","

    #@19c
    move-object/from16 v0, p1

    #@19e
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a1
    .line 2618
    move-object/from16 v0, p1

    #@1a3
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    #@1a6
    .line 2619
    const-string/jumbo v4, ","

    #@1a9
    move-object/from16 v0, p1

    #@1ab
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ae
    .line 2620
    move-object/from16 v0, v38

    #@1b0
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@1b2
    move/from16 v0, v30

    #@1b4
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1b7
    move-result-object v4

    #@1b8
    check-cast v4, Ljava/lang/String;

    #@1ba
    move-object/from16 v0, p0

    #@1bc
    invoke-virtual {v0, v6, v4}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1bf
    move-result-object v4

    #@1c0
    move-object/from16 v0, p1

    #@1c2
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c5
    .line 2621
    move-object/from16 v0, p1

    #@1c7
    move-object/from16 v1, v39

    #@1c9
    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessPssCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    #@1cc
    .line 2622
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@1cf
    .line 2624
    :cond_5
    move-object/from16 v0, v39

    #@1d1
    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    #@1d3
    if-gtz v4, :cond_6

    #@1d5
    move-object/from16 v0, v39

    #@1d7
    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    #@1d9
    if-lez v4, :cond_9

    #@1db
    .line 2626
    :cond_6
    :goto_5
    const-string/jumbo v4, "pkgkills,"

    #@1de
    move-object/from16 v0, p1

    #@1e0
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e3
    .line 2627
    move-object/from16 v0, p1

    #@1e5
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e8
    .line 2628
    const-string/jumbo v4, ","

    #@1eb
    move-object/from16 v0, p1

    #@1ed
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f0
    .line 2629
    move-object/from16 v0, p1

    #@1f2
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    #@1f5
    .line 2630
    const-string/jumbo v4, ","

    #@1f8
    move-object/from16 v0, p1

    #@1fa
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fd
    .line 2631
    move-object/from16 v0, p1

    #@1ff
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    #@202
    .line 2632
    const-string/jumbo v4, ","

    #@205
    move-object/from16 v0, p1

    #@207
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20a
    .line 2633
    move-object/from16 v0, v38

    #@20c
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@20e
    move/from16 v0, v30

    #@210
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@213
    move-result-object v4

    #@214
    check-cast v4, Ljava/lang/String;

    #@216
    move-object/from16 v0, p0

    #@218
    invoke-virtual {v0, v6, v4}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@21b
    move-result-object v4

    #@21c
    move-object/from16 v0, p1

    #@21e
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@221
    .line 2634
    const-string/jumbo v4, ","

    #@224
    move-object/from16 v0, p1

    #@226
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@229
    .line 2635
    move-object/from16 v0, v39

    #@22b
    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    #@22d
    move-object/from16 v0, p1

    #@22f
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@232
    .line 2636
    const-string/jumbo v4, ","

    #@235
    move-object/from16 v0, p1

    #@237
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23a
    .line 2637
    move-object/from16 v0, v39

    #@23c
    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    #@23e
    move-object/from16 v0, p1

    #@240
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@243
    .line 2638
    const-string/jumbo v4, ","

    #@246
    move-object/from16 v0, p1

    #@248
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24b
    .line 2639
    move-object/from16 v0, v39

    #@24d
    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    #@24f
    move-object/from16 v0, p1

    #@251
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@254
    .line 2640
    const-string/jumbo v4, ","

    #@257
    move-object/from16 v0, p1

    #@259
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25c
    .line 2641
    move-object/from16 v0, v39

    #@25e
    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    #@260
    move-object/from16 v0, p1

    #@262
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@265
    .line 2642
    const-string/jumbo v4, ":"

    #@268
    move-object/from16 v0, p1

    #@26a
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26d
    .line 2643
    move-object/from16 v0, v39

    #@26f
    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    #@271
    move-object/from16 v0, p1

    #@273
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@276
    .line 2644
    const-string/jumbo v4, ":"

    #@279
    move-object/from16 v0, p1

    #@27b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27e
    .line 2645
    move-object/from16 v0, v39

    #@280
    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    #@282
    move-object/from16 v0, p1

    #@284
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@287
    .line 2646
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@28a
    .line 2600
    :cond_7
    add-int/lit8 v30, v30, 0x1

    #@28c
    goto/16 :goto_4

    #@28e
    .line 2567
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "vers":I
    .end local v26    # "NPROCS":I
    .end local v27    # "NSRVS":I
    .end local v29    # "ip":I
    .end local v30    # "iproc":I
    .end local v32    # "iu":I
    .end local v33    # "iv":I
    .end local v36    # "partial":Z
    .end local v38    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v39    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v45    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .end local v47    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_8
    move-object/from16 v0, p0

    #@290
    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    #@292
    goto/16 :goto_0

    #@294
    .line 2625
    .restart local v6    # "pkgName":Ljava/lang/String;
    .restart local v7    # "uid":I
    .restart local v8    # "vers":I
    .restart local v26    # "NPROCS":I
    .restart local v27    # "NSRVS":I
    .restart local v29    # "ip":I
    .restart local v30    # "iproc":I
    .restart local v32    # "iu":I
    .restart local v33    # "iv":I
    .restart local v36    # "partial":Z
    .restart local v38    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    .restart local v39    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v45    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .restart local v47    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_9
    move-object/from16 v0, v39

    #@296
    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    #@298
    if-lez v4, :cond_7

    #@29a
    goto/16 :goto_5

    #@29c
    .line 2649
    .end local v39    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_a
    const/16 v31, 0x0

    #@29e
    .local v31, "isvc":I
    :goto_6
    move/from16 v0, v31

    #@2a0
    move/from16 v1, v27

    #@2a2
    if-ge v0, v1, :cond_b

    #@2a4
    .line 2651
    move-object/from16 v0, v38

    #@2a6
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@2a8
    move/from16 v0, v31

    #@2aa
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@2ad
    move-result-object v4

    #@2ae
    check-cast v4, Ljava/lang/String;

    #@2b0
    .line 2650
    move-object/from16 v0, p0

    #@2b2
    invoke-virtual {v0, v6, v4}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2b5
    move-result-object v9

    #@2b6
    .line 2652
    .local v9, "serviceName":Ljava/lang/String;
    move-object/from16 v0, v38

    #@2b8
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@2ba
    move/from16 v0, v31

    #@2bc
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2bf
    move-result-object v10

    #@2c0
    check-cast v10, Lcom/android/internal/app/ProcessStats$ServiceState;

    #@2c2
    .line 2653
    .local v10, "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    const-string/jumbo v5, "pkgsvc-run"

    #@2c5
    .line 2654
    iget v12, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    #@2c7
    .line 2655
    iget v13, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    #@2c9
    iget-wide v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    #@2cb
    .line 2654
    const/4 v11, 0x0

    #@2cc
    move-object/from16 v4, p1

    #@2ce
    .line 2653
    invoke-static/range {v4 .. v17}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    #@2d1
    .line 2656
    const-string/jumbo v5, "pkgsvc-start"

    #@2d4
    .line 2657
    iget v12, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    #@2d6
    .line 2658
    iget v13, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    #@2d8
    iget-wide v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    #@2da
    .line 2657
    const/4 v11, 0x1

    #@2db
    move-object/from16 v4, p1

    #@2dd
    .line 2656
    invoke-static/range {v4 .. v17}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    #@2e0
    .line 2659
    const-string/jumbo v5, "pkgsvc-bound"

    #@2e3
    .line 2660
    iget v12, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    #@2e5
    .line 2661
    iget v13, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    #@2e7
    iget-wide v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    #@2e9
    .line 2660
    const/4 v11, 0x2

    #@2ea
    move-object/from16 v4, p1

    #@2ec
    .line 2659
    invoke-static/range {v4 .. v17}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    #@2ef
    .line 2662
    const-string/jumbo v5, "pkgsvc-exec"

    #@2f2
    .line 2663
    iget v12, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    #@2f4
    .line 2664
    iget v13, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    #@2f6
    iget-wide v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    #@2f8
    .line 2663
    const/4 v11, 0x3

    #@2f9
    move-object/from16 v4, p1

    #@2fb
    .line 2662
    invoke-static/range {v4 .. v17}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    #@2fe
    .line 2649
    add-int/lit8 v31, v31, 0x1

    #@300
    goto :goto_6

    #@301
    .line 2595
    .end local v9    # "serviceName":Ljava/lang/String;
    .end local v10    # "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_b
    add-int/lit8 v33, v33, 0x1

    #@303
    goto/16 :goto_3

    #@305
    .line 2592
    .end local v8    # "vers":I
    .end local v26    # "NPROCS":I
    .end local v27    # "NSRVS":I
    .end local v30    # "iproc":I
    .end local v31    # "isvc":I
    .end local v38    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_c
    add-int/lit8 v32, v32, 0x1

    #@307
    goto/16 :goto_2

    #@309
    .line 2586
    .end local v7    # "uid":I
    .end local v32    # "iu":I
    .end local v33    # "iv":I
    .end local v45    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .end local v47    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_d
    add-int/lit8 v29, v29, 0x1

    #@30b
    goto/16 :goto_1

    #@30d
    .line 2670
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    #@30f
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@311
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@314
    move-result-object v40

    #@315
    .line 2671
    .local v40, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/16 v29, 0x0

    #@317
    :goto_7
    invoke-virtual/range {v40 .. v40}, Landroid/util/ArrayMap;->size()I

    #@31a
    move-result v4

    #@31b
    move/from16 v0, v29

    #@31d
    if-ge v0, v4, :cond_15

    #@31f
    .line 2672
    move-object/from16 v0, v40

    #@321
    move/from16 v1, v29

    #@323
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@326
    move-result-object v41

    #@327
    check-cast v41, Ljava/lang/String;

    #@329
    .line 2673
    .local v41, "procName":Ljava/lang/String;
    move-object/from16 v0, v40

    #@32b
    move/from16 v1, v29

    #@32d
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@330
    move-result-object v46

    #@331
    check-cast v46, Landroid/util/SparseArray;

    #@333
    .line 2674
    .local v46, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v32, 0x0

    #@335
    .restart local v32    # "iu":I
    :goto_8
    invoke-virtual/range {v46 .. v46}, Landroid/util/SparseArray;->size()I

    #@338
    move-result v4

    #@339
    move/from16 v0, v32

    #@33b
    if-ge v0, v4, :cond_14

    #@33d
    .line 2675
    move-object/from16 v0, v46

    #@33f
    move/from16 v1, v32

    #@341
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@344
    move-result v7

    #@345
    .line 2676
    .restart local v7    # "uid":I
    move-object/from16 v0, v46

    #@347
    move/from16 v1, v32

    #@349
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@34c
    move-result-object v42

    #@34d
    check-cast v42, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@34f
    .line 2677
    .local v42, "procState":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v42

    #@351
    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    #@353
    if-lez v4, :cond_f

    #@355
    .line 2678
    const-string/jumbo v4, "proc,"

    #@358
    move-object/from16 v0, p1

    #@35a
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@35d
    .line 2679
    move-object/from16 v0, p1

    #@35f
    move-object/from16 v1, v41

    #@361
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@364
    .line 2680
    const-string/jumbo v4, ","

    #@367
    move-object/from16 v0, p1

    #@369
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36c
    .line 2681
    move-object/from16 v0, p1

    #@36e
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    #@371
    .line 2682
    move-object/from16 v0, p1

    #@373
    move-object/from16 v1, v42

    #@375
    move-wide/from16 v2, v16

    #@377
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessStateCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;J)V

    #@37a
    .line 2683
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@37d
    .line 2685
    :cond_f
    move-object/from16 v0, v42

    #@37f
    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    #@381
    if-lez v4, :cond_10

    #@383
    .line 2686
    const-string/jumbo v4, "pss,"

    #@386
    move-object/from16 v0, p1

    #@388
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38b
    .line 2687
    move-object/from16 v0, p1

    #@38d
    move-object/from16 v1, v41

    #@38f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@392
    .line 2688
    const-string/jumbo v4, ","

    #@395
    move-object/from16 v0, p1

    #@397
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39a
    .line 2689
    move-object/from16 v0, p1

    #@39c
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    #@39f
    .line 2690
    move-object/from16 v0, p1

    #@3a1
    move-object/from16 v1, v42

    #@3a3
    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessPssCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    #@3a6
    .line 2691
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@3a9
    .line 2693
    :cond_10
    move-object/from16 v0, v42

    #@3ab
    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    #@3ad
    if-gtz v4, :cond_11

    #@3af
    move-object/from16 v0, v42

    #@3b1
    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    #@3b3
    if-lez v4, :cond_13

    #@3b5
    .line 2695
    :cond_11
    :goto_9
    const-string/jumbo v4, "kills,"

    #@3b8
    move-object/from16 v0, p1

    #@3ba
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3bd
    .line 2696
    move-object/from16 v0, p1

    #@3bf
    move-object/from16 v1, v41

    #@3c1
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c4
    .line 2697
    const-string/jumbo v4, ","

    #@3c7
    move-object/from16 v0, p1

    #@3c9
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3cc
    .line 2698
    move-object/from16 v0, p1

    #@3ce
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    #@3d1
    .line 2699
    const-string/jumbo v4, ","

    #@3d4
    move-object/from16 v0, p1

    #@3d6
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d9
    .line 2700
    move-object/from16 v0, v42

    #@3db
    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    #@3dd
    move-object/from16 v0, p1

    #@3df
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@3e2
    .line 2701
    const-string/jumbo v4, ","

    #@3e5
    move-object/from16 v0, p1

    #@3e7
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ea
    .line 2702
    move-object/from16 v0, v42

    #@3ec
    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    #@3ee
    move-object/from16 v0, p1

    #@3f0
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@3f3
    .line 2703
    const-string/jumbo v4, ","

    #@3f6
    move-object/from16 v0, p1

    #@3f8
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3fb
    .line 2704
    move-object/from16 v0, v42

    #@3fd
    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    #@3ff
    move-object/from16 v0, p1

    #@401
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@404
    .line 2705
    const-string/jumbo v4, ","

    #@407
    move-object/from16 v0, p1

    #@409
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40c
    .line 2706
    move-object/from16 v0, v42

    #@40e
    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    #@410
    move-object/from16 v0, p1

    #@412
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@415
    .line 2707
    const-string/jumbo v4, ":"

    #@418
    move-object/from16 v0, p1

    #@41a
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@41d
    .line 2708
    move-object/from16 v0, v42

    #@41f
    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    #@421
    move-object/from16 v0, p1

    #@423
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@426
    .line 2709
    const-string/jumbo v4, ":"

    #@429
    move-object/from16 v0, p1

    #@42b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42e
    .line 2710
    move-object/from16 v0, v42

    #@430
    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    #@432
    move-object/from16 v0, p1

    #@434
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@437
    .line 2711
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@43a
    .line 2674
    :cond_12
    add-int/lit8 v32, v32, 0x1

    #@43c
    goto/16 :goto_8

    #@43e
    .line 2694
    :cond_13
    move-object/from16 v0, v42

    #@440
    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    #@442
    if-lez v4, :cond_12

    #@444
    goto/16 :goto_9

    #@446
    .line 2671
    .end local v7    # "uid":I
    .end local v42    # "procState":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_14
    add-int/lit8 v29, v29, 0x1

    #@448
    goto/16 :goto_7

    #@44a
    .line 2715
    .end local v32    # "iu":I
    .end local v41    # "procName":Ljava/lang/String;
    .end local v46    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_15
    const-string/jumbo v4, "total"

    #@44d
    move-object/from16 v0, p1

    #@44f
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@452
    .line 2716
    const-string/jumbo v19, ","

    #@455
    move-object/from16 v0, p0

    #@457
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    #@459
    move-object/from16 v20, v0

    #@45b
    move-object/from16 v0, p0

    #@45d
    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    #@45f
    move/from16 v21, v0

    #@461
    .line 2717
    move-object/from16 v0, p0

    #@463
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    #@465
    move-wide/from16 v22, v0

    #@467
    move-object/from16 v18, p1

    #@469
    move-wide/from16 v24, v16

    #@46b
    .line 2716
    invoke-static/range {v18 .. v25}, Lcom/android/internal/app/ProcessStats;->dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V

    #@46e
    .line 2718
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@471
    .line 2719
    move-object/from16 v0, p0

    #@473
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    #@475
    if-eqz v4, :cond_18

    #@477
    .line 2720
    const-string/jumbo v4, "sysmemusage"

    #@47a
    move-object/from16 v0, p1

    #@47c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47f
    .line 2721
    const/16 v28, 0x0

    #@481
    .local v28, "i":I
    :goto_a
    move-object/from16 v0, p0

    #@483
    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    #@485
    move/from16 v0, v28

    #@487
    if-ge v0, v4, :cond_18

    #@489
    .line 2722
    move-object/from16 v0, p0

    #@48b
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    #@48d
    aget v35, v4, v28

    #@48f
    .line 2723
    .local v35, "off":I
    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    #@491
    shr-int v4, v35, v4

    #@493
    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    #@495
    and-int v44, v4, v5

    #@497
    .line 2724
    .local v44, "type":I
    const-string/jumbo v4, ","

    #@49a
    move-object/from16 v0, p1

    #@49c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49f
    .line 2725
    move-object/from16 v0, p1

    #@4a1
    move/from16 v1, v44

    #@4a3
    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->printProcStateTag(Ljava/io/PrintWriter;I)V

    #@4a6
    .line 2726
    const/16 v34, 0x0

    #@4a8
    .local v34, "j":I
    :goto_b
    const/16 v4, 0x10

    #@4aa
    move/from16 v0, v34

    #@4ac
    if-ge v0, v4, :cond_17

    #@4ae
    .line 2727
    const/4 v4, 0x1

    #@4af
    move/from16 v0, v34

    #@4b1
    if-le v0, v4, :cond_16

    #@4b3
    .line 2728
    const-string/jumbo v4, ":"

    #@4b6
    move-object/from16 v0, p1

    #@4b8
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4bb
    .line 2730
    :cond_16
    move-object/from16 v0, p0

    #@4bd
    move/from16 v1, v35

    #@4bf
    move/from16 v2, v34

    #@4c1
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@4c4
    move-result-wide v4

    #@4c5
    move-object/from16 v0, p1

    #@4c7
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@4ca
    .line 2726
    add-int/lit8 v34, v34, 0x1

    #@4cc
    goto :goto_b

    #@4cd
    .line 2721
    :cond_17
    add-int/lit8 v28, v28, 0x1

    #@4cf
    goto :goto_a

    #@4d0
    .line 2734
    .end local v28    # "i":I
    .end local v34    # "j":I
    .end local v35    # "off":I
    .end local v44    # "type":I
    :cond_18
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@4d3
    .line 2735
    new-instance v43, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;

    #@4d5
    sget-object v4, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    #@4d7
    .line 2736
    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    #@4d9
    .line 2735
    move-object/from16 v0, v43

    #@4db
    invoke-direct {v0, v4, v5}, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    #@4de
    .line 2737
    .local v43, "totalMem":Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;
    move-object/from16 v0, p0

    #@4e0
    move-object/from16 v1, v43

    #@4e2
    move-wide/from16 v2, v16

    #@4e4
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)V

    #@4e7
    .line 2738
    const-string/jumbo v4, "weights,"

    #@4ea
    move-object/from16 v0, p1

    #@4ec
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4ef
    .line 2739
    move-object/from16 v0, v43

    #@4f1
    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    #@4f3
    move-object/from16 v0, p1

    #@4f5
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@4f8
    .line 2740
    const-string/jumbo v4, ","

    #@4fb
    move-object/from16 v0, p1

    #@4fd
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@500
    .line 2741
    move-object/from16 v0, v43

    #@502
    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    #@504
    move-object/from16 v0, p1

    #@506
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    #@509
    .line 2742
    const-string/jumbo v4, ":"

    #@50c
    move-object/from16 v0, p1

    #@50e
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@511
    .line 2743
    move-object/from16 v0, v43

    #@513
    iget v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@515
    move-object/from16 v0, p1

    #@517
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@51a
    .line 2744
    const-string/jumbo v4, ","

    #@51d
    move-object/from16 v0, p1

    #@51f
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@522
    .line 2745
    move-object/from16 v0, v43

    #@524
    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    #@526
    move-object/from16 v0, p1

    #@528
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    #@52b
    .line 2746
    const-string/jumbo v4, ":"

    #@52e
    move-object/from16 v0, p1

    #@530
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@533
    .line 2747
    move-object/from16 v0, v43

    #@535
    iget v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@537
    move-object/from16 v0, p1

    #@539
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@53c
    .line 2748
    const-string/jumbo v4, ","

    #@53f
    move-object/from16 v0, p1

    #@541
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@544
    .line 2749
    move-object/from16 v0, v43

    #@546
    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    #@548
    move-object/from16 v0, p1

    #@54a
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    #@54d
    .line 2750
    const-string/jumbo v4, ":"

    #@550
    move-object/from16 v0, p1

    #@552
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@555
    .line 2751
    move-object/from16 v0, v43

    #@557
    iget v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@559
    move-object/from16 v0, p1

    #@55b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@55e
    .line 2752
    const-string/jumbo v4, ","

    #@561
    move-object/from16 v0, p1

    #@563
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@566
    .line 2753
    move-object/from16 v0, v43

    #@568
    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    #@56a
    move-object/from16 v0, p1

    #@56c
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    #@56f
    .line 2754
    const-string/jumbo v4, ":"

    #@572
    move-object/from16 v0, p1

    #@574
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@577
    .line 2755
    move-object/from16 v0, v43

    #@579
    iget v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@57b
    move-object/from16 v0, p1

    #@57d
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@580
    .line 2756
    const-string/jumbo v4, ","

    #@583
    move-object/from16 v0, p1

    #@585
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@588
    .line 2757
    move-object/from16 v0, v43

    #@58a
    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    #@58c
    move-object/from16 v0, p1

    #@58e
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    #@591
    .line 2758
    const-string/jumbo v4, ":"

    #@594
    move-object/from16 v0, p1

    #@596
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@599
    .line 2759
    move-object/from16 v0, v43

    #@59b
    iget v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@59d
    move-object/from16 v0, p1

    #@59f
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@5a2
    .line 2760
    const/16 v28, 0x0

    #@5a4
    .restart local v28    # "i":I
    :goto_c
    const/16 v4, 0xe

    #@5a6
    move/from16 v0, v28

    #@5a8
    if-ge v0, v4, :cond_19

    #@5aa
    .line 2761
    const-string/jumbo v4, ","

    #@5ad
    move-object/from16 v0, p1

    #@5af
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b2
    .line 2762
    move-object/from16 v0, v43

    #@5b4
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    #@5b6
    aget-wide v4, v4, v28

    #@5b8
    move-object/from16 v0, p1

    #@5ba
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    #@5bd
    .line 2763
    const-string/jumbo v4, ":"

    #@5c0
    move-object/from16 v0, p1

    #@5c2
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c5
    .line 2764
    move-object/from16 v0, v43

    #@5c7
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    #@5c9
    aget v4, v4, v28

    #@5cb
    move-object/from16 v0, p1

    #@5cd
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@5d0
    .line 2760
    add-int/lit8 v28, v28, 0x1

    #@5d2
    goto :goto_c

    #@5d3
    .line 2766
    :cond_19
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@5d6
    .line 2561
    return-void
.end method

.method dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V
    .locals 12
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
    move-object/from16 v2, p4

    #@3
    move-object/from16 v3, p5

    #@5
    move-object/from16 v4, p6

    #@7
    move-object/from16 v5, p7

    #@9
    move-wide/from16 v6, p8

    #@b
    move-object/from16 v8, p12

    #@d
    move/from16 v9, p13

    #@f
    .line 2482
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    #@12
    move-result-object v3

    #@13
    .line 2484
    .local v3, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v0

    #@17
    if-lez v0, :cond_1

    #@19
    .line 2485
    if-eqz p2, :cond_0

    #@1b
    .line 2486
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@1e
    .line 2487
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@21
    .line 2490
    :cond_0
    const/4 v7, 0x1

    #@22
    move-object v1, p1

    #@23
    move-object v2, p3

    #@24
    move-object/from16 v4, p4

    #@26
    move-object/from16 v5, p5

    #@28
    move-object/from16 v6, p7

    #@2a
    move-wide/from16 v8, p8

    #@2c
    move-wide/from16 v10, p10

    #@2e
    .line 2489
    invoke-static/range {v1 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IZJJ)V

    #@31
    .line 2481
    :cond_1
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V
    .locals 59
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "dumpSummary"    # Z
    .param p6, "dumpAll"    # Z
    .param p7, "activeOnly"    # Z

    #@0
    .prologue
    .line 2129
    move-object/from16 v0, p0

    #@2
    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    #@4
    move-object/from16 v0, p0

    #@6
    iget v7, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    #@8
    .line 2130
    move-object/from16 v0, p0

    #@a
    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    #@c
    .line 2129
    const/4 v4, 0x0

    #@d
    const/4 v5, 0x0

    #@e
    move-wide/from16 v10, p3

    #@10
    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    #@13
    move-result-wide v16

    #@14
    .line 2131
    .local v16, "totalTime":J
    const/16 v52, 0x0

    #@16
    .line 2132
    .local v52, "sepNeeded":Z
    move-object/from16 v0, p0

    #@18
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    #@1a
    if-eqz v4, :cond_0

    #@1c
    .line 2133
    const-string/jumbo v4, "System memory usage:"

    #@1f
    move-object/from16 v0, p1

    #@21
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24
    .line 2134
    const-string/jumbo v4, "  "

    #@27
    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    #@29
    sget-object v7, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    #@2b
    move-object/from16 v0, p0

    #@2d
    move-object/from16 v1, p1

    #@2f
    invoke-virtual {v0, v1, v4, v5, v7}, Lcom/android/internal/app/ProcessStats;->dumpSysMemUsage(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V

    #@32
    .line 2135
    const/16 v52, 0x1

    #@34
    .line 2137
    :cond_0
    move-object/from16 v0, p0

    #@36
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@38
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@3b
    move-result-object v44

    #@3c
    .line 2138
    .local v44, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    const/16 v48, 0x0

    #@3e
    .line 2139
    .local v48, "printedHeader":Z
    const/16 v37, 0x0

    #@40
    .local v37, "ip":I
    :goto_0
    invoke-virtual/range {v44 .. v44}, Landroid/util/ArrayMap;->size()I

    #@43
    move-result v4

    #@44
    move/from16 v0, v37

    #@46
    if-ge v0, v4, :cond_23

    #@48
    .line 2140
    move-object/from16 v0, v44

    #@4a
    move/from16 v1, v37

    #@4c
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@4f
    move-result-object v46

    #@50
    check-cast v46, Ljava/lang/String;

    #@52
    .line 2141
    .local v46, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v44

    #@54
    move/from16 v1, v37

    #@56
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@59
    move-result-object v54

    #@5a
    check-cast v54, Landroid/util/SparseArray;

    #@5c
    .line 2142
    .local v54, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/16 v40, 0x0

    #@5e
    .local v40, "iu":I
    :goto_1
    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    #@61
    move-result v4

    #@62
    move/from16 v0, v40

    #@64
    if-ge v0, v4, :cond_22

    #@66
    .line 2143
    move-object/from16 v0, v54

    #@68
    move/from16 v1, v40

    #@6a
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@6d
    move-result v53

    #@6e
    .line 2144
    .local v53, "uid":I
    move-object/from16 v0, v54

    #@70
    move/from16 v1, v40

    #@72
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@75
    move-result-object v57

    #@76
    check-cast v57, Landroid/util/SparseArray;

    #@78
    .line 2145
    .local v57, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v41, 0x0

    #@7a
    .local v41, "iv":I
    :goto_2
    invoke-virtual/range {v57 .. v57}, Landroid/util/SparseArray;->size()I

    #@7d
    move-result v4

    #@7e
    move/from16 v0, v41

    #@80
    if-ge v0, v4, :cond_21

    #@82
    .line 2146
    move-object/from16 v0, v57

    #@84
    move/from16 v1, v41

    #@86
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@89
    move-result v56

    #@8a
    .line 2147
    .local v56, "vers":I
    move-object/from16 v0, v57

    #@8c
    move/from16 v1, v41

    #@8e
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@91
    move-result-object v47

    #@92
    check-cast v47, Lcom/android/internal/app/ProcessStats$PackageState;

    #@94
    .line 2148
    .local v47, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v47

    #@96
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@98
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@9b
    move-result v35

    #@9c
    .line 2149
    .local v35, "NPROCS":I
    move-object/from16 v0, v47

    #@9e
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@a0
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@a3
    move-result v36

    #@a4
    .line 2150
    .local v36, "NSRVS":I
    if-eqz p2, :cond_3

    #@a6
    move-object/from16 v0, p2

    #@a8
    move-object/from16 v1, v46

    #@aa
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ad
    move-result v45

    #@ae
    .line 2151
    :goto_3
    if-nez v45, :cond_5

    #@b0
    .line 2152
    const/16 v50, 0x0

    #@b2
    .line 2153
    .local v50, "procMatch":Z
    const/16 v38, 0x0

    #@b4
    .local v38, "iproc":I
    :goto_4
    move/from16 v0, v38

    #@b6
    move/from16 v1, v35

    #@b8
    if-ge v0, v1, :cond_1

    #@ba
    .line 2154
    move-object/from16 v0, v47

    #@bc
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@be
    move/from16 v0, v38

    #@c0
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@c3
    move-result-object v6

    #@c4
    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@c6
    .line 2155
    .local v6, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@c8
    move-object/from16 v0, p2

    #@ca
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cd
    move-result v4

    #@ce
    if-eqz v4, :cond_4

    #@d0
    .line 2156
    const/16 v50, 0x1

    #@d2
    .line 2160
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1
    if-nez v50, :cond_5

    #@d4
    .line 2145
    .end local v50    # "procMatch":Z
    :cond_2
    add-int/lit8 v41, v41, 0x1

    #@d6
    goto :goto_2

    #@d7
    .line 2150
    .end local v38    # "iproc":I
    :cond_3
    const/16 v45, 0x1

    #@d9
    .local v45, "pkgMatch":Z
    goto :goto_3

    #@da
    .line 2153
    .end local v45    # "pkgMatch":Z
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v38    # "iproc":I
    .restart local v50    # "procMatch":Z
    :cond_4
    add-int/lit8 v38, v38, 0x1

    #@dc
    goto :goto_4

    #@dd
    .line 2164
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v38    # "iproc":I
    .end local v50    # "procMatch":Z
    :cond_5
    if-gtz v35, :cond_6

    #@df
    if-lez v36, :cond_9

    #@e1
    .line 2165
    :cond_6
    if-nez v48, :cond_8

    #@e3
    .line 2166
    if-eqz v52, :cond_7

    #@e5
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@e8
    .line 2167
    :cond_7
    const-string/jumbo v4, "Per-Package Stats:"

    #@eb
    move-object/from16 v0, p1

    #@ed
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f0
    .line 2168
    const/16 v48, 0x1

    #@f2
    .line 2169
    const/16 v52, 0x1

    #@f4
    .line 2171
    :cond_8
    const-string/jumbo v4, "  * "

    #@f7
    move-object/from16 v0, p1

    #@f9
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fc
    move-object/from16 v0, p1

    #@fe
    move-object/from16 v1, v46

    #@100
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@103
    const-string/jumbo v4, " / "

    #@106
    move-object/from16 v0, p1

    #@108
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10b
    .line 2172
    move-object/from16 v0, p1

    #@10d
    move/from16 v1, v53

    #@10f
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@112
    const-string/jumbo v4, " / v"

    #@115
    move-object/from16 v0, p1

    #@117
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11a
    .line 2173
    move-object/from16 v0, p1

    #@11c
    move/from16 v1, v56

    #@11e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@121
    const-string/jumbo v4, ":"

    #@124
    move-object/from16 v0, p1

    #@126
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@129
    .line 2175
    :cond_9
    if-eqz p5, :cond_a

    #@12b
    if-eqz p6, :cond_10

    #@12d
    .line 2176
    :cond_a
    const/16 v38, 0x0

    #@12f
    .restart local v38    # "iproc":I
    :goto_5
    move/from16 v0, v38

    #@131
    move/from16 v1, v35

    #@133
    if-ge v0, v1, :cond_15

    #@135
    .line 2177
    move-object/from16 v0, v47

    #@137
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@139
    move/from16 v0, v38

    #@13b
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@13e
    move-result-object v6

    #@13f
    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@141
    .line 2178
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v45, :cond_b

    #@143
    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@145
    move-object/from16 v0, p2

    #@147
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14a
    move-result v4

    #@14b
    if-eqz v4, :cond_d

    #@14d
    .line 2181
    :cond_b
    if-eqz p7, :cond_c

    #@14f
    invoke-virtual {v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    #@152
    move-result v4

    #@153
    if-eqz v4, :cond_e

    #@155
    .line 2186
    :cond_c
    const-string/jumbo v4, "      Process "

    #@158
    move-object/from16 v0, p1

    #@15a
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15d
    .line 2187
    move-object/from16 v0, v47

    #@15f
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@161
    move/from16 v0, v38

    #@163
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@166
    move-result-object v4

    #@167
    check-cast v4, Ljava/lang/String;

    #@169
    move-object/from16 v0, p1

    #@16b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16e
    .line 2188
    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@170
    iget-boolean v4, v4, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    #@172
    if-eqz v4, :cond_f

    #@174
    .line 2189
    const-string/jumbo v4, " (multi, "

    #@177
    move-object/from16 v0, p1

    #@179
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17c
    .line 2193
    :goto_6
    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    #@17e
    move-object/from16 v0, p1

    #@180
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@183
    .line 2194
    const-string/jumbo v4, " entries)"

    #@186
    move-object/from16 v0, p1

    #@188
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18b
    .line 2195
    const-string/jumbo v4, ":"

    #@18e
    move-object/from16 v0, p1

    #@190
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@193
    .line 2196
    const-string/jumbo v5, "        "

    #@196
    sget-object v7, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    #@198
    sget-object v8, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    #@19a
    .line 2197
    sget-object v9, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    #@19c
    move-object/from16 v4, p1

    #@19e
    move-wide/from16 v10, p3

    #@1a0
    .line 2196
    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V

    #@1a3
    .line 2198
    const-string/jumbo v5, "        "

    #@1a6
    sget-object v7, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    #@1a8
    sget-object v8, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    #@1aa
    .line 2199
    sget-object v9, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    #@1ac
    move-object/from16 v4, p1

    #@1ae
    .line 2198
    invoke-static/range {v4 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V

    #@1b1
    .line 2200
    const-string/jumbo v4, "        "

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    move-object/from16 v1, p1

    #@1b8
    move/from16 v2, p6

    #@1ba
    invoke-direct {v0, v1, v4, v6, v2}, Lcom/android/internal/app/ProcessStats;->dumpProcessInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;Z)V

    #@1bd
    .line 2176
    :cond_d
    :goto_7
    add-int/lit8 v38, v38, 0x1

    #@1bf
    goto/16 :goto_5

    #@1c1
    .line 2182
    :cond_e
    const-string/jumbo v4, "      (Not active: "

    #@1c4
    move-object/from16 v0, p1

    #@1c6
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c9
    .line 2183
    move-object/from16 v0, v47

    #@1cb
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@1cd
    move/from16 v0, v38

    #@1cf
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1d2
    move-result-object v4

    #@1d3
    check-cast v4, Ljava/lang/String;

    #@1d5
    move-object/from16 v0, p1

    #@1d7
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1da
    const-string/jumbo v4, ")"

    #@1dd
    move-object/from16 v0, p1

    #@1df
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e2
    goto :goto_7

    #@1e3
    .line 2191
    :cond_f
    const-string/jumbo v4, " (unique, "

    #@1e6
    move-object/from16 v0, p1

    #@1e8
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1eb
    goto :goto_6

    #@1ec
    .line 2203
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v38    # "iproc":I
    :cond_10
    new-instance v9, Ljava/util/ArrayList;

    #@1ee
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@1f1
    .line 2204
    .local v9, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v38, 0x0

    #@1f3
    .restart local v38    # "iproc":I
    :goto_8
    move/from16 v0, v38

    #@1f5
    move/from16 v1, v35

    #@1f7
    if-ge v0, v1, :cond_14

    #@1f9
    .line 2205
    move-object/from16 v0, v47

    #@1fb
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@1fd
    move/from16 v0, v38

    #@1ff
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@202
    move-result-object v6

    #@203
    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@205
    .line 2206
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v45, :cond_11

    #@207
    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@209
    move-object/from16 v0, p2

    #@20b
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20e
    move-result v4

    #@20f
    if-eqz v4, :cond_13

    #@211
    .line 2209
    :cond_11
    if-eqz p7, :cond_12

    #@213
    invoke-virtual {v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    #@216
    move-result v4

    #@217
    if-eqz v4, :cond_13

    #@219
    .line 2212
    :cond_12
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21c
    .line 2204
    :cond_13
    add-int/lit8 v38, v38, 0x1

    #@21e
    goto :goto_8

    #@21f
    .line 2214
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_14
    const-string/jumbo v8, "      "

    #@222
    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    #@224
    sget-object v11, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    #@226
    .line 2215
    sget-object v12, Lcom/android/internal/app/ProcessStats;->NON_CACHED_PROC_STATES:[I

    #@228
    const/4 v13, 0x0

    #@229
    move-object/from16 v7, p1

    #@22b
    move-wide/from16 v14, p3

    #@22d
    .line 2214
    invoke-static/range {v7 .. v17}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IZJJ)V

    #@230
    .line 2217
    .end local v9    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_15
    const/16 v39, 0x0

    #@232
    .local v39, "isvc":I
    :goto_9
    move/from16 v0, v39

    #@234
    move/from16 v1, v36

    #@236
    if-ge v0, v1, :cond_2

    #@238
    .line 2218
    move-object/from16 v0, v47

    #@23a
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@23c
    move/from16 v0, v39

    #@23e
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@241
    move-result-object v24

    #@242
    check-cast v24, Lcom/android/internal/app/ProcessStats$ServiceState;

    #@244
    .line 2219
    .local v24, "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-nez v45, :cond_16

    #@246
    move-object/from16 v0, v24

    #@248
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    #@24a
    move-object/from16 v0, p2

    #@24c
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24f
    move-result v4

    #@250
    if-eqz v4, :cond_1a

    #@252
    .line 2222
    :cond_16
    if-eqz p7, :cond_17

    #@254
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/ProcessStats$ServiceState;->isInUse()Z

    #@257
    move-result v4

    #@258
    if-eqz v4, :cond_1b

    #@25a
    .line 2227
    :cond_17
    if-eqz p6, :cond_1c

    #@25c
    .line 2228
    const-string/jumbo v4, "      Service "

    #@25f
    move-object/from16 v0, p1

    #@261
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@264
    .line 2232
    :goto_a
    move-object/from16 v0, v47

    #@266
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@268
    move/from16 v0, v39

    #@26a
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@26d
    move-result-object v4

    #@26e
    check-cast v4, Ljava/lang/String;

    #@270
    move-object/from16 v0, p1

    #@272
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@275
    .line 2233
    const-string/jumbo v4, ":"

    #@278
    move-object/from16 v0, p1

    #@27a
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@27d
    .line 2234
    const-string/jumbo v4, "        Process: "

    #@280
    move-object/from16 v0, p1

    #@282
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@285
    move-object/from16 v0, v24

    #@287
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    #@289
    move-object/from16 v0, p1

    #@28b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28e
    .line 2235
    const-string/jumbo v20, "        "

    #@291
    const-string/jumbo v21, "          "

    #@294
    const-string/jumbo v22, "    "

    #@297
    const-string/jumbo v23, "Running"

    #@29a
    .line 2236
    move-object/from16 v0, v24

    #@29c
    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    #@29e
    move/from16 v25, v0

    #@2a0
    move-object/from16 v0, v24

    #@2a2
    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    #@2a4
    move/from16 v27, v0

    #@2a6
    .line 2237
    move-object/from16 v0, v24

    #@2a8
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    #@2aa
    move-wide/from16 v28, v0

    #@2ac
    if-eqz p5, :cond_1d

    #@2ae
    move/from16 v34, p6

    #@2b0
    .line 2236
    :goto_b
    const/16 v26, 0x0

    #@2b2
    move-object/from16 v18, p0

    #@2b4
    move-object/from16 v19, p1

    #@2b6
    move-wide/from16 v30, p3

    #@2b8
    move-wide/from16 v32, v16

    #@2ba
    .line 2235
    invoke-virtual/range {v18 .. v34}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    #@2bd
    .line 2238
    const-string/jumbo v20, "        "

    #@2c0
    const-string/jumbo v21, "          "

    #@2c3
    const-string/jumbo v22, "    "

    #@2c6
    const-string/jumbo v23, "Started"

    #@2c9
    .line 2239
    move-object/from16 v0, v24

    #@2cb
    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    #@2cd
    move/from16 v25, v0

    #@2cf
    move-object/from16 v0, v24

    #@2d1
    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    #@2d3
    move/from16 v27, v0

    #@2d5
    .line 2240
    move-object/from16 v0, v24

    #@2d7
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    #@2d9
    move-wide/from16 v28, v0

    #@2db
    if-eqz p5, :cond_1e

    #@2dd
    move/from16 v34, p6

    #@2df
    .line 2239
    :goto_c
    const/16 v26, 0x1

    #@2e1
    move-object/from16 v18, p0

    #@2e3
    move-object/from16 v19, p1

    #@2e5
    move-wide/from16 v30, p3

    #@2e7
    move-wide/from16 v32, v16

    #@2e9
    .line 2238
    invoke-virtual/range {v18 .. v34}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    #@2ec
    .line 2241
    const-string/jumbo v20, "        "

    #@2ef
    const-string/jumbo v21, "          "

    #@2f2
    const-string/jumbo v22, "      "

    #@2f5
    const-string/jumbo v23, "Bound"

    #@2f8
    .line 2242
    move-object/from16 v0, v24

    #@2fa
    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    #@2fc
    move/from16 v25, v0

    #@2fe
    move-object/from16 v0, v24

    #@300
    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    #@302
    move/from16 v27, v0

    #@304
    .line 2243
    move-object/from16 v0, v24

    #@306
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    #@308
    move-wide/from16 v28, v0

    #@30a
    if-eqz p5, :cond_1f

    #@30c
    move/from16 v34, p6

    #@30e
    .line 2242
    :goto_d
    const/16 v26, 0x2

    #@310
    move-object/from16 v18, p0

    #@312
    move-object/from16 v19, p1

    #@314
    move-wide/from16 v30, p3

    #@316
    move-wide/from16 v32, v16

    #@318
    .line 2241
    invoke-virtual/range {v18 .. v34}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    #@31b
    .line 2244
    const-string/jumbo v20, "        "

    #@31e
    const-string/jumbo v21, "          "

    #@321
    const-string/jumbo v22, "  "

    #@324
    const-string/jumbo v23, "Executing"

    #@327
    .line 2245
    move-object/from16 v0, v24

    #@329
    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    #@32b
    move/from16 v25, v0

    #@32d
    move-object/from16 v0, v24

    #@32f
    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    #@331
    move/from16 v27, v0

    #@333
    .line 2246
    move-object/from16 v0, v24

    #@335
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    #@337
    move-wide/from16 v28, v0

    #@339
    if-eqz p5, :cond_20

    #@33b
    move/from16 v34, p6

    #@33d
    .line 2245
    :goto_e
    const/16 v26, 0x3

    #@33f
    move-object/from16 v18, p0

    #@341
    move-object/from16 v19, p1

    #@343
    move-wide/from16 v30, p3

    #@345
    move-wide/from16 v32, v16

    #@347
    .line 2244
    invoke-virtual/range {v18 .. v34}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    #@34a
    .line 2247
    if-eqz p6, :cond_1a

    #@34c
    .line 2248
    move-object/from16 v0, v24

    #@34e
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    #@350
    if-eqz v4, :cond_18

    #@352
    .line 2249
    const-string/jumbo v4, "        mOwner="

    #@355
    move-object/from16 v0, p1

    #@357
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@35a
    move-object/from16 v0, v24

    #@35c
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    #@35e
    move-object/from16 v0, p1

    #@360
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@363
    .line 2251
    :cond_18
    move-object/from16 v0, v24

    #@365
    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    #@367
    if-nez v4, :cond_19

    #@369
    move-object/from16 v0, v24

    #@36b
    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    #@36d
    if-eqz v4, :cond_1a

    #@36f
    .line 2252
    :cond_19
    const-string/jumbo v4, "        mStarted="

    #@372
    move-object/from16 v0, p1

    #@374
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@377
    move-object/from16 v0, v24

    #@379
    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    #@37b
    move-object/from16 v0, p1

    #@37d
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@380
    .line 2253
    const-string/jumbo v4, " mRestarting="

    #@383
    move-object/from16 v0, p1

    #@385
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@388
    move-object/from16 v0, v24

    #@38a
    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    #@38c
    move-object/from16 v0, p1

    #@38e
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Z)V

    #@391
    .line 2217
    :cond_1a
    :goto_f
    add-int/lit8 v39, v39, 0x1

    #@393
    goto/16 :goto_9

    #@395
    .line 2223
    :cond_1b
    const-string/jumbo v4, "      (Not active: "

    #@398
    move-object/from16 v0, p1

    #@39a
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39d
    .line 2224
    move-object/from16 v0, v47

    #@39f
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@3a1
    move/from16 v0, v39

    #@3a3
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@3a6
    move-result-object v4

    #@3a7
    check-cast v4, Ljava/lang/String;

    #@3a9
    move-object/from16 v0, p1

    #@3ab
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ae
    const-string/jumbo v4, ")"

    #@3b1
    move-object/from16 v0, p1

    #@3b3
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3b6
    goto :goto_f

    #@3b7
    .line 2230
    :cond_1c
    const-string/jumbo v4, "      * "

    #@3ba
    move-object/from16 v0, p1

    #@3bc
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3bf
    goto/16 :goto_a

    #@3c1
    .line 2237
    :cond_1d
    const/16 v34, 0x1

    #@3c3
    goto/16 :goto_b

    #@3c5
    .line 2240
    :cond_1e
    const/16 v34, 0x1

    #@3c7
    goto/16 :goto_c

    #@3c9
    .line 2243
    :cond_1f
    const/16 v34, 0x1

    #@3cb
    goto/16 :goto_d

    #@3cd
    .line 2246
    :cond_20
    const/16 v34, 0x1

    #@3cf
    goto/16 :goto_e

    #@3d1
    .line 2142
    .end local v24    # "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v35    # "NPROCS":I
    .end local v36    # "NSRVS":I
    .end local v38    # "iproc":I
    .end local v39    # "isvc":I
    .end local v47    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v56    # "vers":I
    :cond_21
    add-int/lit8 v40, v40, 0x1

    #@3d3
    goto/16 :goto_1

    #@3d5
    .line 2139
    .end local v41    # "iv":I
    .end local v53    # "uid":I
    .end local v57    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_22
    add-int/lit8 v37, v37, 0x1

    #@3d7
    goto/16 :goto_0

    #@3d9
    .line 2261
    .end local v40    # "iu":I
    .end local v46    # "pkgName":Ljava/lang/String;
    .end local v54    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_23
    move-object/from16 v0, p0

    #@3db
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@3dd
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@3e0
    move-result-object v49

    #@3e1
    .line 2262
    .local v49, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/16 v48, 0x0

    #@3e3
    .line 2263
    const/16 v42, 0x0

    #@3e5
    .local v42, "numShownProcs":I
    const/16 v43, 0x0

    #@3e7
    .line 2264
    .local v43, "numTotalProcs":I
    const/16 v37, 0x0

    #@3e9
    :goto_10
    invoke-virtual/range {v49 .. v49}, Landroid/util/ArrayMap;->size()I

    #@3ec
    move-result v4

    #@3ed
    move/from16 v0, v37

    #@3ef
    if-ge v0, v4, :cond_2d

    #@3f1
    .line 2265
    move-object/from16 v0, v49

    #@3f3
    move/from16 v1, v37

    #@3f5
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@3f8
    move-result-object v51

    #@3f9
    check-cast v51, Ljava/lang/String;

    #@3fb
    .line 2266
    .local v51, "procName":Ljava/lang/String;
    move-object/from16 v0, v49

    #@3fd
    move/from16 v1, v37

    #@3ff
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@402
    move-result-object v55

    #@403
    check-cast v55, Landroid/util/SparseArray;

    #@405
    .line 2267
    .local v55, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v40, 0x0

    #@407
    .restart local v40    # "iu":I
    :goto_11
    invoke-virtual/range {v55 .. v55}, Landroid/util/SparseArray;->size()I

    #@40a
    move-result v4

    #@40b
    move/from16 v0, v40

    #@40d
    if-ge v0, v4, :cond_2c

    #@40f
    .line 2268
    move-object/from16 v0, v55

    #@411
    move/from16 v1, v40

    #@413
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@416
    move-result v53

    #@417
    .line 2269
    .restart local v53    # "uid":I
    add-int/lit8 v43, v43, 0x1

    #@419
    .line 2270
    move-object/from16 v0, v55

    #@41b
    move/from16 v1, v40

    #@41d
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@420
    move-result-object v6

    #@421
    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@423
    .line 2271
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    #@425
    if-nez v4, :cond_25

    #@427
    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    #@429
    const/4 v5, -0x1

    #@42a
    if-ne v4, v5, :cond_25

    #@42c
    .line 2272
    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    #@42e
    if-nez v4, :cond_25

    #@430
    .line 2267
    :cond_24
    :goto_12
    add-int/lit8 v40, v40, 0x1

    #@432
    goto :goto_11

    #@433
    .line 2275
    :cond_25
    iget-boolean v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    #@435
    if-eqz v4, :cond_24

    #@437
    .line 2278
    if-eqz p2, :cond_26

    #@439
    move-object/from16 v0, p2

    #@43b
    move-object/from16 v1, v51

    #@43d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@440
    move-result v4

    #@441
    if-eqz v4, :cond_2a

    #@443
    .line 2282
    :cond_26
    :goto_13
    add-int/lit8 v42, v42, 0x1

    #@445
    .line 2283
    if-eqz v52, :cond_27

    #@447
    .line 2284
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@44a
    .line 2286
    :cond_27
    const/16 v52, 0x1

    #@44c
    .line 2287
    if-nez v48, :cond_28

    #@44e
    .line 2288
    const-string/jumbo v4, "Multi-Package Common Processes:"

    #@451
    move-object/from16 v0, p1

    #@453
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@456
    .line 2289
    const/16 v48, 0x1

    #@458
    .line 2291
    :cond_28
    if-eqz p7, :cond_29

    #@45a
    invoke-virtual {v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    #@45d
    move-result v4

    #@45e
    if-eqz v4, :cond_2b

    #@460
    .line 2295
    :cond_29
    const-string/jumbo v4, "  * "

    #@463
    move-object/from16 v0, p1

    #@465
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@468
    move-object/from16 v0, p1

    #@46a
    move-object/from16 v1, v51

    #@46c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46f
    const-string/jumbo v4, " / "

    #@472
    move-object/from16 v0, p1

    #@474
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@477
    .line 2296
    move-object/from16 v0, p1

    #@479
    move/from16 v1, v53

    #@47b
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@47e
    .line 2297
    const-string/jumbo v4, " ("

    #@481
    move-object/from16 v0, p1

    #@483
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@486
    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    #@488
    move-object/from16 v0, p1

    #@48a
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@48d
    .line 2298
    const-string/jumbo v4, " entries)"

    #@490
    move-object/from16 v0, p1

    #@492
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@495
    const-string/jumbo v4, ":"

    #@498
    move-object/from16 v0, p1

    #@49a
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49d
    .line 2299
    const-string/jumbo v27, "        "

    #@4a0
    sget-object v29, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    #@4a2
    sget-object v30, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    #@4a4
    .line 2300
    sget-object v31, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    #@4a6
    move-object/from16 v26, p1

    #@4a8
    move-object/from16 v28, v6

    #@4aa
    move-wide/from16 v32, p3

    #@4ac
    .line 2299
    invoke-static/range {v26 .. v33}, Lcom/android/internal/app/ProcessStats;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V

    #@4af
    .line 2301
    const-string/jumbo v11, "        "

    #@4b2
    sget-object v13, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    #@4b4
    sget-object v14, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    #@4b6
    .line 2302
    sget-object v15, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    #@4b8
    move-object/from16 v10, p1

    #@4ba
    move-object v12, v6

    #@4bb
    .line 2301
    invoke-static/range {v10 .. v15}, Lcom/android/internal/app/ProcessStats;->dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V

    #@4be
    .line 2303
    const-string/jumbo v4, "        "

    #@4c1
    move-object/from16 v0, p0

    #@4c3
    move-object/from16 v1, p1

    #@4c5
    move/from16 v2, p6

    #@4c7
    invoke-direct {v0, v1, v4, v6, v2}, Lcom/android/internal/app/ProcessStats;->dumpProcessInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;Z)V

    #@4ca
    goto/16 :goto_12

    #@4cc
    .line 2279
    :cond_2a
    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    #@4ce
    move-object/from16 v0, p2

    #@4d0
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d3
    move-result v4

    #@4d4
    if-eqz v4, :cond_24

    #@4d6
    goto/16 :goto_13

    #@4d8
    .line 2292
    :cond_2b
    const-string/jumbo v4, "      (Not active: "

    #@4db
    move-object/from16 v0, p1

    #@4dd
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e0
    move-object/from16 v0, p1

    #@4e2
    move-object/from16 v1, v51

    #@4e4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e7
    const-string/jumbo v4, ")"

    #@4ea
    move-object/from16 v0, p1

    #@4ec
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4ef
    goto/16 :goto_12

    #@4f1
    .line 2264
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v53    # "uid":I
    :cond_2c
    add-int/lit8 v37, v37, 0x1

    #@4f3
    goto/16 :goto_10

    #@4f5
    .line 2306
    .end local v40    # "iu":I
    .end local v51    # "procName":Ljava/lang/String;
    .end local v55    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_2d
    if-eqz p6, :cond_2e

    #@4f7
    .line 2307
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@4fa
    .line 2308
    const-string/jumbo v4, "  Total procs: "

    #@4fd
    move-object/from16 v0, p1

    #@4ff
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@502
    move-object/from16 v0, p1

    #@504
    move/from16 v1, v42

    #@506
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@509
    .line 2309
    const-string/jumbo v4, " shown of "

    #@50c
    move-object/from16 v0, p1

    #@50e
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@511
    move-object/from16 v0, p1

    #@513
    move/from16 v1, v43

    #@515
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@518
    const-string/jumbo v4, " total"

    #@51b
    move-object/from16 v0, p1

    #@51d
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@520
    .line 2312
    :cond_2e
    if-eqz v52, :cond_2f

    #@522
    .line 2313
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@525
    .line 2315
    :cond_2f
    if-eqz p5, :cond_31

    #@527
    .line 2316
    const-string/jumbo v4, "Summary:"

    #@52a
    move-object/from16 v0, p1

    #@52c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@52f
    move-object/from16 v25, p0

    #@531
    move-object/from16 v26, p1

    #@533
    move-object/from16 v27, p2

    #@535
    move-wide/from16 v28, p3

    #@537
    move/from16 v30, p7

    #@539
    .line 2317
    invoke-virtual/range {v25 .. v30}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    #@53c
    .line 2322
    :goto_14
    if-eqz p6, :cond_30

    #@53e
    .line 2323
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@541
    .line 2324
    const-string/jumbo v4, "Internal state:"

    #@544
    move-object/from16 v0, p1

    #@546
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@549
    .line 2325
    const-string/jumbo v4, "  Num long arrays: "

    #@54c
    move-object/from16 v0, p1

    #@54e
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@551
    move-object/from16 v0, p0

    #@553
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@555
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@558
    move-result v4

    #@559
    move-object/from16 v0, p1

    #@55b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    #@55e
    .line 2326
    const-string/jumbo v4, "  Next long entry: "

    #@561
    move-object/from16 v0, p1

    #@563
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@566
    move-object/from16 v0, p0

    #@568
    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    #@56a
    move-object/from16 v0, p1

    #@56c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    #@56f
    .line 2327
    const-string/jumbo v4, "  mRunning="

    #@572
    move-object/from16 v0, p1

    #@574
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@577
    move-object/from16 v0, p0

    #@579
    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    #@57b
    move-object/from16 v0, p1

    #@57d
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Z)V

    #@580
    .line 2128
    :cond_30
    return-void

    #@581
    .line 2319
    :cond_31
    move-object/from16 v0, p0

    #@583
    move-object/from16 v1, p1

    #@585
    move-wide/from16 v2, p3

    #@587
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    #@58a
    goto :goto_14
.end method

.method dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "prefixInner"    # Ljava/lang/String;
    .param p4, "headerPrefix"    # Ljava/lang/String;
    .param p5, "header"    # Ljava/lang/String;
    .param p6, "service"    # Lcom/android/internal/app/ProcessStats$ServiceState;
    .param p7, "count"    # I
    .param p8, "serviceType"    # I
    .param p9, "state"    # I
    .param p10, "startTime"    # J
    .param p12, "now"    # J
    .param p14, "totalTime"    # J
    .param p16, "dumpAll"    # Z

    #@0
    .prologue
    .line 2373
    if-eqz p7, :cond_0

    #@2
    .line 2374
    if-eqz p16, :cond_1

    #@4
    .line 2375
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7
    move-object/from16 v0, p5

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 2376
    const-string/jumbo v2, " op count "

    #@f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    move/from16 v0, p7

    #@14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@17
    const-string/jumbo v2, ":"

    #@1a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    move-object v3, p1

    #@1e
    move-object/from16 v4, p3

    #@20
    move-object/from16 v5, p6

    #@22
    move/from16 v6, p8

    #@24
    move/from16 v7, p9

    #@26
    move-wide/from16 v8, p10

    #@28
    move-wide/from16 v10, p12

    #@2a
    .line 2377
    invoke-static/range {v3 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpSingleServiceTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIJJ)J

    #@2d
    .line 2372
    :cond_0
    :goto_0
    return-void

    #@2e
    .line 2380
    :cond_1
    const/4 v3, 0x0

    #@2f
    const/4 v4, 0x0

    #@30
    move-object/from16 v5, p6

    #@32
    move/from16 v6, p8

    #@34
    move/from16 v7, p9

    #@36
    move-wide/from16 v8, p10

    #@38
    move-wide/from16 v10, p12

    #@3a
    invoke-static/range {v3 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpSingleServiceTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIJJ)J

    #@3d
    move-result-wide v12

    #@3e
    .line 2382
    .local v12, "myTime":J
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@41
    move-object/from16 v0, p4

    #@43
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    move-object/from16 v0, p5

    #@48
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b
    .line 2383
    const-string/jumbo v2, " count "

    #@4e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51
    move/from16 v0, p7

    #@53
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@56
    .line 2384
    const-string/jumbo v2, " / time "

    #@59
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c
    .line 2385
    long-to-double v2, v12

    #@5d
    move-wide/from16 v0, p14

    #@5f
    long-to-double v4, v0

    #@60
    div-double/2addr v2, v4

    #@61
    invoke-static {p1, v2, v3}, Lcom/android/internal/app/ProcessStats;->printPercent(Ljava/io/PrintWriter;D)V

    #@64
    .line 2386
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@67
    goto :goto_0
.end method

.method public dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .locals 19
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "activeOnly"    # Z

    #@0
    .prologue
    .line 2392
    move-object/from16 v0, p0

    #@2
    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    #@4
    move-object/from16 v0, p0

    #@6
    iget v7, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    #@8
    .line 2393
    move-object/from16 v0, p0

    #@a
    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    #@c
    .line 2392
    const/4 v4, 0x0

    #@d
    const/4 v5, 0x0

    #@e
    move-wide/from16 v10, p3

    #@10
    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    #@13
    move-result-wide v14

    #@14
    .line 2394
    .local v14, "totalTime":J
    const-string/jumbo v7, "  "

    #@17
    sget-object v8, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    #@19
    sget-object v9, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    #@1b
    .line 2395
    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    #@1d
    sget-object v11, Lcom/android/internal/app/ProcessStats;->NON_CACHED_PROC_STATES:[I

    #@1f
    .line 2394
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
    invoke-virtual/range {v4 .. v17}, Lcom/android/internal/app/ProcessStats;->dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V

    #@2d
    .line 2396
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@30
    .line 2397
    move-object/from16 v0, p0

    #@32
    move-object/from16 v1, p1

    #@34
    move-wide/from16 v2, p3

    #@36
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    #@39
    .line 2391
    return-void
.end method

.method dumpSysMemUsage(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I

    #@0
    .prologue
    .line 956
    const/4 v15, -0x1

    #@1
    .line 957
    .local v15, "printedScreen":I
    const/4 v12, 0x0

    #@2
    .local v12, "is":I
    :goto_0
    move-object/from16 v0, p3

    #@4
    array-length v2, v0

    #@5
    if-ge v12, v2, :cond_6

    #@7
    .line 958
    const/4 v14, -0x1

    #@8
    .line 959
    .local v14, "printedMem":I
    const/4 v10, 0x0

    #@9
    .local v10, "im":I
    :goto_1
    move-object/from16 v0, p4

    #@b
    array-length v2, v0

    #@c
    if-ge v10, v2, :cond_5

    #@e
    .line 960
    aget v13, p3, v12

    #@10
    .line 961
    .local v13, "iscreen":I
    aget v11, p4, v10

    #@12
    .line 962
    .local v11, "imem":I
    add-int v2, v13, v11

    #@14
    mul-int/lit8 v6, v2, 0xe

    #@16
    .line 963
    .local v6, "bucket":I
    const/4 v2, 0x0

    #@17
    move-object/from16 v0, p0

    #@19
    invoke-virtual {v0, v6, v2}, Lcom/android/internal/app/ProcessStats;->getSysMemUsageValue(II)J

    #@1c
    move-result-wide v8

    #@1d
    .line 964
    .local v8, "count":J
    const-wide/16 v2, 0x0

    #@1f
    cmp-long v2, v8, v2

    #@21
    if-lez v2, :cond_2

    #@23
    .line 965
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    .line 966
    move-object/from16 v0, p3

    #@28
    array-length v2, v0

    #@29
    const/4 v3, 0x1

    #@2a
    if-le v2, v3, :cond_0

    #@2c
    .line 967
    if-eq v15, v13, :cond_3

    #@2e
    move v2, v13

    #@2f
    :goto_2
    move-object/from16 v0, p1

    #@31
    invoke-static {v0, v2}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    #@34
    .line 969
    move v15, v13

    #@35
    .line 971
    :cond_0
    move-object/from16 v0, p4

    #@37
    array-length v2, v0

    #@38
    const/4 v3, 0x1

    #@39
    if-le v2, v3, :cond_1

    #@3b
    .line 972
    if-eq v14, v11, :cond_4

    #@3d
    move v2, v11

    #@3e
    :goto_3
    const/4 v3, 0x0

    #@3f
    move-object/from16 v0, p1

    #@41
    invoke-static {v0, v2, v3}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    #@44
    .line 973
    move v14, v11

    #@45
    .line 975
    :cond_1
    const-string/jumbo v2, ": "

    #@48
    move-object/from16 v0, p1

    #@4a
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    .line 976
    move-object/from16 v0, p1

    #@4f
    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    #@52
    .line 977
    const-string/jumbo v2, " samples:"

    #@55
    move-object/from16 v0, p1

    #@57
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a
    .line 978
    const-string/jumbo v5, "  Cached"

    #@5d
    .line 979
    const/4 v7, 0x1

    #@5e
    move-object/from16 v2, p0

    #@60
    move-object/from16 v3, p1

    #@62
    move-object/from16 v4, p2

    #@64
    .line 978
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    #@67
    .line 980
    const-string/jumbo v5, "  Free"

    #@6a
    .line 981
    const/4 v7, 0x4

    #@6b
    move-object/from16 v2, p0

    #@6d
    move-object/from16 v3, p1

    #@6f
    move-object/from16 v4, p2

    #@71
    .line 980
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    #@74
    .line 982
    const-string/jumbo v5, "  ZRam"

    #@77
    .line 983
    const/4 v7, 0x7

    #@78
    move-object/from16 v2, p0

    #@7a
    move-object/from16 v3, p1

    #@7c
    move-object/from16 v4, p2

    #@7e
    .line 982
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    #@81
    .line 984
    const-string/jumbo v5, "  Kernel"

    #@84
    .line 985
    const/16 v7, 0xa

    #@86
    move-object/from16 v2, p0

    #@88
    move-object/from16 v3, p1

    #@8a
    move-object/from16 v4, p2

    #@8c
    .line 984
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    #@8f
    .line 986
    const-string/jumbo v5, "  Native"

    #@92
    .line 987
    const/16 v7, 0xd

    #@94
    move-object/from16 v2, p0

    #@96
    move-object/from16 v3, p1

    #@98
    move-object/from16 v4, p2

    #@9a
    .line 986
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    #@9d
    .line 959
    :cond_2
    add-int/lit8 v10, v10, 0x1

    #@9f
    goto/16 :goto_1

    #@a1
    .line 968
    :cond_3
    const/4 v2, -0x1

    #@a2
    goto :goto_2

    #@a3
    .line 972
    :cond_4
    const/4 v2, -0x1

    #@a4
    goto :goto_3

    #@a5
    .line 957
    .end local v6    # "bucket":I
    .end local v8    # "count":J
    .end local v11    # "imem":I
    .end local v13    # "iscreen":I
    :cond_5
    add-int/lit8 v12, v12, 0x1

    #@a7
    goto/16 :goto_0

    #@a9
    .line 955
    .end local v10    # "im":I
    .end local v14    # "printedMem":I
    :cond_6
    return-void
.end method

.method dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "bucket"    # I
    .param p5, "index"    # I

    #@0
    .prologue
    const-wide/16 v2, 0x400

    #@2
    .line 944
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8
    .line 945
    const-string/jumbo v0, ": "

    #@b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e
    .line 946
    invoke-virtual {p0, p4, p5}, Lcom/android/internal/app/ProcessStats;->getSysMemUsageValue(II)J

    #@11
    move-result-wide v0

    #@12
    mul-long/2addr v0, v2

    #@13
    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@16
    .line 947
    const-string/jumbo v0, " min, "

    #@19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c
    .line 948
    add-int/lit8 v0, p5, 0x1

    #@1e
    invoke-virtual {p0, p4, v0}, Lcom/android/internal/app/ProcessStats;->getSysMemUsageValue(II)J

    #@21
    move-result-wide v0

    #@22
    mul-long/2addr v0, v2

    #@23
    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@26
    .line 949
    const-string/jumbo v0, " avg, "

    #@29
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    .line 950
    add-int/lit8 v0, p5, 0x2

    #@2e
    invoke-virtual {p0, p4, v0}, Lcom/android/internal/app/ProcessStats;->getSysMemUsageValue(II)J

    #@31
    move-result-wide v0

    #@32
    mul-long/2addr v0, v2

    #@33
    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@36
    .line 951
    const-string/jumbo v0, " max"

    #@39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c
    .line 943
    return-void
.end method

.method dumpTotalsLocked(Ljava/io/PrintWriter;J)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "now"    # J

    #@0
    .prologue
    .line 2418
    const-string/jumbo v4, "Run time Stats:"

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8
    .line 2419
    const-string/jumbo v5, "  "

    #@b
    move-object/from16 v0, p0

    #@d
    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    #@f
    move-object/from16 v0, p0

    #@11
    iget v7, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    #@13
    move-object/from16 v0, p0

    #@15
    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    #@17
    move-object/from16 v4, p1

    #@19
    move-wide/from16 v10, p2

    #@1b
    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    #@1e
    .line 2420
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@21
    .line 2421
    const-string/jumbo v4, "Memory usage:"

    #@24
    move-object/from16 v0, p1

    #@26
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@29
    .line 2422
    new-instance v17, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;

    #@2b
    sget-object v4, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    #@2d
    .line 2423
    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    #@2f
    .line 2422
    move-object/from16 v0, v17

    #@31
    invoke-direct {v0, v4, v5}, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    #@34
    .line 2424
    .local v17, "totalMem":Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;
    move-object/from16 v0, p0

    #@36
    move-object/from16 v1, v17

    #@38
    move-wide/from16 v2, p2

    #@3a
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)V

    #@3d
    .line 2425
    const-wide/16 v12, 0x0

    #@3f
    .line 2426
    .local v12, "totalPss":J
    const-string/jumbo v6, "  "

    #@42
    const-string/jumbo v7, "Kernel "

    #@45
    move-object/from16 v0, v17

    #@47
    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    #@49
    .line 2427
    move-object/from16 v0, v17

    #@4b
    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    #@4d
    move-object/from16 v0, v17

    #@4f
    iget v14, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@51
    move-object/from16 v4, p0

    #@53
    move-object/from16 v5, p1

    #@55
    .line 2426
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    #@58
    move-result-wide v12

    #@59
    .line 2428
    const-string/jumbo v6, "  "

    #@5c
    const-string/jumbo v7, "Native "

    #@5f
    move-object/from16 v0, v17

    #@61
    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    #@63
    .line 2429
    move-object/from16 v0, v17

    #@65
    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    #@67
    move-object/from16 v0, v17

    #@69
    iget v14, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@6b
    move-object/from16 v4, p0

    #@6d
    move-object/from16 v5, p1

    #@6f
    .line 2428
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    #@72
    move-result-wide v12

    #@73
    .line 2430
    const/4 v15, 0x0

    #@74
    .local v15, "i":I
    :goto_0
    const/16 v4, 0xe

    #@76
    if-ge v15, v4, :cond_1

    #@78
    .line 2432
    const/4 v4, 0x7

    #@79
    if-eq v15, v4, :cond_0

    #@7b
    .line 2433
    const-string/jumbo v6, "  "

    #@7e
    sget-object v4, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    #@80
    aget-object v7, v4, v15

    #@82
    .line 2434
    move-object/from16 v0, v17

    #@84
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    #@86
    aget-wide v8, v4, v15

    #@88
    move-object/from16 v0, v17

    #@8a
    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    #@8c
    .line 2435
    move-object/from16 v0, v17

    #@8e
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    #@90
    aget v14, v4, v15

    #@92
    move-object/from16 v4, p0

    #@94
    move-object/from16 v5, p1

    #@96
    .line 2433
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    #@99
    move-result-wide v12

    #@9a
    .line 2430
    :cond_0
    add-int/lit8 v15, v15, 0x1

    #@9c
    goto :goto_0

    #@9d
    .line 2438
    :cond_1
    const-string/jumbo v6, "  "

    #@a0
    const-string/jumbo v7, "Cached "

    #@a3
    move-object/from16 v0, v17

    #@a5
    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    #@a7
    .line 2439
    move-object/from16 v0, v17

    #@a9
    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    #@ab
    move-object/from16 v0, v17

    #@ad
    iget v14, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@af
    move-object/from16 v4, p0

    #@b1
    move-object/from16 v5, p1

    #@b3
    .line 2438
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    #@b6
    move-result-wide v12

    #@b7
    .line 2440
    const-string/jumbo v6, "  "

    #@ba
    const-string/jumbo v7, "Free   "

    #@bd
    move-object/from16 v0, v17

    #@bf
    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    #@c1
    .line 2441
    move-object/from16 v0, v17

    #@c3
    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    #@c5
    move-object/from16 v0, v17

    #@c7
    iget v14, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@c9
    move-object/from16 v4, p0

    #@cb
    move-object/from16 v5, p1

    #@cd
    .line 2440
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    #@d0
    move-result-wide v12

    #@d1
    .line 2442
    const-string/jumbo v6, "  "

    #@d4
    const-string/jumbo v7, "Z-Ram  "

    #@d7
    move-object/from16 v0, v17

    #@d9
    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    #@db
    .line 2443
    move-object/from16 v0, v17

    #@dd
    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    #@df
    move-object/from16 v0, v17

    #@e1
    iget v14, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    #@e3
    move-object/from16 v4, p0

    #@e5
    move-object/from16 v5, p1

    #@e7
    .line 2442
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    #@ea
    move-result-wide v12

    #@eb
    .line 2444
    const-string/jumbo v4, "  TOTAL  : "

    #@ee
    move-object/from16 v0, p1

    #@f0
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f3
    .line 2445
    move-object/from16 v0, p1

    #@f5
    invoke-static {v0, v12, v13}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@f8
    .line 2446
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@fb
    .line 2447
    const-string/jumbo v6, "  "

    #@fe
    sget-object v4, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    #@100
    const/4 v5, 0x7

    #@101
    aget-object v7, v4, v5

    #@103
    .line 2448
    move-object/from16 v0, v17

    #@105
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    #@107
    const/4 v5, 0x7

    #@108
    aget-wide v8, v4, v5

    #@10a
    move-object/from16 v0, v17

    #@10c
    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    #@10e
    .line 2449
    move-object/from16 v0, v17

    #@110
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    #@112
    const/4 v5, 0x7

    #@113
    aget v14, v4, v5

    #@115
    move-object/from16 v4, p0

    #@117
    move-object/from16 v5, p1

    #@119
    .line 2447
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    #@11c
    .line 2450
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@11f
    .line 2451
    const-string/jumbo v4, "          Start time: "

    #@122
    move-object/from16 v0, p1

    #@124
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@127
    .line 2452
    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    #@12a
    move-object/from16 v0, p0

    #@12c
    iget-wide v6, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    #@12e
    invoke-static {v4, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    #@131
    move-result-object v4

    #@132
    move-object/from16 v0, p1

    #@134
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@137
    .line 2453
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@13a
    .line 2454
    const-string/jumbo v4, "  Total elapsed time: "

    #@13d
    move-object/from16 v0, p1

    #@13f
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@142
    .line 2456
    move-object/from16 v0, p0

    #@144
    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    #@146
    if-eqz v4, :cond_6

    #@148
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@14b
    move-result-wide v4

    #@14c
    .line 2457
    :goto_1
    move-object/from16 v0, p0

    #@14e
    iget-wide v6, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    #@150
    .line 2456
    sub-long/2addr v4, v6

    #@151
    .line 2455
    move-object/from16 v0, p1

    #@153
    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@156
    .line 2458
    const/16 v16, 0x1

    #@158
    .line 2459
    .local v16, "partial":Z
    move-object/from16 v0, p0

    #@15a
    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    #@15c
    and-int/lit8 v4, v4, 0x2

    #@15e
    if-eqz v4, :cond_2

    #@160
    .line 2460
    const-string/jumbo v4, " (shutdown)"

    #@163
    move-object/from16 v0, p1

    #@165
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@168
    .line 2461
    const/16 v16, 0x0

    #@16a
    .line 2463
    :cond_2
    move-object/from16 v0, p0

    #@16c
    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    #@16e
    and-int/lit8 v4, v4, 0x4

    #@170
    if-eqz v4, :cond_3

    #@172
    .line 2464
    const-string/jumbo v4, " (sysprops)"

    #@175
    move-object/from16 v0, p1

    #@177
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17a
    .line 2465
    const/16 v16, 0x0

    #@17c
    .line 2467
    :cond_3
    move-object/from16 v0, p0

    #@17e
    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    #@180
    and-int/lit8 v4, v4, 0x1

    #@182
    if-eqz v4, :cond_4

    #@184
    .line 2468
    const-string/jumbo v4, " (complete)"

    #@187
    move-object/from16 v0, p1

    #@189
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18c
    .line 2469
    const/16 v16, 0x0

    #@18e
    .line 2471
    :cond_4
    if-eqz v16, :cond_5

    #@190
    .line 2472
    const-string/jumbo v4, " (partial)"

    #@193
    move-object/from16 v0, p1

    #@195
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@198
    .line 2474
    :cond_5
    const/16 v4, 0x20

    #@19a
    move-object/from16 v0, p1

    #@19c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@19f
    .line 2475
    move-object/from16 v0, p0

    #@1a1
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    #@1a3
    move-object/from16 v0, p1

    #@1a5
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a8
    .line 2476
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@1ab
    .line 2417
    return-void

    #@1ac
    .line 2456
    .end local v16    # "partial":Z
    :cond_6
    move-object/from16 v0, p0

    #@1ae
    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    #@1b0
    goto :goto_1
.end method

.method public evaluateSystemProperties(Z)Z
    .locals 4
    .param p1, "update"    # Z

    #@0
    .prologue
    .line 1381
    const/4 v0, 0x0

    #@1
    .line 1382
    .local v0, "changed":Z
    const-string/jumbo v2, "persist.sys.dalvik.vm.lib.2"

    #@4
    .line 1383
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 1382
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 1384
    .local v1, "runtime":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    #@12
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_0

    #@18
    .line 1385
    const/4 v0, 0x1

    #@19
    .line 1386
    if-eqz p1, :cond_0

    #@1b
    .line 1387
    iput-object v1, p0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    #@1d
    .line 1390
    :cond_0
    return v0
.end method

.method getLong(II)J
    .locals 4
    .param p1, "off"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    .line 1972
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@2
    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    #@4
    shr-int v2, p1, v2

    #@6
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    #@8
    and-int/2addr v2, v3

    #@9
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, [J

    #@f
    .line 1973
    .local v0, "longs":[J
    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    #@11
    shr-int v1, p1, v1

    #@13
    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    #@15
    and-int/2addr v1, v2

    #@16
    add-int/2addr v1, p2

    #@17
    aget-wide v2, v0, v1

    #@19
    return-wide v2
.end method

.method public getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # I

    #@0
    .prologue
    .line 1996
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@2
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/util/SparseArray;

    #@8
    .line 1997
    .local v1, "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    if-nez v1, :cond_0

    #@a
    .line 1998
    new-instance v1, Landroid/util/SparseArray;

    #@c
    .end local v1    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@f
    .line 1999
    .restart local v1    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@11
    invoke-virtual {v2, p1, p2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 2001
    :cond_0
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/internal/app/ProcessStats$PackageState;

    #@1a
    .line 2002
    .local v0, "as":Lcom/android/internal/app/ProcessStats$PackageState;
    if-eqz v0, :cond_1

    #@1c
    .line 2003
    return-object v0

    #@1d
    .line 2005
    :cond_1
    new-instance v0, Lcom/android/internal/app/ProcessStats$PackageState;

    #@1f
    .end local v0    # "as":Lcom/android/internal/app/ProcessStats$PackageState;
    invoke-direct {v0, p1, p2}, Lcom/android/internal/app/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    #@22
    .line 2006
    .restart local v0    # "as":Lcom/android/internal/app/ProcessStats$PackageState;
    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@25
    .line 2007
    return-object v0
.end method

.method public getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;
    .locals 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # I
    .param p4, "processName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2012
    invoke-virtual/range {p0 .. p3}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;

    #@3
    move-result-object v23

    #@4
    .line 2013
    .local v23, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v23

    #@6
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@8
    move-object/from16 v0, p4

    #@a
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v4

    #@e
    check-cast v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@10
    .line 2014
    .local v4, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v4, :cond_0

    #@12
    .line 2015
    return-object v4

    #@13
    .line 2017
    :cond_0
    move-object/from16 v0, p0

    #@15
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@17
    move-object/from16 v0, p4

    #@19
    move/from16 v1, p2

    #@1b
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@21
    .line 2018
    .local v2, "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v2, :cond_1

    #@23
    .line 2019
    new-instance v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@25
    .end local v2    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
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
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    #@32
    .line 2020
    .end local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v2    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    #@34
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@36
    move-object/from16 v0, p4

    #@38
    move/from16 v1, p2

    #@3a
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    #@3d
    .line 2023
    :cond_1
    iget-boolean v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    #@3f
    if-nez v3, :cond_6

    #@41
    .line 2024
    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    #@43
    move-object/from16 v0, p1

    #@45
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v3

    #@49
    if-eqz v3, :cond_2

    #@4b
    iget v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    #@4d
    move/from16 v0, p3

    #@4f
    if-ne v0, v3, :cond_2

    #@51
    .line 2027
    move-object v4, v2

    #@52
    .line 2076
    .restart local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_0
    move-object/from16 v0, v23

    #@54
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@56
    move-object/from16 v0, p4

    #@58
    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    .line 2078
    return-object v4

    #@5c
    .line 2034
    .end local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_2
    const/4 v3, 0x1

    #@5d
    iput-boolean v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    #@5f
    .line 2039
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@62
    move-result-wide v10

    #@63
    .line 2042
    .local v10, "now":J
    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    #@65
    .line 2043
    iget v5, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    #@67
    .line 2042
    move-object/from16 v0, p0

    #@69
    move/from16 v1, p2

    #@6b
    invoke-virtual {v0, v3, v1, v5}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;

    #@6e
    move-result-object v21

    #@6f
    .line 2044
    .local v21, "commonPkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    if-eqz v21, :cond_4

    #@71
    .line 2045
    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    #@73
    invoke-virtual {v2, v3, v10, v11}, Lcom/android/internal/app/ProcessStats$ProcessState;->clone(Ljava/lang/String;J)Lcom/android/internal/app/ProcessStats$ProcessState;

    #@76
    move-result-object v20

    #@77
    .line 2048
    .local v20, "cloned":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v21

    #@79
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@7b
    iget-object v5, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@7d
    move-object/from16 v0, v20

    #@7f
    invoke-virtual {v3, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@82
    .line 2051
    move-object/from16 v0, v21

    #@84
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@86
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@89
    move-result v3

    #@8a
    add-int/lit8 v22, v3, -0x1

    #@8c
    .local v22, "i":I
    :goto_1
    if-ltz v22, :cond_5

    #@8e
    .line 2052
    move-object/from16 v0, v21

    #@90
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@92
    move/from16 v0, v22

    #@94
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@97
    move-result-object v24

    #@98
    check-cast v24, Lcom/android/internal/app/ProcessStats$ServiceState;

    #@9a
    .line 2053
    .local v24, "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v24

    #@9c
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@9e
    if-ne v3, v2, :cond_3

    #@a0
    .line 2056
    move-object/from16 v0, v20

    #@a2
    move-object/from16 v1, v24

    #@a4
    iput-object v0, v1, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@a6
    .line 2051
    :cond_3
    add-int/lit8 v22, v22, -0x1

    #@a8
    goto :goto_1

    #@a9
    .line 2062
    .end local v20    # "cloned":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v22    # "i":I
    .end local v24    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_4
    const-string/jumbo v3, "ProcessStats"

    #@ac
    new-instance v5, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string/jumbo v6, "Cloning proc state: no package state "

    #@b4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v5

    #@b8
    iget-object v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    #@ba
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v5

    #@be
    .line 2063
    const-string/jumbo v6, "/"

    #@c1
    .line 2062
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v5

    #@c5
    move/from16 v0, p2

    #@c7
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v5

    #@cb
    .line 2063
    const-string/jumbo v6, " for proc "

    #@ce
    .line 2062
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v5

    #@d2
    .line 2063
    iget-object v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@d4
    .line 2062
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v5

    #@d8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v5

    #@dc
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@df
    .line 2066
    :cond_5
    new-instance v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@e1
    move-object v5, v2

    #@e2
    move-object/from16 v6, p1

    #@e4
    move/from16 v7, p2

    #@e6
    move/from16 v8, p3

    #@e8
    move-object/from16 v9, p4

    #@ea
    invoke-direct/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    #@ed
    .restart local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    goto/16 :goto_0

    #@ef
    .line 2072
    .end local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v10    # "now":J
    .end local v21    # "commonPkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_6
    new-instance v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@f1
    .line 2073
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@f4
    move-result-wide v18

    #@f5
    move-object v12, v4

    #@f6
    move-object v13, v2

    #@f7
    move-object/from16 v14, p1

    #@f9
    move/from16 v15, p2

    #@fb
    move/from16 v16, p3

    #@fd
    move-object/from16 v17, p4

    #@ff
    .line 2072
    invoke-direct/range {v12 .. v19}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    #@102
    .restart local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    goto/16 :goto_0
.end method

.method public getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2083
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;

    #@3
    move-result-object v6

    #@4
    .line 2084
    .local v6, "as":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v1, v6, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v1, p5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/internal/app/ProcessStats$ServiceState;

    #@c
    .line 2085
    .local v0, "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-eqz v0, :cond_0

    #@e
    .line 2087
    return-object v0

    #@f
    .line 2089
    :cond_0
    if-eqz p4, :cond_1

    #@11
    .line 2090
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/app/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    #@14
    move-result-object v5

    #@15
    .line 2091
    :goto_0
    new-instance v0, Lcom/android/internal/app/ProcessStats$ServiceState;

    #@17
    .end local v0    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object v1, p0

    #@18
    move-object v2, p1

    #@19
    move-object v3, p5

    #@1a
    move-object v4, p4

    #@1b
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats$ServiceState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    #@1e
    .line 2092
    .restart local v0    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    iget-object v1, v6, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@20
    invoke-virtual {v1, p5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 2094
    return-object v0

    #@24
    .line 2090
    :cond_1
    const/4 v5, 0x0

    #@25
    .local v5, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    goto :goto_0
.end method

.method getSysMemUsageValue(II)J
    .locals 4
    .param p1, "state"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    .line 938
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    #@2
    iget v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    #@4
    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    #@7
    move-result v0

    #@8
    .line 939
    .local v0, "idx":I
    if-ltz v0, :cond_0

    #@a
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    #@c
    aget v1, v1, v0

    #@e
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@11
    move-result-wide v2

    #@12
    :goto_0
    return-wide v2

    #@13
    :cond_0
    const-wide/16 v2, 0x0

    #@15
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
    .line 2402
    const-wide/16 v4, 0x0

    #@2
    cmpl-double v4, p4, v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 2403
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
    .line 2404
    .local v2, "mem":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    .line 2405
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    .line 2406
    const-string/jumbo v4, ": "

    #@15
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    .line 2407
    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@1b
    .line 2408
    const-string/jumbo v4, " ("

    #@1e
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21
    .line 2409
    move/from16 v0, p10

    #@23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@26
    .line 2410
    const-string/jumbo v4, " samples)"

    #@29
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    .line 2411
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@2f
    .line 2412
    add-long v4, p8, v2

    #@31
    return-wide v4

    #@32
    .line 2414
    .end local v2    # "mem":J
    :cond_0
    return-wide p8
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 1675
    const/4 v4, 0x1

    #@1
    :try_start_0
    new-array v2, v4, [I

    #@3
    .line 1676
    .local v2, "len":[I
    invoke-static {p1, v2}, Lcom/android/internal/app/ProcessStats;->readFully(Ljava/io/InputStream;[I)[B

    #@6
    move-result-object v3

    #@7
    .line 1677
    .local v3, "raw":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@a
    move-result-object v1

    #@b
    .line 1678
    .local v1, "in":Landroid/os/Parcel;
    const/4 v4, 0x0

    #@c
    aget v4, v2, v4

    #@e
    const/4 v5, 0x0

    #@f
    invoke-virtual {v1, v3, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    #@12
    .line 1679
    const/4 v4, 0x0

    #@13
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    #@16
    .line 1680
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    #@19
    .line 1682
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 1673
    .end local v1    # "in":Landroid/os/Parcel;
    .end local v2    # "len":[I
    .end local v3    # "raw":[B
    :goto_0
    return-void

    #@1d
    .line 1683
    :catch_0
    move-exception v0

    #@1e
    .line 1684
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
    iput-object v4, p0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@34
    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 36
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1689
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@4
    invoke-virtual {v13}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@7
    move-result-object v13

    #@8
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    #@b
    move-result v13

    #@c
    if-gtz v13, :cond_1

    #@e
    .line 1690
    move-object/from16 v0, p0

    #@10
    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@12
    invoke-virtual {v13}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@15
    move-result-object v13

    #@16
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    #@19
    move-result v13

    #@1a
    if-lez v13, :cond_2

    #@1c
    const/16 v26, 0x1

    #@1e
    .line 1691
    .local v26, "hadData":Z
    :goto_0
    if-eqz v26, :cond_0

    #@20
    .line 1692
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    #@23
    .line 1695
    :cond_0
    const-string/jumbo v13, "magic number"

    #@26
    const v14, 0x50535453

    #@29
    move-object/from16 v0, p0

    #@2b
    move-object/from16 v1, p1

    #@2d
    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    #@30
    move-result v13

    #@31
    if-nez v13, :cond_3

    #@33
    .line 1696
    return-void

    #@34
    .line 1689
    .end local v26    # "hadData":Z
    :cond_1
    const/16 v26, 0x1

    #@36
    .restart local v26    # "hadData":Z
    goto :goto_0

    #@37
    .line 1690
    .end local v26    # "hadData":Z
    :cond_2
    const/16 v26, 0x0

    #@39
    .restart local v26    # "hadData":Z
    goto :goto_0

    #@3a
    .line 1698
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v31

    #@3e
    .line 1699
    .local v31, "version":I
    const/16 v13, 0x12

    #@40
    move/from16 v0, v31

    #@42
    if-eq v0, v13, :cond_4

    #@44
    .line 1700
    new-instance v13, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v14, "bad version: "

    #@4c
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v13

    #@50
    move/from16 v0, v31

    #@52
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v13

    #@56
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v13

    #@5a
    move-object/from16 v0, p0

    #@5c
    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@5e
    .line 1701
    return-void

    #@5f
    .line 1703
    :cond_4
    const-string/jumbo v13, "state count"

    #@62
    const/16 v14, 0xe

    #@64
    move-object/from16 v0, p0

    #@66
    move-object/from16 v1, p1

    #@68
    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    #@6b
    move-result v13

    #@6c
    if-nez v13, :cond_5

    #@6e
    .line 1704
    return-void

    #@6f
    .line 1706
    :cond_5
    const-string/jumbo v13, "adj count"

    #@72
    const/16 v14, 0x8

    #@74
    move-object/from16 v0, p0

    #@76
    move-object/from16 v1, p1

    #@78
    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    #@7b
    move-result v13

    #@7c
    if-nez v13, :cond_6

    #@7e
    .line 1707
    return-void

    #@7f
    .line 1709
    :cond_6
    const-string/jumbo v13, "pss count"

    #@82
    const/4 v14, 0x7

    #@83
    move-object/from16 v0, p0

    #@85
    move-object/from16 v1, p1

    #@87
    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    #@8a
    move-result v13

    #@8b
    if-nez v13, :cond_7

    #@8d
    .line 1710
    return-void

    #@8e
    .line 1712
    :cond_7
    const-string/jumbo v13, "sys mem usage count"

    #@91
    const/16 v14, 0x10

    #@93
    move-object/from16 v0, p0

    #@95
    move-object/from16 v1, p1

    #@97
    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    #@9a
    move-result v13

    #@9b
    if-nez v13, :cond_8

    #@9d
    .line 1713
    return-void

    #@9e
    .line 1715
    :cond_8
    const-string/jumbo v13, "longs size"

    #@a1
    const/16 v14, 0x1000

    #@a3
    move-object/from16 v0, p0

    #@a5
    move-object/from16 v1, p1

    #@a7
    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    #@aa
    move-result v13

    #@ab
    if-nez v13, :cond_9

    #@ad
    .line 1716
    return-void

    #@ae
    .line 1719
    :cond_9
    new-instance v13, Ljava/util/ArrayList;

    #@b0
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@b3
    move-object/from16 v0, p0

    #@b5
    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    #@b7
    .line 1721
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@ba
    move-result-wide v34

    #@bb
    move-wide/from16 v0, v34

    #@bd
    move-object/from16 v2, p0

    #@bf
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    #@c1
    .line 1722
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ProcessStats;->buildTimePeriodStartClockStr()V

    #@c4
    .line 1723
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@c7
    move-result-wide v34

    #@c8
    move-wide/from16 v0, v34

    #@ca
    move-object/from16 v2, p0

    #@cc
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    #@ce
    .line 1724
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@d1
    move-result-wide v34

    #@d2
    move-wide/from16 v0, v34

    #@d4
    move-object/from16 v2, p0

    #@d6
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    #@d8
    .line 1725
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@db
    move-result-wide v34

    #@dc
    move-wide/from16 v0, v34

    #@de
    move-object/from16 v2, p0

    #@e0
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartUptime:J

    #@e2
    .line 1726
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@e5
    move-result-wide v34

    #@e6
    move-wide/from16 v0, v34

    #@e8
    move-object/from16 v2, p0

    #@ea
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    #@ec
    .line 1727
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ef
    move-result-object v13

    #@f0
    move-object/from16 v0, p0

    #@f2
    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    #@f4
    .line 1728
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@f7
    move-result v13

    #@f8
    move-object/from16 v0, p0

    #@fa
    iput v13, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    #@fc
    .line 1730
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@ff
    move-result v19

    #@100
    .line 1731
    .local v19, "NLONGS":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@103
    move-result v18

    #@104
    .line 1732
    .local v18, "NEXTLONG":I
    move-object/from16 v0, p0

    #@106
    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@108
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    #@10b
    .line 1733
    const/16 v28, 0x0

    #@10d
    .local v28, "i":I
    :goto_1
    add-int/lit8 v13, v19, -0x1

    #@10f
    move/from16 v0, v28

    #@111
    if-ge v0, v13, :cond_b

    #@113
    .line 1734
    :goto_2
    move-object/from16 v0, p0

    #@115
    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@117
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@11a
    move-result v13

    #@11b
    move/from16 v0, v28

    #@11d
    if-lt v0, v13, :cond_a

    #@11f
    .line 1735
    move-object/from16 v0, p0

    #@121
    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@123
    const/16 v14, 0x1000

    #@125
    new-array v14, v14, [J

    #@127
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12a
    goto :goto_2

    #@12b
    .line 1737
    :cond_a
    move-object/from16 v0, p0

    #@12d
    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@12f
    move/from16 v0, v28

    #@131
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@134
    move-result-object v13

    #@135
    check-cast v13, [J

    #@137
    const/16 v14, 0x1000

    #@139
    move-object/from16 v0, p0

    #@13b
    move-object/from16 v1, p1

    #@13d
    move/from16 v2, v31

    #@13f
    invoke-direct {v0, v1, v2, v13, v14}, Lcom/android/internal/app/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    #@142
    .line 1733
    add-int/lit8 v28, v28, 0x1

    #@144
    goto :goto_1

    #@145
    .line 1739
    :cond_b
    const/16 v13, 0x1000

    #@147
    new-array v0, v13, [J

    #@149
    move-object/from16 v29, v0

    #@14b
    .line 1740
    .local v29, "longs":[J
    move/from16 v0, v18

    #@14d
    move-object/from16 v1, p0

    #@14f
    iput v0, v1, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    #@151
    .line 1741
    move-object/from16 v0, p0

    #@153
    move-object/from16 v1, p1

    #@155
    move/from16 v2, v31

    #@157
    move-object/from16 v3, v29

    #@159
    move/from16 v4, v18

    #@15b
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    #@15e
    .line 1742
    move-object/from16 v0, p0

    #@160
    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@162
    move-object/from16 v0, v29

    #@164
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@167
    .line 1744
    move-object/from16 v0, p0

    #@169
    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    #@16b
    move-object/from16 v0, p0

    #@16d
    iget-object v14, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    #@16f
    array-length v14, v14

    #@170
    move-object/from16 v0, p0

    #@172
    move-object/from16 v1, p1

    #@174
    move/from16 v2, v31

    #@176
    invoke-direct {v0, v1, v2, v13, v14}, Lcom/android/internal/app/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    #@179
    .line 1746
    const-string/jumbo v13, "ProcessStats"

    #@17c
    const-string/jumbo v14, "sys mem usage"

    #@17f
    move-object/from16 v0, p0

    #@181
    move-object/from16 v1, p1

    #@183
    invoke-direct {v0, v1, v13, v14}, Lcom/android/internal/app/ProcessStats;->readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I

    #@186
    move-result-object v13

    #@187
    move-object/from16 v0, p0

    #@189
    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    #@18b
    .line 1747
    move-object/from16 v0, p0

    #@18d
    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    #@18f
    sget-object v14, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    #@191
    if-ne v13, v14, :cond_c

    #@193
    .line 1748
    return-void

    #@194
    .line 1750
    :cond_c
    move-object/from16 v0, p0

    #@196
    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    #@198
    if-eqz v13, :cond_d

    #@19a
    move-object/from16 v0, p0

    #@19c
    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    #@19e
    array-length v13, v13

    #@19f
    :goto_3
    move-object/from16 v0, p0

    #@1a1
    iput v13, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    #@1a3
    .line 1752
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@1a6
    move-result v21

    #@1a7
    .line 1753
    .local v21, "NPROC":I
    if-gez v21, :cond_e

    #@1a9
    .line 1754
    new-instance v13, Ljava/lang/StringBuilder;

    #@1ab
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@1ae
    const-string/jumbo v14, "bad process count: "

    #@1b1
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v13

    #@1b5
    move/from16 v0, v21

    #@1b7
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v13

    #@1bb
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1be
    move-result-object v13

    #@1bf
    move-object/from16 v0, p0

    #@1c1
    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@1c3
    .line 1755
    return-void

    #@1c4
    .line 1750
    .end local v21    # "NPROC":I
    :cond_d
    const/4 v13, 0x0

    #@1c5
    goto :goto_3

    #@1c6
    .line 1757
    .restart local v21    # "NPROC":I
    :cond_e
    if-lez v21, :cond_16

    #@1c8
    .line 1758
    add-int/lit8 v21, v21, -0x1

    #@1ca
    .line 1759
    move-object/from16 v0, p0

    #@1cc
    move-object/from16 v1, p1

    #@1ce
    move/from16 v2, v31

    #@1d0
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    #@1d3
    move-result-object v11

    #@1d4
    .line 1760
    .local v11, "procName":Ljava/lang/String;
    if-nez v11, :cond_f

    #@1d6
    .line 1761
    const-string/jumbo v13, "bad process name"

    #@1d9
    move-object/from16 v0, p0

    #@1db
    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@1dd
    .line 1762
    return-void

    #@1de
    .line 1764
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@1e1
    move-result v24

    #@1e2
    .line 1765
    .local v24, "NUID":I
    if-gez v24, :cond_11

    #@1e4
    .line 1766
    new-instance v13, Ljava/lang/StringBuilder;

    #@1e6
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@1e9
    const-string/jumbo v14, "bad uid count: "

    #@1ec
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v13

    #@1f0
    move/from16 v0, v24

    #@1f2
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object v13

    #@1f6
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f9
    move-result-object v13

    #@1fa
    move-object/from16 v0, p0

    #@1fc
    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@1fe
    .line 1767
    return-void

    #@1ff
    .line 1795
    .local v8, "pkgName":Ljava/lang/String;
    .local v9, "uid":I
    .local v10, "vers":I
    :cond_10
    move-object/from16 v0, p0

    #@201
    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@203
    invoke-virtual {v13, v11, v9, v6}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    #@206
    .line 1769
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "uid":I
    .end local v10    # "vers":I
    :cond_11
    if-lez v24, :cond_e

    #@208
    .line 1770
    add-int/lit8 v24, v24, -0x1

    #@20a
    .line 1771
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@20d
    move-result v9

    #@20e
    .line 1772
    .restart local v9    # "uid":I
    if-gez v9, :cond_12

    #@210
    .line 1773
    new-instance v13, Ljava/lang/StringBuilder;

    #@212
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@215
    const-string/jumbo v14, "bad uid: "

    #@218
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21b
    move-result-object v13

    #@21c
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21f
    move-result-object v13

    #@220
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@223
    move-result-object v13

    #@224
    move-object/from16 v0, p0

    #@226
    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@228
    .line 1774
    return-void

    #@229
    .line 1776
    :cond_12
    move-object/from16 v0, p0

    #@22b
    move-object/from16 v1, p1

    #@22d
    move/from16 v2, v31

    #@22f
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    #@232
    move-result-object v8

    #@233
    .line 1777
    .restart local v8    # "pkgName":Ljava/lang/String;
    if-nez v8, :cond_13

    #@235
    .line 1778
    const-string/jumbo v13, "bad process package name"

    #@238
    move-object/from16 v0, p0

    #@23a
    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@23c
    .line 1779
    return-void

    #@23d
    .line 1781
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@240
    move-result v10

    #@241
    .line 1782
    .restart local v10    # "vers":I
    if-eqz v26, :cond_14

    #@243
    move-object/from16 v0, p0

    #@245
    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@247
    invoke-virtual {v13, v11, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@24a
    move-result-object v6

    #@24b
    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@24d
    .line 1783
    :goto_4
    if-eqz v6, :cond_15

    #@24f
    .line 1784
    const/4 v13, 0x0

    #@250
    move-object/from16 v0, p1

    #@252
    invoke-virtual {v6, v0, v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    #@255
    move-result v13

    #@256
    if-nez v13, :cond_10

    #@258
    .line 1785
    return-void

    #@259
    .line 1782
    :cond_14
    const/4 v6, 0x0

    #@25a
    .local v6, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    goto :goto_4

    #@25b
    .line 1788
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_15
    new-instance v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@25d
    move-object/from16 v7, p0

    #@25f
    invoke-direct/range {v6 .. v11}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    #@262
    .line 1789
    .local v6, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    const/4 v13, 0x1

    #@263
    move-object/from16 v0, p1

    #@265
    invoke-virtual {v6, v0, v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    #@268
    move-result v13

    #@269
    if-nez v13, :cond_10

    #@26b
    .line 1790
    return-void

    #@26c
    .line 1801
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "uid":I
    .end local v10    # "vers":I
    .end local v11    # "procName":Ljava/lang/String;
    .end local v24    # "NUID":I
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@26f
    move-result v20

    #@270
    .line 1802
    .local v20, "NPKG":I
    if-gez v20, :cond_17

    #@272
    .line 1803
    new-instance v13, Ljava/lang/StringBuilder;

    #@274
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@277
    const-string/jumbo v14, "bad package count: "

    #@27a
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27d
    move-result-object v13

    #@27e
    move/from16 v0, v20

    #@280
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@283
    move-result-object v13

    #@284
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@287
    move-result-object v13

    #@288
    move-object/from16 v0, p0

    #@28a
    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@28c
    .line 1804
    return-void

    #@28d
    .line 1806
    :cond_17
    if-lez v20, :cond_2b

    #@28f
    .line 1807
    add-int/lit8 v20, v20, -0x1

    #@291
    .line 1808
    move-object/from16 v0, p0

    #@293
    move-object/from16 v1, p1

    #@295
    move/from16 v2, v31

    #@297
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    #@29a
    move-result-object v8

    #@29b
    .line 1809
    .restart local v8    # "pkgName":Ljava/lang/String;
    if-nez v8, :cond_18

    #@29d
    .line 1810
    const-string/jumbo v13, "bad package name"

    #@2a0
    move-object/from16 v0, p0

    #@2a2
    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@2a4
    .line 1811
    return-void

    #@2a5
    .line 1813
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@2a8
    move-result v24

    #@2a9
    .line 1814
    .restart local v24    # "NUID":I
    if-gez v24, :cond_19

    #@2ab
    .line 1815
    new-instance v13, Ljava/lang/StringBuilder;

    #@2ad
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@2b0
    const-string/jumbo v14, "bad uid count: "

    #@2b3
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b6
    move-result-object v13

    #@2b7
    move/from16 v0, v24

    #@2b9
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2bc
    move-result-object v13

    #@2bd
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c0
    move-result-object v13

    #@2c1
    move-object/from16 v0, p0

    #@2c3
    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@2c5
    .line 1816
    return-void

    #@2c6
    .line 1818
    :cond_19
    if-lez v24, :cond_17

    #@2c8
    .line 1819
    add-int/lit8 v24, v24, -0x1

    #@2ca
    .line 1820
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@2cd
    move-result v9

    #@2ce
    .line 1821
    .restart local v9    # "uid":I
    if-gez v9, :cond_1a

    #@2d0
    .line 1822
    new-instance v13, Ljava/lang/StringBuilder;

    #@2d2
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@2d5
    const-string/jumbo v14, "bad uid: "

    #@2d8
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2db
    move-result-object v13

    #@2dc
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2df
    move-result-object v13

    #@2e0
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e3
    move-result-object v13

    #@2e4
    move-object/from16 v0, p0

    #@2e6
    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@2e8
    .line 1823
    return-void

    #@2e9
    .line 1825
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@2ec
    move-result v25

    #@2ed
    .line 1826
    .local v25, "NVERS":I
    if-gez v25, :cond_1b

    #@2ef
    .line 1827
    new-instance v13, Ljava/lang/StringBuilder;

    #@2f1
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@2f4
    const-string/jumbo v14, "bad versions count: "

    #@2f7
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fa
    move-result-object v13

    #@2fb
    move/from16 v0, v25

    #@2fd
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@300
    move-result-object v13

    #@301
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@304
    move-result-object v13

    #@305
    move-object/from16 v0, p0

    #@307
    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@309
    .line 1828
    return-void

    #@30a
    .line 1830
    :cond_1b
    if-lez v25, :cond_19

    #@30c
    .line 1831
    add-int/lit8 v25, v25, -0x1

    #@30e
    .line 1832
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@311
    move-result v10

    #@312
    .line 1833
    .restart local v10    # "vers":I
    new-instance v30, Lcom/android/internal/app/ProcessStats$PackageState;

    #@314
    move-object/from16 v0, v30

    #@316
    invoke-direct {v0, v8, v9}, Lcom/android/internal/app/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    #@319
    .line 1834
    .local v30, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, p0

    #@31b
    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@31d
    invoke-virtual {v13, v8, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@320
    move-result-object v32

    #@321
    check-cast v32, Landroid/util/SparseArray;

    #@323
    .line 1835
    .local v32, "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    if-nez v32, :cond_1c

    #@325
    .line 1836
    new-instance v32, Landroid/util/SparseArray;

    #@327
    .end local v32    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-direct/range {v32 .. v32}, Landroid/util/SparseArray;-><init>()V

    #@32a
    .line 1837
    .restart local v32    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    move-object/from16 v0, p0

    #@32c
    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@32e
    move-object/from16 v0, v32

    #@330
    invoke-virtual {v13, v8, v9, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    #@333
    .line 1839
    :cond_1c
    move-object/from16 v0, v32

    #@335
    move-object/from16 v1, v30

    #@337
    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@33a
    .line 1840
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@33d
    move-result v22

    #@33e
    .line 1841
    .local v22, "NPROCS":I
    if-gez v22, :cond_1e

    #@340
    .line 1842
    new-instance v13, Ljava/lang/StringBuilder;

    #@342
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@345
    const-string/jumbo v14, "bad package process count: "

    #@348
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34b
    move-result-object v13

    #@34c
    move/from16 v0, v22

    #@34e
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@351
    move-result-object v13

    #@352
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@355
    move-result-object v13

    #@356
    move-object/from16 v0, p0

    #@358
    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@35a
    .line 1843
    return-void

    #@35b
    .line 1881
    .local v7, "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v11    # "procName":Ljava/lang/String;
    .local v27, "hasProc":I
    :cond_1d
    move-object/from16 v0, v30

    #@35d
    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@35f
    invoke-virtual {v13, v11, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@362
    .line 1845
    .end local v7    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v11    # "procName":Ljava/lang/String;
    .end local v27    # "hasProc":I
    :cond_1e
    :goto_5
    if-lez v22, :cond_24

    #@364
    .line 1846
    add-int/lit8 v22, v22, -0x1

    #@366
    .line 1847
    move-object/from16 v0, p0

    #@368
    move-object/from16 v1, p1

    #@36a
    move/from16 v2, v31

    #@36c
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    #@36f
    move-result-object v11

    #@370
    .line 1848
    .restart local v11    # "procName":Ljava/lang/String;
    if-nez v11, :cond_1f

    #@372
    .line 1849
    const-string/jumbo v13, "bad package process name"

    #@375
    move-object/from16 v0, p0

    #@377
    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@379
    .line 1850
    return-void

    #@37a
    .line 1852
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@37d
    move-result v27

    #@37e
    .line 1855
    .restart local v27    # "hasProc":I
    move-object/from16 v0, p0

    #@380
    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@382
    invoke-virtual {v13, v11, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@385
    move-result-object v7

    #@386
    check-cast v7, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@388
    .line 1858
    .restart local v7    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v7, :cond_20

    #@38a
    .line 1859
    new-instance v13, Ljava/lang/StringBuilder;

    #@38c
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@38f
    const-string/jumbo v14, "no common proc: "

    #@392
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@395
    move-result-object v13

    #@396
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@399
    move-result-object v13

    #@39a
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39d
    move-result-object v13

    #@39e
    move-object/from16 v0, p0

    #@3a0
    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@3a2
    .line 1860
    return-void

    #@3a3
    .line 1862
    :cond_20
    if-eqz v27, :cond_23

    #@3a5
    .line 1867
    if-eqz v26, :cond_21

    #@3a7
    move-object/from16 v0, v30

    #@3a9
    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@3ab
    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3ae
    move-result-object v6

    #@3af
    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@3b1
    .line 1868
    :goto_6
    if-eqz v6, :cond_22

    #@3b3
    .line 1869
    const/4 v13, 0x0

    #@3b4
    move-object/from16 v0, p1

    #@3b6
    invoke-virtual {v6, v0, v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    #@3b9
    move-result v13

    #@3ba
    if-nez v13, :cond_1d

    #@3bc
    .line 1870
    return-void

    #@3bd
    .line 1867
    :cond_21
    const/4 v6, 0x0

    #@3be
    .local v6, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    goto :goto_6

    #@3bf
    .line 1873
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_22
    new-instance v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@3c1
    .line 1874
    const-wide/16 v12, 0x0

    #@3c3
    .line 1873
    invoke-direct/range {v6 .. v13}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    #@3c6
    .line 1875
    .local v6, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    const/4 v13, 0x1

    #@3c7
    move-object/from16 v0, p1

    #@3c9
    invoke-virtual {v6, v0, v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    #@3cc
    move-result v13

    #@3cd
    if-nez v13, :cond_1d

    #@3cf
    .line 1876
    return-void

    #@3d0
    .line 1885
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_23
    move-object/from16 v0, v30

    #@3d2
    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@3d4
    invoke-virtual {v13, v11, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d7
    goto :goto_5

    #@3d8
    .line 1888
    .end local v7    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v11    # "procName":Ljava/lang/String;
    .end local v27    # "hasProc":I
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3db
    move-result v23

    #@3dc
    .line 1889
    .local v23, "NSRVS":I
    if-gez v23, :cond_26

    #@3de
    .line 1890
    new-instance v13, Ljava/lang/StringBuilder;

    #@3e0
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@3e3
    const-string/jumbo v14, "bad package service count: "

    #@3e6
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e9
    move-result-object v13

    #@3ea
    move/from16 v0, v23

    #@3ec
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3ef
    move-result-object v13

    #@3f0
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f3
    move-result-object v13

    #@3f4
    move-object/from16 v0, p0

    #@3f6
    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@3f8
    .line 1891
    return-void

    #@3f9
    .line 1910
    .local v15, "serviceName":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, v30

    #@3fb
    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@3fd
    invoke-virtual {v13, v15, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@400
    .line 1893
    .end local v15    # "serviceName":Ljava/lang/String;
    :cond_26
    if-lez v23, :cond_1b

    #@402
    .line 1894
    add-int/lit8 v23, v23, -0x1

    #@404
    .line 1895
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@407
    move-result-object v15

    #@408
    .line 1896
    .restart local v15    # "serviceName":Ljava/lang/String;
    if-nez v15, :cond_27

    #@40a
    .line 1897
    const-string/jumbo v13, "bad package service name"

    #@40d
    move-object/from16 v0, p0

    #@40f
    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@411
    .line 1898
    return-void

    #@412
    .line 1900
    :cond_27
    const/16 v13, 0x9

    #@414
    move/from16 v0, v31

    #@416
    if-le v0, v13, :cond_29

    #@418
    move-object/from16 v0, p0

    #@41a
    move-object/from16 v1, p1

    #@41c
    move/from16 v2, v31

    #@41e
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    #@421
    move-result-object v16

    #@422
    .line 1901
    :goto_7
    if-eqz v26, :cond_2a

    #@424
    move-object/from16 v0, v30

    #@426
    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@428
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@42b
    move-result-object v12

    #@42c
    check-cast v12, Lcom/android/internal/app/ProcessStats$ServiceState;

    #@42e
    .line 1902
    :goto_8
    if-nez v12, :cond_28

    #@430
    .line 1903
    new-instance v12, Lcom/android/internal/app/ProcessStats$ServiceState;

    #@432
    const/16 v17, 0x0

    #@434
    move-object/from16 v13, p0

    #@436
    move-object v14, v8

    #@437
    invoke-direct/range {v12 .. v17}, Lcom/android/internal/app/ProcessStats$ServiceState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    #@43a
    .line 1905
    :cond_28
    move-object/from16 v0, p1

    #@43c
    invoke-virtual {v12, v0}, Lcom/android/internal/app/ProcessStats$ServiceState;->readFromParcel(Landroid/os/Parcel;)Z

    #@43f
    move-result v13

    #@440
    if-nez v13, :cond_25

    #@442
    .line 1906
    return-void

    #@443
    .line 1900
    :cond_29
    const/16 v16, 0x0

    #@445
    .local v16, "processName":Ljava/lang/String;
    goto :goto_7

    #@446
    .line 1901
    .end local v16    # "processName":Ljava/lang/String;
    :cond_2a
    const/4 v12, 0x0

    #@447
    .local v12, "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    goto :goto_8

    #@448
    .line 1916
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "uid":I
    .end local v10    # "vers":I
    .end local v12    # "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v15    # "serviceName":Ljava/lang/String;
    .end local v22    # "NPROCS":I
    .end local v23    # "NSRVS":I
    .end local v24    # "NUID":I
    .end local v25    # "NVERS":I
    .end local v30    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v32    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_2b
    const/4 v13, 0x0

    #@449
    move-object/from16 v0, p0

    #@44b
    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    #@44d
    .line 1688
    return-void
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 1266
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats;->resetCommon()V

    #@3
    .line 1267
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@5
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    #@c
    .line 1268
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@e
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    #@15
    .line 1269
    const/4 v0, -0x1

    #@16
    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    #@18
    .line 1270
    const-wide/16 v0, 0x0

    #@1a
    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    #@1c
    .line 1264
    return-void
.end method

.method public resetSafely()V
    .locals 19

    #@0
    .prologue
    .line 1276
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ProcessStats;->resetCommon()V

    #@3
    .line 1279
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6
    move-result-wide v8

    #@7
    .line 1280
    .local v8, "now":J
    move-object/from16 v0, p0

    #@9
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@b
    move-object/from16 v17, v0

    #@d
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@10
    move-result-object v11

    #@11
    .line 1281
    .local v11, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
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
    .line 1282
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1c
    move-result-object v15

    #@1d
    check-cast v15, Landroid/util/SparseArray;

    #@1f
    .line 1283
    .local v15, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
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
    .line 1284
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2a
    move-result-object v17

    #@2b
    check-cast v17, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@2d
    const/16 v18, 0x0

    #@2f
    move/from16 v0, v18

    #@31
    move-object/from16 v1, v17

    #@33
    iput v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpNumInUse:I

    #@35
    .line 1283
    add-int/lit8 v5, v5, -0x1

    #@37
    goto :goto_1

    #@38
    .line 1281
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@3a
    goto :goto_0

    #@3b
    .line 1290
    .end local v5    # "iu":I
    .end local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_1
    move-object/from16 v0, p0

    #@3d
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@3f
    move-object/from16 v17, v0

    #@41
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@44
    move-result-object v7

    #@45
    .line 1291
    .local v7, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    #@48
    move-result v17

    #@49
    add-int/lit8 v2, v17, -0x1

    #@4b
    :goto_2
    if-ltz v2, :cond_b

    #@4d
    .line 1292
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@50
    move-result-object v14

    #@51
    check-cast v14, Landroid/util/SparseArray;

    #@53
    .line 1293
    .local v14, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
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
    .line 1294
    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@5e
    move-result-object v16

    #@5f
    check-cast v16, Landroid/util/SparseArray;

    #@61
    .line 1295
    .local v16, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
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
    .line 1296
    move-object/from16 v0, v16

    #@6b
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@6e
    move-result-object v10

    #@6f
    check-cast v10, Lcom/android/internal/app/ProcessStats$PackageState;

    #@71
    .line 1297
    .local v10, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

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
    .line 1298
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@7f
    move-object/from16 v17, v0

    #@81
    move-object/from16 v0, v17

    #@83
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@86
    move-result-object v12

    #@87
    check-cast v12, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@89
    .line 1299
    .local v12, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {v12}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    #@8c
    move-result v17

    #@8d
    if-eqz v17, :cond_2

    #@8f
    .line 1300
    invoke-virtual {v12, v8, v9}, Lcom/android/internal/app/ProcessStats$ProcessState;->resetSafely(J)V

    #@92
    .line 1301
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@94
    move-object/from16 v17, v0

    #@96
    move-object/from16 v0, v17

    #@98
    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpNumInUse:I

    #@9a
    move/from16 v18, v0

    #@9c
    add-int/lit8 v18, v18, 0x1

    #@9e
    move/from16 v0, v18

    #@a0
    move-object/from16 v1, v17

    #@a2
    iput v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpNumInUse:I

    #@a4
    .line 1302
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@a6
    move-object/from16 v17, v0

    #@a8
    move-object/from16 v0, v17

    #@aa
    iput-object v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpFoundSubProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@ac
    .line 1297
    :goto_6
    add-int/lit8 v3, v3, -0x1

    #@ae
    goto :goto_5

    #@af
    .line 1304
    :cond_2
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@b1
    move-object/from16 v17, v0

    #@b3
    move-object/from16 v0, v17

    #@b5
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@b8
    move-result-object v17

    #@b9
    check-cast v17, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@bb
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeDead()V

    #@be
    .line 1305
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@c0
    move-object/from16 v17, v0

    #@c2
    move-object/from16 v0, v17

    #@c4
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@c7
    goto :goto_6

    #@c8
    .line 1308
    .end local v12    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_3
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

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
    .line 1309
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@d6
    move-object/from16 v17, v0

    #@d8
    move-object/from16 v0, v17

    #@da
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@dd
    move-result-object v13

    #@de
    check-cast v13, Lcom/android/internal/app/ProcessStats$ServiceState;

    #@e0
    .line 1310
    .local v13, "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    invoke-virtual {v13}, Lcom/android/internal/app/ProcessStats$ServiceState;->isInUse()Z

    #@e3
    move-result v17

    #@e4
    if-eqz v17, :cond_4

    #@e6
    .line 1311
    invoke-virtual {v13, v8, v9}, Lcom/android/internal/app/ProcessStats$ServiceState;->resetSafely(J)V

    #@e9
    .line 1308
    :goto_8
    add-int/lit8 v4, v4, -0x1

    #@eb
    goto :goto_7

    #@ec
    .line 1313
    :cond_4
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@ee
    move-object/from16 v17, v0

    #@f0
    move-object/from16 v0, v17

    #@f2
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@f5
    goto :goto_8

    #@f6
    .line 1316
    .end local v13    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_5
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@f8
    move-object/from16 v17, v0

    #@fa
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    #@fd
    move-result v17

    #@fe
    if-gtz v17, :cond_6

    #@100
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@102
    move-object/from16 v17, v0

    #@104
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    #@107
    move-result v17

    #@108
    if-gtz v17, :cond_6

    #@10a
    .line 1317
    move-object/from16 v0, v16

    #@10c
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->removeAt(I)V

    #@10f
    .line 1295
    :cond_6
    add-int/lit8 v6, v6, -0x1

    #@111
    goto/16 :goto_4

    #@113
    .line 1320
    .end local v3    # "iproc":I
    .end local v4    # "isvc":I
    .end local v10    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    #@116
    move-result v17

    #@117
    if-gtz v17, :cond_8

    #@119
    .line 1321
    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->removeAt(I)V

    #@11c
    .line 1293
    :cond_8
    add-int/lit8 v5, v5, -0x1

    #@11e
    goto/16 :goto_3

    #@120
    .line 1324
    .end local v6    # "iv":I
    .end local v16    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_9
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    #@123
    move-result v17

    #@124
    if-gtz v17, :cond_a

    #@126
    .line 1325
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@129
    .line 1291
    :cond_a
    add-int/lit8 v2, v2, -0x1

    #@12b
    goto/16 :goto_2

    #@12d
    .line 1330
    .end local v5    # "iu":I
    .end local v14    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
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
    .line 1331
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@138
    move-result-object v15

    #@139
    check-cast v15, Landroid/util/SparseArray;

    #@13b
    .line 1332
    .restart local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
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
    .line 1333
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@146
    move-result-object v12

    #@147
    check-cast v12, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@149
    .line 1334
    .restart local v12    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {v12}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    #@14c
    move-result v17

    #@14d
    if-nez v17, :cond_c

    #@14f
    iget v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpNumInUse:I

    #@151
    move/from16 v17, v0

    #@153
    if-lez v17, :cond_e

    #@155
    .line 1341
    :cond_c
    iget-boolean v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    #@157
    move/from16 v17, v0

    #@159
    if-nez v17, :cond_d

    #@15b
    iget-boolean v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    #@15d
    move/from16 v17, v0

    #@15f
    if-eqz v17, :cond_d

    #@161
    iget v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpNumInUse:I

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
    .line 1343
    iget-object v12, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpFoundSubProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@16f
    .line 1344
    iput-object v12, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@171
    .line 1345
    invoke-virtual {v15, v5, v12}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    #@174
    .line 1332
    :goto_b
    add-int/lit8 v5, v5, -0x1

    #@176
    goto :goto_a

    #@177
    .line 1347
    :cond_d
    invoke-virtual {v12, v8, v9}, Lcom/android/internal/app/ProcessStats$ProcessState;->resetSafely(J)V

    #@17a
    goto :goto_b

    #@17b
    .line 1350
    :cond_e
    invoke-virtual {v12}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeDead()V

    #@17e
    .line 1351
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->removeAt(I)V

    #@181
    goto :goto_b

    #@182
    .line 1354
    .end local v12    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_f
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    #@185
    move-result v17

    #@186
    if-gtz v17, :cond_10

    #@188
    .line 1355
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@18b
    .line 1330
    :cond_10
    add-int/lit8 v2, v2, -0x1

    #@18d
    goto :goto_9

    #@18e
    .line 1359
    .end local v5    # "iu":I
    .end local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_11
    move-object/from16 v0, p0

    #@190
    iput-wide v8, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    #@192
    .line 1274
    return-void
.end method

.method setLong(IIJ)V
    .locals 5
    .param p1, "off"    # I
    .param p2, "index"    # I
    .param p3, "value"    # J

    #@0
    .prologue
    .line 1967
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@2
    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    #@4
    shr-int v2, p1, v2

    #@6
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    #@8
    and-int/2addr v2, v3

    #@9
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, [J

    #@f
    .line 1968
    .local v0, "longs":[J
    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    #@11
    shr-int v1, p1, v1

    #@13
    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    #@15
    and-int/2addr v1, v2

    #@16
    add-int/2addr v1, p2

    #@17
    aput-wide p3, v0, v1

    #@19
    .line 1966
    return-void
.end method

.method validateLongOffset(I)Z
    .locals 5
    .param p1, "off"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1945
    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    #@3
    shr-int v2, p1, v2

    #@5
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    #@7
    and-int v0, v2, v3

    #@9
    .line 1946
    .local v0, "arr":I
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v2

    #@f
    if-lt v0, v2, :cond_0

    #@11
    .line 1947
    return v4

    #@12
    .line 1949
    :cond_0
    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    #@14
    shr-int v2, p1, v2

    #@16
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    #@18
    and-int v1, v2, v3

    #@1a
    .line 1950
    .local v1, "idx":I
    const/16 v2, 0x1000

    #@1c
    if-lt v1, v2, :cond_1

    #@1e
    .line 1951
    return v4

    #@1f
    .line 1955
    :cond_1
    const/4 v2, 0x1

    #@20
    return v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1502
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    #@7
    .line 1501
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;JI)V
    .locals 32
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 1507
    const v26, 0x50535453

    #@3
    move-object/from16 v0, p1

    #@5
    move/from16 v1, v26

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 1508
    const/16 v26, 0x12

    #@c
    move-object/from16 v0, p1

    #@e
    move/from16 v1, v26

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1509
    const/16 v26, 0xe

    #@15
    move-object/from16 v0, p1

    #@17
    move/from16 v1, v26

    #@19
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 1510
    const/16 v26, 0x8

    #@1e
    move-object/from16 v0, p1

    #@20
    move/from16 v1, v26

    #@22
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 1511
    const/16 v26, 0x7

    #@27
    move-object/from16 v0, p1

    #@29
    move/from16 v1, v26

    #@2b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 1512
    const/16 v26, 0x10

    #@30
    move-object/from16 v0, p1

    #@32
    move/from16 v1, v26

    #@34
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 1513
    const/16 v26, 0x1000

    #@39
    move-object/from16 v0, p1

    #@3b
    move/from16 v1, v26

    #@3d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@40
    .line 1515
    new-instance v26, Landroid/util/ArrayMap;

    #@42
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@46
    move-object/from16 v27, v0

    #@48
    move-object/from16 v0, v27

    #@4a
    iget-object v0, v0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    #@4c
    move-object/from16 v27, v0

    #@4e
    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    #@51
    move-result v27

    #@52
    invoke-direct/range {v26 .. v27}, Landroid/util/ArrayMap;-><init>(I)V

    #@55
    move-object/from16 v0, v26

    #@57
    move-object/from16 v1, p0

    #@59
    iput-object v0, v1, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    #@5b
    .line 1518
    move-object/from16 v0, p0

    #@5d
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    #@5f
    move-object/from16 v26, v0

    #@61
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@64
    move-result-object v21

    #@65
    .line 1519
    .local v21, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->size()I

    #@68
    move-result v5

    #@69
    .line 1520
    .local v5, "NPROC":I
    const/4 v12, 0x0

    #@6a
    .local v12, "ip":I
    :goto_0
    if-ge v12, v5, :cond_1

    #@6c
    .line 1521
    move-object/from16 v0, v21

    #@6e
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@71
    move-result-object v24

    #@72
    check-cast v24, Landroid/util/SparseArray;

    #@74
    .line 1522
    .local v24, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    #@77
    move-result v8

    #@78
    .line 1523
    .local v8, "NUID":I
    const/4 v15, 0x0

    #@79
    .local v15, "iu":I
    :goto_1
    if-ge v15, v8, :cond_0

    #@7b
    .line 1524
    move-object/from16 v0, v24

    #@7d
    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@80
    move-result-object v26

    #@81
    check-cast v26, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@83
    move-object/from16 v0, v26

    #@85
    move-wide/from16 v1, p2

    #@87
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->commitStateTime(J)V

    #@8a
    .line 1523
    add-int/lit8 v15, v15, 0x1

    #@8c
    goto :goto_1

    #@8d
    .line 1520
    :cond_0
    add-int/lit8 v12, v12, 0x1

    #@8f
    goto :goto_0

    #@90
    .line 1527
    .end local v8    # "NUID":I
    .end local v15    # "iu":I
    .end local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_1
    move-object/from16 v0, p0

    #@92
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@94
    move-object/from16 v26, v0

    #@96
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@99
    move-result-object v18

    #@9a
    .line 1528
    .local v18, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->size()I

    #@9d
    move-result v4

    #@9e
    .line 1529
    .local v4, "NPKG":I
    const/4 v12, 0x0

    #@9f
    :goto_2
    if-ge v12, v4, :cond_7

    #@a1
    .line 1530
    move-object/from16 v0, v18

    #@a3
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@a6
    move-result-object v23

    #@a7
    check-cast v23, Landroid/util/SparseArray;

    #@a9
    .line 1531
    .local v23, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    #@ac
    move-result v8

    #@ad
    .line 1532
    .restart local v8    # "NUID":I
    const/4 v15, 0x0

    #@ae
    .restart local v15    # "iu":I
    :goto_3
    if-ge v15, v8, :cond_6

    #@b0
    .line 1533
    move-object/from16 v0, v23

    #@b2
    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@b5
    move-result-object v25

    #@b6
    check-cast v25, Landroid/util/SparseArray;

    #@b8
    .line 1534
    .local v25, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    #@bb
    move-result v9

    #@bc
    .line 1535
    .local v9, "NVERS":I
    const/16 v16, 0x0

    #@be
    .local v16, "iv":I
    :goto_4
    move/from16 v0, v16

    #@c0
    if-ge v0, v9, :cond_5

    #@c2
    .line 1536
    move-object/from16 v0, v25

    #@c4
    move/from16 v1, v16

    #@c6
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@c9
    move-result-object v19

    #@ca
    check-cast v19, Lcom/android/internal/app/ProcessStats$PackageState;

    #@cc
    .line 1537
    .local v19, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v19

    #@ce
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@d0
    move-object/from16 v26, v0

    #@d2
    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    #@d5
    move-result v6

    #@d6
    .line 1538
    .local v6, "NPROCS":I
    const/4 v13, 0x0

    #@d7
    .local v13, "iproc":I
    :goto_5
    if-ge v13, v6, :cond_3

    #@d9
    .line 1539
    move-object/from16 v0, v19

    #@db
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@dd
    move-object/from16 v26, v0

    #@df
    move-object/from16 v0, v26

    #@e1
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@e4
    move-result-object v20

    #@e5
    check-cast v20, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@e7
    .line 1540
    .local v20, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v20

    #@e9
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@eb
    move-object/from16 v26, v0

    #@ed
    move-object/from16 v0, v26

    #@ef
    move-object/from16 v1, v20

    #@f1
    if-eq v0, v1, :cond_2

    #@f3
    .line 1541
    move-object/from16 v0, v20

    #@f5
    move-wide/from16 v1, p2

    #@f7
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->commitStateTime(J)V

    #@fa
    .line 1538
    :cond_2
    add-int/lit8 v13, v13, 0x1

    #@fc
    goto :goto_5

    #@fd
    .line 1544
    .end local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_3
    move-object/from16 v0, v19

    #@ff
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@101
    move-object/from16 v26, v0

    #@103
    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    #@106
    move-result v7

    #@107
    .line 1545
    .local v7, "NSRVS":I
    const/4 v14, 0x0

    #@108
    .local v14, "isvc":I
    :goto_6
    if-ge v14, v7, :cond_4

    #@10a
    .line 1546
    move-object/from16 v0, v19

    #@10c
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@10e
    move-object/from16 v26, v0

    #@110
    move-object/from16 v0, v26

    #@112
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@115
    move-result-object v26

    #@116
    check-cast v26, Lcom/android/internal/app/ProcessStats$ServiceState;

    #@118
    move-object/from16 v0, v26

    #@11a
    move-wide/from16 v1, p2

    #@11c
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->commitStateTime(J)V

    #@11f
    .line 1545
    add-int/lit8 v14, v14, 0x1

    #@121
    goto :goto_6

    #@122
    .line 1535
    :cond_4
    add-int/lit8 v16, v16, 0x1

    #@124
    goto :goto_4

    #@125
    .line 1532
    .end local v6    # "NPROCS":I
    .end local v7    # "NSRVS":I
    .end local v13    # "iproc":I
    .end local v14    # "isvc":I
    .end local v19    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_5
    add-int/lit8 v15, v15, 0x1

    #@127
    goto :goto_3

    #@128
    .line 1529
    .end local v9    # "NVERS":I
    .end local v16    # "iv":I
    .end local v25    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_6
    add-int/lit8 v12, v12, 0x1

    #@12a
    goto/16 :goto_2

    #@12c
    .line 1552
    .end local v8    # "NUID":I
    .end local v15    # "iu":I
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_7
    move-object/from16 v0, p0

    #@12e
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    #@130
    move-wide/from16 v26, v0

    #@132
    move-object/from16 v0, p1

    #@134
    move-wide/from16 v1, v26

    #@136
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@139
    .line 1553
    move-object/from16 v0, p0

    #@13b
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    #@13d
    move-wide/from16 v26, v0

    #@13f
    move-object/from16 v0, p1

    #@141
    move-wide/from16 v1, v26

    #@143
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@146
    .line 1554
    move-object/from16 v0, p0

    #@148
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    #@14a
    move-wide/from16 v26, v0

    #@14c
    move-object/from16 v0, p1

    #@14e
    move-wide/from16 v1, v26

    #@150
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@153
    .line 1555
    move-object/from16 v0, p0

    #@155
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartUptime:J

    #@157
    move-wide/from16 v26, v0

    #@159
    move-object/from16 v0, p1

    #@15b
    move-wide/from16 v1, v26

    #@15d
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@160
    .line 1556
    move-object/from16 v0, p0

    #@162
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    #@164
    move-wide/from16 v26, v0

    #@166
    move-object/from16 v0, p1

    #@168
    move-wide/from16 v1, v26

    #@16a
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@16d
    .line 1557
    move-object/from16 v0, p0

    #@16f
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    #@171
    move-object/from16 v26, v0

    #@173
    move-object/from16 v0, p1

    #@175
    move-object/from16 v1, v26

    #@177
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17a
    .line 1558
    move-object/from16 v0, p0

    #@17c
    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    #@17e
    move/from16 v26, v0

    #@180
    move-object/from16 v0, p1

    #@182
    move/from16 v1, v26

    #@184
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@187
    .line 1560
    move-object/from16 v0, p0

    #@189
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@18b
    move-object/from16 v26, v0

    #@18d
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    #@190
    move-result v26

    #@191
    move-object/from16 v0, p1

    #@193
    move/from16 v1, v26

    #@195
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@198
    .line 1561
    move-object/from16 v0, p0

    #@19a
    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    #@19c
    move/from16 v26, v0

    #@19e
    move-object/from16 v0, p1

    #@1a0
    move/from16 v1, v26

    #@1a2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a5
    .line 1562
    const/4 v11, 0x0

    #@1a6
    .local v11, "i":I
    :goto_7
    move-object/from16 v0, p0

    #@1a8
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@1aa
    move-object/from16 v26, v0

    #@1ac
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    #@1af
    move-result v26

    #@1b0
    add-int/lit8 v26, v26, -0x1

    #@1b2
    move/from16 v0, v26

    #@1b4
    if-ge v11, v0, :cond_8

    #@1b6
    .line 1563
    move-object/from16 v0, p0

    #@1b8
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@1ba
    move-object/from16 v26, v0

    #@1bc
    move-object/from16 v0, v26

    #@1be
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c1
    move-result-object v10

    #@1c2
    check-cast v10, [J

    #@1c4
    .line 1564
    .local v10, "array":[J
    array-length v0, v10

    #@1c5
    move/from16 v26, v0

    #@1c7
    move-object/from16 v0, p0

    #@1c9
    move-object/from16 v1, p1

    #@1cb
    move/from16 v2, v26

    #@1cd
    invoke-direct {v0, v1, v10, v2}, Lcom/android/internal/app/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    #@1d0
    .line 1562
    add-int/lit8 v11, v11, 0x1

    #@1d2
    goto :goto_7

    #@1d3
    .line 1566
    .end local v10    # "array":[J
    :cond_8
    move-object/from16 v0, p0

    #@1d5
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@1d7
    move-object/from16 v26, v0

    #@1d9
    move-object/from16 v0, p0

    #@1db
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@1dd
    move-object/from16 v27, v0

    #@1df
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    #@1e2
    move-result v27

    #@1e3
    add-int/lit8 v27, v27, -0x1

    #@1e5
    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e8
    move-result-object v17

    #@1e9
    check-cast v17, [J

    #@1eb
    .line 1567
    .local v17, "lastLongs":[J
    move-object/from16 v0, p0

    #@1ed
    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    #@1ef
    move/from16 v26, v0

    #@1f1
    move-object/from16 v0, p0

    #@1f3
    move-object/from16 v1, p1

    #@1f5
    move-object/from16 v2, v17

    #@1f7
    move/from16 v3, v26

    #@1f9
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    #@1fc
    .line 1569
    move-object/from16 v0, p0

    #@1fe
    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    #@200
    move/from16 v26, v0

    #@202
    const/16 v27, -0x1

    #@204
    move/from16 v0, v26

    #@206
    move/from16 v1, v27

    #@208
    if-eq v0, v1, :cond_9

    #@20a
    .line 1570
    move-object/from16 v0, p0

    #@20c
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    #@20e
    move-object/from16 v26, v0

    #@210
    move-object/from16 v0, p0

    #@212
    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    #@214
    move/from16 v27, v0

    #@216
    aget-wide v28, v26, v27

    #@218
    move-object/from16 v0, p0

    #@21a
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    #@21c
    move-wide/from16 v30, v0

    #@21e
    sub-long v30, p2, v30

    #@220
    add-long v28, v28, v30

    #@222
    aput-wide v28, v26, v27

    #@224
    .line 1571
    move-wide/from16 v0, p2

    #@226
    move-object/from16 v2, p0

    #@228
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    #@22a
    .line 1573
    :cond_9
    move-object/from16 v0, p0

    #@22c
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    #@22e
    move-object/from16 v26, v0

    #@230
    move-object/from16 v0, p0

    #@232
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    #@234
    move-object/from16 v27, v0

    #@236
    move-object/from16 v0, v27

    #@238
    array-length v0, v0

    #@239
    move/from16 v27, v0

    #@23b
    move-object/from16 v0, p0

    #@23d
    move-object/from16 v1, p1

    #@23f
    move-object/from16 v2, v26

    #@241
    move/from16 v3, v27

    #@243
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    #@246
    .line 1575
    move-object/from16 v0, p0

    #@248
    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    #@24a
    move/from16 v26, v0

    #@24c
    move-object/from16 v0, p1

    #@24e
    move/from16 v1, v26

    #@250
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@253
    .line 1576
    const/4 v11, 0x0

    #@254
    :goto_8
    move-object/from16 v0, p0

    #@256
    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    #@258
    move/from16 v26, v0

    #@25a
    move/from16 v0, v26

    #@25c
    if-ge v11, v0, :cond_a

    #@25e
    .line 1579
    move-object/from16 v0, p0

    #@260
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    #@262
    move-object/from16 v26, v0

    #@264
    aget v26, v26, v11

    #@266
    move-object/from16 v0, p1

    #@268
    move/from16 v1, v26

    #@26a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@26d
    .line 1576
    add-int/lit8 v11, v11, 0x1

    #@26f
    goto :goto_8

    #@270
    .line 1582
    :cond_a
    move-object/from16 v0, p1

    #@272
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@275
    .line 1583
    const/4 v12, 0x0

    #@276
    :goto_9
    if-ge v12, v5, :cond_c

    #@278
    .line 1584
    move-object/from16 v0, v21

    #@27a
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@27d
    move-result-object v26

    #@27e
    check-cast v26, Ljava/lang/String;

    #@280
    move-object/from16 v0, p0

    #@282
    move-object/from16 v1, p1

    #@284
    move-object/from16 v2, v26

    #@286
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    #@289
    .line 1585
    move-object/from16 v0, v21

    #@28b
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@28e
    move-result-object v24

    #@28f
    check-cast v24, Landroid/util/SparseArray;

    #@291
    .line 1586
    .restart local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    #@294
    move-result v8

    #@295
    .line 1587
    .restart local v8    # "NUID":I
    move-object/from16 v0, p1

    #@297
    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@29a
    .line 1588
    const/4 v15, 0x0

    #@29b
    .restart local v15    # "iu":I
    :goto_a
    if-ge v15, v8, :cond_b

    #@29d
    .line 1589
    move-object/from16 v0, v24

    #@29f
    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    #@2a2
    move-result v26

    #@2a3
    move-object/from16 v0, p1

    #@2a5
    move/from16 v1, v26

    #@2a7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2aa
    .line 1590
    move-object/from16 v0, v24

    #@2ac
    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2af
    move-result-object v20

    #@2b0
    check-cast v20, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@2b2
    .line 1591
    .restart local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v20

    #@2b4
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    #@2b6
    move-object/from16 v26, v0

    #@2b8
    move-object/from16 v0, p0

    #@2ba
    move-object/from16 v1, p1

    #@2bc
    move-object/from16 v2, v26

    #@2be
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    #@2c1
    .line 1592
    move-object/from16 v0, v20

    #@2c3
    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    #@2c5
    move/from16 v26, v0

    #@2c7
    move-object/from16 v0, p1

    #@2c9
    move/from16 v1, v26

    #@2cb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2ce
    .line 1593
    move-object/from16 v0, v20

    #@2d0
    move-object/from16 v1, p1

    #@2d2
    move-wide/from16 v2, p2

    #@2d4
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    #@2d7
    .line 1588
    add-int/lit8 v15, v15, 0x1

    #@2d9
    goto :goto_a

    #@2da
    .line 1583
    .end local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_b
    add-int/lit8 v12, v12, 0x1

    #@2dc
    goto :goto_9

    #@2dd
    .line 1596
    .end local v8    # "NUID":I
    .end local v15    # "iu":I
    .end local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_c
    move-object/from16 v0, p1

    #@2df
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2e2
    .line 1597
    const/4 v12, 0x0

    #@2e3
    :goto_b
    if-ge v12, v4, :cond_12

    #@2e5
    .line 1598
    move-object/from16 v0, v18

    #@2e7
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@2ea
    move-result-object v26

    #@2eb
    check-cast v26, Ljava/lang/String;

    #@2ed
    move-object/from16 v0, p0

    #@2ef
    move-object/from16 v1, p1

    #@2f1
    move-object/from16 v2, v26

    #@2f3
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    #@2f6
    .line 1599
    move-object/from16 v0, v18

    #@2f8
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2fb
    move-result-object v23

    #@2fc
    check-cast v23, Landroid/util/SparseArray;

    #@2fe
    .line 1600
    .restart local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    #@301
    move-result v8

    #@302
    .line 1601
    .restart local v8    # "NUID":I
    move-object/from16 v0, p1

    #@304
    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@307
    .line 1602
    const/4 v15, 0x0

    #@308
    .restart local v15    # "iu":I
    :goto_c
    if-ge v15, v8, :cond_11

    #@30a
    .line 1603
    move-object/from16 v0, v23

    #@30c
    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    #@30f
    move-result v26

    #@310
    move-object/from16 v0, p1

    #@312
    move/from16 v1, v26

    #@314
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@317
    .line 1604
    move-object/from16 v0, v23

    #@319
    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@31c
    move-result-object v25

    #@31d
    check-cast v25, Landroid/util/SparseArray;

    #@31f
    .line 1605
    .restart local v25    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    #@322
    move-result v9

    #@323
    .line 1606
    .restart local v9    # "NVERS":I
    move-object/from16 v0, p1

    #@325
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@328
    .line 1607
    const/16 v16, 0x0

    #@32a
    .restart local v16    # "iv":I
    :goto_d
    move/from16 v0, v16

    #@32c
    if-ge v0, v9, :cond_10

    #@32e
    .line 1608
    move-object/from16 v0, v25

    #@330
    move/from16 v1, v16

    #@332
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@335
    move-result v26

    #@336
    move-object/from16 v0, p1

    #@338
    move/from16 v1, v26

    #@33a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@33d
    .line 1609
    move-object/from16 v0, v25

    #@33f
    move/from16 v1, v16

    #@341
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@344
    move-result-object v19

    #@345
    check-cast v19, Lcom/android/internal/app/ProcessStats$PackageState;

    #@347
    .line 1610
    .restart local v19    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v19

    #@349
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@34b
    move-object/from16 v26, v0

    #@34d
    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    #@350
    move-result v6

    #@351
    .line 1611
    .restart local v6    # "NPROCS":I
    move-object/from16 v0, p1

    #@353
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@356
    .line 1612
    const/4 v13, 0x0

    #@357
    .restart local v13    # "iproc":I
    :goto_e
    if-ge v13, v6, :cond_e

    #@359
    .line 1613
    move-object/from16 v0, v19

    #@35b
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@35d
    move-object/from16 v26, v0

    #@35f
    move-object/from16 v0, v26

    #@361
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@364
    move-result-object v26

    #@365
    check-cast v26, Ljava/lang/String;

    #@367
    move-object/from16 v0, p0

    #@369
    move-object/from16 v1, p1

    #@36b
    move-object/from16 v2, v26

    #@36d
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    #@370
    .line 1614
    move-object/from16 v0, v19

    #@372
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@374
    move-object/from16 v26, v0

    #@376
    move-object/from16 v0, v26

    #@378
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@37b
    move-result-object v20

    #@37c
    check-cast v20, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@37e
    .line 1615
    .restart local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v20

    #@380
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@382
    move-object/from16 v26, v0

    #@384
    move-object/from16 v0, v26

    #@386
    move-object/from16 v1, v20

    #@388
    if-ne v0, v1, :cond_d

    #@38a
    .line 1617
    const/16 v26, 0x0

    #@38c
    move-object/from16 v0, p1

    #@38e
    move/from16 v1, v26

    #@390
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@393
    .line 1612
    :goto_f
    add-int/lit8 v13, v13, 0x1

    #@395
    goto :goto_e

    #@396
    .line 1620
    :cond_d
    const/16 v26, 0x1

    #@398
    move-object/from16 v0, p1

    #@39a
    move/from16 v1, v26

    #@39c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@39f
    .line 1621
    move-object/from16 v0, v20

    #@3a1
    move-object/from16 v1, p1

    #@3a3
    move-wide/from16 v2, p2

    #@3a5
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    #@3a8
    goto :goto_f

    #@3a9
    .line 1624
    .end local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_e
    move-object/from16 v0, v19

    #@3ab
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@3ad
    move-object/from16 v26, v0

    #@3af
    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    #@3b2
    move-result v7

    #@3b3
    .line 1625
    .restart local v7    # "NSRVS":I
    move-object/from16 v0, p1

    #@3b5
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@3b8
    .line 1626
    const/4 v14, 0x0

    #@3b9
    .restart local v14    # "isvc":I
    :goto_10
    if-ge v14, v7, :cond_f

    #@3bb
    .line 1627
    move-object/from16 v0, v19

    #@3bd
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@3bf
    move-object/from16 v26, v0

    #@3c1
    move-object/from16 v0, v26

    #@3c3
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@3c6
    move-result-object v26

    #@3c7
    check-cast v26, Ljava/lang/String;

    #@3c9
    move-object/from16 v0, p1

    #@3cb
    move-object/from16 v1, v26

    #@3cd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3d0
    .line 1628
    move-object/from16 v0, v19

    #@3d2
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@3d4
    move-object/from16 v26, v0

    #@3d6
    move-object/from16 v0, v26

    #@3d8
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@3db
    move-result-object v22

    #@3dc
    check-cast v22, Lcom/android/internal/app/ProcessStats$ServiceState;

    #@3de
    .line 1629
    .local v22, "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v22

    #@3e0
    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    #@3e2
    move-object/from16 v26, v0

    #@3e4
    move-object/from16 v0, p0

    #@3e6
    move-object/from16 v1, p1

    #@3e8
    move-object/from16 v2, v26

    #@3ea
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    #@3ed
    .line 1630
    move-object/from16 v0, v22

    #@3ef
    move-object/from16 v1, p1

    #@3f1
    move-wide/from16 v2, p2

    #@3f3
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->writeToParcel(Landroid/os/Parcel;J)V

    #@3f6
    .line 1626
    add-int/lit8 v14, v14, 0x1

    #@3f8
    goto :goto_10

    #@3f9
    .line 1607
    .end local v22    # "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_f
    add-int/lit8 v16, v16, 0x1

    #@3fb
    goto/16 :goto_d

    #@3fd
    .line 1602
    .end local v6    # "NPROCS":I
    .end local v7    # "NSRVS":I
    .end local v13    # "iproc":I
    .end local v14    # "isvc":I
    .end local v19    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_10
    add-int/lit8 v15, v15, 0x1

    #@3ff
    goto/16 :goto_c

    #@401
    .line 1597
    .end local v9    # "NVERS":I
    .end local v16    # "iv":I
    .end local v25    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_11
    add-int/lit8 v12, v12, 0x1

    #@403
    goto/16 :goto_b

    #@405
    .line 1636
    .end local v8    # "NUID":I
    .end local v15    # "iu":I
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_12
    const/16 v26, 0x0

    #@407
    move-object/from16 v0, v26

    #@409
    move-object/from16 v1, p0

    #@40b
    iput-object v0, v1, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    #@40d
    .line 1506
    return-void
.end method
