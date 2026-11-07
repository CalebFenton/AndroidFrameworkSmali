.class public abstract Landroid/os/BatteryStats;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$Uid;,
        Landroid/os/BatteryStats$Timer;,
        Landroid/os/BatteryStats$ControllerActivityCounter;,
        Landroid/os/BatteryStats$LongCounter;,
        Landroid/os/BatteryStats$BatteryStatsDumpHelper;,
        Landroid/os/BatteryStats$ProportionalAttributionCalculator;,
        Landroid/os/BatteryStats$Counter;,
        Landroid/os/BatteryStats$TimerEntry;,
        Landroid/os/BatteryStats$UidMobileRadioStats;,
        Landroid/os/BatteryStats$BitDescription;,
        Landroid/os/BatteryStats$HistoryItem;,
        Landroid/os/BatteryStats$HistoryTag;,
        Landroid/os/BatteryStats$LevelStepTracker;,
        Landroid/os/BatteryStats$HistoryPrinter;,
        Landroid/os/BatteryStats$HistoryEventTracker;,
        Landroid/os/BatteryStats$PackageChange;,
        Landroid/os/BatteryStats$DailyItem;,
        Landroid/os/BatteryStats$IntToString;,
        Landroid/os/BatteryStats$RadioAccessTechnology;,
        Landroid/os/BatteryStats$ProcessStateChange;,
        Landroid/os/BatteryStats$HistoryStepDetails;,
        Landroid/os/BatteryStats$LongCounterArray;,
        Landroid/os/BatteryStats$StatName;
    }
.end annotation


# static fields
.field private static final greylist-max-o AGGREGATED_WAKELOCK_DATA:Ljava/lang/String; = "awl"

.field public static final greylist-max-o AGGREGATED_WAKE_TYPE_PARTIAL:I = 0x14

.field private static final greylist-max-o APK_DATA:Ljava/lang/String; = "apk"

.field private static final greylist-max-o AUDIO_DATA:Ljava/lang/String; = "aud"

.field public static final greylist-max-o AUDIO_TURNED_ON:I = 0xf

.field private static final greylist-max-o BATTERY_DATA:Ljava/lang/String; = "bt"

.field private static final greylist-max-o BATTERY_DISCHARGE_DATA:Ljava/lang/String; = "dc"

.field private static final greylist-max-o BATTERY_LEVEL_DATA:Ljava/lang/String; = "lv"

.field private static final greylist-max-o BATTERY_STATS_CHECKIN_VERSION:I = 0x9

.field private static final greylist-max-o BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "ble"

.field private static final greylist-max-o BLUETOOTH_MISC_DATA:Ljava/lang/String; = "blem"

.field public static final greylist-max-o BLUETOOTH_SCAN_ON:I = 0x13

.field public static final greylist-max-o BLUETOOTH_UNOPTIMIZED_SCAN_ON:I = 0x15

.field private static final greylist-max-o BYTES_PER_GB:J = 0x40000000L

.field private static final greylist-max-o BYTES_PER_KB:J = 0x400L

.field private static final greylist-max-o BYTES_PER_MB:J = 0x100000L

.field private static final greylist-max-o CAMERA_DATA:Ljava/lang/String; = "cam"

.field public static final greylist-max-o CAMERA_TURNED_ON:I = 0x11

.field private static final greylist-max-o CELLULAR_CONTROLLER_NAME:Ljava/lang/String; = "Cellular"

.field private static final greylist-max-o CHARGE_STEP_DATA:Ljava/lang/String; = "csd"

.field private static final greylist-max-o CHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "ctr"

.field private static final blacklist CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

.field static final greylist-max-o CHECKIN_VERSION:I = 0x24

.field private static final greylist-max-o CPU_DATA:Ljava/lang/String; = "cpu"

.field private static final greylist-max-o CPU_TIMES_AT_FREQ_DATA:Ljava/lang/String; = "ctf"

.field private static final greylist-max-o DATA_CONNECTION_COUNT_DATA:Ljava/lang/String; = "dcc"

.field public static final blacklist DATA_CONNECTION_EMERGENCY_SERVICE:I

.field static final greylist-max-o DATA_CONNECTION_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o DATA_CONNECTION_OTHER:I

.field public static final blacklist DATA_CONNECTION_OUT_OF_SERVICE:I = 0x0

.field private static final greylist-max-o DATA_CONNECTION_TIME_DATA:Ljava/lang/String; = "dct"

.field public static final greylist-max-o DEVICE_IDLE_MODE_DEEP:I = 0x2

.field public static final greylist-max-o DEVICE_IDLE_MODE_LIGHT:I = 0x1

.field public static final greylist-max-o DEVICE_IDLE_MODE_OFF:I = 0x0

.field private static final greylist-max-o DISCHARGE_STEP_DATA:Ljava/lang/String; = "dsd"

.field private static final greylist-max-o DISCHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "dtr"

.field private static final blacklist DISPLAY_TRANSPORT_PRIORITIES:[I

.field public static final greylist-max-o DUMP_CHARGED_ONLY:I = 0x2

.field public static final greylist-max-o DUMP_DAILY_ONLY:I = 0x4

.field public static final blacklist DUMP_DEBUG_PERF_BASELINE:I = 0x80

.field public static final greylist-max-o DUMP_DEVICE_WIFI_ONLY:I = 0x40

.field public static final greylist-max-o DUMP_HISTORY_ONLY:I = 0x8

.field public static final greylist-max-o DUMP_INCLUDE_HISTORY:I = 0x10

.field public static final greylist-max-o DUMP_VERBOSE:I = 0x20

.field public static final blacklist DURATION_UNAVAILABLE:J = -0x1L

.field private static final greylist-max-o FLASHLIGHT_DATA:Ljava/lang/String; = "fla"

.field public static final greylist-max-o FLASHLIGHT_TURNED_ON:I = 0x10

.field public static final greylist-max-o FOREGROUND_ACTIVITY:I = 0xa

.field private static final greylist-max-o FOREGROUND_ACTIVITY_DATA:Ljava/lang/String; = "fg"

.field public static final greylist-max-o FOREGROUND_SERVICE:I = 0x16

.field private static final greylist-max-o FOREGROUND_SERVICE_DATA:Ljava/lang/String; = "fgs"

.field public static final greylist-max-o FULL_WIFI_LOCK:I = 0x5

.field private static final greylist-max-o GLOBAL_BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "gble"

.field private static final greylist-max-o GLOBAL_CPU_FREQ_DATA:Ljava/lang/String; = "gcf"

.field private static final greylist-max-o GLOBAL_MODEM_CONTROLLER_DATA:Ljava/lang/String; = "gmcd"

.field private static final greylist-max-o GLOBAL_NETWORK_DATA:Ljava/lang/String; = "gn"

.field private static final greylist-max-o GLOBAL_WIFI_CONTROLLER_DATA:Ljava/lang/String; = "gwfcd"

.field private static final greylist-max-o GLOBAL_WIFI_DATA:Ljava/lang/String; = "gwfl"

.field private static final greylist-max-o HISTORY_DATA:Ljava/lang/String; = "h"

.field public static final greylist-max-o HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

.field public static final greylist-max-o HISTORY_EVENT_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field public static final greylist-max-o HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field private static final greylist-max-o HISTORY_STRING_POOL:Ljava/lang/String; = "hsp"

.field public static final greylist-max-o JOB:I = 0xe

.field private static final greylist-max-o JOBS_DEFERRED_DATA:Ljava/lang/String; = "jbd"

.field private static final greylist-max-o JOB_COMPLETION_DATA:Ljava/lang/String; = "jbc"

.field private static final greylist-max-o JOB_DATA:Ljava/lang/String; = "jb"

.field public static final greylist-max-o JOB_FRESHNESS_BUCKETS:[J

.field private static final greylist-max-o KERNEL_WAKELOCK_DATA:Ljava/lang/String; = "kwl"

.field private static final greylist-max-o LOCAL_LOGV:Z = false

.field public static final greylist-max-o MAX_TRACKED_SCREEN_STATE:I = 0x4

.field public static final blacklist MILLISECONDS_IN_HOUR:D = 3600000.0

.field private static final greylist-max-o MISC_DATA:Ljava/lang/String; = "m"

.field private static final greylist-max-o MODEM_CONTROLLER_DATA:Ljava/lang/String; = "mcd"

.field public static final greylist-max-o NETWORK_BT_RX_DATA:I = 0x4

.field public static final greylist-max-o NETWORK_BT_TX_DATA:I = 0x5

.field private static final greylist-max-o NETWORK_DATA:Ljava/lang/String; = "nt"

.field public static final greylist-max-o NETWORK_MOBILE_BG_RX_DATA:I = 0x6

.field public static final greylist-max-o NETWORK_MOBILE_BG_TX_DATA:I = 0x7

.field public static final greylist-max-o NETWORK_MOBILE_RX_DATA:I = 0x0

.field public static final greylist-max-o NETWORK_MOBILE_TX_DATA:I = 0x1

.field public static final greylist-max-o NETWORK_WIFI_BG_RX_DATA:I = 0x8

.field public static final greylist-max-o NETWORK_WIFI_BG_TX_DATA:I = 0x9

.field public static final greylist-max-o NETWORK_WIFI_RX_DATA:I = 0x2

.field public static final greylist-max-o NETWORK_WIFI_TX_DATA:I = 0x3

.field public static final blacklist NUM_ALL_NETWORK_TYPES:I

.field public static final greylist NUM_DATA_CONNECTION_TYPES:I

.field public static final greylist-max-o NUM_NETWORK_ACTIVITY_TYPES:I = 0xa

.field public static final greylist NUM_SCREEN_BRIGHTNESS_BINS:I = 0x5

.field public static final greylist-max-o NUM_WIFI_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final blacklist POWER_DATA_UNAVAILABLE:J = -0x1L

.field private static final greylist-max-o POWER_USE_ITEM_DATA:Ljava/lang/String; = "pwi"

.field private static final greylist-max-o POWER_USE_SUMMARY_DATA:Ljava/lang/String; = "pws"

.field private static final greylist-max-o PROCESS_DATA:Ljava/lang/String; = "pr"

.field public static final greylist-max-o PROCESS_STATE:I = 0xc

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_COUNT:I = 0x3

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_LTE:I = 0x1

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_NR:I = 0x2

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_OTHER:I = 0x0

.field private static final greylist-max-o RESOURCE_POWER_MANAGER_DATA:Ljava/lang/String; = "rpm"

.field public static final greylist-max-o RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field public static final greylist-max-o SCREEN_BRIGHTNESS_BRIGHT:I = 0x4

.field public static final greylist-max-o SCREEN_BRIGHTNESS_DARK:I = 0x0

.field private static final greylist-max-o SCREEN_BRIGHTNESS_DATA:Ljava/lang/String; = "br"

.field public static final greylist-max-o SCREEN_BRIGHTNESS_DIM:I = 0x1

.field public static final greylist-max-o SCREEN_BRIGHTNESS_LIGHT:I = 0x3

.field public static final greylist-max-o SCREEN_BRIGHTNESS_MEDIUM:I = 0x2

.field public static final greylist-max-o SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

.field static final greylist-max-o SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

.field protected static final greylist-max-o SCREEN_OFF_RPM_STATS_ENABLED:Z = false

.field public static final greylist-max-o SENSOR:I = 0x3

.field private static final greylist-max-o SENSOR_DATA:Ljava/lang/String; = "sr"

.field public static final greylist-max-o SERVICE_NAME:Ljava/lang/String; = "batterystats"

.field private static final greylist-max-o SIGNAL_SCANNING_TIME_DATA:Ljava/lang/String; = "sst"

.field private static final greylist-max-o SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "sgc"

.field private static final greylist-max-o SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "sgt"

.field private static final greylist-max-o STATE_TIME_DATA:Ljava/lang/String; = "st"

.field public static final greylist STATS_CURRENT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o STATS_SINCE_CHARGED:I = 0x0

.field public static final greylist-max-o STATS_SINCE_UNPLUGGED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o STAT_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o STEP_LEVEL_INITIAL_MODE_MASK:J = 0xff000000000000L

.field public static final greylist-max-o STEP_LEVEL_INITIAL_MODE_SHIFT:I = 0x30

.field public static final greylist-max-o STEP_LEVEL_LEVEL_MASK:J = 0xff0000000000L

.field public static final greylist-max-o STEP_LEVEL_LEVEL_SHIFT:I = 0x28

.field public static final greylist-max-o STEP_LEVEL_MODES_OF_INTEREST:[I

.field public static final greylist-max-o STEP_LEVEL_MODE_DEVICE_IDLE:I = 0x8

.field public static final greylist-max-o STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

.field public static final greylist-max-o STEP_LEVEL_MODE_POWER_SAVE:I = 0x4

.field public static final greylist-max-o STEP_LEVEL_MODE_SCREEN_STATE:I = 0x3

.field public static final greylist-max-o STEP_LEVEL_MODE_VALUES:[I

.field public static final greylist-max-o STEP_LEVEL_MODIFIED_MODE_MASK:J = -0x100000000000000L

.field public static final greylist-max-o STEP_LEVEL_MODIFIED_MODE_SHIFT:I = 0x38

.field public static final greylist-max-o STEP_LEVEL_TIME_MASK:J = 0xffffffffffL

.field public static final greylist-max-o SYNC:I = 0xd

.field private static final greylist-max-o SYNC_DATA:Ljava/lang/String; = "sy"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BatteryStats"

.field private static final greylist-max-o UID_DATA:Ljava/lang/String; = "uid"

.field public static final greylist-max-o UID_TIMES_TYPE_ALL:Ljava/lang/String; = "A"

.field private static final greylist-max-o USER_ACTIVITY_DATA:Ljava/lang/String; = "ua"

.field private static final greylist-max-o VERSION_DATA:Ljava/lang/String; = "vers"

.field private static final greylist-max-o VIBRATOR_DATA:Ljava/lang/String; = "vib"

.field public static final greylist-max-o VIBRATOR_ON:I = 0x9

.field private static final greylist-max-o VIDEO_DATA:Ljava/lang/String; = "vid"

.field public static final greylist-max-o VIDEO_TURNED_ON:I = 0x8

.field private static final greylist-max-o WAKELOCK_DATA:Ljava/lang/String; = "wl"

.field private static final greylist-max-o WAKEUP_ALARM_DATA:Ljava/lang/String; = "wua"

.field private static final greylist-max-o WAKEUP_REASON_DATA:Ljava/lang/String; = "wr"

.field public static final greylist-max-o WAKE_TYPE_DRAW:I = 0x12

.field public static final greylist-max-o WAKE_TYPE_FULL:I = 0x1

.field public static final greylist-max-r WAKE_TYPE_PARTIAL:I = 0x0

.field public static final greylist-max-o WAKE_TYPE_WINDOW:I = 0x2

.field public static final greylist-max-o WIFI_AGGREGATE_MULTICAST_ENABLED:I = 0x17

.field public static final greylist-max-o WIFI_BATCHED_SCAN:I = 0xb

.field private static final greylist-max-o WIFI_CONTROLLER_DATA:Ljava/lang/String; = "wfcd"

.field private static final greylist-max-o WIFI_CONTROLLER_NAME:Ljava/lang/String; = "WiFi"

.field private static final greylist-max-o WIFI_DATA:Ljava/lang/String; = "wfl"

.field private static final greylist-max-o WIFI_MULTICAST_DATA:Ljava/lang/String; = "wmc"

.field public static final greylist-max-o WIFI_MULTICAST_ENABLED:I = 0x7

.field private static final greylist-max-o WIFI_MULTICAST_TOTAL_DATA:Ljava/lang/String; = "wmct"

.field public static final greylist-max-o WIFI_RUNNING:I = 0x4

.field public static final greylist-max-o WIFI_SCAN:I = 0x6

.field private static final greylist-max-o WIFI_SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "wsgc"

.field private static final greylist-max-o WIFI_SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "wsgt"

.field private static final greylist-max-o WIFI_STATE_COUNT_DATA:Ljava/lang/String; = "wsc"

.field static final greylist-max-o WIFI_STATE_NAMES:[Ljava/lang/String;

.field private static final greylist-max-o WIFI_STATE_TIME_DATA:Ljava/lang/String; = "wst"

.field private static final greylist-max-o WIFI_SUPPL_STATE_COUNT_DATA:Ljava/lang/String; = "wssc"

.field static final greylist-max-o WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

.field static final greylist-max-o WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

.field private static final greylist-max-o WIFI_SUPPL_STATE_TIME_DATA:Ljava/lang/String; = "wsst"

.field private static final greylist-max-o sIntToString:Landroid/os/BatteryStats$IntToString;

.field private static final greylist-max-o sUidToString:Landroid/os/BatteryStats$IntToString;


# instance fields
.field private final greylist-max-o mFormatBuilder:Ljava/lang/StringBuilder;

.field private final greylist-max-o mFormatter:Ljava/util/Formatter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsUidToString()Landroid/os/BatteryStats$IntToString;
    .registers 1

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 56

    .line 264
    const-string v0, "c"

    const-string/jumbo v1, "u"

    const-string/jumbo v2, "l"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    .line 439
    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_55e

    sput-object v1, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    .line 2514
    const-string/jumbo v1, "light"

    const-string v2, "bright"

    const-string v3, "dark"

    const-string v4, "dim"

    const-string/jumbo v5, "medium"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    .line 2518
    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "2"

    const-string v4, "3"

    const-string v5, "4"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    .line 2763
    const-string v28, "emngcy"

    const-string/jumbo v29, "other"

    const-string/jumbo v7, "oos"

    const-string/jumbo v8, "gprs"

    const-string v9, "edge"

    const-string/jumbo v10, "umts"

    const-string v11, "cdma"

    const-string v12, "evdo_0"

    const-string v13, "evdo_A"

    const-string v14, "1xrtt"

    const-string/jumbo v15, "hsdpa"

    const-string/jumbo v16, "hsupa"

    const-string/jumbo v17, "hspa"

    const-string/jumbo v18, "iden"

    const-string v19, "evdo_b"

    const-string/jumbo v20, "lte"

    const-string v21, "ehrpd"

    const-string/jumbo v22, "hspap"

    const-string/jumbo v23, "gsm"

    const-string/jumbo v24, "td_scdma"

    const-string/jumbo v25, "iwlan"

    const-string/jumbo v26, "lte_ca"

    const-string/jumbo v27, "nr"

    filled-new-array/range {v7 .. v29}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    .line 2770
    invoke-static {}, Landroid/os/BatteryStats;->getAllNetworkTypesCount()I

    move-result v6

    sput v6, Landroid/os/BatteryStats;->NUM_ALL_NETWORK_TYPES:I

    .line 2772
    sget v6, Landroid/os/BatteryStats;->NUM_ALL_NETWORK_TYPES:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    sput v6, Landroid/os/BatteryStats;->DATA_CONNECTION_EMERGENCY_SERVICE:I

    .line 2773
    sget v6, Landroid/os/BatteryStats;->NUM_ALL_NETWORK_TYPES:I

    const/4 v8, 0x2

    add-int/2addr v6, v8

    sput v6, Landroid/os/BatteryStats;->DATA_CONNECTION_OTHER:I

    .line 2776
    sget v6, Landroid/os/BatteryStats;->NUM_ALL_NETWORK_TYPES:I

    const/4 v9, 0x3

    add-int/2addr v6, v9

    sput v6, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    .line 2842
    const-string v6, "LTE"

    const-string v10, "NR"

    const-string v11, "Other"

    filled-new-array {v11, v6, v10}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/os/BatteryStats;->RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

    .line 2904
    const-string v21, "dormant"

    const-string/jumbo v22, "uninit"

    const-string/jumbo v10, "invalid"

    const-string v11, "disconn"

    const-string v12, "disabled"

    const-string/jumbo v13, "inactive"

    const-string/jumbo v14, "scanning"

    const-string v15, "authenticating"

    const-string v16, "associating"

    const-string v17, "associated"

    const-string v18, "4-way-handshake"

    const-string/jumbo v19, "group-handshake"

    const-string v20, "completed"

    filled-new-array/range {v10 .. v22}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    .line 2910
    const-string v21, "dorm"

    const-string/jumbo v22, "uninit"

    const-string/jumbo v10, "inv"

    const-string v11, "dsc"

    const-string v12, "dis"

    const-string/jumbo v13, "inact"

    const-string/jumbo v14, "scan"

    const-string v15, "auth"

    const-string v16, "ascing"

    const-string v17, "asced"

    const-string v18, "4-way"

    const-string/jumbo v19, "group"

    const-string v20, "compl"

    filled-new-array/range {v10 .. v22}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    .line 3032
    const/16 v6, 0x12

    new-array v6, v6, [Landroid/os/BatteryStats$BitDescription;

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "running"

    const-string/jumbo v12, "r"

    const/high16 v13, -0x80000000

    invoke-direct {v10, v13, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    aput-object v10, v6, v11

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v12, "wake_lock"

    const-string/jumbo v13, "w"

    const/high16 v14, 0x40000000    # 2.0f

    invoke-direct {v10, v14, v12, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v7

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v12, "sensor"

    const-string/jumbo v13, "s"

    const/high16 v14, 0x800000

    invoke-direct {v10, v14, v12, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v8

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v12, "gps"

    const-string v13, "g"

    const/high16 v14, 0x20000000

    invoke-direct {v10, v14, v12, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v9

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v12, "wifi_full_lock"

    const-string v13, "Wl"

    const/high16 v14, 0x10000000

    invoke-direct {v10, v14, v12, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x4

    aput-object v10, v6, v12

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v13, "wifi_scan"

    const-string v14, "Ws"

    const/high16 v15, 0x8000000

    invoke-direct {v10, v15, v13, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v0

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v13, "wifi_multicast"

    const-string v14, "Wm"

    const/high16 v15, 0x10000

    invoke-direct {v10, v15, v13, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x6

    aput-object v10, v6, v13

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "wifi_radio"

    const-string v15, "Wr"

    move/from16 v16, v0

    const/high16 v0, 0x4000000

    invoke-direct {v10, v0, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    aput-object v10, v6, v0

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "mobile_radio"

    const-string v15, "Pr"

    move/from16 v17, v7

    const/high16 v7, 0x2000000

    invoke-direct {v10, v7, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x8

    aput-object v10, v6, v7

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "phone_scanning"

    const-string v15, "Psc"

    move/from16 v18, v7

    const/high16 v7, 0x200000

    invoke-direct {v10, v7, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x9

    aput-object v10, v6, v7

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string v14, "audio"

    const-string v15, "a"

    move/from16 v19, v7

    const/high16 v7, 0x400000

    invoke-direct {v10, v7, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xa

    aput-object v10, v6, v7

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "screen"

    const-string v15, "S"

    move/from16 v20, v8

    const/high16 v8, 0x100000

    invoke-direct {v10, v8, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0xb

    aput-object v10, v6, v8

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "plugged"

    const-string v15, "BP"

    move/from16 v21, v8

    const/high16 v8, 0x80000

    invoke-direct {v10, v8, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0xc

    aput-object v10, v6, v8

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v10, "screen_doze"

    const-string v14, "Sd"

    const/high16 v15, 0x40000

    invoke-direct {v8, v15, v10, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xd

    aput-object v8, v6, v10

    new-instance v22, Landroid/os/BatteryStats$BitDescription;

    sget-object v27, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    sget-object v28, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    const/16 v23, 0x3e00

    const/16 v24, 0x9

    const-string v25, "data_conn"

    const-string v26, "Pcn"

    invoke-direct/range {v22 .. v28}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v8, 0xe

    aput-object v22, v6, v8

    new-instance v23, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "in"

    const-string/jumbo v15, "out"

    move/from16 v22, v8

    const-string v8, "emergency"

    move/from16 v30, v9

    const-string/jumbo v9, "off"

    filled-new-array {v14, v15, v8, v9}, [Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v8, "out"

    const-string v14, "em"

    const-string/jumbo v15, "in"

    filled-new-array {v15, v8, v14, v9}, [Ljava/lang/String;

    move-result-object v29

    const/16 v24, 0x1c0

    const/16 v25, 0x6

    const-string/jumbo v26, "phone_state"

    const-string v27, "Pst"

    invoke-direct/range {v23 .. v29}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v8, 0xf

    aput-object v23, v6, v8

    new-instance v31, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "good"

    const-string/jumbo v15, "great"

    move/from16 v23, v8

    const-string/jumbo v8, "none"

    move/from16 v24, v10

    const-string/jumbo v10, "poor"

    move/from16 v25, v11

    const-string/jumbo v11, "moderate"

    filled-new-array {v8, v10, v11, v14, v15}, [Ljava/lang/String;

    move-result-object v36

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v37

    const/16 v32, 0x38

    const/16 v33, 0x3

    const-string/jumbo v34, "phone_signal_strength"

    const-string v35, "Pss"

    invoke-direct/range {v31 .. v37}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v8, 0x10

    aput-object v31, v6, v8

    new-instance v32, Landroid/os/BatteryStats$BitDescription;

    sget-object v37, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    sget-object v38, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    const/16 v33, 0x7

    const/16 v34, 0x0

    const-string v35, "brightness"

    const-string v36, "Sb"

    invoke-direct/range {v32 .. v38}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v10, 0x11

    aput-object v32, v6, v10

    sput-object v6, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    .line 3063
    const/16 v6, 0x11

    new-array v6, v6, [Landroid/os/BatteryStats$BitDescription;

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "power_save"

    const-string/jumbo v14, "ps"

    const/high16 v15, -0x80000000

    invoke-direct {v10, v15, v11, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v25

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "video"

    const-string/jumbo v14, "v"

    const/high16 v15, 0x40000000    # 2.0f

    invoke-direct {v10, v15, v11, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v17

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "wifi_running"

    const-string v14, "Ww"

    const/high16 v15, 0x20000000

    invoke-direct {v10, v15, v11, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v20

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "wifi"

    const-string v14, "W"

    const/high16 v15, 0x10000000

    invoke-direct {v10, v15, v11, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v30

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string v11, "flashlight"

    const-string v14, "fl"

    const/high16 v15, 0x8000000

    invoke-direct {v10, v15, v11, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v12

    new-instance v31, Landroid/os/BatteryStats$BitDescription;

    const-string v10, "full"

    const-string v11, "???"

    const-string/jumbo v14, "light"

    filled-new-array {v9, v14, v10, v11}, [Ljava/lang/String;

    move-result-object v36

    const-string v10, "full"

    const-string v11, "???"

    const-string/jumbo v14, "light"

    filled-new-array {v9, v14, v10, v11}, [Ljava/lang/String;

    move-result-object v37

    const/high16 v32, 0x6000000

    const/16 v33, 0x19

    const-string v34, "device_idle"

    const-string v35, "di"

    invoke-direct/range {v31 .. v37}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v31, v6, v16

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const-string v10, "charging"

    const-string v11, "ch"

    const/high16 v14, 0x1000000

    invoke-direct {v9, v14, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v9, v6, v13

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v10, "usb_data"

    const-string v11, "Ud"

    const/high16 v14, 0x40000

    invoke-direct {v9, v14, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v9, v6, v0

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v10, "phone_in_call"

    const-string v11, "Pcl"

    const/high16 v14, 0x800000

    invoke-direct {v9, v14, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v9, v6, v18

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const-string v10, "bluetooth"

    const-string v11, "b"

    const/high16 v14, 0x400000

    invoke-direct {v9, v14, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v9, v6, v19

    new-instance v31, Landroid/os/BatteryStats$BitDescription;

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v36

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v37

    const/16 v32, 0x70

    const/16 v33, 0x4

    const-string/jumbo v34, "wifi_signal_strength"

    const-string v35, "Wss"

    invoke-direct/range {v31 .. v37}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v31, v6, v7

    new-instance v32, Landroid/os/BatteryStats$BitDescription;

    sget-object v37, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    sget-object v38, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    const/16 v33, 0xf

    const/16 v34, 0x0

    const-string/jumbo v35, "wifi_suppl"

    const-string v36, "Wsp"

    invoke-direct/range {v32 .. v38}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v32, v6, v21

    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    const-string v9, "camera"

    const-string v10, "ca"

    const/high16 v11, 0x200000

    invoke-direct {v5, v11, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0xc

    aput-object v5, v6, v9

    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    const-string v9, "ble_scan"

    const-string v10, "bles"

    const/high16 v11, 0x100000

    invoke-direct {v5, v11, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v5, v6, v24

    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    const-string v9, "cellular_high_tx_power"

    const-string v10, "Chtp"

    const/high16 v11, 0x80000

    invoke-direct {v5, v11, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v5, v6, v22

    new-instance v31, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v5, "good"

    const-string/jumbo v9, "none"

    const-string/jumbo v10, "poor"

    filled-new-array {v10, v5, v9}, [Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v5, "good"

    const-string/jumbo v9, "none"

    const-string/jumbo v10, "poor"

    filled-new-array {v10, v5, v9}, [Ljava/lang/String;

    move-result-object v37

    const/16 v32, 0x180

    const/16 v33, 0x7

    const-string/jumbo v34, "gps_signal_quality"

    const-string v35, "Gss"

    invoke-direct/range {v31 .. v37}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v31, v6, v23

    new-instance v32, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v5, "not_restricted"

    const-string v9, "connected"

    const-string/jumbo v10, "none"

    const-string/jumbo v11, "restricted"

    filled-new-array {v10, v11, v5, v9}, [Ljava/lang/String;

    move-result-object v37

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v38

    const/16 v33, 0x600

    const/16 v34, 0x9

    const-string/jumbo v35, "nr_state"

    const-string/jumbo v36, "nrs"

    invoke-direct/range {v32 .. v38}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v32, v6, v8

    sput-object v6, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    .line 3097
    const-string/jumbo v54, "state"

    const-string v55, "display_state_changed"

    const-string/jumbo v33, "null"

    const-string/jumbo v34, "proc"

    const-string v35, "fg"

    const-string/jumbo v36, "top"

    const-string/jumbo v37, "sync"

    const-string/jumbo v38, "wake_lock_in"

    const-string/jumbo v39, "job"

    const-string/jumbo v40, "user"

    const-string/jumbo v41, "userfg"

    const-string v42, "conn"

    const-string v43, "active"

    const-string/jumbo v44, "pkginst"

    const-string/jumbo v45, "pkgunin"

    const-string v46, "alarm"

    const-string/jumbo v47, "stats"

    const-string/jumbo v48, "pkginactive"

    const-string/jumbo v49, "pkgactive"

    const-string/jumbo v50, "tmpwhitelist"

    const-string/jumbo v51, "screenwake"

    const-string/jumbo v52, "wakeupap"

    const-string/jumbo v53, "longwake"

    filled-new-array/range {v33 .. v55}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    .line 3104
    const-string v52, "Esc"

    const-string v53, "Eds"

    const-string v31, "Enl"

    const-string v32, "Epr"

    const-string v33, "Efg"

    const-string v34, "Etp"

    const-string v35, "Esy"

    const-string v36, "Ewl"

    const-string v37, "Ejb"

    const-string v38, "Eur"

    const-string v39, "Euf"

    const-string v40, "Ecn"

    const-string v41, "Eac"

    const-string v42, "Epi"

    const-string v43, "Epu"

    const-string v44, "Eal"

    const-string v45, "Est"

    const-string v46, "Eai"

    const-string v47, "Eaa"

    const-string v48, "Etw"

    const-string v49, "Esw"

    const-string v50, "Ewa"

    const-string v51, "Elw"

    filled-new-array/range {v31 .. v53}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    .line 3116
    new-instance v1, Landroid/os/BatteryStats$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/os/BatteryStats$$ExternalSyntheticLambda0;-><init>()V

    sput-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    .line 3117
    new-instance v1, Landroid/os/BatteryStats$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/os/BatteryStats$$ExternalSyntheticLambda1;-><init>()V

    sput-object v1, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    .line 3119
    const/16 v1, 0x17

    new-array v1, v1, [Landroid/os/BatteryStats$IntToString;

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v25

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v17

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v20

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v30

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v12

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v16

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v13

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v0

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v18

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v19

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v7

    sget-object v2, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v21

    const/16 v2, 0xc

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v24

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v22

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v23

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v8

    const/16 v2, 0x11

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    .line 3168
    const-string/jumbo v37, "sta_p2p"

    const-string/jumbo v38, "soft_ap"

    const-string/jumbo v31, "off"

    const-string/jumbo v32, "scanning"

    const-string/jumbo v33, "no_net"

    const-string v34, "disconn"

    const-string/jumbo v35, "sta"

    const-string/jumbo v36, "p2p"

    filled-new-array/range {v31 .. v38}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    .line 3553
    new-array v1, v7, [I

    fill-array-data v1, :array_576

    sput-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    .line 3565
    new-array v1, v7, [I

    fill-array-data v1, :array_58e

    sput-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    .line 3577
    const-string/jumbo v39, "screen doze-suspend power save"

    const-string/jumbo v40, "screen doze-suspend device idle"

    const-string/jumbo v31, "screen off"

    const-string/jumbo v32, "screen off power save"

    const-string/jumbo v33, "screen off device idle"

    const-string/jumbo v34, "screen on"

    const-string/jumbo v35, "screen on power save"

    const-string/jumbo v36, "screen doze"

    const-string/jumbo v37, "screen doze power save"

    const-string/jumbo v38, "screen doze-suspend"

    filled-new-array/range {v31 .. v40}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    .line 4450
    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    .line 4454
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "scrn"

    aput-object v2, v1, v25

    .line 4455
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "cpu"

    aput-object v2, v1, v17

    .line 4456
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "blue"

    aput-object v2, v1, v20

    .line 4457
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "camera"

    aput-object v2, v1, v30

    .line 4458
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "audio"

    aput-object v2, v1, v12

    .line 4459
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "video"

    aput-object v2, v1, v16

    .line 4460
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "flashlight"

    aput-object v2, v1, v13

    .line 4461
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "cell"

    aput-object v2, v1, v18

    .line 4462
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "sensors"

    aput-object v2, v1, v19

    .line 4463
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "gnss"

    aput-object v2, v1, v7

    .line 4464
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "wifi"

    aput-object v2, v1, v21

    .line 4465
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "memory"

    aput-object v2, v1, v24

    .line 4466
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "phone"

    aput-object v2, v1, v22

    .line 4467
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "ambi"

    aput-object v2, v1, v23

    .line 4468
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "idle"

    aput-object v2, v1, v8

    .line 9264
    new-array v0, v0, [I

    fill-array-data v0, :array_5a6

    sput-object v0, Landroid/os/BatteryStats;->DISPLAY_TRANSPORT_PRIORITIES:[I

    return-void

    nop

    :array_55e
    .array-data 8
        0x36ee80
        0x6ddd00
        0xdbba00
        0x1b77400
        0x7fffffffffffffffL
    .end array-data

    :array_576
    .array-data 4
        0x7
        0xf
        0xb
        0x7
        0x7
        0x7
        0x7
        0x7
        0xf
        0xb
    .end array-data

    :array_58e
    .array-data 4
        0x0
        0x4
        0x8
        0x1
        0x5
        0x2
        0x6
        0x3
        0x7
        0xb
    .end array-data

    :array_5a6
    .array-data 4
        0x4
        0x0
        0x5
        0x2
        0x1
        0x3
        0x8
    .end array-data
.end method

.method public constructor greylist-max-p <init>()V
    .registers 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 420
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    .line 96
    return-void
.end method

.method public static blacklist checkWifiOnly(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 9067
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 9068
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_c

    .line 9069
    const/4 v1, 0x0

    return v1

    .line 9071
    :cond_c
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static greylist-max-o computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .registers 10
    .param p0, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 3830
    if-eqz p0, :cond_d

    .line 3832
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    .line 3833
    .local v0, "totalTimeMicros":J
    const-wide/16 v2, 0x1f4

    add-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 3834
    .local v2, "totalTimeMillis":J
    return-wide v2

    .line 3836
    .end local v0    # "totalTimeMicros":J
    .end local v2    # "totalTimeMillis":J
    :cond_d
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static greylist-max-o controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z
    .registers 12
    .param p0, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p1, "which"    # I

    .line 4085
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 4086
    return v0

    .line 4089
    :cond_4
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_4f

    .line 4090
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_4f

    .line 4091
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_4f

    .line 4092
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_38

    goto :goto_4f

    .line 4096
    :cond_38
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    array-length v5, v1

    move v6, v0

    :goto_3e
    if-ge v6, v5, :cond_4e

    aget-object v7, v1, v6

    .line 4097
    .local v7, "c":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual {v7, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v8

    cmp-long v8, v8, v3

    if-eqz v8, :cond_4b

    .line 4098
    return v2

    .line 4096
    .end local v7    # "c":Landroid/os/BatteryStats$LongCounter;
    :cond_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    .line 4101
    :cond_4e
    return v0

    .line 4093
    :cond_4f
    :goto_4f
    return v2
.end method

.method private blacklist dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;ILandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p4, "flags"    # I
    .param p5, "dumpHelper"    # Landroid/os/BatteryStats$BatteryStatsDumpHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;I",
            "Landroid/os/BatteryStats$BatteryStatsDumpHelper;",
            ")V"
        }
    .end annotation

    .line 8051
    .local p3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    const-string/jumbo v1, "i"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v7, :cond_aa

    .line 8052
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 8053
    .local v5, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_13
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_52

    .line 8054
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    .line 8055
    .local v8, "ai":Landroid/content/pm/ApplicationInfo;
    iget v9, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 8056
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 8055
    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 8057
    .local v9, "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    if-nez v9, :cond_46

    .line 8058
    new-instance v10, Landroid/util/Pair;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Landroid/util/MutableBoolean;

    invoke-direct {v12, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v9, v10

    .line 8059
    iget v10, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    invoke-virtual {v5, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8061
    :cond_46
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    iget-object v11, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8053
    .end local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 8063
    .end local v6    # "i":I
    :cond_52
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v6

    .line 8064
    .local v6, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 8065
    .local v8, "NU":I
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    .line 8066
    .local v9, "lineArgs":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5e
    if-ge v10, v8, :cond_aa

    .line 8067
    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    .line 8068
    .local v11, "uid":I
    invoke-virtual {v5, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    .line 8069
    .local v12, "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    if-eqz v12, :cond_a7

    iget-object v13, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Landroid/util/MutableBoolean;

    iget-boolean v13, v13, Landroid/util/MutableBoolean;->value:Z

    if-nez v13, :cond_a7

    .line 8070
    iget-object v13, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Landroid/util/MutableBoolean;

    iput-boolean v4, v13, Landroid/util/MutableBoolean;->value:Z

    .line 8071
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_7f
    iget-object v14, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_a7

    .line 8072
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v9, v3

    .line 8073
    iget-object v14, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v9, v4

    .line 8074
    const-string/jumbo v14, "uid"

    move-object v15, v9

    check-cast v15, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v14, v15}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8071
    add-int/lit8 v13, v13, 0x1

    goto :goto_7f

    .line 8066
    .end local v11    # "uid":I
    .end local v12    # "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    .end local v13    # "j":I
    :cond_a7
    add-int/lit8 v10, v10, 0x1

    goto :goto_5e

    .line 8080
    .end local v5    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    .end local v6    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v8    # "NU":I
    .end local v9    # "lineArgs":[Ljava/lang/String;
    .end local v10    # "i":I
    :cond_aa
    and-int/lit8 v5, p4, 0x4

    if-nez v5, :cond_10e

    .line 8081
    const-string v5, "dsd"

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v6

    const-string v8, ""

    invoke-static {v2, v8, v5, v6, v4}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    .line 8082
    new-array v9, v4, [Ljava/lang/String;

    .line 8083
    .restart local v9    # "lineArgs":[Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v10, 0x3e8

    mul-long/2addr v5, v10

    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v5

    .line 8084
    .local v5, "timeRemaining":J
    const-wide/16 v12, 0x0

    cmp-long v14, v5, v12

    if-ltz v14, :cond_da

    .line 8085
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v9, v3

    .line 8086
    const-string v14, "dtr"

    move-object v15, v9

    check-cast v15, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v14, v15}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8089
    :cond_da
    const-string v14, "csd"

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v15

    invoke-static {v2, v8, v14, v15, v4}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    .line 8090
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    mul-long/2addr v14, v10

    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v10

    .line 8091
    .end local v5    # "timeRemaining":J
    .local v10, "timeRemaining":J
    cmp-long v5, v10, v12

    if-ltz v5, :cond_fe

    .line 8092
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v3

    .line 8093
    const-string v5, "ctr"

    move-object v6, v9

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v5, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8096
    :cond_fe
    and-int/lit8 v1, p4, 0x40

    if-eqz v1, :cond_104

    move v5, v4

    goto :goto_105

    :cond_104
    move v5, v3

    :goto_105
    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object/from16 v1, p1

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    .line 8099
    .end local v9    # "lineArgs":[Ljava/lang/String;
    .end local v10    # "timeRemaining":J
    :cond_10e
    return-void
.end method

.method private static final greylist-max-o dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .registers 13
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p5, "which"    # I

    .line 4127
    invoke-static {p4, p5}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 4128
    return-void

    .line 4131
    :cond_7
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 4132
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4133
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4134
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4135
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4136
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4137
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x414b774000000000L    # 3600000.0

    div-double/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(D)V

    .line 4138
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4139
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(D)V

    .line 4141
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_53
    if-ge v3, v2, :cond_64

    aget-object v4, v1, v3

    .line 4142
    .local v4, "c":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4143
    invoke-virtual {v4, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 4141
    .end local v4    # "c":Landroid/os/BatteryStats$LongCounter;
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 4145
    :cond_64
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 4146
    return-void
.end method

.method private static greylist-max-o dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V
    .registers 16
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p4, "which"    # I

    .line 4154
    invoke-static {p3, p4}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 4155
    return-void

    .line 4158
    :cond_7
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4160
    .local v0, "cToken":J
    nop

    .line 4161
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    .line 4160
    const-wide v4, 0x10300000001L

    invoke-virtual {p0, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4162
    nop

    .line 4163
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    .line 4162
    const-wide v4, 0x10300000002L

    invoke-virtual {p0, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4164
    nop

    .line 4165
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v6

    .line 4164
    const-wide v8, 0x10300000003L

    invoke-virtual {p0, v8, v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 4166
    nop

    .line 4167
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v6

    .line 4166
    const-wide v6, 0x10100000005L

    invoke-virtual {p0, v6, v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 4171
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    .line 4172
    .local v2, "txCounters":[Landroid/os/BatteryStats$LongCounter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5d
    array-length v6, v2

    if-ge v3, v6, :cond_80

    .line 4173
    aget-object v6, v2, v3

    .line 4174
    .local v6, "c":Landroid/os/BatteryStats$LongCounter;
    const-wide v7, 0x20b00000004L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 4175
    .local v7, "tToken":J
    const-wide v9, 0x10500000001L

    invoke-virtual {p0, v9, v10, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4176
    invoke-virtual {v6, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    invoke-virtual {p0, v4, v5, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4177
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4172
    .end local v6    # "c":Landroid/os/BatteryStats$LongCounter;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    .line 4180
    .end local v3    # "i":I
    .end local v7    # "tToken":J
    :cond_80
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4181
    return-void
.end method

.method private greylist-max-o dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V
    .registers 25
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "steps"    # Landroid/os/BatteryStats$LevelStepTracker;
    .param p5, "tmpSb"    # Ljava/lang/StringBuilder;
    .param p6, "tmpOutInt"    # [I

    .line 7809
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    if-nez p4, :cond_9

    .line 7810
    return-void

    .line 7812
    :cond_9
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v4

    .line 7813
    .local v4, "timeRemaining":J
    const-wide/16 v12, 0x0

    cmp-long v3, v4, v12

    const-string v14, " steps)"

    const-string v15, " (from "

    const/4 v6, 0x0

    if-ltz v3, :cond_3f

    .line 7814
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " total time: "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7815
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7816
    invoke-static {v2, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 7817
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7818
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v3, p6, v6

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 7819
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7821
    :cond_3f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_40
    sget-object v7, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v7, v7

    if-ge v3, v7, :cond_8f

    .line 7822
    sget-object v7, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    aget v7, v7, v3

    int-to-long v7, v7

    sget-object v9, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v9, v9, v3

    int-to-long v9, v9

    move-object/from16 v11, p6

    move-wide/from16 v16, v12

    move v12, v6

    move-object/from16 v6, p4

    invoke-virtual/range {v6 .. v11}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v7

    .line 7824
    .local v7, "estimatedTime":J
    cmp-long v6, v7, v16

    if-lez v6, :cond_89

    .line 7825
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7826
    sget-object v6, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7827
    const-string v6, " time: "

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7828
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7829
    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 7830
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7831
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v6, p6, v12

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 7832
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7821
    .end local v7    # "estimatedTime":J
    :cond_89
    add-int/lit8 v3, v3, 0x1

    move v6, v12

    move-wide/from16 v12, v16

    goto :goto_40

    .line 7835
    .end local v3    # "i":I
    :cond_8f
    return-void
.end method

.method private greylist-max-o dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;)V"
        }
    .end annotation

    .line 7839
    .local p3, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    if-nez p3, :cond_3

    .line 7840
    return-void

    .line 7842
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Package changes:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7843
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 7844
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$PackageChange;

    .line 7845
    .local v1, "pc":Landroid/os/BatteryStats$PackageChange;
    iget-boolean v2, v1, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    if-eqz v2, :cond_34

    .line 7846
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Update "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7847
    const-string v2, " vers="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Landroid/os/BatteryStats$PackageChange;->mVersionCode:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_41

    .line 7849
    :cond_34
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Uninstall "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7843
    .end local v1    # "pc":Landroid/os/BatteryStats$PackageChange;
    :goto_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 7852
    .end local v0    # "i":I
    :cond_44
    return-void
.end method

.method private static greylist-max-o dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V
    .registers 25
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "steps"    # Landroid/os/BatteryStats$LevelStepTracker;

    .line 7607
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez v1, :cond_7

    .line 7608
    return-void

    .line 7610
    :cond_7
    iget v2, v1, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 7611
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v2, :cond_94

    .line 7612
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 7613
    .local v4, "token":J
    const-wide v6, 0x10300000001L

    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v8

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7614
    const-wide v6, 0x10500000002L

    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7616
    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v6

    int-to-long v6, v6

    .line 7617
    .local v6, "initMode":J
    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v8

    int-to-long v8, v8

    .line 7619
    .local v8, "modMode":J
    const/4 v10, 0x0

    .line 7620
    .local v10, "ds":I
    const-wide/16 v11, 0x3

    and-long v13, v8, v11

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    const/4 v14, 0x1

    if-nez v13, :cond_4e

    .line 7621
    and-long/2addr v11, v6

    long-to-int v11, v11

    add-int/2addr v11, v14

    packed-switch v11, :pswitch_data_96

    .line 7635
    const/4 v10, 0x5

    goto :goto_4e

    .line 7632
    :pswitch_46
    const/4 v10, 0x4

    .line 7633
    goto :goto_4e

    .line 7629
    :pswitch_48
    const/4 v10, 0x3

    .line 7630
    goto :goto_4e

    .line 7626
    :pswitch_4a
    const/4 v10, 0x1

    .line 7627
    goto :goto_4e

    .line 7623
    :pswitch_4c
    const/4 v10, 0x2

    .line 7624
    nop

    .line 7639
    :cond_4e
    :goto_4e
    const-wide v11, 0x10e00000003L

    invoke-virtual {v0, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7641
    const/4 v11, 0x0

    .line 7642
    .local v11, "psm":I
    const-wide/16 v12, 0x4

    and-long v17, v8, v12

    cmp-long v17, v17, v15

    const/16 v18, 0x2

    if-nez v17, :cond_6a

    .line 7643
    and-long/2addr v12, v6

    cmp-long v12, v12, v15

    if-eqz v12, :cond_67

    .line 7644
    goto :goto_69

    :cond_67
    move/from16 v14, v18

    :goto_69
    move v11, v14

    .line 7646
    :cond_6a
    const-wide v12, 0x10e00000004L

    invoke-virtual {v0, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7648
    const/4 v12, 0x0

    .line 7649
    .local v12, "im":I
    const-wide/16 v13, 0x8

    and-long v19, v8, v13

    cmp-long v17, v19, v15

    if-nez v17, :cond_85

    .line 7650
    and-long/2addr v13, v6

    cmp-long v13, v13, v15

    if-eqz v13, :cond_81

    .line 7651
    goto :goto_83

    :cond_81
    const/16 v18, 0x3

    :goto_83
    move/from16 v12, v18

    .line 7653
    :cond_85
    const-wide v13, 0x10e00000005L

    invoke-virtual {v0, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7655
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7611
    .end local v4    # "token":J
    .end local v6    # "initMode":J
    .end local v8    # "modMode":J
    .end local v10    # "ds":I
    .end local v11    # "psm":I
    .end local v12    # "im":I
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    .line 7657
    .end local v3    # "i":I
    :cond_94
    return-void

    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_4a
        :pswitch_48
        :pswitch_46
    .end packed-switch
.end method

.method private static greylist-max-o dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z
    .registers 33
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "steps"    # Landroid/os/BatteryStats$LevelStepTracker;
    .param p4, "checkin"    # Z

    .line 7526
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-nez v2, :cond_a

    .line 7527
    return v3

    .line 7529
    :cond_a
    iget v4, v2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 7530
    .local v4, "count":I
    if-gtz v4, :cond_f

    .line 7531
    return v3

    .line 7533
    :cond_f
    if-nez p4, :cond_14

    .line 7534
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7536
    :cond_14
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    .line 7537
    .local v5, "lineArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_18
    const/4 v7, 0x1

    if-ge v6, v4, :cond_15d

    .line 7538
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v8

    .line 7539
    .local v8, "duration":J
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v10

    .line 7540
    .local v10, "level":I
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v11

    int-to-long v11, v11

    .line 7541
    .local v11, "initMode":J
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v13

    int-to-long v13, v13

    .line 7542
    .local v13, "modMode":J
    const-wide/16 v15, 0x8

    const-wide/16 v17, 0x4

    const-wide/16 v19, 0x3

    const-wide/16 v21, 0x0

    if-eqz p4, :cond_b6

    .line 7543
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v3

    .line 7544
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v7

    .line 7545
    and-long v23, v13, v19

    cmp-long v23, v23, v21

    const-string v24, ""

    const/16 v25, 0x2

    if-nez v23, :cond_76

    .line 7546
    move/from16 v23, v7

    move-wide/from16 v26, v8

    .end local v8    # "duration":J
    .local v26, "duration":J
    and-long v7, v11, v19

    long-to-int v7, v7

    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_160

    .line 7551
    const-string v7, "?"

    aput-object v7, v5, v25

    goto :goto_7a

    .line 7550
    :pswitch_5e
    const-string/jumbo v7, "sds"

    aput-object v7, v5, v25

    goto :goto_7a

    .line 7549
    :pswitch_64
    const-string/jumbo v7, "sd"

    aput-object v7, v5, v25

    goto :goto_7a

    .line 7548
    :pswitch_6a
    const-string/jumbo v7, "s+"

    aput-object v7, v5, v25

    goto :goto_7a

    .line 7547
    :pswitch_70
    const-string/jumbo v7, "s-"

    aput-object v7, v5, v25

    goto :goto_7a

    .line 7554
    .end local v26    # "duration":J
    .restart local v8    # "duration":J
    :cond_76
    move-wide/from16 v26, v8

    .end local v8    # "duration":J
    .restart local v26    # "duration":J
    aput-object v24, v5, v25

    .line 7556
    :goto_7a
    and-long v7, v13, v17

    cmp-long v7, v7, v21

    const/4 v8, 0x3

    if-nez v7, :cond_91

    .line 7557
    and-long v17, v11, v17

    cmp-long v7, v17, v21

    if-eqz v7, :cond_8b

    const-string/jumbo v7, "p+"

    goto :goto_8e

    :cond_8b
    const-string/jumbo v7, "p-"

    :goto_8e
    aput-object v7, v5, v8

    goto :goto_93

    .line 7559
    :cond_91
    aput-object v24, v5, v8

    .line 7561
    :goto_93
    and-long v7, v13, v15

    cmp-long v7, v7, v21

    const/4 v8, 0x4

    if-nez v7, :cond_a9

    .line 7562
    and-long/2addr v15, v11

    cmp-long v7, v15, v21

    if-eqz v7, :cond_a3

    const-string/jumbo v7, "i+"

    goto :goto_a6

    :cond_a3
    const-string/jumbo v7, "i-"

    :goto_a6
    aput-object v7, v5, v8

    goto :goto_ab

    .line 7564
    :cond_a9
    aput-object v24, v5, v8

    .line 7566
    :goto_ab
    const-string/jumbo v7, "i"

    move-object v8, v5

    check-cast v8, [Ljava/lang/Object;

    invoke-static {v0, v3, v7, v1, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_154

    .line 7568
    .end local v26    # "duration":J
    .restart local v8    # "duration":J
    :cond_b6
    move/from16 v23, v7

    move-wide/from16 v26, v8

    .end local v8    # "duration":J
    .restart local v26    # "duration":J
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7569
    const-string v7, "#"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7570
    move-wide/from16 v7, v26

    .end local v26    # "duration":J
    .local v7, "duration":J
    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 7571
    const-string v9, " to "

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 7572
    const/4 v9, 0x0

    .line 7573
    .local v9, "haveModes":Z
    and-long v24, v13, v19

    cmp-long v24, v24, v21

    const-string v3, " ("

    if-nez v24, :cond_10e

    .line 7574
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7575
    and-long v1, v11, v19

    long-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    packed-switch v1, :pswitch_data_16c

    .line 7580
    const-string/jumbo v1, "screen-?"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_10d

    .line 7579
    :pswitch_f2
    const-string/jumbo v1, "screen-doze-suspend"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_10d

    .line 7578
    :pswitch_f9
    const-string/jumbo v1, "screen-doze"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_10d

    .line 7577
    :pswitch_100
    const-string/jumbo v1, "screen-on"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_10d

    .line 7576
    :pswitch_107
    const-string/jumbo v1, "screen-off"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7582
    :goto_10d
    const/4 v9, 0x1

    .line 7584
    :cond_10e
    and-long v1, v13, v17

    cmp-long v1, v1, v21

    const-string v2, ", "

    if-nez v1, :cond_12f

    .line 7585
    if-eqz v9, :cond_11a

    move-object v1, v2

    goto :goto_11b

    :cond_11a
    move-object v1, v3

    :goto_11b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7586
    and-long v17, v11, v17

    cmp-long v1, v17, v21

    if-eqz v1, :cond_128

    .line 7587
    const-string/jumbo v1, "power-save-on"

    goto :goto_12b

    :cond_128
    const-string/jumbo v1, "power-save-off"

    .line 7586
    :goto_12b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7588
    const/4 v9, 0x1

    .line 7590
    :cond_12f
    and-long v17, v13, v15

    cmp-long v1, v17, v21

    if-nez v1, :cond_14a

    .line 7591
    if-eqz v9, :cond_138

    move-object v3, v2

    :cond_138
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7592
    and-long v1, v11, v15

    cmp-long v1, v1, v21

    if-eqz v1, :cond_144

    .line 7593
    const-string v1, "device-idle-on"

    goto :goto_146

    :cond_144
    const-string v1, "device-idle-off"

    .line 7592
    :goto_146
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7594
    const/4 v9, 0x1

    .line 7596
    :cond_14a
    if-eqz v9, :cond_151

    .line 7597
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7599
    :cond_151
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 7537
    .end local v7    # "duration":J
    .end local v9    # "haveModes":Z
    .end local v10    # "level":I
    .end local v11    # "initMode":J
    .end local v13    # "modMode":J
    :goto_154
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    goto/16 :goto_18

    :cond_15d
    move/from16 v23, v7

    .line 7602
    .end local v6    # "i":I
    return v23

    :pswitch_data_160
    .packed-switch 0x1
        :pswitch_70
        :pswitch_6a
        :pswitch_64
        :pswitch_5e
    .end packed-switch

    :pswitch_data_16c
    .packed-switch 0x1
        :pswitch_107
        :pswitch_100
        :pswitch_f9
        :pswitch_f2
    .end packed-switch
.end method

.method private blacklist dumpHistory(Ljava/io/PrintWriter;IJZ)V
    .registers 30
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "flags"    # I
    .param p3, "histStart"    # J
    .param p5, "checkin"    # Z

    .line 7668
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v9, p2

    move/from16 v7, p5

    new-instance v2, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v2, v9}, Landroid/os/BatteryStats$HistoryPrinter;-><init>(I)V

    .line 7669
    .local v2, "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    monitor-enter p0

    .line 7670
    const/4 v0, 0x1

    if-nez v7, :cond_81

    .line 7671
    :try_start_11
    invoke-virtual {v1}, Landroid/os/BatteryStats;->getHistoryTotalSize()I

    move-result v4

    int-to-long v4, v4

    .line 7672
    .local v4, "historyTotalSize":J
    invoke-virtual {v1}, Landroid/os/BatteryStats;->getHistoryUsedSize()I

    move-result v6

    int-to-long v10, v6

    .line 7673
    .local v10, "historyUsedSize":J
    const-string v6, "Battery History"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7674
    invoke-static {v2}, Landroid/os/BatteryStats$HistoryPrinter;->-$$Nest$fgetmFormatVersion(Landroid/os/BatteryStats$HistoryPrinter;)I

    move-result v6

    if-eq v6, v0, :cond_46

    .line 7675
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " [Format: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/os/BatteryStats$HistoryPrinter;->-$$Nest$fgetmFormatVersion(Landroid/os/BatteryStats$HistoryPrinter;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7677
    :cond_46
    const-string v6, " ("

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7678
    const-wide/16 v12, 0x64

    mul-long/2addr v12, v10

    div-long/2addr v12, v4

    invoke-virtual {v3, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 7679
    const-string v6, "% used, "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7680
    invoke-direct {v1, v3, v10, v11}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 7681
    const-string v6, " used of "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7682
    invoke-direct {v1, v3, v4, v5}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 7683
    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7684
    invoke-virtual {v1}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 7685
    const-string v6, " strings using "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7686
    invoke-virtual {v1}, Landroid/os/BatteryStats;->getHistoryStringPoolBytes()I

    move-result v6

    int-to-long v12, v6

    invoke-direct {v1, v3, v12, v13}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 7687
    const-string v6, "):"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7688
    .end local v4    # "historyTotalSize":J
    .end local v10    # "historyUsedSize":J
    goto :goto_84

    .line 7689
    :cond_81
    invoke-direct {v1, v3, v7}, Landroid/os/BatteryStats;->dumpHistoryTagPoolLocked(Ljava/io/PrintWriter;Z)V

    .line 7691
    :goto_84
    monitor-exit p0
    :try_end_85
    .catchall {:try_start_11 .. :try_end_85} :catchall_244

    .line 7693
    const-wide/16 v4, -0x1

    .line 7694
    .local v4, "lastTime":J
    const-wide/16 v10, -0x1

    .line 7695
    .local v10, "baseTime":J
    const/4 v6, 0x0

    .line 7696
    .local v6, "printed":Z
    const/4 v8, 0x0

    .line 7697
    .local v8, "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    nop

    .line 7698
    const-wide/16 v12, 0x0

    const-wide/16 v14, -0x1

    invoke-virtual {v1, v12, v13, v14, v15}, Landroid/os/BatteryStats;->iterateBatteryStatsHistory(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object v14

    move-wide v15, v10

    move-object v10, v8

    .line 7700
    .end local v8    # "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    .local v10, "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    .local v14, "iterator":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    .local v15, "baseTime":J
    :goto_96
    :try_start_96
    invoke-virtual {v14}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v8
    :try_end_9a
    .catchall {:try_start_96 .. :try_end_9a} :catchall_235

    move-wide/from16 v17, v4

    .end local v4    # "lastTime":J
    .local v17, "lastTime":J
    move-object v4, v8

    .local v4, "rec":Landroid/os/BatteryStats$HistoryItem;
    if-eqz v8, :cond_214

    .line 7702
    :try_start_9f
    iget-wide v0, v4, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v17, v0

    .line 7703
    cmp-long v0, v15, v12

    if-gez v0, :cond_a9

    .line 7704
    move-wide/from16 v15, v17

    .line 7706
    :cond_a9
    iget-wide v0, v4, Landroid/os/BatteryStats$HistoryItem;->time:J
    :try_end_ab
    .catchall {:try_start_9f .. :try_end_ab} :catchall_1ff

    cmp-long v0, v0, p3

    if-ltz v0, :cond_1f2

    .line 7707
    cmp-long v0, p3, v12

    const/4 v1, 0x0

    if-ltz v0, :cond_1d9

    if-nez v6, :cond_1d9

    .line 7708
    :try_start_b6
    iget-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_b8
    .catchall {:try_start_b6 .. :try_end_b8} :catchall_1d2

    const/4 v5, 0x5

    if-eq v0, v5, :cond_103

    :try_start_bb
    iget-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v8, 0x7

    if-eq v0, v8, :cond_103

    iget-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v8, 0x4

    if-eq v0, v8, :cond_103

    iget-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_c7
    .catchall {:try_start_bb .. :try_end_c7} :catchall_fc

    const/16 v8, 0x8

    if-ne v0, v8, :cond_ce

    move-wide/from16 v19, v12

    goto :goto_105

    .line 7716
    :cond_ce
    move-wide/from16 v19, v12

    :try_start_d0
    iget-wide v11, v4, Landroid/os/BatteryStats$HistoryItem;->currentTime:J
    :try_end_d2
    .catchall {:try_start_d0 .. :try_end_d2} :catchall_fa

    cmp-long v8, v11, v19

    if-eqz v8, :cond_f7

    .line 7717
    const/4 v11, 0x1

    .line 7718
    .end local v6    # "printed":Z
    .local v11, "printed":Z
    :try_start_d7
    iget-byte v6, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move v12, v6

    .line 7719
    .local v12, "cmd":B
    iput-byte v5, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_dc
    .catchall {:try_start_d7 .. :try_end_dc} :catchall_f1

    .line 7720
    and-int/lit8 v5, v9, 0x20

    if-eqz v5, :cond_e2

    const/4 v8, 0x1

    goto :goto_e3

    :cond_e2
    move v8, v1

    :goto_e3
    move-wide v5, v15

    .end local v15    # "baseTime":J
    .local v5, "baseTime":J
    :try_start_e4
    invoke-virtual/range {v2 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    :try_end_e7
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_eb

    .line 7722
    .end local v5    # "baseTime":J
    .restart local v15    # "baseTime":J
    :try_start_e7
    iput-byte v12, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_e9
    .catchall {:try_start_e7 .. :try_end_e9} :catchall_f1

    move-wide v5, v15

    goto :goto_117

    .line 7771
    .end local v12    # "cmd":B
    .end local v15    # "baseTime":J
    .restart local v5    # "baseTime":J
    :catchall_eb
    move-exception v0

    move-wide v15, v5

    move-object/from16 v3, p1

    goto/16 :goto_1f0

    .end local v5    # "baseTime":J
    .restart local v15    # "baseTime":J
    :catchall_f1
    move-exception v0

    move-object/from16 v3, p1

    move v6, v11

    goto/16 :goto_202

    .line 7716
    .end local v11    # "printed":Z
    .restart local v6    # "printed":Z
    :cond_f7
    move v11, v6

    move-wide v5, v15

    goto :goto_117

    .line 7771
    :catchall_fa
    move-exception v0

    goto :goto_ff

    :catchall_fc
    move-exception v0

    move-wide/from16 v19, v12

    :goto_ff
    move-object/from16 v3, p1

    goto/16 :goto_202

    .line 7708
    :cond_103
    move-wide/from16 v19, v12

    .line 7712
    :goto_105
    const/4 v11, 0x1

    .line 7713
    .end local v6    # "printed":Z
    .restart local v11    # "printed":Z
    and-int/lit8 v3, v9, 0x20

    if-eqz v3, :cond_10c

    const/4 v8, 0x1

    goto :goto_10d

    :cond_10c
    move v8, v1

    :goto_10d
    move-object/from16 v3, p1

    move/from16 v7, p5

    move-wide v5, v15

    .end local v15    # "baseTime":J
    .restart local v5    # "baseTime":J
    :try_start_112
    invoke-virtual/range {v2 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 7715
    iput-byte v1, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 7724
    :goto_117
    if-eqz v10, :cond_1c9

    .line 7725
    iget-byte v3, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_11b
    .catchall {:try_start_112 .. :try_end_11b} :catchall_1cb

    if-eqz v3, :cond_135

    .line 7726
    and-int/lit8 v3, v9, 0x20

    if-eqz v3, :cond_123

    const/4 v8, 0x1

    goto :goto_124

    :cond_123
    move v8, v1

    :goto_124
    move-object/from16 v3, p1

    move/from16 v7, p5

    :try_start_128
    invoke-virtual/range {v2 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 7728
    iput-byte v1, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_12d
    .catchall {:try_start_128 .. :try_end_12d} :catchall_12e

    goto :goto_135

    .line 7771
    :catchall_12e
    move-exception v0

    move-object/from16 v3, p1

    move-wide v15, v5

    move v6, v11

    goto/16 :goto_202

    .line 7730
    :cond_135
    :goto_135
    :try_start_135
    iget v3, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move v12, v3

    .line 7731
    .local v12, "oldEventCode":I
    iget-object v3, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object v13, v3

    .line 7732
    .local v13, "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    new-instance v3, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v3}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v3, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 7733
    const/4 v3, 0x0

    move v15, v3

    .local v15, "i":I
    :goto_144
    const/16 v3, 0x17

    if-ge v15, v3, :cond_1bc

    .line 7734
    nop

    .line 7735
    invoke-virtual {v10, v15}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v16, v3

    .line 7736
    .local v16, "active":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v16, :cond_154

    .line 7737
    move-wide v7, v5

    goto/16 :goto_1b8

    .line 7740
    :cond_154
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_15c
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    move-object/from16 v22, v3

    .line 7741
    .local v22, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 7742
    .local v3, "uids":Landroid/util/SparseIntArray;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_171
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_1b2

    .line 7743
    iput v15, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 7744
    iget-object v8, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Ljava/lang/String;

    iput-object v0, v8, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 7745
    iget-object v0, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    iput v8, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 7746
    iget-object v0, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    iput v8, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 7747
    and-int/lit8 v0, v9, 0x20

    if-eqz v0, :cond_19b

    const/4 v8, 0x1

    goto :goto_19c

    :cond_19b
    move v8, v1

    :goto_19c
    move-object v0, v3

    move/from16 v23, v7

    move-object/from16 v3, p1

    move/from16 v7, p5

    .end local v3    # "uids":Landroid/util/SparseIntArray;
    .end local v7    # "j":I
    .local v0, "uids":Landroid/util/SparseIntArray;
    .local v23, "j":I
    invoke-virtual/range {v2 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    :try_end_1a6
    .catchall {:try_start_135 .. :try_end_1a6} :catchall_1cb

    move-wide v7, v5

    .line 7749
    .end local v5    # "baseTime":J
    .local v7, "baseTime":J
    const/4 v3, 0x0

    :try_start_1a8
    iput-object v3, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 7750
    iput-object v3, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 7742
    add-int/lit8 v3, v23, 0x1

    move-wide v5, v7

    move v7, v3

    move-object v3, v0

    .end local v23    # "j":I
    .local v3, "j":I
    goto :goto_171

    .end local v0    # "uids":Landroid/util/SparseIntArray;
    .local v3, "uids":Landroid/util/SparseIntArray;
    .restart local v5    # "baseTime":J
    .local v7, "j":I
    :cond_1b2
    move-object v0, v3

    move/from16 v23, v7

    move-wide v7, v5

    .line 7752
    .end local v3    # "uids":Landroid/util/SparseIntArray;
    .end local v5    # "baseTime":J
    .end local v22    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .local v7, "baseTime":J
    goto :goto_15c

    .line 7740
    .end local v7    # "baseTime":J
    .restart local v5    # "baseTime":J
    :cond_1b7
    move-wide v7, v5

    .line 7733
    .end local v5    # "baseTime":J
    .end local v16    # "active":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v7    # "baseTime":J
    :goto_1b8
    add-int/lit8 v15, v15, 0x1

    move-wide v5, v7

    goto :goto_144

    .end local v7    # "baseTime":J
    .restart local v5    # "baseTime":J
    :cond_1bc
    move-wide v7, v5

    .line 7754
    .end local v5    # "baseTime":J
    .end local v15    # "i":I
    .restart local v7    # "baseTime":J
    iput v12, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 7755
    iput-object v13, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;
    :try_end_1c1
    .catchall {:try_start_1a8 .. :try_end_1c1} :catchall_1c3

    .line 7756
    const/4 v10, 0x0

    goto :goto_1dd

    .line 7771
    .end local v12    # "oldEventCode":I
    .end local v13    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :catchall_1c3
    move-exception v0

    move-object/from16 v3, p1

    move-wide v15, v7

    move v6, v11

    goto :goto_202

    .line 7724
    .end local v7    # "baseTime":J
    .restart local v5    # "baseTime":J
    :cond_1c9
    move-wide v7, v5

    .end local v5    # "baseTime":J
    .restart local v7    # "baseTime":J
    goto :goto_1dd

    .line 7771
    .end local v7    # "baseTime":J
    .restart local v5    # "baseTime":J
    :catchall_1cb
    move-exception v0

    move-wide v7, v5

    move-object/from16 v3, p1

    move-wide v15, v7

    move v6, v11

    .end local v5    # "baseTime":J
    .restart local v7    # "baseTime":J
    goto :goto_202

    .end local v7    # "baseTime":J
    .end local v11    # "printed":Z
    .restart local v6    # "printed":Z
    .local v15, "baseTime":J
    :catchall_1d2
    move-exception v0

    move-wide/from16 v19, v12

    move-wide v7, v15

    move-object/from16 v3, p1

    .end local v15    # "baseTime":J
    .restart local v7    # "baseTime":J
    goto :goto_202

    .line 7707
    .end local v7    # "baseTime":J
    .restart local v15    # "baseTime":J
    :cond_1d9
    move-wide/from16 v19, v12

    move-wide v7, v15

    .line 7759
    .end local v15    # "baseTime":J
    .restart local v7    # "baseTime":J
    move v11, v6

    .end local v6    # "printed":Z
    .restart local v11    # "printed":Z
    :goto_1dd
    and-int/lit8 v0, v9, 0x20

    if-eqz v0, :cond_1e2

    const/4 v1, 0x1

    :cond_1e2
    move-object/from16 v3, p1

    move-wide v5, v7

    move/from16 v7, p5

    move v8, v1

    .end local v7    # "baseTime":J
    .restart local v5    # "baseTime":J
    :try_start_1e8
    invoke-virtual/range {v2 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    :try_end_1eb
    .catchall {:try_start_1e8 .. :try_end_1eb} :catchall_1ee

    move-wide v15, v5

    .end local v5    # "baseTime":J
    .restart local v15    # "baseTime":J
    move v6, v11

    goto :goto_1f4

    .line 7771
    .end local v15    # "baseTime":J
    .restart local v5    # "baseTime":J
    :catchall_1ee
    move-exception v0

    move-wide v15, v5

    :goto_1f0
    move v6, v11

    .end local v5    # "baseTime":J
    .restart local v15    # "baseTime":J
    goto :goto_202

    .line 7706
    .end local v11    # "printed":Z
    .restart local v6    # "printed":Z
    :cond_1f2
    move-wide/from16 v19, v12

    .line 7775
    :goto_1f4
    move-object/from16 v1, p0

    move/from16 v7, p5

    move-wide/from16 v4, v17

    move-wide/from16 v12, v19

    const/4 v0, 0x1

    goto/16 :goto_96

    .line 7771
    :catchall_1ff
    move-exception v0

    move-wide/from16 v19, v12

    .line 7772
    .local v0, "t":Ljava/lang/Throwable;
    :goto_202
    :try_start_202
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 7773
    const-string v1, "BatteryStats"

    const-string v5, "Corrupted battery history"

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20c
    .catchall {:try_start_202 .. :try_end_20c} :catchall_20f

    .line 7774
    move-wide/from16 v4, v17

    goto :goto_218

    .line 7697
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v4    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :catchall_20f
    move-exception v0

    move-object v1, v0

    move-wide/from16 v4, v17

    goto :goto_239

    .line 7700
    .restart local v4    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_214
    move-wide/from16 v19, v12

    move-wide/from16 v4, v17

    .line 7777
    .end local v17    # "lastTime":J
    .local v4, "lastTime":J
    :goto_218
    if-eqz v14, :cond_21d

    invoke-virtual {v14}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    .line 7778
    .end local v14    # "iterator":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    :cond_21d
    cmp-long v0, p3, v19

    if-ltz v0, :cond_234

    .line 7779
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    .line 7780
    if-eqz p5, :cond_229

    const-string v0, "NEXT: "

    goto :goto_22b

    :cond_229
    const-string v0, "  NEXT: "

    :goto_22b
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 7782
    :cond_234
    return-void

    .line 7697
    .restart local v14    # "iterator":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    :catchall_235
    move-exception v0

    move-wide/from16 v17, v4

    move-object v1, v0

    :goto_239
    if-eqz v14, :cond_243

    :try_start_23b
    invoke-virtual {v14}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V
    :try_end_23e
    .catchall {:try_start_23b .. :try_end_23e} :catchall_23f

    goto :goto_243

    :catchall_23f
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_243
    :goto_243
    throw v1

    .line 7691
    .end local v4    # "lastTime":J
    .end local v6    # "printed":Z
    .end local v10    # "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    .end local v14    # "iterator":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    .end local v15    # "baseTime":J
    :catchall_244
    move-exception v0

    :try_start_245
    monitor-exit p0
    :try_end_246
    .catchall {:try_start_245 .. :try_end_246} :catchall_244

    throw v0
.end method

.method private blacklist dumpHistoryTagPoolLocked(Ljava/io/PrintWriter;Z)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "checkin"    # Z

    .line 7785
    if-eqz p2, :cond_52

    .line 7786
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v1

    if-ge v0, v1, :cond_52

    .line 7787
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7788
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 7789
    const-string/jumbo v2, "hsp"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7790
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 7791
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7792
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7793
    invoke-virtual {p0, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7794
    const-string v1, ",\""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7795
    invoke-virtual {p0, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v1

    .line 7796
    .local v1, "str":Ljava/lang/String;
    const-string v2, "\""

    if-eqz v1, :cond_49

    .line 7797
    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 7798
    const-string v3, "\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 7799
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7801
    :cond_49
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7802
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7786
    .end local v1    # "str":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7805
    .end local v0    # "i":I
    :cond_52
    return-void
.end method

.method private static final varargs greylist dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 4011
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 4012
    array-length v0, p4

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_14

    aget-object v2, p4, v1

    .line 4013
    .local v2, "arg":Ljava/lang/Object;
    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 4014
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4012
    .end local v2    # "arg":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4016
    :cond_14
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 4017
    return-void
.end method

.method private static final greylist-max-o dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 3991
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3992
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3993
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 3994
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3995
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3996
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3997
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3998
    return-void
.end method

.method private blacklist dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .registers 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "flags"    # I
    .param p4, "reqUid"    # I
    .param p5, "filtering"    # Z
    .param p6, "dumpHelper"    # Landroid/os/BatteryStats$BatteryStatsDumpHelper;

    .line 7885
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-nez p5, :cond_73

    .line 7886
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v2

    .line 7887
    .local v2, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 7888
    .local v3, "NU":I
    const/4 v4, 0x0

    .line 7889
    .local v4, "didPid":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 7890
    .local v5, "nowRealtime":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_14
    if-ge v9, v3, :cond_6b

    .line 7891
    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Uid;

    .line 7892
    .local v10, "uid":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v11

    .line 7893
    .local v11, "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    if-eqz v11, :cond_66

    .line 7894
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_23
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v12, v13, :cond_63

    .line 7895
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$Uid$Pid;

    .line 7896
    .local v13, "pid":Landroid/os/BatteryStats$Uid$Pid;
    if-nez v4, :cond_37

    .line 7897
    const-string v14, "Per-PID Stats:"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7898
    const/4 v4, 0x1

    .line 7900
    :cond_37
    iget-wide v14, v13, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    const-wide/16 v16, 0x0

    iget v7, v13, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v7, :cond_44

    .line 7901
    iget-wide v7, v13, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v7, v5, v7

    goto :goto_46

    :cond_44
    move-wide/from16 v7, v16

    :goto_46
    add-long/2addr v14, v7

    .line 7902
    .local v14, "time":J
    const-string v7, "  PID "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 7903
    const-string v7, " wake time: "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7904
    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 7905
    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7894
    .end local v13    # "pid":Landroid/os/BatteryStats$Uid$Pid;
    .end local v14    # "time":J
    add-int/lit8 v12, v12, 0x1

    goto :goto_23

    :cond_63
    const-wide/16 v16, 0x0

    goto :goto_68

    .line 7893
    .end local v12    # "j":I
    :cond_66
    const-wide/16 v16, 0x0

    .line 7890
    .end local v10    # "uid":Landroid/os/BatteryStats$Uid;
    .end local v11    # "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    :goto_68
    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_6b
    const-wide/16 v16, 0x0

    .line 7909
    .end local v9    # "i":I
    if-eqz v4, :cond_75

    .line 7910
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_75

    .line 7885
    .end local v2    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v3    # "NU":I
    .end local v4    # "didPid":Z
    .end local v5    # "nowRealtime":J
    :cond_73
    const-wide/16 v16, 0x0

    .line 7914
    :cond_75
    :goto_75
    const/4 v7, 0x0

    if-eqz p5, :cond_7c

    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_103

    .line 7915
    :cond_7c
    nop

    .line 7916
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v2

    .line 7915
    const-string v8, "  "

    const-string v3, "Discharge step durations:"

    invoke-static {v1, v8, v3, v2, v7}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v2

    const-wide/16 v9, 0x3e8

    if-eqz v2, :cond_d8

    .line 7917
    nop

    .line 7918
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-long/2addr v2, v9

    .line 7917
    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v11

    .line 7919
    .local v11, "timeRemaining":J
    cmp-long v2, v11, v16

    if-ltz v2, :cond_a8

    .line 7920
    const-string v2, "  Estimated discharge time remaining: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7921
    div-long v2, v11, v9

    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 7922
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 7924
    :cond_a8
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v18

    .line 7925
    .local v18, "steps":Landroid/os/BatteryStats$LevelStepTracker;
    const/4 v2, 0x0

    move v13, v2

    .local v13, "i":I
    :goto_ae
    sget-object v2, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v2, v2

    if-ge v13, v2, :cond_d5

    .line 7926
    sget-object v2, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v3, v2, v13

    sget-object v2, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    aget v2, v2, v13

    int-to-long v4, v2

    sget-object v2, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v2, v2, v13

    int-to-long v14, v2

    .line 7927
    const/16 v23, 0x0

    move-wide/from16 v19, v4

    move-wide/from16 v21, v14

    invoke-virtual/range {v18 .. v23}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v5

    .line 7926
    const-string v2, "  Estimated "

    const-string v4, " time: "

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 7925
    add-int/lit8 v13, v13, 0x1

    goto :goto_ae

    .line 7930
    .end local v13    # "i":I
    :cond_d5
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 7932
    .end local v11    # "timeRemaining":J
    .end local v18    # "steps":Landroid/os/BatteryStats$LevelStepTracker;
    :cond_d8
    nop

    .line 7933
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v2

    .line 7932
    const-string v3, "Charge step durations:"

    invoke-static {v1, v8, v3, v2, v7}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v2

    if-eqz v2, :cond_103

    .line 7934
    nop

    .line 7935
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-long/2addr v2, v9

    .line 7934
    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v2

    .line 7936
    .local v2, "timeRemaining":J
    cmp-long v4, v2, v16

    if-ltz v4, :cond_100

    .line 7937
    const-string v4, "  Estimated charge time remaining: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7938
    div-long v4, v2, v9

    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 7939
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 7941
    :cond_100
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 7944
    .end local v2    # "timeRemaining":J
    :cond_103
    const/4 v8, 0x1

    if-eqz p5, :cond_10a

    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_259

    .line 7945
    :cond_10a
    const-string v2, "Daily stats:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7946
    const-string v2, "  Current start time: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7947
    nop

    .line 7948
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getCurrentDailyStartTime()J

    move-result-wide v2

    .line 7947
    const-string/jumbo v9, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v9, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 7948
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7947
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7949
    const-string v2, "  Next min deadline: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7950
    nop

    .line 7951
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getNextMinDailyDeadline()J

    move-result-wide v2

    .line 7950
    invoke-static {v9, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 7951
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7950
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7952
    const-string v2, "  Next max deadline: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7953
    nop

    .line 7954
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getNextMaxDailyDeadline()J

    move-result-wide v2

    .line 7953
    invoke-static {v9, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 7954
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7953
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7955
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7956
    .local v5, "sb":Ljava/lang/StringBuilder;
    new-array v6, v8, [I

    .line 7957
    .local v6, "outInt":[I
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v4

    .line 7958
    .local v4, "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v10

    .line 7959
    .local v10, "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDailyPackageChanges()Ljava/util/ArrayList;

    move-result-object v11

    .line 7960
    .local v11, "pkgc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    iget v2, v4, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const-string v12, "    "

    if-gtz v2, :cond_175

    iget v2, v10, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v2, :cond_175

    if-eqz v11, :cond_173

    goto :goto_175

    :cond_173
    move-object v13, v4

    goto :goto_1c2

    .line 7961
    :cond_175
    :goto_175
    and-int/lit8 v2, p3, 0x4

    if-nez v2, :cond_197

    if-nez p5, :cond_17d

    move-object v13, v4

    goto :goto_198

    .line 7974
    :cond_17d
    const-string v2, "  Current daily steps:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7975
    const-string v2, "    "

    const-string v3, "Discharge"

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 7977
    move-object v13, v4

    .end local v4    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .local v13, "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    const-string v2, "    "

    const-string v3, "Charge"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v4, v10

    .end local v10    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    .local v4, "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .end local v4    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    .restart local v10    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    goto :goto_1c2

    .line 7961
    .end local v13    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .local v4, "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    :cond_197
    move-object v13, v4

    .line 7962
    .end local v4    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .restart local v13    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    :goto_198
    const-string v0, "  Current daily discharge step durations:"

    invoke-static {v1, v12, v0, v13, v7}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_1aa

    .line 7964
    const-string v2, "      "

    const-string v3, "Discharge"

    move-object/from16 v0, p0

    move-object v4, v13

    .end local v13    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .restart local v4    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 7967
    .end local v4    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .restart local v13    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    :cond_1aa
    const-string v0, "  Current daily charge step durations:"

    invoke-static {v1, v12, v0, v10, v7}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_1bd

    .line 7969
    const-string v2, "      "

    const-string v3, "Charge"

    move-object/from16 v0, p0

    move-object v4, v10

    .end local v10    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    .local v4, "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .end local v4    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    .restart local v10    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    goto :goto_1bf

    .line 7967
    :cond_1bd
    move-object/from16 v0, p0

    .line 7972
    :goto_1bf
    invoke-direct {v0, v1, v12, v11}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 7982
    :goto_1c2
    const/4 v2, 0x0

    .line 7983
    .local v2, "curIndex":I
    :goto_1c3
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;

    move-result-object v3

    move-object v14, v3

    .local v14, "dit":Landroid/os/BatteryStats$DailyItem;
    if-eqz v3, :cond_256

    .line 7984
    add-int/lit8 v15, v2, 0x1

    .line 7985
    .end local v2    # "curIndex":I
    .local v15, "curIndex":I
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_1d3

    .line 7986
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 7988
    :cond_1d3
    const-string v2, "  Daily from "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7989
    iget-wide v2, v14, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    invoke-static {v9, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7990
    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7991
    iget-wide v2, v14, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    invoke-static {v9, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7992
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7993
    and-int/lit8 v2, p3, 0x4

    if-nez v2, :cond_21a

    if-nez p5, :cond_203

    goto :goto_21a

    .line 8006
    :cond_203
    const-string v3, "Discharge"

    iget-object v4, v14, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v2, "    "

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 8008
    const-string v3, "Charge"

    iget-object v4, v14, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v2, "    "

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_252

    .line 7994
    :cond_21a
    :goto_21a
    const-string v0, "    Discharge step durations:"

    iget-object v2, v14, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v3, "      "

    invoke-static {v1, v3, v0, v2, v7}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_234

    .line 7996
    move-object v0, v3

    const-string v3, "Discharge"

    iget-object v4, v14, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v2, "        "

    move-object v8, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_235

    .line 7994
    :cond_234
    move-object v8, v3

    .line 7999
    :goto_235
    const-string v0, "    Charge step durations:"

    iget-object v2, v14, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-static {v1, v8, v0, v2, v7}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_24b

    .line 8001
    const-string v3, "Charge"

    iget-object v4, v14, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v2, "        "

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_24d

    .line 7999
    :cond_24b
    move-object/from16 v0, p0

    .line 8004
    :goto_24d
    iget-object v2, v14, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v12, v2}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 7983
    .end local v14    # "dit":Landroid/os/BatteryStats$DailyItem;
    :goto_252
    move v2, v15

    const/4 v8, 0x1

    goto/16 :goto_1c3

    .line 8012
    .end local v15    # "curIndex":I
    .restart local v2    # "curIndex":I
    .restart local v14    # "dit":Landroid/os/BatteryStats$DailyItem;
    :cond_256
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 8014
    .end local v2    # "curIndex":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "outInt":[I
    .end local v10    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v11    # "pkgc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    .end local v13    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v14    # "dit":Landroid/os/BatteryStats$DailyItem;
    :cond_259
    if-eqz p5, :cond_25f

    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_2a3

    .line 8015
    :cond_25f
    const-string v2, "Statistics since last charge:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8016
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  System starts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currently on battery: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8017
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8016
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8018
    and-int/lit8 v2, p3, 0x40

    if-eqz v2, :cond_292

    const/4 v6, 0x1

    goto :goto_293

    :cond_292
    move v6, v7

    :goto_293
    const-string v3, ""

    const/4 v4, 0x0

    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object v2, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    .line 8020
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 8022
    :cond_2a3
    return-void
.end method

.method private blacklist dumpProtoAppsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;Ljava/util/List;Landroid/os/BatteryStats$ProportionalAttributionCalculator;)V
    .registers 67
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "stats"    # Landroid/os/BatteryUsageStats;
    .param p4, "proportionalAttributionCalculator"    # Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "Landroid/os/BatteryUsageStats;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Landroid/os/BatteryStats$ProportionalAttributionCalculator;",
            ")V"
        }
    .end annotation

    .line 8140
    .local p3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p1

    move-object/from16 v7, p3

    const/4 v9, 0x0

    .line 8141
    .local v9, "which":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v10, v1, v3

    .line 8142
    .local v10, "rawUptimeUs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 8143
    .local v12, "rawRealtimeMs":J
    mul-long v4, v12, v3

    .line 8144
    .local v4, "rawRealtimeUs":J
    move-object/from16 v14, p0

    invoke-virtual {v14, v10, v11}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v1

    .line 8146
    .local v1, "batteryUptimeUs":J
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    move-object v15, v3

    .line 8147
    .local v15, "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v7, :cond_60

    .line 8148
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_5b

    .line 8149
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 8150
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    move/from16 v16, v3

    .end local v3    # "i":I
    .local v16, "i":I
    iget v3, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 8151
    .local v3, "aid":I
    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 8152
    .local v17, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v17, :cond_4d

    .line 8153
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v18

    .line 8154
    move-wide/from16 v18, v4

    move-object/from16 v4, v17

    .end local v17    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v18, "rawRealtimeUs":J
    invoke-virtual {v15, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_51

    .line 8152
    .end local v18    # "rawRealtimeUs":J
    .local v4, "rawRealtimeUs":J
    .restart local v17    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4d
    move-wide/from16 v18, v4

    .end local v4    # "rawRealtimeUs":J
    .restart local v18    # "rawRealtimeUs":J
    move-object/from16 v4, v17

    .line 8156
    .end local v17    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_51
    iget-object v5, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8148
    .end local v3    # "aid":I
    .end local v4    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    add-int/lit8 v3, v16, 0x1

    move-wide/from16 v4, v18

    .end local v16    # "i":I
    .local v3, "i":I
    goto :goto_22

    .end local v18    # "rawRealtimeUs":J
    .local v4, "rawRealtimeUs":J
    :cond_5b
    move/from16 v16, v3

    move-wide/from16 v18, v4

    .end local v3    # "i":I
    .end local v4    # "rawRealtimeUs":J
    .restart local v16    # "i":I
    .restart local v18    # "rawRealtimeUs":J
    goto :goto_62

    .line 8147
    .end local v16    # "i":I
    .end local v18    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    :cond_60
    move-wide/from16 v18, v4

    .line 8160
    .end local v4    # "rawRealtimeUs":J
    .restart local v18    # "rawRealtimeUs":J
    :goto_62
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 8161
    .local v3, "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v4

    .line 8162
    .local v4, "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_71
    if-ltz v5, :cond_8d

    .line 8163
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v6

    move-object/from16 v6, v16

    check-cast v6, Landroid/os/UidBatteryConsumer;

    .line 8164
    .local v6, "bs":Landroid/os/UidBatteryConsumer;
    move-object/from16 v16, v4

    .end local v4    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .local v16, "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    invoke-virtual {v6}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8162
    .end local v6    # "bs":Landroid/os/UidBatteryConsumer;
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v4, v16

    move/from16 v6, v17

    goto :goto_71

    .end local v16    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .restart local v4    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    :cond_8d
    move-object/from16 v16, v4

    move/from16 v17, v6

    .line 8167
    .end local v4    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .end local v5    # "i":I
    .restart local v16    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    invoke-virtual {v14}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v4

    .line 8168
    .local v4, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 8169
    .local v5, "n":I
    const/4 v6, 0x0

    .local v6, "iu":I
    :goto_9a
    if-ge v6, v5, :cond_a93

    .line 8170
    move/from16 v20, v9

    move-wide/from16 v21, v10

    .end local v9    # "which":I
    .end local v10    # "rawUptimeUs":J
    .local v20, "which":I
    .local v21, "rawUptimeUs":J
    const-wide v9, 0x20b00000005L

    invoke-virtual {v0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 8171
    .local v9, "uTkn":J
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid;

    .line 8173
    .local v11, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 8174
    .local v7, "uid":I
    move-wide/from16 v23, v9

    .end local v9    # "uTkn":J
    .local v23, "uTkn":J
    const-wide v9, 0x10500000001L

    invoke-virtual {v0, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8177
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 8178
    .local v9, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v9, :cond_cf

    .line 8179
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v10

    .line 8181
    :cond_cf
    nop

    .line 8182
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v10

    .line 8183
    .local v10, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v28, v3

    move/from16 v3, v27

    .local v3, "ipkg":I
    .local v28, "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    :goto_de
    move/from16 v27, v6

    move/from16 v29, v7

    .end local v6    # "iu":I
    .end local v7    # "uid":I
    .local v27, "iu":I
    .local v29, "uid":I
    const-wide/16 v30, 0x0

    if-ltz v3, :cond_1d0

    .line 8184
    invoke-virtual {v10, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v8, v36

    check-cast v8, Ljava/lang/String;

    .line 8185
    .local v8, "pkg":Ljava/lang/String;
    nop

    .line 8186
    invoke-virtual {v10, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual/range {v36 .. v36}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v6

    .line 8187
    .local v6, "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-nez v7, :cond_10f

    .line 8192
    move-wide/from16 v43, v1

    move/from16 v36, v3

    move-object/from16 v41, v4

    move/from16 v40, v5

    move-object/from16 v46, v9

    move-object/from16 v47, v10

    move-object/from16 v39, v15

    goto/16 :goto_1ba

    .line 8195
    :cond_10f
    move/from16 v36, v3

    move-object v7, v4

    move-object/from16 v39, v15

    const-wide v3, 0x20b00000002L

    .end local v3    # "ipkg":I
    .end local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v15    # "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v7, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v36, "ipkg":I
    .local v39, "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 8196
    .local v14, "pToken":J
    const-wide v3, 0x10900000001L

    invoke-virtual {v0, v3, v4, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8198
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8200
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "isvc":I
    :goto_12e
    if-ltz v3, :cond_1a9

    .line 8201
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 8203
    .local v4, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move/from16 v40, v5

    const/4 v5, 0x0

    .end local v5    # "n":I
    .local v40, "n":I
    invoke-virtual {v4, v1, v2, v5}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v41

    move-wide/from16 v43, v1

    .end local v1    # "batteryUptimeUs":J
    .local v43, "batteryUptimeUs":J
    invoke-static/range {v41 .. v42}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v1

    .line 8204
    .local v1, "startTimeMs":J
    move-object/from16 v41, v7

    .end local v7    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v41, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v7

    .line 8205
    .local v7, "starts":I
    move-object/from16 v42, v8

    .end local v8    # "pkg":Ljava/lang/String;
    .local v42, "pkg":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v8

    .line 8206
    .local v8, "launches":I
    cmp-long v5, v1, v30

    if-nez v5, :cond_15e

    if-nez v7, :cond_15e

    if-nez v8, :cond_15e

    .line 8207
    move-object/from16 v48, v6

    move-object/from16 v46, v9

    move-object/from16 v47, v10

    goto :goto_198

    .line 8210
    :cond_15e
    move-object/from16 v45, v4

    move-object/from16 v46, v9

    move-object/from16 v47, v10

    const-wide v4, 0x20b00000002L

    .end local v4    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v9    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .local v45, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .local v46, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v47, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 8212
    .local v9, "sToken":J
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v48, v6

    const-wide v5, 0x10900000001L

    .end local v6    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .local v48, "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8213
    const-wide v4, 0x10300000002L

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8214
    const-wide v4, 0x10500000003L

    invoke-virtual {v0, v4, v5, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8215
    const-wide v4, 0x10500000004L

    invoke-virtual {v0, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8217
    invoke-virtual {v0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8200
    .end local v1    # "startTimeMs":J
    .end local v7    # "starts":I
    .end local v8    # "launches":I
    .end local v9    # "sToken":J
    .end local v45    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    :goto_198
    add-int/lit8 v3, v3, -0x1

    move/from16 v5, v40

    move-object/from16 v7, v41

    move-object/from16 v8, v42

    move-wide/from16 v1, v43

    move-object/from16 v9, v46

    move-object/from16 v10, v47

    move-object/from16 v6, v48

    goto :goto_12e

    .end local v40    # "n":I
    .end local v41    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v42    # "pkg":Ljava/lang/String;
    .end local v43    # "batteryUptimeUs":J
    .end local v46    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v47    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v48    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .local v1, "batteryUptimeUs":J
    .restart local v5    # "n":I
    .restart local v6    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .local v7, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v8, "pkg":Ljava/lang/String;
    .local v9, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    :cond_1a9
    move-wide/from16 v43, v1

    move/from16 v40, v5

    move-object/from16 v48, v6

    move-object/from16 v41, v7

    move-object/from16 v42, v8

    move-object/from16 v46, v9

    move-object/from16 v47, v10

    .line 8219
    .end local v1    # "batteryUptimeUs":J
    .end local v3    # "isvc":I
    .end local v5    # "n":I
    .end local v6    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v7    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v8    # "pkg":Ljava/lang/String;
    .end local v9    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v40    # "n":I
    .restart local v41    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v42    # "pkg":Ljava/lang/String;
    .restart local v43    # "batteryUptimeUs":J
    .restart local v46    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v47    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v48    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8183
    .end local v14    # "pToken":J
    .end local v42    # "pkg":Ljava/lang/String;
    .end local v48    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    :goto_1ba
    add-int/lit8 v3, v36, -0x1

    move-object/from16 v14, p0

    move/from16 v6, v27

    move/from16 v7, v29

    move-object/from16 v15, v39

    move/from16 v5, v40

    move-object/from16 v4, v41

    move-wide/from16 v1, v43

    move-object/from16 v9, v46

    move-object/from16 v10, v47

    .end local v36    # "ipkg":I
    .local v3, "ipkg":I
    goto/16 :goto_de

    .end local v39    # "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v40    # "n":I
    .end local v41    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v43    # "batteryUptimeUs":J
    .end local v46    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v47    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v1    # "batteryUptimeUs":J
    .local v4, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v5    # "n":I
    .restart local v9    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v15    # "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_1d0
    move-wide/from16 v43, v1

    move/from16 v36, v3

    move-object/from16 v41, v4

    move/from16 v40, v5

    move-object/from16 v46, v9

    move-object/from16 v47, v10

    move-object/from16 v39, v15

    .line 8224
    .end local v1    # "batteryUptimeUs":J
    .end local v3    # "ipkg":I
    .end local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v5    # "n":I
    .end local v9    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v15    # "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v39    # "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v40    # "n":I
    .restart local v41    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v43    # "batteryUptimeUs":J
    .restart local v46    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v47    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_203

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8225
    .local v2, "p":Ljava/lang/String;
    const-wide v3, 0x20b00000002L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 8226
    .local v5, "pToken":J
    const-wide v3, 0x10900000001L

    invoke-virtual {v0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8227
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8228
    .end local v2    # "p":Ljava/lang/String;
    .end local v5    # "pToken":J
    goto :goto_1e2

    .line 8231
    :cond_203
    const-wide v3, 0x10900000001L

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-wide v7, 0x10300000001L

    if-eqz v1, :cond_240

    .line 8232
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    .line 8234
    .local v1, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v1, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v5

    .line 8235
    .local v5, "totTimeMs":J
    invoke-virtual {v1}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 8236
    .local v2, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v2, :cond_226

    .line 8237
    invoke-virtual {v2, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v9

    goto :goto_228

    :cond_226
    move-wide/from16 v9, v30

    .line 8238
    .local v9, "bgTimeMs":J
    :goto_228
    const-wide v14, 0x10b00000018L

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 8239
    .local v14, "awToken":J
    invoke-virtual {v0, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8240
    const-wide v3, 0x10300000002L

    invoke-virtual {v0, v3, v4, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8241
    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_245

    .line 8231
    .end local v1    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v2    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v5    # "totTimeMs":J
    .end local v9    # "bgTimeMs":J
    .end local v14    # "awToken":J
    :cond_240
    const-wide v3, 0x10300000002L

    .line 8245
    :goto_245
    move-wide/from16 v34, v3

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b00000008L

    move/from16 v10, v17

    move-wide/from16 v4, v18

    move-object/from16 v9, v28

    move-wide/from16 v14, v34

    .end local v18    # "rawRealtimeUs":J
    .end local v28    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .local v4, "rawRealtimeUs":J
    .local v9, "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8248
    nop

    .line 8249
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v1

    .line 8248
    const-wide v2, 0x10b00000003L

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v1, v6}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8252
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 8253
    .local v3, "bleTimer":Landroid/os/BatteryStats$Timer;
    const-wide v14, 0x10500000005L

    if-eqz v3, :cond_2ec

    .line 8254
    const-wide v1, 0x10b00000006L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 8256
    .local v1, "bmToken":J
    move-wide/from16 v37, v1

    .end local v1    # "bmToken":J
    .local v37, "bmToken":J
    const-wide v1, 0x10b00000001L

    const/4 v6, 0x0

    move/from16 v18, v10

    move-object/from16 v17, v11

    move-wide/from16 v7, v37

    const-wide v10, 0x10500000006L

    .end local v11    # "u":Landroid/os/BatteryStats$Uid;
    .end local v37    # "bmToken":J
    .local v7, "bmToken":J
    .local v17, "u":Landroid/os/BatteryStats$Uid;
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8258
    move-object/from16 v19, v3

    .line 8259
    .end local v3    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .local v19, "bleTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 8258
    const-wide v1, 0x10b00000002L

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8261
    nop

    .line 8262
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 8261
    const-wide v1, 0x10b00000003L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8264
    nop

    .line 8265
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 8264
    const-wide v1, 0x10b00000004L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8267
    nop

    .line 8268
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v1

    if-eqz v1, :cond_2cf

    .line 8269
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v1

    goto :goto_2d0

    :cond_2cf
    const/4 v1, 0x0

    .line 8267
    :goto_2d0
    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8270
    nop

    .line 8271
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v1

    if-eqz v1, :cond_2e4

    .line 8272
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v1

    goto :goto_2e5

    :cond_2e4
    const/4 v1, 0x0

    .line 8270
    :goto_2e5
    invoke-virtual {v0, v10, v11, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8274
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_2f7

    .line 8253
    .end local v7    # "bmToken":J
    .end local v17    # "u":Landroid/os/BatteryStats$Uid;
    .end local v19    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v3    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v11    # "u":Landroid/os/BatteryStats$Uid;
    :cond_2ec
    move-object/from16 v19, v3

    move/from16 v18, v10

    move-object/from16 v17, v11

    const-wide v10, 0x10500000006L

    .line 8278
    .end local v3    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v11    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v17    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v19    # "bleTimer":Landroid/os/BatteryStats$Timer;
    :goto_2f7
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b00000009L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8281
    const-wide v1, 0x10b00000007L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 8282
    .local v7, "cpuToken":J
    move-object/from16 v1, v17

    const/4 v6, 0x0

    .end local v17    # "u":Landroid/os/BatteryStats$Uid;
    .local v1, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v2

    const-wide v10, 0x10300000001L

    invoke-virtual {v0, v10, v11, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8283
    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v2

    const-wide v10, 0x10300000002L

    invoke-virtual {v0, v10, v11, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8285
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v10

    .line 8286
    .local v10, "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    if-eqz v10, :cond_399

    .line 8287
    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v11

    .line 8290
    .local v11, "cpuFreqTimeMs":[J
    if-eqz v11, :cond_393

    array-length v14, v11

    .line 8291
    invoke-virtual {v10}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v15

    if-ne v14, v15, :cond_38d

    .line 8292
    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v14

    .line 8293
    .local v14, "screenOffCpuFreqTimeMs":[J
    if-nez v14, :cond_34c

    .line 8294
    array-length v6, v11

    new-array v14, v6, [J

    .line 8296
    :cond_34c
    const/4 v6, 0x0

    .local v6, "ic":I
    :goto_34d
    array-length v15, v11

    if-ge v6, v15, :cond_387

    .line 8297
    const-wide v2, 0x20b00000003L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8298
    .local v2, "cToken":J
    add-int/lit8 v15, v6, 0x1

    move-wide/from16 v55, v4

    const-wide v4, 0x10500000001L

    .end local v4    # "rawRealtimeUs":J
    .local v55, "rawRealtimeUs":J
    invoke-virtual {v0, v4, v5, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8299
    aget-wide v4, v11, v6

    move-object v15, v10

    move-object/from16 v17, v11

    const-wide v10, 0x10300000002L

    .end local v10    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .end local v11    # "cpuFreqTimeMs":[J
    .local v15, "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .local v17, "cpuFreqTimeMs":[J
    invoke-virtual {v0, v10, v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8301
    aget-wide v4, v14, v6

    const-wide v10, 0x10300000003L

    invoke-virtual {v0, v10, v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8303
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8296
    .end local v2    # "cToken":J
    add-int/lit8 v6, v6, 0x1

    move-object v10, v15

    move-object/from16 v11, v17

    move-wide/from16 v4, v55

    goto :goto_34d

    .end local v15    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .end local v17    # "cpuFreqTimeMs":[J
    .end local v55    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    .restart local v10    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v11    # "cpuFreqTimeMs":[J
    :cond_387
    move-wide/from16 v55, v4

    move-object v15, v10

    move-object/from16 v17, v11

    .end local v4    # "rawRealtimeUs":J
    .end local v10    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .end local v11    # "cpuFreqTimeMs":[J
    .restart local v15    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v17    # "cpuFreqTimeMs":[J
    .restart local v55    # "rawRealtimeUs":J
    goto :goto_39c

    .line 8291
    .end local v6    # "ic":I
    .end local v14    # "screenOffCpuFreqTimeMs":[J
    .end local v15    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .end local v17    # "cpuFreqTimeMs":[J
    .end local v55    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    .restart local v10    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v11    # "cpuFreqTimeMs":[J
    :cond_38d
    move-wide/from16 v55, v4

    move-object v15, v10

    move-object/from16 v17, v11

    .end local v4    # "rawRealtimeUs":J
    .end local v10    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .end local v11    # "cpuFreqTimeMs":[J
    .restart local v15    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v17    # "cpuFreqTimeMs":[J
    .restart local v55    # "rawRealtimeUs":J
    goto :goto_39c

    .line 8290
    .end local v15    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .end local v17    # "cpuFreqTimeMs":[J
    .end local v55    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    .restart local v10    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v11    # "cpuFreqTimeMs":[J
    :cond_393
    move-wide/from16 v55, v4

    move-object v15, v10

    move-object/from16 v17, v11

    .end local v4    # "rawRealtimeUs":J
    .end local v10    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .end local v11    # "cpuFreqTimeMs":[J
    .restart local v15    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v17    # "cpuFreqTimeMs":[J
    .restart local v55    # "rawRealtimeUs":J
    goto :goto_39c

    .line 8286
    .end local v15    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .end local v17    # "cpuFreqTimeMs":[J
    .end local v55    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    .restart local v10    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    :cond_399
    move-wide/from16 v55, v4

    move-object v15, v10

    .line 8308
    .end local v4    # "rawRealtimeUs":J
    .end local v10    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v15    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v55    # "rawRealtimeUs":J
    :goto_39c
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v10

    .line 8309
    .local v10, "stepCount":I
    new-array v11, v10, [J

    .line 8310
    .local v11, "timesInFreqMs":[J
    new-array v14, v10, [J

    .line 8311
    .local v14, "timesInFreqScreenOffMs":[J
    const/4 v2, 0x0

    .local v2, "procState":I
    :goto_3a9
    const-wide v3, 0x10e00000001L

    const/4 v5, 0x7

    if-ge v2, v5, :cond_43b

    .line 8312
    invoke-virtual {v1, v11, v2}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v5

    if-eqz v5, :cond_424

    .line 8313
    invoke-virtual {v1, v14, v2}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes([JI)Z

    move-result v5

    if-nez v5, :cond_3c2

    .line 8314
    const-wide/16 v5, 0x0

    invoke-static {v14, v5, v6}, Ljava/util/Arrays;->fill([JJ)V

    .line 8316
    :cond_3c2
    const-wide v5, 0x20b00000004L

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 8317
    .local v5, "procToken":J
    invoke-virtual {v0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8318
    const/4 v3, 0x0

    .local v3, "ic":I
    :goto_3cf
    array-length v4, v11

    if-ge v3, v4, :cond_411

    .line 8319
    move-object/from16 v17, v1

    move/from16 v28, v2

    move/from16 v36, v3

    const-wide v1, 0x20b00000002L

    .end local v1    # "u":Landroid/os/BatteryStats$Uid;
    .end local v2    # "procState":I
    .end local v3    # "ic":I
    .local v17, "u":Landroid/os/BatteryStats$Uid;
    .local v28, "procState":I
    .local v36, "ic":I
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 8320
    .local v3, "cToken":J
    add-int/lit8 v1, v36, 0x1

    move/from16 v42, v10

    move-object/from16 v45, v11

    const-wide v10, 0x10500000001L

    .end local v10    # "stepCount":I
    .end local v11    # "timesInFreqMs":[J
    .local v42, "stepCount":I
    .local v45, "timesInFreqMs":[J
    invoke-virtual {v0, v10, v11, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8321
    aget-wide v1, v45, v36

    const-wide v10, 0x10300000002L

    invoke-virtual {v0, v10, v11, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8323
    aget-wide v1, v14, v36

    const-wide v10, 0x10300000003L

    invoke-virtual {v0, v10, v11, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8325
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8318
    .end local v3    # "cToken":J
    add-int/lit8 v3, v36, 0x1

    move-object/from16 v1, v17

    move/from16 v2, v28

    move/from16 v10, v42

    move-object/from16 v11, v45

    .end local v36    # "ic":I
    .local v3, "ic":I
    goto :goto_3cf

    .end local v17    # "u":Landroid/os/BatteryStats$Uid;
    .end local v28    # "procState":I
    .end local v42    # "stepCount":I
    .end local v45    # "timesInFreqMs":[J
    .restart local v1    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v2    # "procState":I
    .restart local v10    # "stepCount":I
    .restart local v11    # "timesInFreqMs":[J
    :cond_411
    move-object/from16 v17, v1

    move/from16 v28, v2

    move/from16 v36, v3

    move/from16 v42, v10

    move-object/from16 v45, v11

    const-wide v10, 0x10300000003L

    .line 8327
    .end local v1    # "u":Landroid/os/BatteryStats$Uid;
    .end local v2    # "procState":I
    .end local v3    # "ic":I
    .end local v10    # "stepCount":I
    .end local v11    # "timesInFreqMs":[J
    .restart local v17    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v28    # "procState":I
    .restart local v42    # "stepCount":I
    .restart local v45    # "timesInFreqMs":[J
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_431

    .line 8312
    .end local v5    # "procToken":J
    .end local v17    # "u":Landroid/os/BatteryStats$Uid;
    .end local v28    # "procState":I
    .end local v42    # "stepCount":I
    .end local v45    # "timesInFreqMs":[J
    .restart local v1    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v2    # "procState":I
    .restart local v10    # "stepCount":I
    .restart local v11    # "timesInFreqMs":[J
    :cond_424
    move-object/from16 v17, v1

    move/from16 v28, v2

    move/from16 v42, v10

    move-object/from16 v45, v11

    const-wide v10, 0x10300000003L

    .line 8311
    .end local v1    # "u":Landroid/os/BatteryStats$Uid;
    .end local v2    # "procState":I
    .end local v10    # "stepCount":I
    .end local v11    # "timesInFreqMs":[J
    .restart local v17    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v28    # "procState":I
    .restart local v42    # "stepCount":I
    .restart local v45    # "timesInFreqMs":[J
    :goto_431
    add-int/lit8 v2, v28, 0x1

    move-object/from16 v1, v17

    move/from16 v10, v42

    move-object/from16 v11, v45

    .end local v28    # "procState":I
    .restart local v2    # "procState":I
    goto/16 :goto_3a9

    .end local v17    # "u":Landroid/os/BatteryStats$Uid;
    .end local v42    # "stepCount":I
    .end local v45    # "timesInFreqMs":[J
    .restart local v1    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v10    # "stepCount":I
    .restart local v11    # "timesInFreqMs":[J
    :cond_43b
    move-object/from16 v17, v1

    move/from16 v28, v2

    move/from16 v42, v10

    move-object/from16 v45, v11

    const-wide v10, 0x10300000003L

    .line 8330
    .end local v1    # "u":Landroid/os/BatteryStats$Uid;
    .end local v2    # "procState":I
    .end local v10    # "stepCount":I
    .end local v11    # "timesInFreqMs":[J
    .restart local v17    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v42    # "stepCount":I
    .restart local v45    # "timesInFreqMs":[J
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8333
    move-wide v1, v3

    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-wide/from16 v53, v1

    const-wide v1, 0x10b0000000aL

    move-wide/from16 v10, v53

    move-wide/from16 v53, v7

    move-wide v7, v10

    move v11, v5

    move-object/from16 v10, v17

    move-wide/from16 v4, v55

    .end local v7    # "cpuToken":J
    .end local v17    # "u":Landroid/os/BatteryStats$Uid;
    .end local v55    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    .local v10, "u":Landroid/os/BatteryStats$Uid;
    .local v53, "cpuToken":J
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8337
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b0000000bL

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8341
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b0000000cL

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8345
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 8346
    .local v1, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    const/4 v2, 0x0

    .local v2, "ic":I
    :goto_484
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move-wide/from16 v57, v12

    .end local v12    # "rawRealtimeMs":J
    .local v57, "rawRealtimeMs":J
    if-ge v2, v3, :cond_510

    .line 8347
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 8348
    .local v3, "types":Landroid/util/SparseIntArray;
    if-eqz v3, :cond_4f5

    .line 8349
    move-object/from16 v17, v14

    .end local v14    # "timesInFreqScreenOffMs":[J
    .local v17, "timesInFreqScreenOffMs":[J
    const-wide v13, 0x20b00000010L

    invoke-virtual {v0, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 8351
    .local v13, "jcToken":J
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v36, v1

    move/from16 v48, v2

    const-wide v1, 0x10900000001L

    .end local v1    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v2    # "ic":I
    .local v36, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .local v48, "ic":I
    invoke-virtual {v0, v1, v2, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8353
    invoke-static {}, Landroid/app/job/JobParameters;->getJobStopReasonCodes()[I

    move-result-object v6

    array-length v1, v6

    const/4 v2, 0x0

    :goto_4b7
    if-ge v2, v1, :cond_4ee

    aget v11, v6, v2

    .line 8354
    .local v11, "r":I
    move v12, v1

    move/from16 v32, v2

    const-wide v7, 0x20b00000002L

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 8355
    .local v1, "rToken":J
    const-wide v7, 0x10e00000001L

    invoke-virtual {v0, v7, v8, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8356
    const/4 v7, 0x0

    invoke-virtual {v3, v11, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    move-wide/from16 v59, v4

    move-object v5, v3

    const-wide v3, 0x10500000002L

    .end local v3    # "types":Landroid/util/SparseIntArray;
    .end local v4    # "rawRealtimeUs":J
    .local v5, "types":Landroid/util/SparseIntArray;
    .local v59, "rawRealtimeUs":J
    invoke-virtual {v0, v3, v4, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8357
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8353
    .end local v1    # "rToken":J
    .end local v11    # "r":I
    add-int/lit8 v2, v32, 0x1

    move-object v3, v5

    move v1, v12

    move-wide/from16 v4, v59

    const-wide v7, 0x10e00000001L

    goto :goto_4b7

    .line 8360
    .end local v5    # "types":Landroid/util/SparseIntArray;
    .end local v59    # "rawRealtimeUs":J
    .restart local v3    # "types":Landroid/util/SparseIntArray;
    .restart local v4    # "rawRealtimeUs":J
    :cond_4ee
    move-wide/from16 v59, v4

    move-object v5, v3

    .end local v3    # "types":Landroid/util/SparseIntArray;
    .end local v4    # "rawRealtimeUs":J
    .restart local v5    # "types":Landroid/util/SparseIntArray;
    .restart local v59    # "rawRealtimeUs":J
    invoke-virtual {v0, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_4fe

    .line 8348
    .end local v5    # "types":Landroid/util/SparseIntArray;
    .end local v13    # "jcToken":J
    .end local v17    # "timesInFreqScreenOffMs":[J
    .end local v36    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v48    # "ic":I
    .end local v59    # "rawRealtimeUs":J
    .local v1, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v2    # "ic":I
    .restart local v3    # "types":Landroid/util/SparseIntArray;
    .restart local v4    # "rawRealtimeUs":J
    .restart local v14    # "timesInFreqScreenOffMs":[J
    :cond_4f5
    move-object/from16 v36, v1

    move/from16 v48, v2

    move-wide/from16 v59, v4

    move-object/from16 v17, v14

    move-object v5, v3

    .line 8346
    .end local v1    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v2    # "ic":I
    .end local v3    # "types":Landroid/util/SparseIntArray;
    .end local v4    # "rawRealtimeUs":J
    .end local v14    # "timesInFreqScreenOffMs":[J
    .restart local v17    # "timesInFreqScreenOffMs":[J
    .restart local v36    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v48    # "ic":I
    .restart local v59    # "rawRealtimeUs":J
    :goto_4fe
    add-int/lit8 v2, v48, 0x1

    move-object/from16 v14, v17

    move-object/from16 v1, v36

    move-wide/from16 v12, v57

    move-wide/from16 v4, v59

    const-wide v7, 0x10e00000001L

    const/4 v11, 0x7

    .end local v48    # "ic":I
    .restart local v2    # "ic":I
    goto/16 :goto_484

    .end local v17    # "timesInFreqScreenOffMs":[J
    .end local v36    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v59    # "rawRealtimeUs":J
    .restart local v1    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v4    # "rawRealtimeUs":J
    .restart local v14    # "timesInFreqScreenOffMs":[J
    :cond_510
    move-object/from16 v36, v1

    move/from16 v48, v2

    move-wide/from16 v59, v4

    move-object/from16 v17, v14

    .line 8365
    .end local v1    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v2    # "ic":I
    .end local v4    # "rawRealtimeUs":J
    .end local v14    # "timesInFreqScreenOffMs":[J
    .restart local v17    # "timesInFreqScreenOffMs":[J
    .restart local v36    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v59    # "rawRealtimeUs":J
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v7

    .line 8366
    .local v7, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    .local v8, "ij":I
    :goto_523
    if-ltz v8, :cond_56e

    .line 8367
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/BatteryStats$Timer;

    .line 8368
    .local v3, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v3}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v11

    .line 8369
    .local v11, "bgTimer":Landroid/os/BatteryStats$Timer;
    const-wide v1, 0x20b0000000fL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 8371
    .local v12, "jToken":J
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide v5, 0x10900000001L

    invoke-virtual {v0, v5, v6, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8373
    const-wide v1, 0x10b00000002L

    move-wide/from16 v49, v5

    const/4 v6, 0x0

    move-object v14, v7

    move/from16 v32, v8

    move-wide/from16 v7, v49

    move-wide/from16 v4, v59

    .end local v7    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v8    # "ij":I
    .end local v59    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    .local v14, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v32, "ij":I
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8374
    move-object/from16 v33, v3

    .end local v3    # "timer":Landroid/os/BatteryStats$Timer;
    .local v33, "timer":Landroid/os/BatteryStats$Timer;
    const-wide v1, 0x10b00000003L

    move-object/from16 v0, p1

    move-object v3, v11

    .end local v11    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .local v3, "bgTimer":Landroid/os/BatteryStats$Timer;
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8376
    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8366
    .end local v3    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v12    # "jToken":J
    .end local v33    # "timer":Landroid/os/BatteryStats$Timer;
    add-int/lit8 v1, v32, -0x1

    move-object v7, v14

    move v8, v1

    .end local v32    # "ij":I
    .local v1, "ij":I
    goto :goto_523

    .end local v1    # "ij":I
    .end local v4    # "rawRealtimeUs":J
    .end local v14    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v7    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v8    # "ij":I
    .restart local v59    # "rawRealtimeUs":J
    :cond_56e
    move-object v14, v7

    move/from16 v32, v8

    move-wide/from16 v4, v59

    const-wide v7, 0x10900000001L

    .line 8380
    .end local v7    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v8    # "ij":I
    .end local v59    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    .restart local v14    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    nop

    .line 8381
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v1

    .line 8380
    const-wide v2, 0x10b00000004L

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v1, v6}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8384
    const-wide v1, 0x10b00000011L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 8385
    .local v11, "nToken":J
    nop

    .line 8386
    invoke-virtual {v10, v6, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v1

    .line 8385
    const-wide v7, 0x10300000001L

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8387
    nop

    .line 8388
    move/from16 v1, v18

    invoke-virtual {v10, v1, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 8387
    const-wide v7, 0x10300000002L

    invoke-virtual {v0, v7, v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8389
    nop

    .line 8390
    const/4 v7, 0x2

    invoke-virtual {v10, v7, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v1

    .line 8389
    const-wide v7, 0x10300000003L

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8391
    nop

    .line 8392
    const/4 v1, 0x3

    invoke-virtual {v10, v1, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 8391
    const-wide v7, 0x10300000004L

    invoke-virtual {v0, v7, v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8393
    nop

    .line 8394
    const/4 v2, 0x4

    invoke-virtual {v10, v2, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 8393
    const-wide v7, 0x10300000005L

    invoke-virtual {v0, v7, v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8395
    nop

    .line 8396
    const/4 v2, 0x5

    invoke-virtual {v10, v2, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 8395
    const-wide v7, 0x10300000006L

    invoke-virtual {v0, v7, v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8397
    nop

    .line 8398
    invoke-virtual {v10, v6, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v2

    .line 8397
    const-wide v7, 0x10300000007L

    invoke-virtual {v0, v7, v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8399
    nop

    .line 8400
    const/4 v2, 0x1

    invoke-virtual {v10, v2, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v7

    .line 8399
    const-wide v2, 0x10300000008L

    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8401
    nop

    .line 8402
    const/4 v2, 0x2

    invoke-virtual {v10, v2, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v7

    .line 8401
    const-wide v2, 0x10300000009L

    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8403
    nop

    .line 8404
    invoke-virtual {v10, v1, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v1

    .line 8403
    const-wide v7, 0x1030000000aL

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8405
    nop

    .line 8406
    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v1

    .line 8405
    const-wide v7, 0x1030000000bL

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8407
    nop

    .line 8408
    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v1

    .line 8407
    const-wide v2, 0x1050000000cL

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8409
    nop

    .line 8410
    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v1

    .line 8409
    const-wide v7, 0x1050000000dL

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8411
    nop

    .line 8412
    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v1

    .line 8411
    const-wide v7, 0x1050000000eL

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8413
    nop

    .line 8414
    const/4 v1, 0x6

    invoke-virtual {v10, v1, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 8413
    const-wide v7, 0x1030000000fL

    invoke-virtual {v0, v7, v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8415
    nop

    .line 8416
    const/4 v13, 0x7

    invoke-virtual {v10, v13, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 8415
    const-wide v7, 0x10300000010L

    invoke-virtual {v0, v7, v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8417
    nop

    .line 8418
    const/16 v2, 0x8

    invoke-virtual {v10, v2, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v7

    .line 8417
    move-object/from16 v28, v14

    .end local v14    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v28, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const-wide v13, 0x10300000011L

    invoke-virtual {v0, v13, v14, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8419
    nop

    .line 8420
    const/16 v7, 0x9

    invoke-virtual {v10, v7, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v13

    .line 8419
    nop

    .end local v4    # "rawRealtimeUs":J
    .restart local v59    # "rawRealtimeUs":J
    const-wide v3, 0x10300000012L

    invoke-virtual {v0, v3, v4, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8421
    nop

    .line 8422
    invoke-virtual {v10, v1, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v3

    .line 8421
    const-wide v13, 0x10300000013L

    invoke-virtual {v0, v13, v14, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8423
    nop

    .line 8424
    const/4 v13, 0x7

    invoke-virtual {v10, v13, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v3

    .line 8423
    const-wide v13, 0x10300000014L

    invoke-virtual {v0, v13, v14, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8425
    nop

    .line 8426
    invoke-virtual {v10, v2, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v1

    .line 8425
    const-wide v3, 0x10300000015L

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8427
    nop

    .line 8428
    invoke-virtual {v10, v7, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v1

    .line 8427
    const-wide v3, 0x10300000016L

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8429
    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8432
    move/from16 v7, v29

    .end local v29    # "uid":I
    .local v7, "uid":I
    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/os/UidBatteryConsumer;

    .line 8433
    .local v13, "consumer":Landroid/os/UidBatteryConsumer;
    if-eqz v13, :cond_714

    .line 8434
    const-wide v1, 0x10b00000012L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 8435
    .local v1, "bsToken":J
    const-wide v3, 0x10100000001L

    invoke-virtual {v13}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v5

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8436
    nop

    .line 8437
    move-object/from16 v14, p4

    invoke-virtual {v14, v13}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->isSystemBatteryConsumer(Landroid/os/UidBatteryConsumer;)Z

    move-result v3

    .line 8436
    const-wide v4, 0x10800000002L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8438
    nop

    .line 8439
    const/4 v6, 0x0

    invoke-virtual {v13, v6}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    move-result-wide v3

    .line 8438
    const-wide v5, 0x10100000003L

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8440
    nop

    .line 8441
    invoke-virtual {v14, v13}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->getProportionalPowerMah(Landroid/os/UidBatteryConsumer;)D

    move-result-wide v3

    .line 8440
    const-wide v5, 0x10100000004L

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8442
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_716

    .line 8433
    .end local v1    # "bsToken":J
    :cond_714
    move-object/from16 v14, p4

    .line 8446
    :goto_716
    nop

    .line 8447
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 8448
    .local v1, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/16 v18, 0x1

    add-int/lit8 v2, v2, -0x1

    .local v2, "ipr":I
    :goto_723
    if-ltz v2, :cond_79e

    .line 8449
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Proc;

    .line 8450
    .local v3, "ps":Landroid/os/BatteryStats$Uid$Proc;
    const-wide v4, 0x20b00000013L

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 8452
    .local v4, "prToken":J
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v29, v9

    const-wide v8, 0x10900000001L

    .end local v9    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .local v29, "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    invoke-virtual {v0, v8, v9, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8453
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v8

    move/from16 v48, v7

    const-wide v6, 0x10300000002L

    .end local v7    # "uid":I
    .local v48, "uid":I
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8454
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v7

    move-object v9, v1

    move/from16 v61, v2

    const-wide v1, 0x10300000003L

    .end local v1    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v2    # "ipr":I
    .local v9, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .local v61, "ipr":I
    invoke-virtual {v0, v1, v2, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8455
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v7

    const-wide v1, 0x10300000004L

    invoke-virtual {v0, v1, v2, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8456
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v7

    const-wide v1, 0x10500000005L

    invoke-virtual {v0, v1, v2, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8457
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v7

    const-wide v1, 0x10500000006L

    invoke-virtual {v0, v1, v2, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8458
    const-wide v7, 0x10500000007L

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v1

    invoke-virtual {v0, v7, v8, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8460
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8448
    .end local v3    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v4    # "prToken":J
    add-int/lit8 v2, v61, -0x1

    move-object v1, v9

    move-object/from16 v9, v29

    move/from16 v7, v48

    .end local v61    # "ipr":I
    .restart local v2    # "ipr":I
    goto :goto_723

    .end local v29    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .end local v48    # "uid":I
    .restart local v1    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v7    # "uid":I
    .local v9, "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    :cond_79e
    move/from16 v61, v2

    move/from16 v48, v7

    move-object/from16 v29, v9

    move-object v9, v1

    .line 8464
    .end local v1    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v2    # "ipr":I
    .end local v7    # "uid":I
    .local v9, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v29    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .restart local v48    # "uid":I
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v7

    .line 8465
    .local v7, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    const/4 v1, 0x0

    move v8, v1

    .local v8, "ise":I
    :goto_7ab
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_815

    .line 8466
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v37, v1

    check-cast v37, Landroid/os/BatteryStats$Uid$Sensor;

    .line 8467
    .local v37, "se":Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual/range {v37 .. v37}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 8468
    .local v3, "timer":Landroid/os/BatteryStats$Timer;
    if-nez v3, :cond_7cb

    .line 8469
    move-object/from16 v25, v7

    move/from16 v26, v8

    move-wide/from16 v4, v59

    const-wide v55, 0x10500000001L

    goto :goto_80e

    .line 8471
    :cond_7cb
    invoke-virtual/range {v37 .. v37}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v38

    .line 8472
    .local v38, "bgTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 8473
    .local v1, "sensorNumber":I
    const-wide v4, 0x20b00000015L

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 8475
    .local v4, "seToken":J
    move-object v6, v3

    const-wide v2, 0x10500000001L

    .end local v3    # "timer":Landroid/os/BatteryStats$Timer;
    .local v6, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8477
    move-wide/from16 v25, v2

    move v3, v1

    .end local v1    # "sensorNumber":I
    .local v3, "sensorNumber":I
    const-wide v1, 0x10b00000002L

    move/from16 v51, v3

    move-object v3, v6

    .end local v6    # "timer":Landroid/os/BatteryStats$Timer;
    .local v3, "timer":Landroid/os/BatteryStats$Timer;
    .local v51, "sensorNumber":I
    const/4 v6, 0x0

    move-wide/from16 v55, v25

    move-object/from16 v25, v7

    move/from16 v26, v8

    move-wide v7, v4

    move-wide/from16 v4, v59

    .end local v8    # "ise":I
    .end local v59    # "rawRealtimeUs":J
    .local v4, "rawRealtimeUs":J
    .local v7, "seToken":J
    .local v25, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .local v26, "ise":I
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8478
    move-object/from16 v52, v3

    .end local v3    # "timer":Landroid/os/BatteryStats$Timer;
    .local v52, "timer":Landroid/os/BatteryStats$Timer;
    const-wide v1, 0x10b00000003L

    move-object/from16 v0, p1

    move-object/from16 v3, v38

    .end local v38    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .local v3, "bgTimer":Landroid/os/BatteryStats$Timer;
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8480
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8465
    .end local v3    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v7    # "seToken":J
    .end local v37    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v51    # "sensorNumber":I
    .end local v52    # "timer":Landroid/os/BatteryStats$Timer;
    :goto_80e
    add-int/lit8 v8, v26, 0x1

    move-wide/from16 v59, v4

    move-object/from16 v7, v25

    .end local v26    # "ise":I
    .restart local v8    # "ise":I
    goto :goto_7ab

    .end local v4    # "rawRealtimeUs":J
    .end local v25    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .local v7, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .restart local v59    # "rawRealtimeUs":J
    :cond_815
    move-object/from16 v25, v7

    move/from16 v26, v8

    move-wide/from16 v4, v59

    .line 8484
    .end local v7    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v8    # "ise":I
    .end local v59    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    .restart local v25    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    const/4 v1, 0x0

    .local v1, "ips":I
    :goto_81c
    const/4 v3, 0x7

    if-ge v1, v3, :cond_858

    .line 8485
    const/4 v6, 0x0

    invoke-virtual {v10, v1, v4, v5, v6}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v6

    .line 8486
    .local v6, "durMs":J
    const-wide/16 v30, 0x0

    cmp-long v2, v6, v30

    if-nez v2, :cond_831

    .line 8487
    move-wide/from16 v55, v4

    goto :goto_853

    .line 8489
    :cond_831
    move-wide/from16 v55, v4

    .end local v4    # "rawRealtimeUs":J
    .restart local v55    # "rawRealtimeUs":J
    const-wide v3, 0x20b00000014L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8490
    .local v2, "stToken":J
    move-wide/from16 v37, v6

    const-wide v5, 0x10e00000001L

    .end local v6    # "durMs":J
    .local v37, "durMs":J
    invoke-virtual {v0, v5, v6, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8491
    move-wide/from16 v4, v37

    const-wide v6, 0x10300000002L

    .end local v37    # "durMs":J
    .local v4, "durMs":J
    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8492
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8484
    .end local v2    # "stToken":J
    .end local v4    # "durMs":J
    :goto_853
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v4, v55

    goto :goto_81c

    .end local v55    # "rawRealtimeUs":J
    .local v4, "rawRealtimeUs":J
    :cond_858
    move-wide/from16 v55, v4

    .line 8496
    .end local v1    # "ips":I
    .end local v4    # "rawRealtimeUs":J
    .restart local v55    # "rawRealtimeUs":J
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v7

    .line 8497
    .local v7, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v18, 0x1

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    .local v8, "isy":I
    :goto_867
    if-ltz v8, :cond_8b2

    .line 8498
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/BatteryStats$Timer;

    .line 8499
    .local v3, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v3}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v26

    .line 8500
    .local v26, "bgTimer":Landroid/os/BatteryStats$Timer;
    const-wide v1, 0x20b00000016L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 8502
    .local v1, "syToken":J
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-wide v5, 0x10900000001L

    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8504
    move-wide v4, v1

    .end local v1    # "syToken":J
    .local v4, "syToken":J
    const-wide v1, 0x10b00000002L

    const/4 v6, 0x0

    move-object/from16 v30, v7

    move/from16 v31, v8

    move-wide v7, v4

    move-wide/from16 v4, v55

    .end local v8    # "isy":I
    .end local v55    # "rawRealtimeUs":J
    .local v4, "rawRealtimeUs":J
    .local v7, "syToken":J
    .local v30, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v31, "isy":I
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8505
    move-object/from16 v33, v3

    .end local v3    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v33    # "timer":Landroid/os/BatteryStats$Timer;
    const-wide v1, 0x10b00000003L

    move-object/from16 v0, p1

    move-object/from16 v3, v26

    .end local v26    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .local v3, "bgTimer":Landroid/os/BatteryStats$Timer;
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8507
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8497
    .end local v3    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v7    # "syToken":J
    .end local v33    # "timer":Landroid/os/BatteryStats$Timer;
    add-int/lit8 v8, v31, -0x1

    move-object/from16 v7, v30

    .end local v31    # "isy":I
    .restart local v8    # "isy":I
    goto :goto_867

    .end local v4    # "rawRealtimeUs":J
    .end local v30    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v7, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v55    # "rawRealtimeUs":J
    :cond_8b2
    move-object/from16 v30, v7

    move/from16 v31, v8

    move-wide/from16 v4, v55

    .line 8511
    .end local v7    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v8    # "isy":I
    .end local v55    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    .restart local v30    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v1

    if-eqz v1, :cond_8f3

    .line 8512
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8bf
    sget v2, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v1, v2, :cond_8f0

    .line 8513
    const/4 v6, 0x0

    invoke-virtual {v10, v1, v6}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v2

    .line 8514
    .local v2, "val":I
    if-eqz v2, :cond_8e9

    .line 8515
    const-wide v6, 0x20b00000017L

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 8516
    .local v6, "uaToken":J
    move-wide/from16 v55, v4

    const-wide v3, 0x10e00000001L

    .end local v4    # "rawRealtimeUs":J
    .restart local v55    # "rawRealtimeUs":J
    invoke-virtual {v0, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8517
    const-wide v3, 0x10500000002L

    invoke-virtual {v0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8518
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_8eb

    .line 8514
    .end local v6    # "uaToken":J
    .end local v55    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    :cond_8e9
    move-wide/from16 v55, v4

    .line 8512
    .end local v2    # "val":I
    .end local v4    # "rawRealtimeUs":J
    .restart local v55    # "rawRealtimeUs":J
    :goto_8eb
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v4, v55

    goto :goto_8bf

    .end local v55    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    :cond_8f0
    move-wide/from16 v55, v4

    .end local v4    # "rawRealtimeUs":J
    .restart local v55    # "rawRealtimeUs":J
    goto :goto_8f5

    .line 8511
    .end local v1    # "i":I
    .end local v55    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    :cond_8f3
    move-wide/from16 v55, v4

    .line 8524
    .end local v4    # "rawRealtimeUs":J
    .restart local v55    # "rawRealtimeUs":J
    :goto_8f5
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b0000000dL

    move-wide/from16 v4, v55

    .end local v55    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8527
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b0000000eL

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8530
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v7

    .line 8531
    .local v7, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v18, 0x1

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    .local v8, "iw":I
    :goto_91f
    if-ltz v8, :cond_999

    .line 8532
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 8533
    .local v1, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const-wide v2, 0x20b00000019L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8534
    .local v2, "wToken":J
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-wide/from16 v37, v2

    const-wide v2, 0x10900000001L

    .end local v2    # "wToken":J
    .local v37, "wToken":J
    invoke-virtual {v0, v2, v3, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8535
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v26, v1

    .end local v1    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .local v26, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const-wide v1, 0x10b00000002L

    move-object/from16 v31, v7

    move/from16 v33, v8

    move-object/from16 v7, v26

    move-object/from16 v26, v9

    move-wide/from16 v8, v37

    .end local v9    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v37    # "wToken":J
    .local v7, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .local v8, "wToken":J
    .local v26, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .local v31, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v33, "iw":I
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8537
    const/4 v6, 0x0

    invoke-virtual {v7, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 8538
    .local v3, "pTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v3, :cond_97b

    .line 8539
    const-wide v1, 0x10b00000003L

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8540
    move-object/from16 v37, v3

    .end local v3    # "pTimer":Landroid/os/BatteryStats$Timer;
    .local v37, "pTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual/range {v37 .. v37}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b00000004L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    goto :goto_97d

    .line 8538
    .end local v37    # "pTimer":Landroid/os/BatteryStats$Timer;
    .restart local v3    # "pTimer":Landroid/os/BatteryStats$Timer;
    :cond_97b
    move-object/from16 v37, v3

    .line 8543
    .end local v3    # "pTimer":Landroid/os/BatteryStats$Timer;
    .restart local v37    # "pTimer":Landroid/os/BatteryStats$Timer;
    :goto_97d
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b00000005L

    move/from16 v32, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8545
    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8531
    .end local v7    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v8    # "wToken":J
    .end local v37    # "pTimer":Landroid/os/BatteryStats$Timer;
    add-int/lit8 v8, v33, -0x1

    move-object/from16 v9, v26

    move-object/from16 v7, v31

    .end local v33    # "iw":I
    .local v8, "iw":I
    goto :goto_91f

    .end local v26    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v31    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v7, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v9    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    :cond_999
    move-object/from16 v31, v7

    move/from16 v33, v8

    move-object/from16 v26, v9

    .line 8549
    .end local v7    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v8    # "iw":I
    .end local v9    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v26    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v31    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b0000001cL

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8553
    invoke-virtual/range {v47 .. v47}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v18, 0x1

    add-int/lit8 v1, v1, -0x1

    .local v1, "ipkg":I
    :goto_9b4
    if-ltz v1, :cond_a15

    .line 8554
    move-object/from16 v7, v47

    .end local v47    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .local v7, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid$Pkg;

    .line 8555
    .local v2, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v3

    .line 8556
    .local v3, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "iwa":I
    :goto_9c8
    if-ltz v6, :cond_a05

    .line 8557
    const-wide v8, 0x20b0000001aL

    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 8558
    .local v8, "waToken":J
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v32

    move/from16 v33, v1

    .end local v1    # "ipkg":I
    .local v33, "ipkg":I
    move-object/from16 v1, v32

    check-cast v1, Ljava/lang/String;

    move-wide/from16 v37, v11

    const-wide v11, 0x10900000001L

    .end local v11    # "nToken":J
    .local v37, "nToken":J
    invoke-virtual {v0, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8559
    nop

    .line 8560
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Counter;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v1

    .line 8559
    const-wide v11, 0x10500000002L

    invoke-virtual {v0, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8561
    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8556
    .end local v8    # "waToken":J
    add-int/lit8 v6, v6, -0x1

    move/from16 v1, v33

    move-wide/from16 v11, v37

    goto :goto_9c8

    .end local v33    # "ipkg":I
    .end local v37    # "nToken":J
    .restart local v1    # "ipkg":I
    .restart local v11    # "nToken":J
    :cond_a05
    move/from16 v33, v1

    move-wide/from16 v37, v11

    const-wide v11, 0x10500000002L

    .line 8553
    .end local v1    # "ipkg":I
    .end local v2    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v3    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v6    # "iwa":I
    .end local v11    # "nToken":J
    .restart local v33    # "ipkg":I
    .restart local v37    # "nToken":J
    add-int/lit8 v1, v33, -0x1

    move-object/from16 v47, v7

    move-wide/from16 v11, v37

    .end local v33    # "ipkg":I
    .restart local v1    # "ipkg":I
    goto :goto_9b4

    .end local v7    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v37    # "nToken":J
    .restart local v11    # "nToken":J
    .restart local v47    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    :cond_a15
    move/from16 v33, v1

    move-wide/from16 v37, v11

    move-object/from16 v7, v47

    .line 8566
    .end local v1    # "ipkg":I
    .end local v11    # "nToken":J
    .end local v47    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v7    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v37    # "nToken":J
    nop

    .line 8567
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v1

    .line 8566
    const-wide v2, 0x10b00000005L

    const/4 v11, 0x0

    invoke-static {v0, v2, v3, v1, v11}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8570
    const-wide v1, 0x10b0000001bL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 8571
    .local v8, "wToken":J
    nop

    .line 8572
    invoke-virtual {v10, v4, v5, v11}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v1

    .line 8571
    const-wide v11, 0x10300000001L

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8573
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWifiScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b00000003L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8575
    nop

    .line 8576
    const/4 v6, 0x0

    invoke-virtual {v10, v4, v5, v6}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v1

    .line 8575
    const-wide v11, 0x10300000002L

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8577
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b00000004L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8579
    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8581
    move-wide/from16 v1, v23

    .end local v23    # "uTkn":J
    .local v1, "uTkn":J
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8169
    .end local v1    # "uTkn":J
    .end local v7    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v8    # "wToken":J
    .end local v10    # "u":Landroid/os/BatteryStats$Uid;
    .end local v13    # "consumer":Landroid/os/UidBatteryConsumer;
    .end local v15    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .end local v17    # "timesInFreqScreenOffMs":[J
    .end local v19    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v25    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v26    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v28    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v30    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v31    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v36    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v37    # "nToken":J
    .end local v42    # "stepCount":I
    .end local v45    # "timesInFreqMs":[J
    .end local v46    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v48    # "uid":I
    .end local v53    # "cpuToken":J
    add-int/lit8 v6, v27, 0x1

    move-object/from16 v14, p0

    move-object/from16 v7, p3

    move/from16 v17, v18

    move/from16 v9, v20

    move-wide/from16 v10, v21

    move-object/from16 v3, v29

    move-object/from16 v15, v39

    move-wide/from16 v1, v43

    move-wide/from16 v12, v57

    move-wide/from16 v18, v4

    move/from16 v5, v40

    move-object/from16 v4, v41

    .end local v27    # "iu":I
    .local v6, "iu":I
    goto/16 :goto_9a

    .line 8583
    .end local v6    # "iu":I
    .end local v20    # "which":I
    .end local v21    # "rawUptimeUs":J
    .end local v29    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .end local v39    # "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v40    # "n":I
    .end local v41    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v43    # "batteryUptimeUs":J
    .end local v57    # "rawRealtimeMs":J
    .local v1, "batteryUptimeUs":J
    .local v3, "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .local v4, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v5, "n":I
    .local v9, "which":I
    .local v10, "rawUptimeUs":J
    .local v12, "rawRealtimeMs":J
    .local v15, "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v18    # "rawRealtimeUs":J
    :cond_a93
    return-void
.end method

.method private greylist-max-o dumpProtoHistoryLocked(Landroid/util/proto/ProtoOutputStream;IJ)V
    .registers 28
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "flags"    # I
    .param p3, "histStart"    # J

    .line 8586
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v8, p2

    const/16 v0, 0x24

    const-wide v4, 0x10500000001L

    invoke-virtual {v3, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8587
    const-wide v6, 0x10300000002L

    invoke-virtual {v1}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v0

    invoke-virtual {v3, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8588
    nop

    .line 8589
    invoke-virtual {v1}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v0

    .line 8588
    const-wide v6, 0x10900000003L

    invoke-virtual {v3, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8590
    nop

    .line 8591
    invoke-virtual {v1}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v0

    .line 8590
    const-wide v9, 0x10900000004L

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8594
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_37
    invoke-virtual {v1}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v2

    if-ge v0, v2, :cond_63

    .line 8595
    const-wide v9, 0x20b00000005L

    invoke-virtual {v3, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 8596
    .local v9, "token":J
    invoke-virtual {v3, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8597
    const-wide v11, 0x10500000002L

    invoke-virtual {v1, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v2

    invoke-virtual {v3, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8598
    nop

    .line 8599
    invoke-virtual {v1, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v2

    .line 8598
    invoke-virtual {v3, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8600
    invoke-virtual {v3, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8594
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 8604
    .end local v0    # "i":I
    .end local v9    # "token":J
    :cond_63
    new-instance v2, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v2, v8}, Landroid/os/BatteryStats$HistoryPrinter;-><init>(I)V

    .line 8605
    .local v2, "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    const-wide/16 v4, -0x1

    .line 8606
    .local v4, "lastTime":J
    const-wide/16 v6, -0x1

    .line 8607
    .local v6, "baseTime":J
    const/4 v0, 0x0

    .line 8608
    .local v0, "printed":Z
    const/4 v9, 0x0

    .line 8609
    .local v9, "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    nop

    .line 8610
    const-wide/16 v10, 0x0

    const-wide/16 v12, -0x1

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/os/BatteryStats;->iterateBatteryStatsHistory(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object v12

    move-wide v13, v6

    move-wide v5, v4

    move v4, v0

    .line 8612
    .end local v0    # "printed":Z
    .end local v6    # "baseTime":J
    .local v4, "printed":Z
    .local v5, "lastTime":J
    .local v12, "iterator":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    .local v13, "baseTime":J
    :goto_7a
    :try_start_7a
    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v0
    :try_end_7e
    .catchall {:try_start_7a .. :try_end_7e} :catchall_20e

    move v7, v4

    .end local v4    # "printed":Z
    .local v7, "printed":Z
    move-object v4, v0

    .local v4, "rec":Landroid/os/BatteryStats$HistoryItem;
    if-eqz v0, :cond_1e1

    .line 8613
    move-wide v15, v10

    :try_start_83
    iget-wide v10, v4, Landroid/os/BatteryStats$HistoryItem;->time:J
    :try_end_85
    .catchall {:try_start_83 .. :try_end_85} :catchall_1dd

    .line 8614
    .end local v5    # "lastTime":J
    .local v10, "lastTime":J
    cmp-long v0, v13, v15

    if-gez v0, :cond_8c

    .line 8615
    move-wide v13, v10

    move-wide v5, v13

    goto :goto_8d

    .line 8614
    :cond_8c
    move-wide v5, v13

    .line 8617
    .end local v13    # "baseTime":J
    .local v5, "baseTime":J
    :goto_8d
    :try_start_8d
    iget-wide v13, v4, Landroid/os/BatteryStats$HistoryItem;->time:J
    :try_end_8f
    .catchall {:try_start_8d .. :try_end_8f} :catchall_1d7

    cmp-long v0, v13, p3

    if-ltz v0, :cond_1cc

    .line 8618
    cmp-long v0, p3, v15

    if-ltz v0, :cond_1ae

    if-nez v7, :cond_1ae

    .line 8619
    :try_start_99
    iget-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v14, 0x5

    if-eq v0, v14, :cond_cd

    iget-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move-wide/from16 v17, v15

    const/4 v15, 0x7

    if-eq v0, v15, :cond_cf

    iget-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v15, 0x4

    if-eq v0, v15, :cond_cf

    iget-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v15, 0x8

    if-ne v0, v15, :cond_b1

    goto :goto_cf

    .line 8627
    :cond_b1
    iget-wide v13, v4, Landroid/os/BatteryStats$HistoryItem;->currentTime:J
    :try_end_b3
    .catchall {:try_start_99 .. :try_end_b3} :catchall_1a5

    cmp-long v13, v13, v17

    if-eqz v13, :cond_cb

    .line 8628
    const/4 v13, 0x1

    .line 8629
    .end local v7    # "printed":Z
    .local v13, "printed":Z
    :try_start_b8
    iget-byte v7, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move v14, v7

    .line 8630
    .local v14, "cmd":B
    const/4 v15, 0x5

    iput-byte v15, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 8631
    and-int/lit8 v7, v8, 0x20

    if-eqz v7, :cond_c4

    const/4 v7, 0x1

    goto :goto_c5

    :cond_c4
    const/4 v7, 0x0

    :goto_c5
    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    .line 8633
    iput-byte v14, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    goto :goto_df

    .line 8627
    .end local v13    # "printed":Z
    .end local v14    # "cmd":B
    .restart local v7    # "printed":Z
    :cond_cb
    move v13, v7

    goto :goto_df

    .line 8619
    :cond_cd
    move-wide/from16 v17, v15

    .line 8623
    :cond_cf
    :goto_cf
    const/4 v13, 0x1

    .line 8624
    .end local v7    # "printed":Z
    .restart local v13    # "printed":Z
    and-int/lit8 v3, v8, 0x20

    if-eqz v3, :cond_d6

    const/4 v7, 0x1

    goto :goto_d7

    :cond_d6
    const/4 v7, 0x0

    :goto_d7
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    .line 8626
    const/4 v0, 0x0

    iput-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 8635
    :goto_df
    if-eqz v9, :cond_1b1

    .line 8636
    iget-byte v3, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v3, :cond_f5

    .line 8637
    and-int/lit8 v3, v8, 0x20

    if-eqz v3, :cond_eb

    const/4 v7, 0x1

    goto :goto_ec

    :cond_eb
    const/4 v7, 0x0

    :goto_ec
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    .line 8639
    const/4 v0, 0x0

    iput-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    goto :goto_f6

    .line 8636
    :cond_f5
    const/4 v0, 0x0

    .line 8641
    :goto_f6
    iget v3, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move v14, v3

    .line 8642
    .local v14, "oldEventCode":I
    iget-object v3, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object v15, v3

    .line 8643
    .local v15, "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    new-instance v3, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v3}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v3, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 8644
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_104
    const/16 v7, 0x17

    if-ge v3, v7, :cond_194

    .line 8645
    nop

    .line 8646
    invoke-virtual {v9, v3}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v7

    move-object/from16 v16, v7

    .line 8647
    .local v16, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v16, :cond_114

    .line 8648
    move v1, v3

    goto/16 :goto_18d

    .line 8651
    :cond_114
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_11c
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    move-object/from16 v20, v7

    .line 8652
    .local v20, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseIntArray;

    .line 8653
    .local v7, "uids":Landroid/util/SparseIntArray;
    const/16 v21, 0x0

    move/from16 v0, v21

    .local v0, "j":I
    :goto_134
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_185

    .line 8654
    iput v3, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 8655
    iget-object v1, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21
    :try_end_142
    .catchall {:try_start_b8 .. :try_end_142} :catchall_19c

    move-object/from16 v22, v2

    .end local v2    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .local v22, "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    :try_start_144
    move-object/from16 v2, v21

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 8656
    iget-object v1, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v7, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iput v2, v1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 8657
    iget-object v1, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v7, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    iput v2, v1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I
    :try_end_15a
    .catchall {:try_start_144 .. :try_end_15a} :catchall_17a

    .line 8658
    and-int/lit8 v1, v8, 0x20

    if-eqz v1, :cond_161

    move-object v1, v7

    const/4 v7, 0x1

    goto :goto_163

    :cond_161
    move-object v1, v7

    const/4 v7, 0x0

    .end local v7    # "uids":Landroid/util/SparseIntArray;
    .local v1, "uids":Landroid/util/SparseIntArray;
    :goto_163
    move-object/from16 v21, v1

    move v1, v3

    move-object/from16 v2, v22

    move-object/from16 v3, p1

    .end local v3    # "i":I
    .end local v22    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .local v1, "i":I
    .restart local v2    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .local v21, "uids":Landroid/util/SparseIntArray;
    :try_start_16a
    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    .line 8660
    const/4 v3, 0x0

    iput-object v3, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 8661
    iput-object v3, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 8653
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move-object/from16 v7, v21

    move-object/from16 v1, p0

    goto :goto_134

    .line 8609
    .end local v0    # "j":I
    .end local v1    # "i":I
    .end local v2    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .end local v4    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v14    # "oldEventCode":I
    .end local v15    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .end local v16    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v20    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v21    # "uids":Landroid/util/SparseIntArray;
    .restart local v22    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    :catchall_17a
    move-exception v0

    move-object/from16 v2, v22

    move-object/from16 v3, p1

    move-object v1, v0

    move v4, v13

    move-wide v13, v5

    move-wide v5, v10

    .end local v22    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .restart local v2    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    goto/16 :goto_211

    .line 8653
    .restart local v0    # "j":I
    .restart local v3    # "i":I
    .restart local v4    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v7    # "uids":Landroid/util/SparseIntArray;
    .restart local v14    # "oldEventCode":I
    .restart local v15    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .restart local v16    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v20    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :cond_185
    move v1, v3

    move-object/from16 v21, v7

    .line 8663
    .end local v0    # "j":I
    .end local v3    # "i":I
    .end local v7    # "uids":Landroid/util/SparseIntArray;
    .end local v20    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v1    # "i":I
    const/4 v0, 0x0

    move-object/from16 v1, p0

    goto :goto_11c

    .line 8651
    .end local v1    # "i":I
    .restart local v3    # "i":I
    :cond_18c
    move v1, v3

    .line 8644
    .end local v3    # "i":I
    .end local v16    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v1    # "i":I
    :goto_18d
    add-int/lit8 v3, v1, 0x1

    const/4 v0, 0x0

    move-object/from16 v1, p0

    .end local v1    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_104

    :cond_194
    move v1, v3

    .line 8665
    .end local v3    # "i":I
    iput v14, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 8666
    iput-object v15, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;
    :try_end_199
    .catchall {:try_start_16a .. :try_end_199} :catchall_19c

    .line 8667
    const/4 v0, 0x0

    move-object v9, v0

    .end local v9    # "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    .local v0, "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    goto :goto_1b1

    .line 8609
    .end local v0    # "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    .end local v4    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v14    # "oldEventCode":I
    .end local v15    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .restart local v9    # "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    :catchall_19c
    move-exception v0

    move-object/from16 v3, p1

    move-object v1, v0

    move v4, v13

    move-wide v13, v5

    move-wide v5, v10

    goto/16 :goto_211

    .end local v13    # "printed":Z
    .local v7, "printed":Z
    :catchall_1a5
    move-exception v0

    move-object/from16 v3, p1

    move-object v1, v0

    move-wide v13, v5

    move v4, v7

    move-wide v5, v10

    goto/16 :goto_211

    .line 8618
    .restart local v4    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_1ae
    move-wide/from16 v17, v15

    .line 8670
    move v13, v7

    .end local v7    # "printed":Z
    .restart local v13    # "printed":Z
    :cond_1b1
    :goto_1b1
    and-int/lit8 v0, v8, 0x20

    if-eqz v0, :cond_1b7

    const/4 v7, 0x1

    goto :goto_1b8

    :cond_1b7
    const/4 v7, 0x0

    :goto_1b8
    move-object/from16 v3, p1

    :try_start_1ba
    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V
    :try_end_1bd
    .catchall {:try_start_1ba .. :try_end_1bd} :catchall_1c6

    move-object/from16 v1, p0

    move v4, v13

    move-wide v13, v5

    move-wide v5, v10

    move-wide/from16 v10, v17

    goto/16 :goto_7a

    .line 8609
    .end local v4    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :catchall_1c6
    move-exception v0

    move-object v1, v0

    move v4, v13

    move-wide v13, v5

    move-wide v5, v10

    goto :goto_211

    .line 8617
    .end local v13    # "printed":Z
    .restart local v4    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v7    # "printed":Z
    :cond_1cc
    move-wide/from16 v17, v15

    move-object/from16 v1, p0

    move-wide v13, v5

    move v4, v7

    move-wide v5, v10

    move-wide/from16 v10, v17

    goto/16 :goto_7a

    .line 8609
    .end local v4    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :catchall_1d7
    move-exception v0

    move-object v1, v0

    move-wide v13, v5

    move v4, v7

    move-wide v5, v10

    goto :goto_211

    .end local v10    # "lastTime":J
    .local v5, "lastTime":J
    .local v13, "baseTime":J
    :catchall_1dd
    move-exception v0

    move-object v1, v0

    move v4, v7

    goto :goto_211

    .line 8674
    .restart local v4    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_1e1
    move-wide/from16 v17, v10

    cmp-long v0, p3, v17

    if-ltz v0, :cond_208

    .line 8675
    :try_start_1e7
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    .line 8676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NEXT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v10, 0x1

    add-long/2addr v10, v5

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v10, 0x20900000006L

    invoke-virtual {v3, v10, v11, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_208
    .catchall {:try_start_1e7 .. :try_end_208} :catchall_1dd

    .line 8679
    .end local v4    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_208
    if-eqz v12, :cond_20d

    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    .line 8680
    .end local v12    # "iterator":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    :cond_20d
    return-void

    .line 8609
    .end local v7    # "printed":Z
    .local v4, "printed":Z
    .restart local v12    # "iterator":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    :catchall_20e
    move-exception v0

    move v7, v4

    move-object v1, v0

    :goto_211
    if-eqz v12, :cond_21b

    :try_start_213
    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V
    :try_end_216
    .catchall {:try_start_213 .. :try_end_216} :catchall_217

    goto :goto_21b

    :catchall_217
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_21b
    :goto_21b
    throw v1
.end method

.method private blacklist dumpProtoSystemLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;)V
    .registers 60
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "stats"    # Landroid/os/BatteryUsageStats;

    .line 8683
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 8684
    .local v8, "sToken":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v10, 0x3e8

    mul-long v12, v2, v10

    .line 8685
    .local v12, "rawUptimeUs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 8686
    .local v14, "rawRealtimeMs":J
    mul-long v5, v14, v10

    .line 8687
    .local v5, "rawRealtimeUs":J
    const/16 v16, 0x0

    .line 8690
    .local v16, "which":I
    const-wide v2, 0x10b00000001L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8691
    .local v2, "bToken":J
    move-wide/from16 v17, v10

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v10

    move-wide/from16 v19, v8

    .end local v8    # "sToken":J
    .local v19, "sToken":J
    const-wide v7, 0x10300000001L

    invoke-virtual {v1, v7, v8, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8692
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v4

    const-wide v9, 0x10300000002L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8693
    nop

    .line 8694
    const/4 v11, 0x0

    invoke-virtual {v0, v5, v6, v11}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v21

    div-long v7, v21, v17

    .line 8693
    const-wide v9, 0x10300000003L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8695
    nop

    .line 8696
    invoke-virtual {v0, v12, v13, v11}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8695
    const-wide v9, 0x10300000004L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8697
    nop

    .line 8698
    invoke-virtual {v0, v5, v6, v11}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8697
    const-wide v9, 0x10300000005L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8699
    nop

    .line 8700
    invoke-virtual {v0, v12, v13, v11}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8699
    const-wide v9, 0x10300000006L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8701
    nop

    .line 8702
    invoke-virtual {v0, v5, v6, v11}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8701
    const-wide v9, 0x10300000007L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8703
    nop

    .line 8704
    invoke-virtual {v0, v12, v13, v11}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8703
    const-wide v9, 0x10300000008L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8705
    nop

    .line 8706
    invoke-virtual {v0, v5, v6, v11}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8705
    const-wide v9, 0x10300000009L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8707
    nop

    .line 8708
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v4

    .line 8707
    const-wide v7, 0x1030000000aL

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8709
    nop

    .line 8710
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v4

    .line 8709
    const-wide v7, 0x1030000000bL

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8711
    nop

    .line 8712
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v4

    .line 8711
    const-wide v7, 0x1030000000cL

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8713
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8716
    const-wide v7, 0x10b00000002L

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 8717
    .local v7, "bdToken":J
    nop

    .line 8718
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v4

    .line 8717
    const-wide v9, 0x10500000001L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8719
    nop

    .line 8720
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v4

    .line 8719
    const-wide v9, 0x10500000002L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8721
    nop

    .line 8722
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v4

    .line 8721
    const-wide v9, 0x10500000003L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8723
    nop

    .line 8724
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v4

    .line 8723
    const-wide v9, 0x10500000004L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8725
    nop

    .line 8726
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v4

    .line 8725
    const-wide v9, 0x10500000005L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8727
    nop

    .line 8728
    invoke-virtual {v0, v11}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v9

    div-long v9, v9, v17

    .line 8727
    move-wide/from16 v39, v12

    const-wide v11, 0x10300000006L

    .end local v12    # "rawUptimeUs":J
    .local v39, "rawUptimeUs":J
    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8729
    nop

    .line 8730
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v9

    div-long v9, v9, v17

    .line 8729
    const-wide v11, 0x10300000007L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8731
    nop

    .line 8732
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v9

    div-long v9, v9, v17

    .line 8731
    const-wide v11, 0x10300000008L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8733
    nop

    .line 8734
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v9

    div-long v9, v9, v17

    .line 8733
    const-wide v11, 0x10300000009L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8735
    nop

    .line 8736
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v9

    div-long v9, v9, v17

    .line 8735
    const-wide v11, 0x1030000000aL

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8737
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8740
    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v9

    .line 8742
    .local v9, "timeRemainingUs":J
    const-wide/16 v35, 0x0

    cmp-long v4, v9, v35

    if-ltz v4, :cond_188

    .line 8744
    div-long v11, v9, v17

    move-wide/from16 v43, v14

    const-wide v13, 0x10300000003L

    .end local v14    # "rawRealtimeMs":J
    .local v43, "rawRealtimeMs":J
    invoke-virtual {v1, v13, v14, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_1a6

    .line 8746
    .end local v43    # "rawRealtimeMs":J
    .restart local v14    # "rawRealtimeMs":J
    :cond_188
    move-wide/from16 v43, v14

    .end local v14    # "rawRealtimeMs":J
    .restart local v43    # "rawRealtimeMs":J
    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v9

    .line 8748
    cmp-long v4, v9, v35

    if-ltz v4, :cond_19d

    .line 8749
    div-long v11, v9, v17

    const-wide v13, 0x10300000004L

    invoke-virtual {v1, v13, v14, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_1a6

    .line 8751
    :cond_19d
    const-wide v13, 0x10300000004L

    const/4 v4, -0x1

    invoke-virtual {v1, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8756
    :goto_1a6
    const-wide v11, 0x20b00000005L

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v4

    invoke-static {v1, v11, v12, v4}, Landroid/os/BatteryStats;->dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V

    .line 8759
    const/4 v4, 0x0

    move v11, v4

    .local v11, "i":I
    :goto_1b4
    sget v4, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    const/4 v14, 0x1

    if-ge v11, v4, :cond_20d

    .line 8761
    if-nez v11, :cond_1bc

    goto :goto_1bd

    :cond_1bc
    const/4 v14, 0x0

    .line 8762
    .local v14, "isNone":Z
    :goto_1bd
    move v4, v11

    .line 8763
    .local v4, "telephonyNetworkType":I
    sget v15, Landroid/os/BatteryStats;->DATA_CONNECTION_OTHER:I

    if-eq v11, v15, :cond_1c9

    sget v15, Landroid/os/BatteryStats;->DATA_CONNECTION_EMERGENCY_SERVICE:I

    if-ne v11, v15, :cond_1c7

    goto :goto_1c9

    :cond_1c7
    move v15, v4

    goto :goto_1cb

    .line 8764
    :cond_1c9
    :goto_1c9
    const/4 v4, 0x0

    move v15, v4

    .line 8766
    .end local v4    # "telephonyNetworkType":I
    .local v15, "telephonyNetworkType":I
    :goto_1cb
    const-wide v12, 0x20b00000008L

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 8767
    .local v12, "pdcToken":J
    if-eqz v14, :cond_1e1

    .line 8768
    move-wide/from16 v47, v2

    .end local v2    # "bToken":J
    .local v47, "bToken":J
    const-wide v2, 0x10800000002L

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    goto :goto_1eb

    .line 8770
    .end local v47    # "bToken":J
    .restart local v2    # "bToken":J
    :cond_1e1
    move-wide/from16 v47, v2

    .end local v2    # "bToken":J
    .restart local v47    # "bToken":J
    const-wide v2, 0x10e00000001L

    invoke-virtual {v1, v2, v3, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8772
    :goto_1eb
    invoke-virtual {v0, v11}, Landroid/os/BatteryStats;->getPhoneDataConnectionTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    move-wide v2, v7

    .end local v7    # "bdToken":J
    .local v2, "bdToken":J
    const/4 v7, 0x0

    move-wide/from16 v45, v2

    .end local v2    # "bdToken":J
    .local v45, "bdToken":J
    const-wide v2, 0x10b00000003L

    move v8, v14

    move/from16 v23, v15

    const-wide v14, 0x10300000001L

    .end local v14    # "isNone":Z
    .end local v15    # "telephonyNetworkType":I
    .local v8, "isNone":Z
    .local v23, "telephonyNetworkType":I
    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8774
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8759
    .end local v8    # "isNone":Z
    .end local v12    # "pdcToken":J
    .end local v23    # "telephonyNetworkType":I
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v7, v45

    move-wide/from16 v2, v47

    goto :goto_1b4

    .end local v45    # "bdToken":J
    .end local v47    # "bToken":J
    .local v2, "bToken":J
    .restart local v7    # "bdToken":J
    :cond_20d
    move-wide/from16 v47, v2

    move-wide/from16 v45, v7

    move v8, v14

    const-wide v2, 0x10e00000001L

    const-wide v14, 0x10300000001L

    .line 8778
    .end local v2    # "bToken":J
    .end local v7    # "bdToken":J
    .end local v11    # "i":I
    .restart local v45    # "bdToken":J
    .restart local v47    # "bToken":J
    const-wide v11, 0x20b00000006L

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v4

    invoke-static {v1, v11, v12, v4}, Landroid/os/BatteryStats;->dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V

    .line 8781
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v11

    .line 8782
    .local v11, "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    if-eqz v11, :cond_266

    .line 8783
    invoke-virtual {v11}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v4

    array-length v7, v4

    const/4 v13, 0x0

    :goto_234
    if-ge v13, v7, :cond_266

    aget v12, v4, v13

    .line 8784
    .local v12, "policy":I
    invoke-virtual {v11, v12}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v2

    array-length v3, v2

    const/4 v8, 0x0

    :goto_23e
    if-ge v8, v3, :cond_258

    aget v14, v2, v8

    .line 8785
    .local v14, "frequency":I
    move-object v15, v2

    move/from16 v41, v3

    const-wide v2, 0x20300000007L

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8784
    .end local v14    # "frequency":I
    add-int/lit8 v8, v8, 0x1

    move-object v2, v15

    move/from16 v3, v41

    const-wide v14, 0x10300000001L

    goto :goto_23e

    .line 8783
    .end local v12    # "policy":I
    :cond_258
    add-int/lit8 v13, v13, 0x1

    const-wide v2, 0x10e00000001L

    const/4 v8, 0x1

    const-wide v14, 0x10300000001L

    goto :goto_234

    .line 8791
    :cond_266
    nop

    .line 8792
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    .line 8791
    const-wide v3, 0x10b00000009L

    const/4 v13, 0x0

    invoke-static {v1, v3, v4, v2, v13}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8795
    nop

    .line 8796
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    .line 8795
    const-wide v3, 0x10b0000000aL

    invoke-static {v1, v3, v4, v2, v13}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8799
    const-wide v2, 0x10b0000000cL

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 8800
    .local v14, "gnToken":J
    nop

    .line 8801
    invoke-virtual {v0, v13, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 8800
    const-wide v7, 0x10300000001L

    invoke-virtual {v1, v7, v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8802
    nop

    .line 8803
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 8802
    move-wide/from16 v41, v9

    const-wide v8, 0x10300000002L

    .end local v9    # "timeRemainingUs":J
    .local v41, "timeRemainingUs":J
    invoke-virtual {v1, v8, v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8804
    nop

    .line 8805
    invoke-virtual {v0, v13, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v2

    .line 8804
    const-wide v7, 0x10300000005L

    invoke-virtual {v1, v7, v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8806
    nop

    .line 8807
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v2

    .line 8806
    const-wide v7, 0x10300000006L

    invoke-virtual {v1, v7, v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8808
    nop

    .line 8809
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 8808
    const-wide v9, 0x10300000003L

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8810
    nop

    .line 8811
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v3

    .line 8810
    const-wide v9, 0x10300000004L

    invoke-virtual {v1, v9, v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8812
    nop

    .line 8813
    invoke-virtual {v0, v8, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v3

    .line 8812
    const-wide v9, 0x10300000007L

    invoke-virtual {v1, v9, v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8814
    nop

    .line 8815
    invoke-virtual {v0, v2, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v2

    .line 8814
    const-wide v9, 0x10300000008L

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8816
    nop

    .line 8817
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 8816
    const-wide v9, 0x10300000009L

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8818
    nop

    .line 8819
    const/4 v9, 0x5

    invoke-virtual {v0, v9, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 8818
    const-wide v9, 0x1030000000aL

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8820
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8823
    nop

    .line 8824
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    .line 8823
    const-wide v3, 0x10b0000000bL

    invoke-static {v1, v3, v4, v2, v13}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8828
    const-wide v2, 0x10b0000000dL

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8829
    .local v2, "gwToken":J
    nop

    .line 8830
    invoke-virtual {v0, v5, v6, v13}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v32

    div-long v8, v32, v17

    .line 8829
    const-wide v12, 0x10300000001L

    invoke-virtual {v1, v12, v13, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8831
    nop

    .line 8832
    const/4 v13, 0x0

    invoke-virtual {v0, v5, v6, v13}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v7

    move-object v9, v11

    const-wide v10, 0x10e00000001L

    .end local v11    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .local v9, "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    div-long v7, v7, v17

    .line 8831
    const-wide v12, 0x10300000002L

    invoke-virtual {v1, v12, v13, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8833
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8836
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v8

    .line 8837
    .local v8, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_361
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    move-wide/from16 v32, v2

    .end local v2    # "gwToken":J
    .local v32, "gwToken":J
    const-wide v2, 0x10900000001L

    if-eqz v4, :cond_3a2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava/util/Map$Entry;

    .line 8838
    .local v13, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const-wide v10, 0x20b0000000eL

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 8839
    .local v10, "kwToken":J
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8840
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v7, 0x0

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8842
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8843
    .end local v10    # "kwToken":J
    .end local v13    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    move-wide/from16 v2, v32

    const-wide v10, 0x10e00000001L

    goto :goto_361

    .line 8847
    :cond_3a2
    const-wide/16 v10, 0x0

    .line 8848
    .local v10, "fullWakeLockTimeTotalUs":J
    const-wide/16 v12, 0x0

    .line 8850
    .local v12, "partialWakeLockTimeTotalUs":J
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v4

    .line 8851
    .local v4, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    const/4 v7, 0x0

    move-wide/from16 v51, v12

    .end local v12    # "partialWakeLockTimeTotalUs":J
    .local v7, "iu":I
    .local v51, "partialWakeLockTimeTotalUs":J
    :goto_3ad
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v7, v12, :cond_409

    .line 8852
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid;

    .line 8854
    .local v12, "u":Landroid/os/BatteryStats$Uid;
    nop

    .line 8855
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v13

    .line 8856
    .local v13, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v24

    const/4 v2, 0x1

    add-int/lit8 v24, v24, -0x1

    move/from16 v3, v24

    .local v3, "iw":I
    :goto_3c7
    if-ltz v3, :cond_3fc

    .line 8857
    invoke-virtual {v13, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    move/from16 v34, v3

    .end local v3    # "iw":I
    .local v34, "iw":I
    move-object/from16 v3, v24

    check-cast v3, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 8859
    .local v3, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    move-object/from16 v24, v4

    .end local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v24, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v3, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    .line 8860
    .local v4, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v4, :cond_3e3

    .line 8861
    const/4 v2, 0x0

    invoke-virtual {v4, v5, v6, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v55

    add-long v10, v10, v55

    goto :goto_3e4

    .line 8860
    :cond_3e3
    const/4 v2, 0x0

    .line 8865
    :goto_3e4
    move-object/from16 v35, v4

    .end local v4    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    .local v35, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v3, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    .line 8866
    .local v4, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v4, :cond_3f4

    .line 8867
    invoke-virtual {v4, v5, v6, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v55

    move-object v2, v13

    .end local v13    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v2, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    add-long v51, v51, v55

    goto :goto_3f5

    .line 8866
    .end local v2    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v13    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_3f4
    move-object v2, v13

    .line 8856
    .end local v3    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v4    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v13    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v35    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    .restart local v2    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :goto_3f5
    add-int/lit8 v3, v34, -0x1

    move-object v13, v2

    move-object/from16 v4, v24

    const/4 v2, 0x1

    .end local v34    # "iw":I
    .local v3, "iw":I
    goto :goto_3c7

    .end local v2    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v24    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v4, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v13    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_3fc
    move/from16 v34, v3

    move-object/from16 v24, v4

    move-object v2, v13

    .line 8851
    .end local v3    # "iw":I
    .end local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v12    # "u":Landroid/os/BatteryStats$Uid;
    .end local v13    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v24    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    add-int/lit8 v7, v7, 0x1

    const-wide v2, 0x10900000001L

    goto :goto_3ad

    .end local v24    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    :cond_409
    move-object/from16 v24, v4

    .line 8872
    .end local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v7    # "iu":I
    .restart local v24    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    const-wide v2, 0x10b0000000fL

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8873
    .local v2, "mToken":J
    nop

    .line 8874
    const/4 v13, 0x0

    invoke-virtual {v0, v5, v6, v13}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v34

    move-wide/from16 v55, v14

    .end local v14    # "gnToken":J
    .local v55, "gnToken":J
    div-long v13, v34, v17

    .line 8873
    move-object/from16 v34, v8

    const-wide v7, 0x10300000001L

    .end local v8    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v34, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v1, v7, v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8875
    nop

    .line 8876
    const/4 v13, 0x0

    invoke-virtual {v0, v5, v6, v13}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8875
    const-wide v14, 0x10300000002L

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8877
    div-long v7, v10, v17

    const-wide v14, 0x10300000003L

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8879
    div-long v7, v51, v17

    const-wide v14, 0x10300000004L

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8881
    nop

    .line 8882
    const/4 v13, 0x0

    invoke-virtual {v0, v5, v6, v13}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8881
    const-wide v14, 0x10300000005L

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8883
    nop

    .line 8884
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8883
    const-wide v14, 0x10300000006L

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8885
    nop

    .line 8886
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v4

    .line 8885
    const-wide v7, 0x10500000007L

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8887
    nop

    .line 8888
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8887
    const-wide v14, 0x10500000008L

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8889
    nop

    .line 8890
    invoke-virtual {v0, v5, v6, v13}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8889
    const-wide v14, 0x10300000009L

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8891
    nop

    .line 8892
    invoke-virtual {v0, v5, v6, v13}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8891
    const-wide v14, 0x1030000000aL

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8893
    nop

    .line 8894
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v4

    .line 8893
    const-wide v7, 0x1050000000bL

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8895
    nop

    .line 8896
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8895
    const-wide v14, 0x1030000000cL

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8897
    nop

    .line 8898
    invoke-virtual {v0, v4, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v7

    .line 8897
    const-wide v14, 0x1050000000dL

    invoke-virtual {v1, v14, v15, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8899
    nop

    .line 8900
    invoke-virtual {v0, v4, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8899
    const-wide v14, 0x1030000000eL

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8901
    nop

    .line 8902
    invoke-virtual {v0, v4, v13}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v7

    .line 8901
    const-wide v14, 0x1050000000fL

    invoke-virtual {v1, v14, v15, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8903
    nop

    .line 8904
    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v7

    .line 8903
    const-wide v14, 0x10300000010L

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8905
    nop

    .line 8906
    const/4 v8, 0x1

    const/4 v13, 0x0

    invoke-virtual {v0, v8, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v14

    div-long v14, v14, v17

    .line 8905
    move-object/from16 v21, v9

    .end local v9    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .local v21, "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    const-wide v8, 0x10300000011L

    invoke-virtual {v1, v8, v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8907
    nop

    .line 8908
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v4

    .line 8907
    const-wide v14, 0x10500000012L

    invoke-virtual {v1, v14, v15, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8909
    nop

    .line 8910
    invoke-virtual {v0, v8, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v14

    div-long v14, v14, v17

    .line 8909
    const-wide v8, 0x10300000013L

    invoke-virtual {v1, v8, v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8911
    nop

    .line 8912
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v13}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v4

    .line 8911
    const-wide v14, 0x10500000014L

    invoke-virtual {v1, v14, v15, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8913
    nop

    .line 8914
    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v7

    .line 8913
    const-wide v14, 0x10300000015L

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8915
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8918
    nop

    .line 8919
    const/4 v13, 0x0

    invoke-virtual {v0, v5, v6, v13}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v8

    .line 8920
    .local v8, "multicastWakeLockTimeTotalUs":J
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v14

    .line 8921
    .local v14, "multicastWakeLockCountTotal":I
    move v15, v14

    .end local v14    # "multicastWakeLockCountTotal":I
    .local v15, "multicastWakeLockCountTotal":I
    const-wide v13, 0x10b00000017L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 8922
    .local v12, "wmctToken":J
    move-wide/from16 v25, v2

    .end local v2    # "mToken":J
    .local v25, "mToken":J
    div-long v2, v8, v17

    move-wide/from16 v17, v5

    const-wide v4, 0x10300000001L

    .end local v5    # "rawRealtimeUs":J
    .local v17, "rawRealtimeUs":J
    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8924
    const-wide v2, 0x10500000002L

    invoke-virtual {v1, v2, v3, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8926
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8928
    move-object/from16 v14, p2

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v3

    .line 8931
    move-wide/from16 v27, v12

    .end local v12    # "wmctToken":J
    .local v3, "deviceConsumer":Landroid/os/BatteryConsumer;
    .local v27, "wmctToken":J
    const/4 v2, 0x0

    .local v2, "powerComponent":I
    :goto_57d
    const/16 v4, 0x13

    if-ge v2, v4, :cond_5ee

    .line 8933
    const/4 v4, 0x0

    .line 8934
    .local v4, "n":I
    packed-switch v2, :pswitch_data_7fc

    :pswitch_585
    goto :goto_59d

    .line 8939
    :pswitch_586
    const/4 v4, 0x1

    .line 8940
    goto :goto_59d

    .line 8936
    :pswitch_588
    const/16 v4, 0xd

    .line 8937
    goto :goto_59d

    .line 8945
    :pswitch_58b
    const/4 v4, 0x3

    .line 8946
    goto :goto_59d

    .line 8963
    :pswitch_58d
    const/16 v4, 0xc

    goto :goto_59d

    .line 8948
    :pswitch_590
    const/4 v4, 0x4

    .line 8949
    goto :goto_59d

    .line 8942
    :pswitch_592
    const/4 v4, 0x2

    .line 8943
    goto :goto_59d

    .line 8957
    :pswitch_594
    const/4 v4, 0x6

    .line 8958
    goto :goto_59d

    .line 8960
    :pswitch_596
    const/16 v4, 0xb

    .line 8961
    goto :goto_59d

    .line 8951
    :pswitch_599
    const/4 v4, 0x5

    .line 8952
    goto :goto_59d

    .line 8954
    :pswitch_59b
    const/4 v4, 0x7

    .line 8955
    nop

    .line 8966
    :goto_59d
    const-wide v5, 0x20b00000011L

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 8967
    .local v5, "puiToken":J
    const-wide v13, 0x10e00000001L

    invoke-virtual {v1, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8968
    move-wide/from16 v29, v8

    const-wide v7, 0x10500000002L

    const/4 v13, 0x0

    .end local v8    # "multicastWakeLockTimeTotalUs":J
    .local v29, "multicastWakeLockTimeTotalUs":J
    invoke-virtual {v1, v7, v8, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8969
    nop

    .line 8970
    invoke-virtual {v3, v2}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v7

    .line 8969
    const-wide v13, 0x10100000003L

    invoke-virtual {v1, v13, v14, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8971
    nop

    .line 8972
    invoke-direct {v0, v2}, Landroid/os/BatteryStats;->shouldHidePowerComponent(I)Z

    move-result v7

    .line 8971
    const-wide v8, 0x10800000004L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8973
    const-wide v7, 0x10100000005L

    const/4 v13, 0x0

    invoke-virtual {v1, v7, v8, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8974
    const-wide v7, 0x10100000006L

    invoke-virtual {v1, v7, v8, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8975
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8932
    .end local v4    # "n":I
    .end local v5    # "puiToken":J
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v14, p2

    move-wide/from16 v8, v29

    goto :goto_57d

    .line 8931
    .end local v29    # "multicastWakeLockTimeTotalUs":J
    .restart local v8    # "multicastWakeLockTimeTotalUs":J
    :cond_5ee
    move-wide/from16 v29, v8

    .line 8979
    .end local v2    # "powerComponent":I
    .end local v8    # "multicastWakeLockTimeTotalUs":J
    .restart local v29    # "multicastWakeLockTimeTotalUs":J
    const-wide v4, 0x10b00000012L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 8980
    .local v8, "pusToken":J
    nop

    .line 8981
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getBatteryCapacity()D

    move-result-wide v4

    .line 8980
    const-wide v6, 0x10100000001L

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8982
    const-wide v4, 0x10100000002L

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8983
    nop

    .line 8984
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 8983
    const-wide v6, 0x10100000003L

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8985
    nop

    .line 8986
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 8985
    const-wide v6, 0x10100000004L

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8987
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8990
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v13

    .line 8991
    .local v13, "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getScreenOffRpmStats()Ljava/util/Map;

    move-result-object v14

    .line 8992
    .local v14, "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_653
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6bb

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Ljava/util/Map$Entry;

    .line 8993
    .local v22, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const-wide v4, 0x20b00000013L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 8994
    .local v4, "rpmToken":J
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide v6, 0x10900000001L

    invoke-virtual {v1, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8995
    nop

    .line 8996
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    .line 8995
    move-object/from16 v31, v3

    move-wide/from16 v35, v4

    move-object v4, v2

    .end local v3    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .end local v4    # "rpmToken":J
    .local v31, "deviceConsumer":Landroid/os/BatteryConsumer;
    .local v35, "rpmToken":J
    const-wide v2, 0x10b00000002L

    move-wide/from16 v53, v6

    const/4 v7, 0x0

    move-wide/from16 v5, v17

    move-wide/from16 v17, v8

    move-wide/from16 v8, v35

    move-wide/from16 v35, v10

    move-wide/from16 v10, v53

    .end local v10    # "fullWakeLockTimeTotalUs":J
    .local v5, "rawRealtimeUs":J
    .local v8, "rpmToken":J
    .local v17, "pusToken":J
    .local v35, "fullWakeLockTimeTotalUs":J
    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8997
    nop

    .line 8998
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    .line 8997
    const-wide v2, 0x10b00000003L

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8999
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 9000
    .end local v8    # "rpmToken":J
    .end local v22    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    move-wide/from16 v8, v17

    move-object/from16 v3, v31

    move-wide/from16 v10, v35

    move-wide/from16 v17, v5

    goto :goto_653

    .line 9003
    .end local v5    # "rawRealtimeUs":J
    .end local v31    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .end local v35    # "fullWakeLockTimeTotalUs":J
    .restart local v3    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .local v8, "pusToken":J
    .restart local v10    # "fullWakeLockTimeTotalUs":J
    .local v17, "rawRealtimeUs":J
    :cond_6bb
    move-object/from16 v31, v3

    move-wide/from16 v35, v10

    move-wide/from16 v5, v17

    const-wide v10, 0x10900000001L

    move-wide/from16 v17, v8

    .end local v3    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .end local v8    # "pusToken":J
    .end local v10    # "fullWakeLockTimeTotalUs":J
    .restart local v5    # "rawRealtimeUs":J
    .local v17, "pusToken":J
    .restart local v31    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .restart local v35    # "fullWakeLockTimeTotalUs":J
    const/4 v2, 0x0

    move v8, v2

    .local v8, "i":I
    :goto_6ca
    const/4 v12, 0x5

    if-ge v8, v12, :cond_6f4

    .line 9004
    const-wide v2, 0x20b00000014L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 9005
    .local v2, "sbToken":J
    move-object v9, v13

    const-wide v12, 0x10e00000001L

    .end local v13    # "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v9, "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v1, v12, v13, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 9006
    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    move-wide v12, v2

    .end local v2    # "sbToken":J
    .local v12, "sbToken":J
    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 9008
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 9003
    .end local v12    # "sbToken":J
    add-int/lit8 v8, v8, 0x1

    move-object v13, v9

    goto :goto_6ca

    .end local v9    # "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v13    # "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_6f4
    move-object v9, v13

    .line 9012
    .end local v8    # "i":I
    .end local v13    # "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v9    # "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getPhoneSignalScanningTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    const-wide v2, 0x10b00000015L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 9016
    const/4 v2, 0x0

    move v8, v2

    .restart local v8    # "i":I
    :goto_704
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v2

    if-ge v8, v2, :cond_72e

    .line 9017
    const-wide v2, 0x20b00000010L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 9018
    .local v12, "pssToken":J
    const-wide v2, 0x10e00000001L

    invoke-virtual {v1, v2, v3, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 9019
    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 9021
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 9016
    .end local v12    # "pssToken":J
    add-int/lit8 v8, v8, 0x1

    goto :goto_704

    .line 9025
    .end local v8    # "i":I
    :cond_72e
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v8

    .line 9026
    .local v8, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_73a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_775

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/util/Map$Entry;

    .line 9027
    .local v13, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const-wide v2, 0x20b00000016L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 9028
    .local v2, "wrToken":J
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v10, v11, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 9029
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v7, 0x0

    move-wide/from16 v37, v2

    .end local v2    # "wrToken":J
    .local v37, "wrToken":J
    const-wide v2, 0x10b00000002L

    move-wide/from16 v10, v37

    .end local v37    # "wrToken":J
    .local v10, "wrToken":J
    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 9030
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 9031
    .end local v10    # "wrToken":J
    .end local v13    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const-wide v10, 0x10900000001L

    goto :goto_73a

    .line 9034
    :cond_775
    const/4 v2, 0x0

    move v10, v2

    .local v10, "i":I
    :goto_777
    const/4 v12, 0x5

    if-ge v10, v12, :cond_79f

    .line 9035
    const-wide v2, 0x20b00000018L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 9036
    .local v2, "wssToken":J
    const-wide v12, 0x10e00000001L

    invoke-virtual {v1, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 9037
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getWifiSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    move-wide v11, v2

    .end local v2    # "wssToken":J
    .local v11, "wssToken":J
    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 9039
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 9034
    .end local v11    # "wssToken":J
    add-int/lit8 v10, v10, 0x1

    goto :goto_777

    .line 9043
    .end local v10    # "i":I
    :cond_79f
    const/4 v2, 0x0

    move v10, v2

    .restart local v10    # "i":I
    :goto_7a1
    const/16 v2, 0x8

    if-ge v10, v2, :cond_7c9

    .line 9044
    const-wide v2, 0x20b00000019L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 9045
    .local v11, "wsToken":J
    const-wide v2, 0x10e00000001L

    invoke-virtual {v1, v2, v3, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 9046
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getWifiStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 9048
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 9043
    .end local v11    # "wsToken":J
    add-int/lit8 v10, v10, 0x1

    goto :goto_7a1

    .line 9052
    .end local v10    # "i":I
    :cond_7c9
    const/4 v2, 0x0

    move v10, v2

    .restart local v10    # "i":I
    :goto_7cb
    const/16 v2, 0xd

    if-ge v10, v2, :cond_7f5

    .line 9053
    const-wide v2, 0x20b0000001aL

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 9054
    .local v11, "wssToken":J
    const-wide v2, 0x10e00000001L

    invoke-virtual {v1, v2, v3, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 9055
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getWifiSupplStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    move-wide/from16 v49, v2

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 9057
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 9052
    .end local v11    # "wssToken":J
    add-int/lit8 v10, v10, 0x1

    goto :goto_7cb

    .line 9060
    .end local v10    # "i":I
    :cond_7f5
    move-wide/from16 v2, v19

    .end local v19    # "sToken":J
    .local v2, "sToken":J
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 9061
    return-void

    nop

    :pswitch_data_7fc
    .packed-switch 0x0
        :pswitch_59b
        :pswitch_585
        :pswitch_599
        :pswitch_596
        :pswitch_585
        :pswitch_585
        :pswitch_594
        :pswitch_585
        :pswitch_592
        :pswitch_585
        :pswitch_585
        :pswitch_590
        :pswitch_585
        :pswitch_58d
        :pswitch_58b
        :pswitch_588
        :pswitch_586
    .end packed-switch
.end method

.method private static greylist-max-o dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "label1"    # Ljava/lang/String;
    .param p2, "label2"    # Ljava/lang/String;
    .param p3, "label3"    # Ljava/lang/String;
    .param p4, "estimatedTime"    # J

    .line 7511
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_8

    .line 7512
    const/4 v0, 0x0

    return v0

    .line 7514
    :cond_8
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7515
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7516
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7517
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7518
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {v0, p4, p5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 7519
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7520
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 7521
    const/4 v1, 0x1

    return v1
.end method

.method private static greylist-max-o dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V
    .registers 26
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p4, "rawRealtimeUs"    # J
    .param p6, "which"    # I

    .line 4053
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez v1, :cond_7

    .line 4054
    return-void

    .line 4057
    :cond_7
    invoke-virtual/range {p3 .. p6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v2

    .line 4058
    .local v2, "timeMs":J
    move/from16 v4, p6

    invoke-virtual {v1, v4}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    .line 4059
    .local v5, "count":I
    const-wide/16 v6, 0x3e8

    div-long v8, p4, v6

    invoke-virtual {v1, v8, v9}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v8

    .line 4060
    .local v8, "maxDurationMs":J
    div-long v10, p4, v6

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v10

    .line 4061
    .local v10, "curDurationMs":J
    div-long v6, p4, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v6

    .line 4062
    .local v6, "totalDurationMs":J
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    const-wide/16 v13, -0x1

    if-nez v12, :cond_3f

    if-nez v5, :cond_3f

    cmp-long v12, v8, v13

    if-nez v12, :cond_3f

    cmp-long v12, v10, v13

    if-nez v12, :cond_3f

    cmp-long v12, v6, v13

    if-eqz v12, :cond_7f

    .line 4064
    :cond_3f
    move-wide v15, v13

    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 4065
    .local v13, "token":J
    move-wide/from16 v17, v13

    .end local v13    # "token":J
    .local v17, "token":J
    const-wide v12, 0x10300000001L

    invoke-virtual {v0, v12, v13, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4066
    const-wide v12, 0x10300000002L

    invoke-virtual {v0, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4068
    cmp-long v12, v8, v15

    if-eqz v12, :cond_62

    .line 4069
    const-wide v12, 0x10300000003L

    invoke-virtual {v0, v12, v13, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4071
    :cond_62
    cmp-long v12, v10, v15

    if-eqz v12, :cond_6e

    .line 4072
    const-wide v12, 0x10300000004L

    invoke-virtual {v0, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4074
    :cond_6e
    cmp-long v12, v6, v15

    if-eqz v12, :cond_7a

    .line 4075
    const-wide v12, 0x10300000005L

    invoke-virtual {v0, v12, v13, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4077
    :cond_7a
    move-wide/from16 v12, v17

    .end local v17    # "token":J
    .local v12, "token":J
    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4079
    .end local v12    # "token":J
    :cond_7f
    return-void
.end method

.method private static final greylist-max-o dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V
    .registers 13
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p5, "rawRealtime"    # J
    .param p7, "which"    # I

    .line 4032
    if-eqz p4, :cond_25

    .line 4034
    invoke-virtual {p4, p5, p6, p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    .line 4035
    .local v0, "totalTime":J
    invoke-virtual {p4, p7}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    .line 4036
    .local v2, "count":I
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_16

    if-eqz v2, :cond_25

    .line 4037
    :cond_16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, p1, p2, p3, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4040
    .end local v0    # "totalTime":J
    .end local v2    # "count":I
    :cond_25
    return-void
.end method

.method public static blacklist formatCharge(D)Ljava/lang/String;
    .registers 3
    .param p0, "power"    # D

    .line 3791
    invoke-static {p0, p1}, Landroid/os/BatteryStats;->formatValue(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final greylist-max-o formatTimeMs(Ljava/lang/StringBuilder;J)V
    .registers 7
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "time"    # J

    .line 3747
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    .line 3748
    .local v2, "sec":J
    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    .line 3749
    mul-long/2addr v0, v2

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3750
    const-string/jumbo v0, "ms "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3751
    return-void
.end method

.method public static final greylist-max-o formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V
    .registers 7
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "time"    # J

    .line 3754
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    .line 3755
    .local v2, "sec":J
    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    .line 3756
    mul-long/2addr v0, v2

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3757
    const-string/jumbo v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3758
    return-void
.end method

.method private static final greylist-max-o formatTimeRaw(Ljava/lang/StringBuilder;J)V
    .registers 16
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "seconds"    # J

    .line 3719
    const-wide/32 v0, 0x15180

    div-long v0, p1, v0

    .line 3720
    .local v0, "days":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_13

    .line 3721
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3722
    const-string v4, "d "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3724
    :cond_13
    const-wide/16 v4, 0x3c

    mul-long v6, v0, v4

    mul-long/2addr v6, v4

    const-wide/16 v8, 0x18

    mul-long/2addr v6, v8

    .line 3726
    .local v6, "used":J
    sub-long v8, p1, v6

    const-wide/16 v10, 0xe10

    div-long/2addr v8, v10

    .line 3727
    .local v8, "hours":J
    cmp-long v10, v8, v2

    if-nez v10, :cond_28

    cmp-long v10, v6, v2

    if-eqz v10, :cond_31

    .line 3728
    :cond_28
    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3729
    const-string/jumbo v10, "h "

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3731
    :cond_31
    mul-long v10, v8, v4

    mul-long/2addr v10, v4

    add-long/2addr v6, v10

    .line 3733
    sub-long v10, p1, v6

    div-long/2addr v10, v4

    .line 3734
    .local v10, "mins":J
    cmp-long v12, v10, v2

    if-nez v12, :cond_40

    cmp-long v12, v6, v2

    if-eqz v12, :cond_49

    .line 3735
    :cond_40
    invoke-virtual {p0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3736
    const-string/jumbo v12, "m "

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3738
    :cond_49
    mul-long/2addr v4, v10

    add-long/2addr v6, v4

    .line 3740
    cmp-long v4, p1, v2

    if-nez v4, :cond_53

    cmp-long v2, v6, v2

    if-eqz v2, :cond_5e

    .line 3741
    :cond_53
    sub-long v2, p1, v6

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3742
    const-string/jumbo v2, "s "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3744
    :cond_5e
    return-void
.end method

.method private static blacklist formatValue(D)Ljava/lang/String;
    .registers 5
    .param p0, "value"    # D

    .line 3798
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_9

    const-string v0, "0"

    return-object v0

    .line 3801
    :cond_9
    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, p0, v0

    if-gez v0, :cond_15

    .line 3802
    const-string v0, "%.8f"

    .local v0, "format":Ljava/lang/String;
    goto :goto_62

    .line 3803
    .end local v0    # "format":Ljava/lang/String;
    :cond_15
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, p0, v0

    if-gez v0, :cond_21

    .line 3804
    const-string v0, "%.7f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_62

    .line 3805
    .end local v0    # "format":Ljava/lang/String;
    :cond_21
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2d

    .line 3806
    const-string v0, "%.6f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_62

    .line 3807
    .end local v0    # "format":Ljava/lang/String;
    :cond_2d
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, p0, v0

    if-gez v0, :cond_39

    .line 3808
    const-string v0, "%.5f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_62

    .line 3809
    .end local v0    # "format":Ljava/lang/String;
    :cond_39
    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, p0, v0

    if-gez v0, :cond_45

    .line 3810
    const-string v0, "%.4f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_62

    .line 3811
    .end local v0    # "format":Ljava/lang/String;
    :cond_45
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_4e

    .line 3812
    const-string v0, "%.3f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_62

    .line 3813
    .end local v0    # "format":Ljava/lang/String;
    :cond_4e
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_57

    .line 3814
    const-string v0, "%.2f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_62

    .line 3815
    .end local v0    # "format":Ljava/lang/String;
    :cond_57
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_60

    .line 3816
    const-string v0, "%.1f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_62

    .line 3818
    .end local v0    # "format":Ljava/lang/String;
    :cond_60
    const-string v0, "%.0f"

    .line 3822
    .restart local v0    # "format":Ljava/lang/String;
    :goto_62
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getAllNetworkTypesCount()I
    .registers 4

    .line 2781
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v0

    array-length v0, v0

    .line 2782
    .local v0, "count":I
    sget-object v1, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v2, v0, 0x3

    if-ne v1, v2, :cond_d

    .line 2787
    return v0

    .line 2783
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA_CONNECTION_NAMES length does not match network type count. Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getAllNetworkTypesCount$ravenwood()I
    .registers 1

    .line 2791
    sget-object v0, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x3

    return v0
.end method

.method protected static blacklist getCellSignalStrengthLevelCount()I
    .registers 1

    .line 9231
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v0

    return v0
.end method

.method protected static blacklist getCellSignalStrengthLevelCount$ravenwood()I
    .registers 1

    .line 9235
    const/4 v0, 0x5

    return v0
.end method

.method protected static blacklist getDisplayTransport([I)I
    .registers 2
    .param p0, "transports"    # [I

    .line 9260
    invoke-static {p0}, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->getDisplayTransport([I)I

    move-result v0

    return v0
.end method

.method protected static blacklist getDisplayTransport$ravenwood([I)I
    .registers 9
    .param p0, "transports"    # [I

    .line 9275
    sget-object v0, Landroid/os/BatteryStats;->DISPLAY_TRANSPORT_PRIORITIES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_18

    aget v4, v0, v3

    .line 9276
    .local v4, "transport":I
    array-length v5, p0

    move v6, v2

    :goto_b
    if-ge v6, v5, :cond_15

    aget v7, p0, v6

    .line 9277
    .local v7, "t":I
    if-ne v7, v4, :cond_12

    .line 9278
    return v4

    .line 9276
    .end local v7    # "t":I
    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 9275
    .end local v4    # "transport":I
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 9282
    :cond_18
    aget v0, p0, v2

    return v0
.end method

.method protected static blacklist getModemTxPowerLevelCount()I
    .registers 1

    .line 9241
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v0

    return v0
.end method

.method protected static blacklist getModemTxPowerLevelCount$ravenwood()I
    .registers 1

    .line 9245
    const/4 v0, 0x5

    return v0
.end method

.method private blacklist getUidMobileRadioStats(Ljava/util/List;)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/UidBatteryConsumer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/BatteryStats$UidMobileRadioStats;",
            ">;"
        }
    .end annotation

    .line 9182
    .local p1, "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    .line 9183
    .local v0, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 9184
    .local v1, "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_74

    .line 9185
    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UidBatteryConsumer;

    .line 9186
    .local v4, "consumer":Landroid/os/UidBatteryConsumer;
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_25

    .line 9187
    move v6, v2

    goto :goto_71

    .line 9190
    :cond_25
    invoke-virtual {v4}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v10

    .line 9191
    .local v10, "uid":I
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid;

    .line 9192
    .local v5, "u":Landroid/os/BatteryStats$Uid;
    if-nez v5, :cond_33

    .line 9193
    move v6, v2

    goto :goto_71

    .line 9196
    :cond_33
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v11

    .line 9198
    .local v11, "rxPackets":J
    const/4 v9, 0x1

    invoke-virtual {v5, v9, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    .line 9200
    .local v13, "txPackets":J
    const-wide/16 v15, 0x0

    cmp-long v9, v11, v15

    if-nez v9, :cond_49

    cmp-long v9, v13, v15

    if-nez v9, :cond_49

    .line 9201
    move v6, v2

    goto :goto_71

    .line 9203
    :cond_49
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    move-wide/from16 v19, v7

    div-long v7, v15, v17

    .line 9204
    .local v7, "radioActiveMs":J
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v17

    .line 9205
    .local v17, "radioActiveCount":I
    move v6, v2

    .end local v2    # "i":I
    .local v6, "i":I
    long-to-double v2, v7

    move-wide v15, v2

    add-long v2, v11, v13

    long-to-double v2, v2

    div-double v2, v15, v2

    .line 9206
    .local v2, "msPerPacket":D
    cmpl-double v9, v2, v19

    if-nez v9, :cond_64

    .line 9207
    goto :goto_71

    .line 9209
    :cond_64
    new-instance v9, Landroid/os/BatteryStats$UidMobileRadioStats;

    const/16 v20, 0x0

    move-wide/from16 v18, v2

    move-wide v15, v7

    .end local v2    # "msPerPacket":D
    .end local v7    # "radioActiveMs":J
    .local v15, "radioActiveMs":J
    .local v18, "msPerPacket":D
    invoke-direct/range {v9 .. v20}, Landroid/os/BatteryStats$UidMobileRadioStats;-><init>(IJJJIDLandroid/os/BatteryStats-IA;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9184
    .end local v4    # "consumer":Landroid/os/UidBatteryConsumer;
    .end local v5    # "u":Landroid/os/BatteryStats$Uid;
    .end local v10    # "uid":I
    .end local v11    # "rxPackets":J
    .end local v13    # "txPackets":J
    .end local v15    # "radioActiveMs":J
    .end local v17    # "radioActiveCount":I
    .end local v18    # "msPerPacket":D
    :goto_71
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "i":I
    .local v2, "i":I
    goto :goto_9

    :cond_74
    move v6, v2

    .line 9213
    .end local v2    # "i":I
    new-instance v2, Landroid/os/BatteryStats$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/os/BatteryStats$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 9215
    return-object v1
.end method

.method protected static blacklist isKernelStatsAvailable()Z
    .registers 1

    .line 9251
    const/4 v0, 0x1

    return v0
.end method

.method protected static blacklist isKernelStatsAvailable$ravenwood()Z
    .registers 1

    .line 9255
    const/4 v0, 0x0

    return v0
.end method

.method protected static blacklist isLowRamDevice()Z
    .registers 1

    .line 9221
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    return v0
.end method

.method protected static blacklist isLowRamDevice$ravenwood()Z
    .registers 1

    .line 9225
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic blacklist lambda$getUidMobileRadioStats$0(Landroid/os/BatteryStats$UidMobileRadioStats;Landroid/os/BatteryStats$UidMobileRadioStats;)I
    .registers 6
    .param p0, "lhs"    # Landroid/os/BatteryStats$UidMobileRadioStats;
    .param p1, "rhs"    # Landroid/os/BatteryStats$UidMobileRadioStats;

    .line 9214
    iget-wide v0, p1, Landroid/os/BatteryStats$UidMobileRadioStats;->millisecondsPerPacket:D

    iget-wide v2, p0, Landroid/os/BatteryStats$UidMobileRadioStats;->millisecondsPerPacket:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o mapToInternalProcessState(I)I
    .registers 6
    .param p0, "procState"    # I

    .line 663
    const/16 v0, 0x14

    if-ne p0, v0, :cond_6

    .line 664
    const/4 v0, 0x7

    return v0

    .line 665
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    .line 666
    const/4 v0, 0x0

    return v0

    .line 667
    :cond_b
    const/4 v1, 0x3

    if-ne p0, v1, :cond_f

    .line 668
    return v1

    .line 669
    :cond_f
    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne p0, v3, :cond_14

    .line 670
    return v2

    .line 671
    :cond_14
    const/4 v4, 0x5

    if-ne p0, v4, :cond_18

    .line 672
    return v2

    .line 673
    :cond_18
    const/4 v2, 0x6

    if-gt p0, v2, :cond_1c

    .line 675
    return v0

    .line 676
    :cond_1c
    const/16 v0, 0xb

    if-gt p0, v0, :cond_21

    .line 677
    return v1

    .line 678
    :cond_21
    const/16 v0, 0xc

    if-gt p0, v0, :cond_26

    .line 679
    return v3

    .line 680
    :cond_26
    const/16 v0, 0xd

    if-gt p0, v0, :cond_2b

    .line 681
    return v4

    .line 683
    :cond_2b
    return v2
.end method

.method public static blacklist mapUidProcessStateToBatteryConsumerProcessState(I)I
    .registers 2
    .param p0, "processState"    # I

    .line 692
    packed-switch p0, :pswitch_data_e

    .line 704
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 702
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 698
    :pswitch_7
    const/4 v0, 0x2

    return v0

    .line 700
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 695
    :pswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method static greylist-max-o printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V
    .registers 16
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "oldval"    # I
    .param p2, "newval"    # I
    .param p3, "wakelockTag"    # Landroid/os/BatteryStats$HistoryTag;
    .param p4, "descriptions"    # [Landroid/os/BatteryStats$BitDescription;
    .param p5, "longNames"    # Z

    .line 6891
    xor-int v0, p1, p2

    .line 6892
    .local v0, "diff":I
    if-nez v0, :cond_5

    return-void

    .line 6893
    :cond_5
    const/4 v1, 0x0

    .line 6894
    .local v1, "didWake":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    array-length v3, p4

    const/4 v4, -0x1

    const-string v5, ":\""

    const-string v6, "\""

    if-ge v2, v3, :cond_a5

    .line 6895
    aget-object v3, p4, v2

    .line 6896
    .local v3, "bd":Landroid/os/BatteryStats$BitDescription;
    iget v7, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v7, v0

    if-eqz v7, :cond_a1

    .line 6897
    if-eqz p5, :cond_1b

    const-string v7, " "

    goto :goto_1d

    :cond_1b
    const-string v7, ","

    :goto_1d
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6898
    iget v7, v3, Landroid/os/BatteryStats$BitDescription;->shift:I

    const-string v8, "="

    if-gez v7, :cond_71

    .line 6899
    iget v7, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v7, p2

    if-eqz v7, :cond_2e

    const-string v7, "+"

    goto :goto_30

    :cond_2e
    const-string v7, "-"

    :goto_30
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6900
    if-eqz p5, :cond_38

    iget-object v7, v3, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    goto :goto_3a

    :cond_38
    iget-object v7, v3, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    :goto_3a
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6901
    iget v7, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v7, v9, :cond_a1

    if-eqz p3, :cond_a1

    .line 6902
    const/4 v1, 0x1

    .line 6903
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6904
    if-nez p5, :cond_56

    iget v7, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    if-ne v7, v4, :cond_50

    goto :goto_56

    .line 6913
    :cond_50
    iget v4, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a1

    .line 6906
    :cond_56
    :goto_56
    iget v4, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v4}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 6907
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6908
    iget-object v4, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    if-eqz v4, :cond_6d

    .line 6909
    iget-object v4, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    const-string v5, "\"\""

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6911
    :cond_6d
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a1

    .line 6917
    :cond_71
    if-eqz p5, :cond_76

    iget-object v4, v3, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    goto :goto_78

    :cond_76
    iget-object v4, v3, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    :goto_78
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6918
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6919
    iget v4, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v4, p2

    iget v5, v3, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int/2addr v4, v5

    .line 6920
    .local v4, "val":I
    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    if-eqz v5, :cond_9e

    if-ltz v4, :cond_9e

    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_9e

    .line 6921
    if-eqz p5, :cond_96

    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    aget-object v5, v5, v4

    goto :goto_9a

    :cond_96
    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    aget-object v5, v5, v4

    :goto_9a
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a1

    .line 6923
    :cond_9e
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6894
    .end local v3    # "bd":Landroid/os/BatteryStats$BitDescription;
    .end local v4    # "val":I
    :cond_a1
    :goto_a1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 6928
    .end local v2    # "i":I
    :cond_a5
    if-nez v1, :cond_d0

    if-eqz p3, :cond_d0

    .line 6929
    if-eqz p5, :cond_ae

    const-string v2, " wake_lock="

    goto :goto_b0

    :cond_ae
    const-string v2, ",w="

    :goto_b0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6930
    if-nez p5, :cond_c0

    iget v2, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    if-ne v2, v4, :cond_ba

    goto :goto_c0

    .line 6936
    :cond_ba
    iget v2, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_d0

    .line 6931
    :cond_c0
    :goto_c0
    iget v2, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 6932
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6933
    iget-object v2, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6934
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6939
    :cond_d0
    :goto_d0
    return-void
.end method

.method private blacklist printCellularPerRatBreakdown(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;J)V
    .registers 35
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "rawRealtimeMs"    # J

    .line 4342
    move-object/from16 v0, p0

    move-object/from16 v6, p2

    const-string v7, "    All frequencies:\n"

    .line 4344
    .local v7, "allFrequenciesHeader":Ljava/lang/String;
    const-string v1, "    High frequency (3GHz to 6GHz):\n"

    const-string v2, "    Mmwave frequency (greater than 6GHz):\n"

    const-string v3, "    Unknown frequency:\n"

    const-string v4, "    Low frequency (less than 1GHz):\n"

    const-string v5, "    Middle frequency (1GHz to 3GHz):\n"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    .line 4350
    .local v8, "nrFrequencyRangeDescription":[Ljava/lang/String;
    const-string v9, "      Signal Strength Time:\n"

    .line 4352
    .local v9, "signalStrengthHeader":Ljava/lang/String;
    const-string v10, "      Tx Time:\n"

    .line 4354
    .local v10, "txHeader":Ljava/lang/String;
    const-string v11, "      Rx Time: "

    .line 4356
    .local v11, "rxHeader":Ljava/lang/String;
    const-string v1, "        good:     "

    const-string v2, "        great:    "

    const-string v3, "        unknown:  "

    const-string v4, "        poor:     "

    const-string v5, "        moderate: "

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    .line 4363
    .local v12, "signalStrengthDescription":[Ljava/lang/String;
    const-wide/16 v1, 0x3e8

    mul-long v3, p4, v1

    const/4 v13, 0x0

    invoke-virtual {v0, v3, v4, v13}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v3

    div-long v14, v3, v1

    .line 4366
    .local v14, "totalActiveTimesMs":J
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4367
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4368
    const-string v1, "Active Cellular Radio Access Technology Breakdown:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4369
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4371
    const/4 v1, 0x0

    .line 4372
    .local v1, "hasData":Z
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v2

    .line 4373
    .local v2, "numSignalStrength":I
    const/4 v3, 0x2

    .local v3, "rat":I
    :goto_49
    if-ltz v3, :cond_18e

    .line 4374
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4375
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4376
    const-string v4, "  "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4377
    sget-object v4, Landroid/os/BatteryStats;->RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4378
    const-string v4, ":\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4379
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4382
    const/4 v4, 0x2

    if-ne v3, v4, :cond_6a

    array-length v5, v8

    goto :goto_6b

    :cond_6a
    const/4 v5, 0x1

    :goto_6b
    move/from16 v16, v5

    .line 4383
    .local v16, "numFreqLvl":I
    add-int/lit8 v5, v16, -0x1

    move/from16 v17, v1

    .end local v1    # "hasData":Z
    .local v5, "freqLvl":I
    .local v17, "hasData":Z
    :goto_71
    if-ltz v5, :cond_176

    .line 4384
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 4385
    .local v1, "freqDescriptionStart":I
    const/16 v18, 0x0

    .line 4386
    .local v18, "hasFreqData":Z
    if-ne v3, v4, :cond_81

    .line 4387
    aget-object v4, v8, v5

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_86

    .line 4389
    :cond_81
    const-string v4, "    All frequencies:\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4392
    :goto_86
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4393
    const-string v4, "      Signal Strength Time:\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4394
    const/4 v4, 0x0

    .local v4, "strength":I
    :goto_8f
    const-wide/16 v20, 0x0

    const-string v13, ")\n"

    move-object/from16 v22, v7

    .end local v7    # "allFrequenciesHeader":Ljava/lang/String;
    .local v22, "allFrequenciesHeader":Ljava/lang/String;
    const-string v7, "("

    if-ge v4, v2, :cond_e0

    .line 4395
    move-object/from16 v23, v8

    move-object/from16 v19, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    const/16 v24, 0x2

    move v9, v1

    move v8, v2

    move v1, v3

    move v3, v4

    move v2, v5

    move-wide/from16 v4, p4

    .end local v4    # "strength":I
    .end local v5    # "freqLvl":I
    .end local v10    # "txHeader":Ljava/lang/String;
    .end local v11    # "rxHeader":Ljava/lang/String;
    .local v1, "rat":I
    .local v2, "freqLvl":I
    .local v3, "strength":I
    .local v8, "numSignalStrength":I
    .local v9, "freqDescriptionStart":I
    .local v19, "signalStrengthHeader":Ljava/lang/String;
    .local v23, "nrFrequencyRangeDescription":[Ljava/lang/String;
    .local v25, "txHeader":Ljava/lang/String;
    .local v26, "rxHeader":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->getActiveRadioDurationMs(IIIJ)J

    move-result-wide v10

    .line 4397
    .local v10, "timeMs":J
    cmp-long v4, v10, v20

    if-gtz v4, :cond_b3

    goto :goto_ce

    .line 4398
    :cond_b3
    const/4 v4, 0x1

    .line 4399
    .end local v18    # "hasFreqData":Z
    .local v4, "hasFreqData":Z
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4400
    aget-object v5, v12, v3

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4401
    invoke-static {v6, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4402
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4403
    invoke-virtual {v0, v10, v11, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4404
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v4

    .line 4394
    .end local v4    # "hasFreqData":Z
    .end local v10    # "timeMs":J
    .restart local v18    # "hasFreqData":Z
    :goto_ce
    add-int/lit8 v4, v3, 0x1

    move v3, v1

    move v5, v2

    move v2, v8

    move v1, v9

    move-object/from16 v9, v19

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    const/4 v13, 0x0

    .end local v3    # "strength":I
    .local v4, "strength":I
    goto :goto_8f

    .end local v19    # "signalStrengthHeader":Ljava/lang/String;
    .end local v23    # "nrFrequencyRangeDescription":[Ljava/lang/String;
    .end local v25    # "txHeader":Ljava/lang/String;
    .end local v26    # "rxHeader":Ljava/lang/String;
    .local v1, "freqDescriptionStart":I
    .local v2, "numSignalStrength":I
    .local v3, "rat":I
    .restart local v5    # "freqLvl":I
    .local v8, "nrFrequencyRangeDescription":[Ljava/lang/String;
    .local v9, "signalStrengthHeader":Ljava/lang/String;
    .local v10, "txHeader":Ljava/lang/String;
    .restart local v11    # "rxHeader":Ljava/lang/String;
    :cond_e0
    move-object/from16 v23, v8

    move-object/from16 v19, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    const/16 v24, 0x2

    move v9, v1

    move v8, v2

    move v1, v3

    move v3, v4

    move v2, v5

    .line 4407
    .end local v3    # "rat":I
    .end local v4    # "strength":I
    .end local v5    # "freqLvl":I
    .end local v10    # "txHeader":Ljava/lang/String;
    .end local v11    # "rxHeader":Ljava/lang/String;
    .local v1, "rat":I
    .local v2, "freqLvl":I
    .local v8, "numSignalStrength":I
    .local v9, "freqDescriptionStart":I
    .restart local v19    # "signalStrengthHeader":Ljava/lang/String;
    .restart local v23    # "nrFrequencyRangeDescription":[Ljava/lang/String;
    .restart local v25    # "txHeader":Ljava/lang/String;
    .restart local v26    # "rxHeader":Ljava/lang/String;
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4408
    const-string v3, "      Tx Time:\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4409
    const/4 v3, 0x0

    .local v3, "strength":I
    :goto_f8
    if-ge v3, v8, :cond_130

    .line 4410
    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->getActiveTxRadioDurationMs(IIIJ)J

    move-result-wide v10

    .line 4412
    move/from16 v28, v3

    move v3, v1

    move/from16 v1, v28

    .local v1, "strength":I
    .local v3, "rat":I
    .local v10, "timeMs":J
    cmp-long v27, v10, v20

    if-gtz v27, :cond_10c

    move/from16 v27, v1

    goto :goto_128

    .line 4413
    :cond_10c
    const/16 v18, 0x1

    .line 4414
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4415
    move/from16 v27, v1

    .end local v1    # "strength":I
    .local v27, "strength":I
    aget-object v1, v12, v27

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4416
    invoke-static {v6, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4417
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4418
    invoke-virtual {v0, v10, v11, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4419
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4409
    .end local v10    # "timeMs":J
    :goto_128
    add-int/lit8 v1, v27, 0x1

    move/from16 v28, v3

    move v3, v1

    move/from16 v1, v28

    .end local v27    # "strength":I
    .restart local v1    # "strength":I
    goto :goto_f8

    .local v1, "rat":I
    .local v3, "strength":I
    :cond_130
    move-wide/from16 v4, p4

    move/from16 v27, v3

    move v3, v1

    .line 4422
    .end local v1    # "rat":I
    .local v3, "rat":I
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4423
    const-string v1, "      Rx Time: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4424
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/os/BatteryStats;->getActiveRxRadioDurationMs(IIJ)J

    move-result-wide v10

    .line 4425
    .local v10, "rxTimeMs":J
    invoke-static {v6, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4426
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4427
    invoke-virtual {v0, v10, v11, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4428
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4430
    if-eqz v18, :cond_160

    .line 4431
    const/16 v17, 0x1

    .line 4432
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4433
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4434
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_163

    .line 4437
    :cond_160
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4383
    .end local v9    # "freqDescriptionStart":I
    .end local v10    # "rxTimeMs":J
    .end local v18    # "hasFreqData":Z
    :goto_163
    add-int/lit8 v1, v2, -0x1

    move v5, v1

    move v2, v8

    move-object/from16 v9, v19

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move/from16 v4, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    const/4 v13, 0x0

    .end local v2    # "freqLvl":I
    .local v1, "freqLvl":I
    goto/16 :goto_71

    .end local v1    # "freqLvl":I
    .end local v19    # "signalStrengthHeader":Ljava/lang/String;
    .end local v22    # "allFrequenciesHeader":Ljava/lang/String;
    .end local v23    # "nrFrequencyRangeDescription":[Ljava/lang/String;
    .end local v25    # "txHeader":Ljava/lang/String;
    .end local v26    # "rxHeader":Ljava/lang/String;
    .local v2, "numSignalStrength":I
    .restart local v5    # "freqLvl":I
    .restart local v7    # "allFrequenciesHeader":Ljava/lang/String;
    .local v8, "nrFrequencyRangeDescription":[Ljava/lang/String;
    .local v9, "signalStrengthHeader":Ljava/lang/String;
    .local v10, "txHeader":Ljava/lang/String;
    .restart local v11    # "rxHeader":Ljava/lang/String;
    :cond_176
    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v19, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move v8, v2

    move v2, v5

    move-wide/from16 v4, p4

    .line 4373
    .end local v2    # "numSignalStrength":I
    .end local v5    # "freqLvl":I
    .end local v7    # "allFrequenciesHeader":Ljava/lang/String;
    .end local v9    # "signalStrengthHeader":Ljava/lang/String;
    .end local v10    # "txHeader":Ljava/lang/String;
    .end local v11    # "rxHeader":Ljava/lang/String;
    .end local v16    # "numFreqLvl":I
    .local v8, "numSignalStrength":I
    .restart local v19    # "signalStrengthHeader":Ljava/lang/String;
    .restart local v22    # "allFrequenciesHeader":Ljava/lang/String;
    .restart local v23    # "nrFrequencyRangeDescription":[Ljava/lang/String;
    .restart local v25    # "txHeader":Ljava/lang/String;
    .restart local v26    # "rxHeader":Ljava/lang/String;
    add-int/lit8 v3, v3, -0x1

    move v2, v8

    move/from16 v1, v17

    move-object/from16 v8, v23

    const/4 v13, 0x0

    goto/16 :goto_49

    .end local v17    # "hasData":Z
    .end local v19    # "signalStrengthHeader":Ljava/lang/String;
    .end local v22    # "allFrequenciesHeader":Ljava/lang/String;
    .end local v23    # "nrFrequencyRangeDescription":[Ljava/lang/String;
    .end local v25    # "txHeader":Ljava/lang/String;
    .end local v26    # "rxHeader":Ljava/lang/String;
    .local v1, "hasData":Z
    .restart local v2    # "numSignalStrength":I
    .restart local v7    # "allFrequenciesHeader":Ljava/lang/String;
    .local v8, "nrFrequencyRangeDescription":[Ljava/lang/String;
    .restart local v9    # "signalStrengthHeader":Ljava/lang/String;
    .restart local v10    # "txHeader":Ljava/lang/String;
    .restart local v11    # "rxHeader":Ljava/lang/String;
    :cond_18e
    move-wide/from16 v4, p4

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v19, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move v8, v2

    .line 4442
    .end local v2    # "numSignalStrength":I
    .end local v3    # "rat":I
    .end local v7    # "allFrequenciesHeader":Ljava/lang/String;
    .end local v9    # "signalStrengthHeader":Ljava/lang/String;
    .end local v10    # "txHeader":Ljava/lang/String;
    .end local v11    # "rxHeader":Ljava/lang/String;
    .local v8, "numSignalStrength":I
    .restart local v19    # "signalStrengthHeader":Ljava/lang/String;
    .restart local v22    # "allFrequenciesHeader":Ljava/lang/String;
    .restart local v23    # "nrFrequencyRangeDescription":[Ljava/lang/String;
    .restart local v25    # "txHeader":Ljava/lang/String;
    .restart local v26    # "rxHeader":Ljava/lang/String;
    if-nez v1, :cond_1ac

    .line 4443
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4444
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4445
    const-string v2, "  (no activity)"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4446
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4448
    :cond_1ac
    return-void
.end method

.method private final greylist-max-o printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .registers 39
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "controllerName"    # Ljava/lang/String;
    .param p5, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p6, "which"    # I

    .line 4195
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p6

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    .line 4196
    .local v5, "idleTimeMs":J
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    .line 4197
    .local v7, "rxTimeMs":J
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    .line 4198
    .local v9, "powerDrainMaMs":J
    nop

    .line 4199
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v11

    .line 4201
    .local v11, "monitoredRailChargeConsumedMaMs":J
    nop

    .line 4202
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    invoke-virtual {v0, v13, v14, v4}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v13

    div-long/2addr v13, v15

    .line 4203
    .local v13, "totalControllerActivityTimeMs":J
    const-wide/16 v15, 0x0

    .line 4204
    .local v15, "totalTxTimeMs":J
    move-wide/from16 v17, v15

    .end local v15    # "totalTxTimeMs":J
    .local v17, "totalTxTimeMs":J
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v15

    move-wide/from16 v19, v11

    .end local v11    # "monitoredRailChargeConsumedMaMs":J
    .local v19, "monitoredRailChargeConsumedMaMs":J
    array-length v11, v15

    const/4 v12, 0x0

    :goto_44
    if-ge v12, v11, :cond_55

    move/from16 v21, v11

    aget-object v11, v15, v12

    .line 4205
    .local v11, "txState":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v22

    add-long v17, v17, v22

    .line 4204
    .end local v11    # "txState":Landroid/os/BatteryStats$LongCounter;
    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v21

    goto :goto_44

    .line 4208
    :cond_55
    const-string v11, "WiFi"

    invoke-virtual {v3, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, " Sleep time:  "

    const-string v15, ")"

    move/from16 v21, v11

    const-string v11, "("

    move-wide/from16 v22, v9

    .end local v9    # "powerDrainMaMs":J
    .local v22, "powerDrainMaMs":J
    const-string v9, "     "

    if-eqz v21, :cond_cc

    .line 4209
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getScanTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v10

    move-wide/from16 v24, v7

    .end local v7    # "rxTimeMs":J
    .local v24, "rxTimeMs":J
    invoke-virtual {v10, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    .line 4210
    .local v7, "scanTimeMs":J
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4211
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4212
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4214
    const-string v10, " Scan time:  "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4215
    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4216
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4217
    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4218
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4219
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4221
    add-long v26, v5, v24

    add-long v26, v26, v17

    move-wide/from16 v28, v7

    .end local v7    # "scanTimeMs":J
    .local v28, "scanTimeMs":J
    sub-long v7, v13, v26

    .line 4223
    .local v7, "sleepTimeMs":J
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4224
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4225
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4227
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4228
    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4229
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4230
    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4231
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ce

    .line 4208
    .end local v24    # "rxTimeMs":J
    .end local v28    # "scanTimeMs":J
    .local v7, "rxTimeMs":J
    :cond_cc
    move-wide/from16 v24, v7

    .line 4235
    .end local v7    # "rxTimeMs":J
    .restart local v24    # "rxTimeMs":J
    :goto_ce
    const-string v7, "Cellular"

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_109

    .line 4236
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    move-object v10, v7

    invoke-virtual {v8, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    .line 4237
    .local v7, "sleepTimeMs":J
    move-object/from16 v21, v10

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4238
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4239
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4240
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4241
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4242
    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4243
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4244
    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4245
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4246
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_10b

    .line 4235
    .end local v7    # "sleepTimeMs":J
    :cond_109
    move-object/from16 v21, v7

    .line 4249
    :goto_10b
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4250
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4251
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4253
    const-string v7, " Idle time:   "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4254
    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4255
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4256
    invoke-virtual {v0, v5, v6, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4257
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4258
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4260
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4261
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4262
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4264
    const-string v7, " Rx time:     "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4265
    move-wide/from16 v7, v24

    .end local v24    # "rxTimeMs":J
    .local v7, "rxTimeMs":J
    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4266
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4267
    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4268
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4269
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4271
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4272
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4273
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4274
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4275
    const-string v10, " Tx time:     "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4278
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v10

    packed-switch v10, :pswitch_data_2a4

    :cond_178
    goto :goto_183

    :pswitch_179
    move-object/from16 v10, v21

    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_178

    const/4 v10, 0x0

    goto :goto_184

    :goto_183
    const/4 v10, -0x1

    :goto_184
    packed-switch v10, :pswitch_data_2aa

    .line 4288
    move-wide/from16 v24, v5

    move-wide/from16 v26, v7

    .end local v5    # "idleTimeMs":J
    .end local v7    # "rxTimeMs":J
    .local v24, "idleTimeMs":J
    .local v26, "rxTimeMs":J
    const-string v5, "[3]"

    const-string v6, "[4]"

    const-string v7, "[0]"

    const-string v8, "[1]"

    const-string v10, "[2]"

    filled-new-array {v7, v8, v10, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    .local v5, "powerLevel":[Ljava/lang/String;
    goto :goto_1ad

    .line 4280
    .end local v24    # "idleTimeMs":J
    .end local v26    # "rxTimeMs":J
    .local v5, "idleTimeMs":J
    .restart local v7    # "rxTimeMs":J
    :pswitch_19a
    const-string v10, "   15dBm to 20dBm: "

    const-string v12, "   above 20dBm: "

    move-wide/from16 v24, v5

    .end local v5    # "idleTimeMs":J
    .restart local v24    # "idleTimeMs":J
    const-string v5, "   less than 0dBm: "

    const-string v6, "   0dBm to 8dBm: "

    move-wide/from16 v26, v7

    .end local v7    # "rxTimeMs":J
    .restart local v26    # "rxTimeMs":J
    const-string v7, "   8dBm to 15dBm: "

    filled-new-array {v5, v6, v7, v10, v12}, [Ljava/lang/String;

    move-result-object v5

    .line 4286
    .local v5, "powerLevel":[Ljava/lang/String;
    nop

    .line 4291
    :goto_1ad
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    array-length v6, v6

    array-length v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 4292
    .local v6, "numTxLvls":I
    const/4 v7, 0x1

    if-le v6, v7, :cond_205

    .line 4293
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4294
    const/4 v7, 0x0

    .local v7, "lvl":I
    :goto_1c2
    if-ge v7, v6, :cond_202

    .line 4295
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    aget-object v8, v8, v7

    move-object v10, v5

    move v12, v6

    .end local v5    # "powerLevel":[Ljava/lang/String;
    .end local v6    # "numTxLvls":I
    .local v10, "powerLevel":[Ljava/lang/String;
    .local v12, "numTxLvls":I
    invoke-virtual {v8, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    .line 4296
    .local v5, "txLvlTimeMs":J
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4297
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4298
    const-string v8, "    "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4299
    aget-object v8, v10, v7

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4300
    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4301
    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4302
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4303
    invoke-virtual {v0, v5, v6, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4304
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4305
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4294
    .end local v5    # "txLvlTimeMs":J
    add-int/lit8 v7, v7, 0x1

    move-object v5, v10

    move v6, v12

    goto :goto_1c2

    .end local v10    # "powerLevel":[Ljava/lang/String;
    .end local v12    # "numTxLvls":I
    .local v5, "powerLevel":[Ljava/lang/String;
    .restart local v6    # "numTxLvls":I
    :cond_202
    move-object v10, v5

    move v12, v6

    .end local v5    # "powerLevel":[Ljava/lang/String;
    .end local v6    # "numTxLvls":I
    .end local v7    # "lvl":I
    .restart local v10    # "powerLevel":[Ljava/lang/String;
    .restart local v12    # "numTxLvls":I
    goto :goto_22a

    .line 4308
    .end local v10    # "powerLevel":[Ljava/lang/String;
    .end local v12    # "numTxLvls":I
    .restart local v5    # "powerLevel":[Ljava/lang/String;
    .restart local v6    # "numTxLvls":I
    :cond_205
    move-object v10, v5

    move v12, v6

    .end local v5    # "powerLevel":[Ljava/lang/String;
    .end local v6    # "numTxLvls":I
    .restart local v10    # "powerLevel":[Ljava/lang/String;
    .restart local v12    # "numTxLvls":I
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    const/16 v16, 0x0

    aget-object v5, v5, v16

    invoke-virtual {v5, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    .line 4309
    .local v5, "txLvlTimeMs":J
    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4310
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4311
    invoke-virtual {v0, v5, v6, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4312
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4313
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4316
    .end local v5    # "txLvlTimeMs":J
    :goto_22a
    const-wide/16 v5, 0x0

    cmp-long v7, v22, v5

    const-wide v28, 0x414b774000000000L    # 3600000.0

    if-lez v7, :cond_265

    .line 4317
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4318
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4319
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4320
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4321
    const-string v7, " Battery drain: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v30, v5

    move-object v8, v10

    move-wide/from16 v5, v22

    .end local v10    # "powerLevel":[Ljava/lang/String;
    .end local v22    # "powerDrainMaMs":J
    .local v5, "powerDrainMaMs":J
    .local v8, "powerLevel":[Ljava/lang/String;
    long-to-double v10, v5

    div-double v10, v10, v28

    .line 4322
    invoke-static {v10, v11}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v10

    .line 4321
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4323
    const-string/jumbo v7, "mAh"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4324
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26a

    .line 4316
    .end local v5    # "powerDrainMaMs":J
    .end local v8    # "powerLevel":[Ljava/lang/String;
    .restart local v10    # "powerLevel":[Ljava/lang/String;
    .restart local v22    # "powerDrainMaMs":J
    :cond_265
    move-wide/from16 v30, v5

    move-object v8, v10

    move-wide/from16 v5, v22

    .line 4327
    .end local v10    # "powerLevel":[Ljava/lang/String;
    .end local v22    # "powerDrainMaMs":J
    .restart local v5    # "powerDrainMaMs":J
    .restart local v8    # "powerLevel":[Ljava/lang/String;
    :goto_26a
    cmp-long v7, v19, v30

    if-lez v7, :cond_2a1

    .line 4328
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4329
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4330
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4331
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4332
    const-string v7, " Monitored rail energy drain: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v9, Ljava/text/DecimalFormat;

    const-string v10, "#.##"

    invoke-direct {v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-wide/from16 v10, v19

    .end local v19    # "monitoredRailChargeConsumedMaMs":J
    .local v10, "monitoredRailChargeConsumedMaMs":J
    long-to-double v3, v10

    div-double v3, v3, v28

    .line 4333
    invoke-virtual {v9, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 4332
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4335
    const-string v3, " mAh"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4336
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2a3

    .line 4327
    .end local v10    # "monitoredRailChargeConsumedMaMs":J
    .restart local v19    # "monitoredRailChargeConsumedMaMs":J
    :cond_2a1
    move-wide/from16 v10, v19

    .line 4338
    .end local v19    # "monitoredRailChargeConsumedMaMs":J
    .restart local v10    # "monitoredRailChargeConsumedMaMs":J
    :goto_2a3
    return-void

    :pswitch_data_2a4
    .packed-switch -0x32c7c276
        :pswitch_179
    .end packed-switch

    :pswitch_data_2aa
    .packed-switch 0x0
        :pswitch_19a
    .end packed-switch
.end method

.method private final greylist-max-o printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "controllerName"    # Ljava/lang/String;
    .param p5, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p6, "which"    # I

    .line 4187
    invoke-static {p5, p6}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4188
    invoke-direct/range {p0 .. p6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4190
    :cond_9
    return-void
.end method

.method private greylist-max-o printSizeValue(Ljava/io/PrintWriter;J)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "size"    # J

    .line 7483
    long-to-float v0, p2

    .line 7484
    .local v0, "result":F
    const-string v1, ""

    .line 7485
    .local v1, "suffix":Ljava/lang/String;
    const/high16 v2, 0x46200000    # 10240.0f

    cmpl-float v3, v0, v2

    const/high16 v4, 0x44800000    # 1024.0f

    if-ltz v3, :cond_e

    .line 7486
    const-string v1, "KB"

    .line 7487
    div-float/2addr v0, v4

    .line 7489
    :cond_e
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_15

    .line 7490
    const-string v1, "MB"

    .line 7491
    div-float/2addr v0, v4

    .line 7493
    :cond_15
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_1c

    .line 7494
    const-string v1, "GB"

    .line 7495
    div-float/2addr v0, v4

    .line 7497
    :cond_1c
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_23

    .line 7498
    const-string v1, "TB"

    .line 7499
    div-float/2addr v0, v4

    .line 7501
    :cond_23
    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2a

    .line 7502
    const-string v1, "PB"

    .line 7503
    div-float/2addr v0, v4

    .line 7505
    :cond_2a
    float-to-int v2, v0

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 7506
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7507
    return-void
.end method

.method private static final greylist-max-o printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z
    .registers 23
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "which"    # I
    .param p6, "prefix"    # Ljava/lang/String;
    .param p7, "type"    # Ljava/lang/String;

    .line 3908
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz v1, :cond_89

    .line 3910
    invoke-virtual/range {p2 .. p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 3912
    .local v3, "totalTimeMs":J
    move/from16 v7, p5

    invoke-virtual {v1, v7}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v8

    .line 3913
    .local v8, "count":I
    const-wide/16 v9, 0x0

    cmp-long v11, v3, v9

    if-eqz v11, :cond_84

    .line 3914
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3915
    move-object/from16 v11, p6

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3916
    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3917
    move-object/from16 v12, p7

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3918
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3919
    invoke-static {v0, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3920
    const-string/jumbo v2, "realtime ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3921
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3922
    const-string v2, " times)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3923
    div-long v13, p3, v5

    invoke-virtual {v1, v13, v14}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v13

    .line 3924
    .local v13, "maxDurationMs":J
    cmp-long v2, v13, v9

    if-ltz v2, :cond_57

    .line 3925
    const-string v2, " max="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3926
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3928
    :cond_57
    invoke-virtual {v1}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 3929
    div-long v5, p3, v5

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v5

    .line 3930
    .local v5, "currentMs":J
    cmp-long v2, v5, v9

    if-ltz v2, :cond_76

    .line 3931
    const-string v2, " (running for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3932
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3933
    const-string/jumbo v2, "ms)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b

    .line 3935
    :cond_76
    const-string v2, " (running)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3938
    .end local v5    # "currentMs":J
    :cond_7b
    :goto_7b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3939
    const/4 v2, 0x1

    return v2

    .line 3913
    .end local v13    # "maxDurationMs":J
    :cond_84
    move-object/from16 v11, p6

    move-object/from16 v12, p7

    goto :goto_8f

    .line 3908
    .end local v3    # "totalTimeMs":J
    .end local v8    # "count":I
    :cond_89
    move/from16 v7, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 3942
    :goto_8f
    return v2
.end method

.method private static final greylist-max-o printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 27
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "which"    # I
    .param p6, "linePrefix"    # Ljava/lang/String;

    .line 3852
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    if-eqz v1, :cond_90

    .line 3853
    invoke-static {v1, v2, v3, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v7

    .line 3855
    .local v7, "totalTimeMillis":J
    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v9

    .line 3856
    .local v9, "count":I
    const-wide/16 v10, 0x0

    cmp-long v12, v7, v10

    if-eqz v12, :cond_90

    .line 3857
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3858
    invoke-static {v0, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3859
    if-eqz v4, :cond_2c

    .line 3860
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3861
    const/16 v12, 0x20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3863
    :cond_2c
    const/16 v12, 0x28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3864
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3865
    const-string v12, " times)"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3866
    const-wide/16 v12, 0x3e8

    div-long v14, v2, v12

    invoke-virtual {v1, v14, v15}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v14

    .line 3867
    .local v14, "maxDurationMs":J
    cmp-long v16, v14, v10

    if-ltz v16, :cond_50

    .line 3868
    move-wide/from16 v16, v10

    const-string v10, " max="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3869
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 3867
    :cond_50
    move-wide/from16 v16, v10

    .line 3872
    :goto_52
    div-long v10, v2, v12

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v10

    .line 3873
    .local v10, "totalDurMs":J
    cmp-long v18, v10, v7

    if-lez v18, :cond_67

    .line 3874
    move-wide/from16 v18, v12

    const-string v12, " actual="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3875
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_69

    .line 3873
    :cond_67
    move-wide/from16 v18, v12

    .line 3877
    :goto_69
    invoke-virtual {v1}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v12

    if-eqz v12, :cond_8d

    .line 3878
    div-long v12, v2, v18

    invoke-virtual {v1, v12, v13}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v12

    .line 3879
    .local v12, "currentMs":J
    cmp-long v16, v12, v16

    if-ltz v16, :cond_88

    .line 3880
    const-string v1, " (running for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3881
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3882
    const-string/jumbo v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8d

    .line 3884
    :cond_88
    const-string v1, " (running)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3888
    .end local v12    # "currentMs":J
    :cond_8d
    :goto_8d
    const-string v1, ", "

    return-object v1

    .line 3891
    .end local v7    # "totalTimeMillis":J
    .end local v9    # "count":I
    .end local v10    # "totalDurMs":J
    .end local v14    # "maxDurationMs":J
    :cond_90
    return-object v6
.end method

.method private static final greylist-max-o printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 26
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "which"    # I
    .param p6, "linePrefix"    # Ljava/lang/String;

    .line 3958
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    const-wide/16 v6, 0x0

    .line 3959
    .local v6, "totalTimeMicros":J
    const/4 v8, 0x0

    .line 3960
    .local v8, "count":I
    const-wide/16 v9, 0x0

    .line 3961
    .local v9, "max":J
    const-wide/16 v11, 0x0

    .line 3962
    .local v11, "current":J
    const-wide/16 v13, 0x0

    .line 3963
    .local v13, "totalDuration":J
    const-wide/16 v15, 0x3e8

    if-eqz v1, :cond_31

    .line 3964
    invoke-virtual {v1, v2, v3, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    .line 3965
    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v8

    .line 3966
    div-long v2, p2, v15

    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v11

    .line 3967
    div-long v2, p2, v15

    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v9

    .line 3968
    div-long v2, p2, v15

    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v13

    .line 3970
    :cond_31
    move-object/from16 v2, p6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3971
    const-wide/16 v17, 0x1f4

    add-long v17, v6, v17

    div-long v1, v17, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3972
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3973
    const-string v2, ","

    if-eqz v4, :cond_5a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5c

    :cond_5a
    const-string v3, ""

    :goto_5c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3974
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3975
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3976
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3977
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3978
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3982
    if-eqz v4, :cond_76

    .line 3983
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3984
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3986
    :cond_76
    return-object v2
.end method

.method private greylist-max-o printmAh(Ljava/io/PrintWriter;D)V
    .registers 5
    .param p1, "printer"    # Ljava/io/PrintWriter;
    .param p2, "power"    # D

    .line 5205
    invoke-static {p2, p3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5206
    return-void
.end method

.method private greylist-max-o printmAh(Ljava/lang/StringBuilder;D)V
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "power"    # D

    .line 5209
    invoke-static {p2, p3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5210
    return-void
.end method

.method private static greylist-max-o roundUsToMs(J)J
    .registers 6
    .param p0, "timeUs"    # J

    .line 3826
    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist shouldHidePowerComponent(I)Z
    .registers 3
    .param p1, "powerComponent"    # I

    .line 9075
    const/16 v0, 0x10

    if-eq p1, v0, :cond_11

    const/16 v0, 0x8

    if-eq p1, v0, :cond_11

    if-eqz p1, :cond_11

    const/16 v0, 0xf

    if-ne p1, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method


# virtual methods
.method public abstract greylist-max-o commitCurrentHistoryBatchLocked()V
.end method

.method public abstract greylist computeBatteryRealtime(JI)J
.end method

.method public abstract greylist-max-o computeBatteryScreenOffRealtime(JI)J
.end method

.method public abstract greylist-max-o computeBatteryScreenOffUptime(JI)J
.end method

.method public abstract greylist computeBatteryTimeRemaining(J)J
.end method

.method public abstract greylist computeBatteryUptime(JI)J
.end method

.method public abstract greylist computeChargeTimeRemaining(J)J
.end method

.method public abstract greylist-max-o computeRealtime(JI)J
.end method

.method public abstract greylist-max-o computeUptime(JI)J
.end method

.method public blacklist dump(Landroid/content/Context;Ljava/io/PrintWriter;IIJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "flags"    # I
    .param p4, "reqUid"    # I
    .param p5, "histStart"    # J
    .param p7, "dumpHelper"    # Landroid/os/BatteryStats$BatteryStatsDumpHelper;

    .line 7862
    monitor-enter p0

    .line 7863
    :try_start_1
    invoke-virtual {p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 7864
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_40

    .line 7866
    and-int/lit8 v0, p3, 0xe

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move v1, v0

    .line 7869
    .local v1, "filtering":Z
    and-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_19

    if-nez v1, :cond_14

    goto :goto_19

    :cond_14
    move-object v2, p0

    move v4, p3

    move-wide v5, p5

    move-object p3, p2

    goto :goto_25

    .line 7870
    :cond_19
    :goto_19
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move-wide v5, p5

    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "flags":I
    .end local p5    # "histStart":J
    .local v3, "pw":Ljava/io/PrintWriter;
    .local v4, "flags":I
    .local v5, "histStart":J
    invoke-direct/range {v2 .. v7}, Landroid/os/BatteryStats;->dumpHistory(Ljava/io/PrintWriter;IJZ)V

    .line 7871
    move-object p3, v3

    .end local v3    # "pw":Ljava/io/PrintWriter;
    .local p3, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 7874
    :goto_25
    if-eqz v1, :cond_2c

    and-int/lit8 p2, v4, 0x6

    if-nez p2, :cond_2c

    .line 7875
    return-void

    .line 7878
    :cond_2c
    monitor-enter p0

    .line 7879
    move-object p2, p1

    move p5, p4

    move p6, v1

    move-object p1, v2

    move p4, v4

    .end local v1    # "filtering":Z
    .end local v4    # "flags":I
    .end local p1    # "context":Landroid/content/Context;
    .local p2, "context":Landroid/content/Context;
    .local p4, "flags":I
    .local p5, "reqUid":I
    .local p6, "filtering":Z
    :try_start_32
    invoke-direct/range {p1 .. p7}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3a

    .line 7880
    .end local p4    # "flags":I
    .restart local v4    # "flags":I
    :try_start_35
    monitor-exit p0

    .line 7881
    return-void

    .line 7880
    :catchall_37
    move-exception v0

    move-object p1, v0

    goto :goto_3e

    .end local v4    # "flags":I
    .restart local p4    # "flags":I
    :catchall_3a
    move-exception v0

    move-object v2, p1

    move v4, p4

    move-object p1, v0

    .end local p4    # "flags":I
    .restart local v4    # "flags":I
    :goto_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_37

    throw p1

    .line 7864
    .end local v4    # "flags":I
    .end local v5    # "histStart":J
    .end local p6    # "filtering":Z
    .restart local p1    # "context":Landroid/content/Context;
    .local p2, "pw":Ljava/io/PrintWriter;
    .local p3, "flags":I
    .local p4, "reqUid":I
    .local p5, "histStart":J
    :catchall_40
    move-exception v0

    move-object v2, p0

    move v4, p3

    move-wide v5, p5

    move-object p3, p2

    move p5, p4

    move-object p2, p1

    move-object p1, v0

    .end local p1    # "context":Landroid/content/Context;
    .end local p4    # "reqUid":I
    .restart local v4    # "flags":I
    .restart local v5    # "histStart":J
    .local p2, "context":Landroid/content/Context;
    .local p3, "pw":Ljava/io/PrintWriter;
    .local p5, "reqUid":I
    :goto_48
    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_4a

    throw p1

    :catchall_4a
    move-exception v0

    move-object p1, v0

    goto :goto_48
.end method

.method public blacklist dumpCheckin(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p4, "flags"    # I
    .param p5, "histStart"    # J
    .param p7, "dumpHelper"    # Landroid/os/BatteryStats$BatteryStatsDumpHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ",
            "Landroid/os/BatteryStats$BatteryStatsDumpHelper;",
            ")V"
        }
    .end annotation

    .line 8028
    .local p3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    monitor-enter p0

    .line 8029
    :try_start_1
    invoke-virtual {p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 8031
    const-string/jumbo v0, "i"

    const-string/jumbo v1, "vers"

    .line 8032
    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v4

    .line 8033
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 8031
    const/4 v3, 0x0

    invoke-static {p2, v3, v0, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8034
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_54

    .line 8036
    and-int/lit8 v0, p4, 0x18

    if-eqz v0, :cond_37

    .line 8037
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p2

    move v3, p4

    move-wide v4, p5

    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "flags":I
    .end local p5    # "histStart":J
    .local v2, "pw":Ljava/io/PrintWriter;
    .local v3, "flags":I
    .local v4, "histStart":J
    invoke-direct/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpHistory(Ljava/io/PrintWriter;IJZ)V

    move p5, v3

    .end local v3    # "flags":I
    .local p5, "flags":I
    goto :goto_3b

    .line 8036
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "histStart":J
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p4    # "flags":I
    .local p5, "histStart":J
    :cond_37
    move-object v1, p0

    move-object v2, p2

    move-wide v4, p5

    move p5, p4

    .line 8040
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "flags":I
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "histStart":J
    .local p5, "flags":I
    :goto_3b
    and-int/lit8 p2, p5, 0x8

    if-eqz p2, :cond_40

    .line 8041
    return-void

    .line 8044
    :cond_40
    monitor-enter p0

    .line 8045
    move-object p2, p1

    move-object p4, p3

    move-object p6, p7

    move-object p1, v1

    move-object p3, v2

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local p1    # "context":Landroid/content/Context;
    .end local p7    # "dumpHelper":Landroid/os/BatteryStats$BatteryStatsDumpHelper;
    .local p2, "context":Landroid/content/Context;
    .local p3, "pw":Ljava/io/PrintWriter;
    .local p4, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local p6, "dumpHelper":Landroid/os/BatteryStats$BatteryStatsDumpHelper;
    :try_start_46
    invoke-direct/range {p1 .. p6}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;ILandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4e

    .line 8046
    .end local p3    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :try_start_49
    monitor-exit p0

    .line 8047
    return-void

    .line 8046
    :catchall_4b
    move-exception v0

    move-object p1, v0

    goto :goto_52

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "pw":Ljava/io/PrintWriter;
    :catchall_4e
    move-exception v0

    move-object v1, p1

    move-object v2, p3

    move-object p1, v0

    .end local p3    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :goto_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_49 .. :try_end_53} :catchall_4b

    throw p1

    .line 8034
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "histStart":J
    .end local p6    # "dumpHelper":Landroid/os/BatteryStats$BatteryStatsDumpHelper;
    .restart local p1    # "context":Landroid/content/Context;
    .local p2, "pw":Ljava/io/PrintWriter;
    .local p3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local p4, "flags":I
    .local p5, "histStart":J
    .restart local p7    # "dumpHelper":Landroid/os/BatteryStats$BatteryStatsDumpHelper;
    :catchall_54
    move-exception v0

    move-object v1, p0

    move-object v2, p2

    move-wide v4, p5

    move-object p6, p7

    move-object p2, p1

    move p5, p4

    move-object p4, p3

    move-object p1, v0

    .end local p1    # "context":Landroid/content/Context;
    .end local p3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local p7    # "dumpHelper":Landroid/os/BatteryStats$BatteryStatsDumpHelper;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "histStart":J
    .local p2, "context":Landroid/content/Context;
    .local p4, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local p5, "flags":I
    .restart local p6    # "dumpHelper":Landroid/os/BatteryStats$BatteryStatsDumpHelper;
    :goto_5d
    :try_start_5d
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5f

    throw p1

    :catchall_5f
    move-exception v0

    move-object p1, v0

    goto :goto_5d
.end method

.method public final blacklist dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .registers 223
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "which"    # I
    .param p4, "reqUid"    # I
    .param p5, "wifiOnly"    # Z
    .param p6, "dumpHelper"    # Landroid/os/BatteryStats$BatteryStatsDumpHelper;

    .line 4479
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v6, p3

    move/from16 v9, p4

    const/4 v10, 0x0

    .line 4587
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 4479
    if-eqz v6, :cond_36

    .line 4480
    sget-object v2, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: BatteryStats.dumpCheckin called for which type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but only STATS_SINCE_CHARGED is supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "err"

    invoke-static {v1, v10, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4483
    return-void

    .line 4486
    :cond_36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v21, 0x3e8

    mul-long v11, v2, v21

    .line 4487
    .local v11, "rawUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 4488
    .local v13, "rawRealtimeMs":J
    mul-long v7, v13, v21

    .line 4489
    .local v7, "rawRealtime":J
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v2

    .line 4490
    .local v2, "batteryUptime":J
    invoke-virtual {v0, v11, v12, v6}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v23

    .line 4491
    .local v23, "whichBatteryUptime":J
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v25

    .line 4492
    .local v25, "whichBatteryRealtime":J
    invoke-virtual {v0, v11, v12, v6}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v27

    .line 4493
    .local v27, "whichBatteryScreenOffUptime":J
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v29

    .line 4495
    .local v29, "whichBatteryScreenOffRealtime":J
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v31

    .line 4496
    .local v31, "totalRealtime":J
    invoke-virtual {v0, v11, v12, v6}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v33

    .line 4497
    .local v33, "totalUptime":J
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v35

    .line 4498
    .local v35, "screenOnTime":J
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v37

    .line 4499
    .local v37, "screenDozeTime":J
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v39

    .line 4500
    .local v39, "interactiveTime":J
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v41

    .line 4501
    .local v41, "powerSaveModeEnabledTime":J
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v7, v8, v6}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v43

    .line 4503
    .local v43, "deviceIdleModeLightTime":J
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v7, v8, v6}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v45

    .line 4505
    .local v45, "deviceIdleModeFullTime":J
    invoke-virtual {v0, v4, v7, v8, v6}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v47

    .line 4507
    .local v47, "deviceLightIdlingTime":J
    invoke-virtual {v0, v5, v7, v8, v6}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v49

    .line 4509
    .local v49, "deviceIdlingTime":J
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v51

    .line 4510
    .local v51, "connChanges":I
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v52

    .line 4511
    .local v52, "phoneOnTime":J
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v54

    .line 4512
    .local v54, "dischargeCount":J
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v56

    .line 4513
    .local v56, "dischargeScreenOffCount":J
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v58

    .line 4514
    .local v58, "dischargeScreenDozeCount":J
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v60

    .line 4515
    .local v60, "dischargeLightDozeCount":J
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v62

    .line 4517
    .local v62, "dischargeDeepDozeCount":J
    new-instance v5, Ljava/lang/StringBuilder;

    move/from16 v17, v4

    const/16 v4, 0x80

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4519
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v4

    .line 4520
    .local v4, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    move-wide/from16 v18, v2

    .end local v2    # "batteryUptime":J
    .local v18, "batteryUptime":J
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4522
    .local v2, "NU":I
    sget-object v3, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v6

    .line 4525
    .local v3, "category":Ljava/lang/String;
    nop

    .line 4526
    if-nez v6, :cond_c1

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    goto :goto_c3

    :cond_c1
    const-string v20, "N/A"

    :goto_c3
    move-object/from16 v64, v20

    div-long v65, v25, v21

    .line 4527
    invoke-static/range {v65 .. v66}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v65

    div-long v66, v23, v21

    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v66

    div-long v67, v31, v21

    .line 4528
    invoke-static/range {v67 .. v68}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v67

    div-long v68, v33, v21

    invoke-static/range {v68 .. v69}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v68

    .line 4529
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v69

    invoke-static/range {v69 .. v70}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v69

    div-long v70, v29, v21

    .line 4530
    invoke-static/range {v70 .. v71}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v70

    div-long v71, v27, v21

    invoke-static/range {v71 .. v72}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v71

    .line 4531
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    .line 4532
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    .line 4533
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v74

    div-long v75, v37, v21

    .line 4534
    invoke-static/range {v75 .. v76}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v75

    filled-new-array/range {v64 .. v75}, [Ljava/lang/Object;

    move-result-object v10

    .line 4525
    move-object/from16 v20, v5

    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .local v20, "sb":Ljava/lang/StringBuilder;
    const-string v5, "bt"

    move-wide/from16 v64, v11

    const/4 v11, 0x0

    .end local v11    # "rawUptime":J
    .local v64, "rawUptime":J
    invoke-static {v1, v11, v3, v5, v10}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4538
    const-wide/16 v10, 0x0

    .line 4539
    .local v10, "fullWakeLockTimeTotal":J
    const-wide/16 v66, 0x0

    .line 4541
    .local v66, "partialWakeLockTimeTotal":J
    const/4 v5, 0x0

    move-wide/from16 v68, v66

    move-wide/from16 v66, v10

    .end local v10    # "fullWakeLockTimeTotal":J
    .local v5, "iu":I
    .local v66, "fullWakeLockTimeTotal":J
    .local v68, "partialWakeLockTimeTotal":J
    :goto_126
    if-ge v5, v2, :cond_17c

    .line 4542
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Uid;

    .line 4544
    .local v10, "u":Landroid/os/BatteryStats$Uid;
    nop

    .line 4545
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v11

    .line 4546
    .local v11, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    .local v12, "iw":I
    :goto_139
    if-ltz v12, :cond_171

    .line 4547
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v70

    move/from16 v71, v2

    .end local v2    # "NU":I
    .local v71, "NU":I
    move-object/from16 v2, v70

    check-cast v2, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 4549
    .local v2, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    move-object/from16 v70, v4

    move/from16 v72, v5

    move/from16 v4, v17

    .end local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v5    # "iu":I
    .local v70, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v72, "iu":I
    invoke-virtual {v2, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    .line 4550
    .local v5, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v5, :cond_157

    .line 4551
    invoke-virtual {v5, v7, v8, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v73

    add-long v66, v66, v73

    .line 4555
    :cond_157
    move-object/from16 v73, v5

    const/4 v4, 0x0

    .end local v5    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    .local v73, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v2, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    .line 4556
    .local v5, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v5, :cond_166

    .line 4557
    invoke-virtual {v5, v7, v8, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v74

    add-long v68, v68, v74

    .line 4546
    .end local v2    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v5    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v73    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    :cond_166
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v4, v70

    move/from16 v2, v71

    move/from16 v5, v72

    const/16 v17, 0x1

    goto :goto_139

    .end local v70    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v71    # "NU":I
    .end local v72    # "iu":I
    .local v2, "NU":I
    .restart local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v5, "iu":I
    :cond_171
    move/from16 v71, v2

    move-object/from16 v70, v4

    move/from16 v72, v5

    .line 4541
    .end local v2    # "NU":I
    .end local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v5    # "iu":I
    .end local v10    # "u":Landroid/os/BatteryStats$Uid;
    .end local v11    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v12    # "iw":I
    .restart local v70    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v71    # "NU":I
    .restart local v72    # "iu":I
    add-int/lit8 v5, v72, 0x1

    const/16 v17, 0x1

    .end local v72    # "iu":I
    .restart local v5    # "iu":I
    goto :goto_126

    .end local v70    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v71    # "NU":I
    .restart local v2    # "NU":I
    .restart local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    :cond_17c
    move/from16 v71, v2

    move-object/from16 v70, v4

    move/from16 v72, v5

    .line 4564
    .end local v2    # "NU":I
    .end local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v5    # "iu":I
    .restart local v70    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v71    # "NU":I
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v72

    .line 4565
    .local v72, "mobileRxTotalBytes":J
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v74

    .line 4566
    .local v74, "mobileTxTotalBytes":J
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v77

    .line 4567
    .local v77, "wifiRxTotalBytes":J
    const/4 v10, 0x3

    invoke-virtual {v0, v10, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v79

    .line 4568
    .local v79, "wifiTxTotalBytes":J
    invoke-virtual {v0, v11, v6}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v81

    .line 4569
    .local v81, "mobileRxTotalPackets":J
    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v83

    .line 4570
    .local v83, "mobileTxTotalPackets":J
    invoke-virtual {v0, v2, v6}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v85

    .line 4571
    .local v85, "wifiRxTotalPackets":J
    invoke-virtual {v0, v10, v6}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v87

    .line 4572
    .local v87, "wifiTxTotalPackets":J
    const/4 v11, 0x4

    invoke-virtual {v0, v11, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v89

    .line 4573
    .local v89, "btRxTotalBytes":J
    const/4 v12, 0x5

    invoke-virtual {v0, v12, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v91

    .line 4574
    .local v91, "btTxTotalBytes":J
    nop

    .line 4575
    invoke-static/range {v72 .. v73}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v93

    invoke-static/range {v74 .. v75}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v94

    invoke-static/range {v77 .. v78}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v95

    invoke-static/range {v79 .. v80}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v96

    .line 4576
    invoke-static/range {v81 .. v82}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v97

    invoke-static/range {v83 .. v84}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v98

    invoke-static/range {v85 .. v86}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v99

    invoke-static/range {v87 .. v88}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v100

    .line 4577
    invoke-static/range {v89 .. v90}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v101

    invoke-static/range {v91 .. v92}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v102

    filled-new-array/range {v93 .. v102}, [Ljava/lang/Object;

    move-result-object v5

    .line 4574
    const-string/jumbo v2, "gn"

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v2, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4580
    nop

    .line 4581
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 4580
    const/4 v2, 0x0

    const-string/jumbo v4, "gmcd"

    move-wide/from16 v103, v18

    move-object/from16 v11, v20

    move-object/from16 v10, v70

    move/from16 v105, v71

    const/4 v12, 0x2

    .end local v18    # "batteryUptime":J
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    .end local v70    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v71    # "NU":I
    .local v10, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v11, "sb":Ljava/lang/StringBuilder;
    .local v103, "batteryUptime":J
    .local v105, "NU":I
    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4584
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v93

    .line 4585
    .local v93, "wifiOnTime":J
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v95

    .line 4586
    .local v95, "wifiRunningTime":J
    div-long v4, v93, v21

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    div-long v4, v95, v21

    .line 4587
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v2, v4, v15, v15, v15}, [Ljava/lang/Object;

    move-result-object v2

    .line 4586
    const-string/jumbo v4, "gwfl"

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v4, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4589
    nop

    .line 4590
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 4589
    const/4 v2, 0x0

    const-string/jumbo v4, "gwfcd"

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4593
    nop

    .line 4594
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 4593
    const-string v4, "gble"

    move-object/from16 v1, p2

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4597
    move-object v2, v3

    .end local v3    # "category":Ljava/lang/String;
    .local v2, "category":Ljava/lang/String;
    div-long v3, v35, v21

    .line 4598
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v107

    div-long v3, v52, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v108

    div-long v3, v66, v21

    .line 4599
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v109

    div-long v3, v68, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v110

    .line 4600
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v3

    div-long v3, v3, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v111

    .line 4601
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v3

    div-long v3, v3, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v112

    div-long v3, v39, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v113

    div-long v3, v41, v21

    .line 4602
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v114

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v115

    div-long v3, v45, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v116

    .line 4603
    invoke-virtual {v0, v12, v6}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v117

    div-long v3, v49, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v118

    .line 4604
    invoke-virtual {v0, v12, v6}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v119

    .line 4605
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v120

    .line 4606
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v3

    div-long v3, v3, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v121

    div-long v3, v43, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v122

    .line 4607
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v6}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v123

    div-long v4, v47, v21

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v124

    .line 4608
    invoke-virtual {v0, v3, v6}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v125

    .line 4609
    invoke-virtual {v0, v3}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v126

    .line 4610
    invoke-virtual {v0, v12}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v127

    filled-new-array/range {v107 .. v127}, [Ljava/lang/Object;

    move-result-object v4

    .line 4597
    const-string/jumbo v5, "m"

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v5, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4613
    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/Object;

    .line 4614
    .local v4, "args":[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2d9
    if-ge v5, v3, :cond_2eb

    .line 4615
    invoke-virtual {v0, v5, v7, v8, v6}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v18

    div-long v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v5

    .line 4614
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x5

    goto :goto_2d9

    .line 4617
    .end local v5    # "i":I
    :cond_2eb
    const-string v3, "br"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4620
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    .line 4621
    .end local v4    # "args":[Ljava/lang/Object;
    .local v3, "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2f8
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v5

    if-ge v4, v5, :cond_30d

    .line 4622
    invoke-virtual {v0, v4, v7, v8, v6}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v18

    div-long v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4621
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f8

    .line 4624
    .end local v4    # "i":I
    :cond_30d
    const-string/jumbo v4, "sgt"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4625
    nop

    .line 4626
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v18

    div-long v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 4625
    const-string/jumbo v12, "sst"

    invoke-static {v1, v5, v2, v12, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4627
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_32a
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v5

    if-ge v4, v5, :cond_33d

    .line 4628
    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4627
    add-int/lit8 v4, v4, 0x1

    goto :goto_32a

    .line 4630
    .end local v4    # "i":I
    :cond_33d
    const-string/jumbo v4, "sgc"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4633
    sget v4, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    new-array v3, v4, [Ljava/lang/Object;

    .line 4634
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_349
    sget v5, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v4, v5, :cond_35c

    .line 4635
    invoke-virtual {v0, v4, v7, v8, v6}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v19

    div-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4634
    add-int/lit8 v4, v4, 0x1

    goto :goto_349

    .line 4637
    .end local v4    # "i":I
    :cond_35c
    const-string v4, "dct"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4638
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_363
    sget v5, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v4, v5, :cond_374

    .line 4639
    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4638
    add-int/lit8 v4, v4, 0x1

    goto :goto_363

    .line 4641
    .end local v4    # "i":I
    :cond_374
    const-string v4, "dcc"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4644
    const/16 v12, 0x8

    new-array v3, v12, [Ljava/lang/Object;

    .line 4645
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_37f
    if-ge v4, v12, :cond_390

    .line 4646
    invoke-virtual {v0, v4, v7, v8, v6}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v19

    div-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4645
    add-int/lit8 v4, v4, 0x1

    goto :goto_37f

    .line 4648
    .end local v4    # "i":I
    :cond_390
    const-string/jumbo v4, "wst"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4649
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_398
    if-ge v4, v12, :cond_3a7

    .line 4650
    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getWifiStateCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4649
    add-int/lit8 v4, v4, 0x1

    goto :goto_398

    .line 4652
    .end local v4    # "i":I
    :cond_3a7
    const-string/jumbo v4, "wsc"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4655
    const/16 v4, 0xd

    new-array v3, v4, [Ljava/lang/Object;

    .line 4656
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3b3
    if-ge v5, v4, :cond_3c4

    .line 4657
    invoke-virtual {v0, v5, v7, v8, v6}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v19

    div-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v3, v5

    .line 4656
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b3

    .line 4659
    .end local v5    # "i":I
    :cond_3c4
    const-string/jumbo v5, "wsst"

    const/4 v12, 0x0

    invoke-static {v1, v12, v2, v5, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4660
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3cc
    if-ge v5, v4, :cond_3db

    .line 4661
    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->getWifiSupplStateCount(II)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v5

    .line 4660
    add-int/lit8 v5, v5, 0x1

    goto :goto_3cc

    .line 4663
    .end local v5    # "i":I
    :cond_3db
    const-string/jumbo v5, "wssc"

    const/4 v12, 0x0

    invoke-static {v1, v12, v2, v5, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4666
    const/4 v5, 0x5

    new-array v12, v5, [Ljava/lang/Object;

    .line 4667
    .end local v3    # "args":[Ljava/lang/Object;
    .local v12, "args":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3e6
    if-ge v3, v5, :cond_3f8

    .line 4668
    invoke-virtual {v0, v3, v7, v8, v6}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v97

    div-long v97, v97, v21

    invoke-static/range {v97 .. v98}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v12, v3

    .line 4667
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x5

    goto :goto_3e6

    .line 4670
    .end local v3    # "i":I
    :cond_3f8
    const-string/jumbo v3, "wsgt"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v12}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4671
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_400
    const/4 v5, 0x5

    if-ge v3, v5, :cond_410

    .line 4672
    invoke-virtual {v0, v3, v6}, Landroid/os/BatteryStats;->getWifiSignalStrengthCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v12, v3

    .line 4671
    add-int/lit8 v3, v3, 0x1

    goto :goto_400

    .line 4674
    .end local v3    # "i":I
    :cond_410
    const-string/jumbo v3, "wsgc"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v12}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4677
    nop

    .line 4678
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v97

    .line 4679
    .local v97, "multicastWakeLockTimeTotalMicros":J
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v71

    .line 4680
    .local v71, "multicastWakeLockCountTotal":I
    div-long v99, v97, v21

    .line 4681
    invoke-static/range {v99 .. v100}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4682
    invoke-static/range {v71 .. v71}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 4680
    const-string/jumbo v5, "wmct"

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v5, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4684
    nop

    .line 4685
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v107

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v108

    .line 4686
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v109

    .line 4687
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v110

    div-long v3, v54, v21

    .line 4688
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v111

    div-long v3, v56, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v112

    .line 4689
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v113

    div-long v3, v58, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v114

    div-long v3, v60, v21

    .line 4690
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v115

    div-long v3, v62, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v116

    filled-new-array/range {v107 .. v116}, [Ljava/lang/Object;

    move-result-object v3

    .line 4684
    const-string v4, "dc"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4692
    const-wide/16 v99, 0x1f4

    const-string v3, "\""

    if-gez v9, :cond_59e

    .line 4693
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v101

    .line 4694
    .local v101, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v101 .. v101}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_51b

    .line 4695
    invoke-interface/range {v101 .. v101}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v102

    :goto_49e
    invoke-interface/range {v102 .. v102}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50d

    invoke-interface/range {v102 .. v102}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v107, v4

    check-cast v107, Ljava/util/Map$Entry;

    .line 4696
    .local v107, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4697
    invoke-interface/range {v107 .. v107}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v5, 0x0

    move-object/from16 v108, v3

    move-wide/from16 v213, v7

    move-object v8, v2

    move-object v2, v4

    move-wide/from16 v3, v213

    .end local v2    # "category":Ljava/lang/String;
    .end local v7    # "rawRealtime":J
    .local v3, "rawRealtime":J
    .local v8, "category":Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v20, v8

    move-object v8, v1

    move-object v1, v11

    move-object/from16 v11, v20

    move-object/from16 v20, v12

    move-object/from16 v12, v108

    move-wide/from16 v108, v13

    const/4 v13, 0x1

    .end local v8    # "category":Ljava/lang/String;
    .end local v12    # "args":[Ljava/lang/Object;
    .end local v13    # "rawRealtimeMs":J
    .local v1, "sb":Ljava/lang/StringBuilder;
    .local v11, "category":Ljava/lang/String;
    .local v20, "args":[Ljava/lang/Object;
    .local v108, "rawRealtimeMs":J
    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 4698
    move-object v7, v1

    move-wide v1, v3

    .end local v3    # "rawRealtime":J
    .local v1, "rawRealtime":J
    .local v7, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4699
    invoke-interface/range {v107 .. v107}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 4698
    const-string/jumbo v4, "kwl"

    const/4 v5, 0x0

    invoke-static {v8, v5, v11, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4700
    .end local v107    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    move-object v3, v12

    move-object/from16 v12, v20

    move-wide/from16 v13, v108

    move-object/from16 v213, v11

    move-object v11, v7

    move-wide/from16 v214, v1

    move-object v1, v8

    move-wide/from16 v7, v214

    move-object/from16 v2, v213

    goto :goto_49e

    .line 4695
    .end local v1    # "rawRealtime":J
    .end local v20    # "args":[Ljava/lang/Object;
    .end local v108    # "rawRealtimeMs":J
    .restart local v2    # "category":Ljava/lang/String;
    .local v7, "rawRealtime":J
    .local v11, "sb":Ljava/lang/StringBuilder;
    .restart local v12    # "args":[Ljava/lang/Object;
    .restart local v13    # "rawRealtimeMs":J
    :cond_50d
    move-object/from16 v20, v12

    move-wide/from16 v108, v13

    const/4 v13, 0x1

    move-object v12, v3

    move-wide/from16 v213, v7

    move-object v8, v1

    move-object v7, v11

    move-object v11, v2

    move-wide/from16 v1, v213

    .end local v2    # "category":Ljava/lang/String;
    .end local v12    # "args":[Ljava/lang/Object;
    .end local v13    # "rawRealtimeMs":J
    .restart local v1    # "rawRealtime":J
    .local v7, "sb":Ljava/lang/StringBuilder;
    .local v11, "category":Ljava/lang/String;
    .restart local v20    # "args":[Ljava/lang/Object;
    .restart local v108    # "rawRealtimeMs":J
    goto :goto_528

    .line 4694
    .end local v1    # "rawRealtime":J
    .end local v20    # "args":[Ljava/lang/Object;
    .end local v108    # "rawRealtimeMs":J
    .restart local v2    # "category":Ljava/lang/String;
    .local v7, "rawRealtime":J
    .local v11, "sb":Ljava/lang/StringBuilder;
    .restart local v12    # "args":[Ljava/lang/Object;
    .restart local v13    # "rawRealtimeMs":J
    :cond_51b
    move-object/from16 v20, v12

    move-wide/from16 v108, v13

    const/4 v13, 0x1

    move-object v12, v3

    move-wide/from16 v213, v7

    move-object v8, v1

    move-object v7, v11

    move-object v11, v2

    move-wide/from16 v1, v213

    .line 4702
    .end local v2    # "category":Ljava/lang/String;
    .end local v12    # "args":[Ljava/lang/Object;
    .end local v13    # "rawRealtimeMs":J
    .restart local v1    # "rawRealtime":J
    .local v7, "sb":Ljava/lang/StringBuilder;
    .local v11, "category":Ljava/lang/String;
    .restart local v20    # "args":[Ljava/lang/Object;
    .restart local v108    # "rawRealtimeMs":J
    :goto_528
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v3

    .line 4703
    .local v3, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_59b

    .line 4704
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_53a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_598

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 4707
    .local v5, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v14, v1, v2, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v106

    .line 4708
    .local v106, "totalTimeMicros":J
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v14, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v14

    .line 4709
    .local v14, "count":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4710
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v110

    move-object/from16 v111, v3

    .end local v3    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v111, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    move-object/from16 v3, v110

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-long v112, v106, v99

    div-long v112, v112, v21

    invoke-static/range {v112 .. v113}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v110, v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v13, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 4709
    const-string/jumbo v4, "wr"

    const/4 v13, 0x0

    invoke-static {v8, v13, v11, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4711
    .end local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v14    # "count":I
    .end local v106    # "totalTimeMicros":J
    move-object/from16 v4, v110

    move-object/from16 v3, v111

    const/4 v13, 0x1

    goto :goto_53a

    .line 4704
    .end local v111    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v3    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_598
    move-object/from16 v111, v3

    .end local v3    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v111    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    goto :goto_5aa

    .line 4703
    .end local v111    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v3    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_59b
    move-object/from16 v111, v3

    .end local v3    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v111    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    goto :goto_5aa

    .line 4692
    .end local v1    # "rawRealtime":J
    .end local v20    # "args":[Ljava/lang/Object;
    .end local v101    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v108    # "rawRealtimeMs":J
    .end local v111    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v2    # "category":Ljava/lang/String;
    .local v7, "rawRealtime":J
    .local v11, "sb":Ljava/lang/StringBuilder;
    .restart local v12    # "args":[Ljava/lang/Object;
    .restart local v13    # "rawRealtimeMs":J
    :cond_59e
    move-object/from16 v20, v12

    move-wide/from16 v108, v13

    move-object v12, v3

    move-wide/from16 v213, v7

    move-object v8, v1

    move-object v7, v11

    move-object v11, v2

    move-wide/from16 v1, v213

    .line 4715
    .end local v2    # "category":Ljava/lang/String;
    .end local v12    # "args":[Ljava/lang/Object;
    .end local v13    # "rawRealtimeMs":J
    .restart local v1    # "rawRealtime":J
    .local v7, "sb":Ljava/lang/StringBuilder;
    .local v11, "category":Ljava/lang/String;
    .restart local v20    # "args":[Ljava/lang/Object;
    .restart local v108    # "rawRealtimeMs":J
    :goto_5aa
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v101

    .line 4716
    .local v101, "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getScreenOffRpmStats()Ljava/util/Map;

    move-result-object v13

    .line 4717
    .local v13, "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v101 .. v101}, Ljava/util/Map;->size()I

    move-result v3

    const-wide/16 v106, 0x0

    if-lez v3, :cond_640

    .line 4718
    invoke-interface/range {v101 .. v101}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5c2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4719
    .local v4, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4720
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    .line 4721
    .local v5, "totalTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v5, v1, v2, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v110

    add-long v110, v110, v99

    div-long v110, v110, v21

    .line 4722
    .local v110, "timeMs":J
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v14

    .line 4723
    .restart local v14    # "count":I
    move-object/from16 v112, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Timer;

    .line 4724
    .local v3, "screenOffTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v3, :cond_5fb

    .line 4725
    invoke-virtual {v3, v1, v2, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v113

    add-long v113, v113, v99

    div-long v113, v113, v21

    goto :goto_5fd

    :cond_5fb
    move-wide/from16 v113, v106

    .line 4726
    .local v113, "screenOffTimeMs":J
    :goto_5fd
    if-eqz v3, :cond_604

    .line 4727
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v115

    goto :goto_606

    :cond_604
    const/16 v115, 0x0

    .line 4733
    .local v115, "screenOffCount":I
    :goto_606
    move-wide/from16 v116, v1

    .end local v1    # "rawRealtime":J
    .local v116, "rawRealtime":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4734
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v110 .. v111}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v118, v3

    .end local v3    # "screenOffTimer":Landroid/os/BatteryStats$Timer;
    .local v118, "screenOffTimer":Landroid/os/BatteryStats$Timer;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 4733
    const-string/jumbo v2, "rpm"

    const/4 v3, 0x0

    invoke-static {v8, v3, v11, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4736
    .end local v4    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v5    # "totalTimer":Landroid/os/BatteryStats$Timer;
    .end local v14    # "count":I
    .end local v110    # "timeMs":J
    .end local v113    # "screenOffTimeMs":J
    .end local v115    # "screenOffCount":I
    .end local v118    # "screenOffTimer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v3, v112

    move-wide/from16 v1, v116

    goto :goto_5c2

    .line 4718
    .end local v116    # "rawRealtime":J
    .restart local v1    # "rawRealtime":J
    :cond_63d
    move-wide/from16 v116, v1

    .end local v1    # "rawRealtime":J
    .restart local v116    # "rawRealtime":J
    goto :goto_642

    .line 4717
    .end local v116    # "rawRealtime":J
    .restart local v1    # "rawRealtime":J
    :cond_640
    move-wide/from16 v116, v1

    .line 4739
    .end local v1    # "rawRealtime":J
    .restart local v116    # "rawRealtime":J
    :goto_642
    move-object/from16 v14, p6

    const/4 v4, 0x1

    invoke-interface {v14, v0, v4}, Landroid/os/BatteryStats$BatteryStatsDumpHelper;->getBatteryUsageStats(Landroid/os/BatteryStats;Z)Landroid/os/BatteryUsageStats;

    move-result-object v1

    .line 4740
    .local v1, "stats":Landroid/os/BatteryUsageStats;
    nop

    .line 4741
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->getBatteryCapacity()D

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    .line 4742
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    .line 4743
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v4

    .line 4744
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v110

    invoke-static/range {v110 .. v111}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 4740
    const-string/jumbo v3, "pws"

    const/4 v5, 0x0

    invoke-static {v8, v5, v11, v3, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4745
    invoke-virtual {v1, v5}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v2

    .line 4747
    .local v2, "deviceConsumer":Landroid/os/BatteryConsumer;
    const/4 v3, 0x0

    .line 4748
    .local v3, "powerComponent":I
    :goto_68e
    const/16 v4, 0x13

    const-string/jumbo v5, "pwi"

    if-ge v3, v4, :cond_6c3

    .line 4749
    sget-object v4, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 4750
    .local v4, "label":Ljava/lang/String;
    if-nez v4, :cond_69d

    .line 4751
    const-string v4, "???"

    .line 4753
    :cond_69d
    nop

    .line 4754
    invoke-virtual {v2, v3}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v110

    move-object/from16 v112, v2

    .end local v2    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .local v112, "deviceConsumer":Landroid/os/BatteryConsumer;
    invoke-static/range {v110 .. v111}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    .line 4755
    invoke-direct {v0, v3}, Landroid/os/BatteryStats;->shouldHidePowerComponent(I)Z

    move-result v110

    invoke-static/range {v110 .. v110}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move/from16 v110, v3

    .end local v3    # "powerComponent":I
    .local v110, "powerComponent":I
    const-string v3, "0"

    filled-new-array {v4, v2, v0, v3, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 4753
    const/4 v3, 0x0

    invoke-static {v8, v3, v11, v5, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4748
    .end local v4    # "label":Ljava/lang/String;
    add-int/lit8 v3, v110, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v112

    .end local v110    # "powerComponent":I
    .restart local v3    # "powerComponent":I
    goto :goto_68e

    .end local v112    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .restart local v2    # "deviceConsumer":Landroid/os/BatteryConsumer;
    :cond_6c3
    move-object/from16 v112, v2

    move/from16 v110, v3

    .line 4758
    .end local v2    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .end local v3    # "powerComponent":I
    .restart local v112    # "deviceConsumer":Landroid/os/BatteryConsumer;
    new-instance v0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;-><init>(Landroid/content/Context;Landroid/os/BatteryUsageStats;)V

    .line 4760
    .local v0, "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v3

    .line 4761
    .local v3, "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6d3
    move-object/from16 v110, v1

    .end local v1    # "stats":Landroid/os/BatteryUsageStats;
    .local v110, "stats":Landroid/os/BatteryUsageStats;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_727

    .line 4762
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UidBatteryConsumer;

    .line 4763
    .local v1, "consumer":Landroid/os/UidBatteryConsumer;
    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v2

    .line 4764
    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v113

    move-object/from16 v111, v3

    .end local v3    # "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .local v111, "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    invoke-static/range {v113 .. v114}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    .line 4765
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->isSystemBatteryConsumer(Landroid/os/UidBatteryConsumer;)Z

    move-result v113

    move/from16 v114, v4

    .end local v4    # "i":I
    .local v114, "i":I
    invoke-static/range {v113 .. v113}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4766
    move-object/from16 v113, v12

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    move-result-wide v118

    invoke-static/range {v118 .. v119}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v12

    .line 4768
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->getProportionalPowerMah(Landroid/os/UidBatteryConsumer;)D

    move-result-wide v118

    .line 4767
    move-object/from16 v115, v0

    .end local v0    # "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    .local v115, "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    invoke-static/range {v118 .. v119}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v118, v1

    .end local v1    # "consumer":Landroid/os/UidBatteryConsumer;
    .local v118, "consumer":Landroid/os/UidBatteryConsumer;
    const-string/jumbo v1, "uid"

    filled-new-array {v1, v3, v4, v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 4763
    invoke-static {v8, v2, v11, v5, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4761
    .end local v118    # "consumer":Landroid/os/UidBatteryConsumer;
    add-int/lit8 v4, v114, 0x1

    move-object/from16 v2, p1

    move-object/from16 v1, v110

    move-object/from16 v3, v111

    move-object/from16 v12, v113

    move-object/from16 v0, v115

    .end local v114    # "i":I
    .restart local v4    # "i":I
    goto :goto_6d3

    .end local v111    # "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .end local v115    # "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    .restart local v0    # "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    .restart local v3    # "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    :cond_727
    move-object/from16 v115, v0

    move-object/from16 v111, v3

    move/from16 v114, v4

    move-object/from16 v113, v12

    .line 4771
    .end local v0    # "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    .end local v3    # "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .end local v4    # "i":I
    .restart local v111    # "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .restart local v115    # "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v0

    .line 4772
    .local v0, "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    if-eqz v0, :cond_785

    .line 4773
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4774
    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_73f
    if-ge v3, v2, :cond_772

    aget v4, v1, v3

    .line 4775
    .local v4, "policy":I
    invoke-virtual {v0, v4}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v5

    array-length v12, v5

    move-object/from16 v118, v0

    const/4 v0, 0x0

    .end local v0    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .local v118, "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    :goto_74b
    if-ge v0, v12, :cond_76b

    move/from16 v119, v0

    aget v0, v5, v119

    .line 4776
    .local v0, "frequency":I
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v120

    if-eqz v120, :cond_75f

    move/from16 v120, v12

    const/16 v12, 0x2c

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_763

    :cond_75f
    move/from16 v120, v12

    const/16 v12, 0x2c

    .line 4777
    :goto_763
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4775
    .end local v0    # "frequency":I
    add-int/lit8 v0, v119, 0x1

    move/from16 v12, v120

    goto :goto_74b

    :cond_76b
    const/16 v12, 0x2c

    .line 4774
    .end local v4    # "policy":I
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v118

    goto :goto_73f

    .line 4780
    .end local v118    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .local v0, "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    :cond_772
    move-object/from16 v118, v0

    const/16 v12, 0x2c

    .end local v0    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v118    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "gcf"

    const/4 v5, 0x0

    invoke-static {v8, v5, v11, v1, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_789

    .line 4772
    .end local v118    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v0    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    :cond_785
    move-object/from16 v118, v0

    const/16 v12, 0x2c

    .line 4784
    .end local v0    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v118    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    :goto_789
    const/4 v0, 0x0

    move-object/from16 v114, v20

    .end local v20    # "args":[Ljava/lang/Object;
    .local v0, "iu":I
    .local v114, "args":[Ljava/lang/Object;
    :goto_78c
    move/from16 v1, v105

    .end local v105    # "NU":I
    .local v1, "NU":I
    if-ge v0, v1, :cond_119b

    .line 4785
    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 4786
    .local v2, "uid":I
    if-ltz v9, :cond_7be

    if-eq v2, v9, :cond_7be

    .line 4787
    move/from16 v70, v1

    move-object/from16 v198, v7

    move-object v1, v8

    move-object/from16 v16, v10

    move-object v2, v11

    move-object/from16 v105, v13

    move-object/from16 v176, v15

    move-wide/from16 v9, v103

    move-wide/from16 v11, v108

    move-object/from16 v15, v113

    move-wide/from16 v189, v116

    const/16 v18, 0x2

    const/16 v113, 0x5

    const/16 v116, 0x3

    const/16 v128, 0xd

    const/16 v174, 0x1

    const/16 v175, 0x8

    const/16 v177, 0x4

    move/from16 v117, v0

    goto/16 :goto_117d

    .line 4789
    :cond_7be
    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid;

    .line 4792
    .local v3, "u":Landroid/os/BatteryStats$Uid;
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v119

    .line 4793
    .local v119, "mobileBytesRx":J
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v121

    .line 4794
    .local v121, "mobileBytesTx":J
    const/4 v12, 0x2

    invoke-virtual {v3, v12, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v123

    .line 4795
    .local v123, "wifiBytesRx":J
    const/4 v12, 0x3

    invoke-virtual {v3, v12, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v125

    .line 4796
    .local v125, "wifiBytesTx":J
    invoke-virtual {v3, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v129

    .line 4797
    .local v129, "mobilePacketsRx":J
    invoke-virtual {v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v131

    .line 4798
    .local v131, "mobilePacketsTx":J
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v133

    .line 4799
    .local v133, "mobileActiveTime":J
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v102

    .line 4800
    .local v102, "mobileActiveCount":I
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v135

    .line 4801
    .local v135, "mobileWakeup":J
    const/4 v12, 0x2

    invoke-virtual {v3, v12, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v137

    .line 4802
    .local v137, "wifiPacketsRx":J
    const/4 v5, 0x3

    invoke-virtual {v3, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v139

    .line 4803
    .local v139, "wifiPacketsTx":J
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v141

    .line 4804
    .local v141, "wifiWakeup":J
    const/4 v12, 0x4

    invoke-virtual {v3, v12, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v143

    .line 4805
    .local v143, "btBytesRx":J
    const/4 v12, 0x5

    invoke-virtual {v3, v12, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v145

    .line 4807
    .local v145, "btBytesTx":J
    const/4 v4, 0x6

    invoke-virtual {v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v147

    .line 4809
    .local v147, "mobileBytesBgRx":J
    const/4 v4, 0x7

    invoke-virtual {v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v149

    .line 4811
    .local v149, "mobileBytesBgTx":J
    const/16 v12, 0x8

    invoke-virtual {v3, v12, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v151

    .line 4812
    .local v151, "wifiBytesBgRx":J
    const/16 v5, 0x9

    invoke-virtual {v3, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v153

    .line 4813
    .local v153, "wifiBytesBgTx":J
    const/4 v5, 0x6

    invoke-virtual {v3, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v155

    .line 4815
    .local v155, "mobilePacketsBgRx":J
    invoke-virtual {v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v157

    .line 4817
    .local v157, "mobilePacketsBgTx":J
    invoke-virtual {v3, v12, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v159

    .line 4819
    .local v159, "wifiPacketsBgRx":J
    const/16 v5, 0x9

    invoke-virtual {v3, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v161

    .line 4822
    .local v161, "wifiPacketsBgTx":J
    cmp-long v5, v119, v106

    if-gtz v5, :cond_883

    cmp-long v5, v121, v106

    if-gtz v5, :cond_883

    cmp-long v5, v123, v106

    if-gtz v5, :cond_883

    cmp-long v5, v125, v106

    if-gtz v5, :cond_883

    cmp-long v5, v129, v106

    if-gtz v5, :cond_883

    cmp-long v5, v131, v106

    if-gtz v5, :cond_883

    cmp-long v5, v137, v106

    if-gtz v5, :cond_883

    cmp-long v5, v139, v106

    if-gtz v5, :cond_883

    cmp-long v5, v133, v106

    if-gtz v5, :cond_883

    if-gtz v102, :cond_883

    cmp-long v5, v143, v106

    if-gtz v5, :cond_883

    cmp-long v5, v145, v106

    if-gtz v5, :cond_883

    cmp-long v5, v135, v106

    if-gtz v5, :cond_883

    cmp-long v5, v141, v106

    if-gtz v5, :cond_883

    cmp-long v5, v147, v106

    if-gtz v5, :cond_883

    cmp-long v5, v149, v106

    if-gtz v5, :cond_883

    cmp-long v5, v151, v106

    if-gtz v5, :cond_883

    cmp-long v5, v153, v106

    if-gtz v5, :cond_883

    cmp-long v5, v155, v106

    if-gtz v5, :cond_883

    cmp-long v5, v157, v106

    if-gtz v5, :cond_883

    cmp-long v5, v159, v106

    if-gtz v5, :cond_883

    cmp-long v5, v161, v106

    if-lez v5, :cond_8e5

    .line 4830
    :cond_883
    invoke-static/range {v119 .. v120}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v163

    invoke-static/range {v121 .. v122}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v164

    .line 4831
    invoke-static/range {v123 .. v124}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    invoke-static/range {v125 .. v126}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    .line 4832
    invoke-static/range {v129 .. v130}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v167

    invoke-static/range {v131 .. v132}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v168

    .line 4833
    invoke-static/range {v137 .. v138}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v169

    invoke-static/range {v139 .. v140}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v170

    .line 4834
    invoke-static/range {v133 .. v134}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v171

    invoke-static/range {v102 .. v102}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v172

    .line 4835
    invoke-static/range {v143 .. v144}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v173

    invoke-static/range {v145 .. v146}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v174

    invoke-static/range {v135 .. v136}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v175

    invoke-static/range {v141 .. v142}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v176

    .line 4836
    invoke-static/range {v147 .. v148}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v177

    invoke-static/range {v149 .. v150}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v178

    invoke-static/range {v151 .. v152}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v179

    invoke-static/range {v153 .. v154}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v180

    .line 4837
    invoke-static/range {v155 .. v156}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v181

    invoke-static/range {v157 .. v158}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v182

    invoke-static/range {v159 .. v160}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v183

    invoke-static/range {v161 .. v162}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v184

    filled-new-array/range {v163 .. v184}, [Ljava/lang/Object;

    move-result-object v5

    .line 4830
    const-string/jumbo v4, "nt"

    invoke-static {v8, v2, v11, v4, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4842
    :cond_8e5
    nop

    .line 4843
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 4842
    const-string/jumbo v4, "mcd"

    move-object v9, v11

    move-object v11, v3

    move-object v3, v9

    move/from16 v70, v1

    move-object v1, v8

    move-wide/from16 v8, v116

    const/16 v17, 0x1

    const/16 v116, 0x3

    move/from16 v117, v0

    const/4 v0, 0x7

    .end local v0    # "iu":I
    .end local v1    # "NU":I
    .end local v116    # "rawRealtime":J
    .local v3, "category":Ljava/lang/String;
    .local v8, "rawRealtime":J
    .local v11, "u":Landroid/os/BatteryStats$Uid;
    .local v70, "NU":I
    .local v117, "iu":I
    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4846
    invoke-virtual {v11, v8, v9, v6}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v163

    .line 4847
    .local v163, "fullWifiLockOnTime":J
    invoke-virtual {v11, v8, v9, v6}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v165

    .line 4848
    .local v165, "wifiScanTime":J
    invoke-virtual {v11, v6}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v127

    .line 4849
    .local v127, "wifiScanCount":I
    invoke-virtual {v11, v6}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v167

    .line 4851
    .local v167, "wifiScanCountBg":I
    invoke-virtual {v11, v8, v9}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v4

    add-long v4, v4, v99

    div-long v168, v4, v21

    .line 4852
    .local v168, "wifiScanActualTimeMs":J
    invoke-virtual {v11, v8, v9}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v4

    add-long v4, v4, v99

    div-long v170, v4, v21

    .line 4854
    .local v170, "wifiScanActualTimeMsBg":J
    invoke-virtual {v11, v8, v9, v6}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v172

    .line 4855
    .local v172, "uidWifiRunningTime":J
    cmp-long v4, v163, v106

    if-nez v4, :cond_94e

    cmp-long v4, v165, v106

    if-nez v4, :cond_94e

    if-nez v127, :cond_94e

    if-nez v167, :cond_94e

    cmp-long v4, v168, v106

    if-nez v4, :cond_94e

    cmp-long v4, v170, v106

    if-nez v4, :cond_94e

    cmp-long v4, v172, v106

    if-eqz v4, :cond_93c

    goto :goto_94e

    :cond_93c
    move-object v4, v11

    move/from16 v175, v12

    move-object/from16 v105, v13

    move/from16 v0, v17

    move-object/from16 v5, v113

    const/16 v113, 0x5

    const/16 v174, 0x2

    const/16 v176, 0x2c

    const/16 v177, 0x4

    goto :goto_98f

    .line 4858
    :cond_94e
    :goto_94e
    move-object v4, v11

    .end local v11    # "u":Landroid/os/BatteryStats$Uid;
    .local v4, "u":Landroid/os/BatteryStats$Uid;
    invoke-static/range {v163 .. v164}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move/from16 v19, v12

    invoke-static/range {v165 .. v166}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 4859
    move-object v5, v13

    .end local v13    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v5, "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-static/range {v172 .. v173}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static/range {v127 .. v127}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 4860
    nop

    .line 4861
    const/16 v174, 0x2

    invoke-static/range {v167 .. v167}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v175, v19

    invoke-static/range {v168 .. v169}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v176, 0x2c

    invoke-static/range {v170 .. v171}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v177, 0x4

    move-object/from16 v16, v15

    move/from16 v178, v17

    move-object/from16 v17, v15

    move-object/from16 v105, v5

    move-object/from16 v5, v113

    move/from16 v0, v178

    const/16 v113, 0x5

    .end local v5    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v105, "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    filled-new-array/range {v11 .. v20}, [Ljava/lang/Object;

    move-result-object v11

    .line 4858
    const-string/jumbo v12, "wfl"

    invoke-static {v1, v2, v3, v12, v11}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4864
    :goto_98f
    nop

    .line 4865
    move-object v12, v5

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 4864
    move-object v11, v4

    .end local v4    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v11    # "u":Landroid/os/BatteryStats$Uid;
    const-string/jumbo v4, "wfcd"

    move-object v13, v11

    move-object/from16 v185, v12

    move-wide/from16 v11, v108

    move/from16 v14, v174

    .end local v108    # "rawRealtimeMs":J
    .local v11, "rawRealtimeMs":J
    .local v13, "u":Landroid/os/BatteryStats$Uid;
    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4867
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    .line 4868
    .local v4, "bleTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v4, :cond_a6b

    .line 4870
    invoke-virtual {v4, v8, v9, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v16

    add-long v16, v16, v99

    div-long v16, v16, v21

    .line 4872
    .local v16, "totalTime":J
    cmp-long v5, v16, v106

    if-eqz v5, :cond_a66

    .line 4873
    invoke-virtual {v4, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    .line 4874
    .local v5, "count":I
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    .line 4875
    .local v14, "bleTimerBg":Landroid/os/BatteryStats$Timer;
    if-eqz v14, :cond_9c4

    invoke-virtual {v14, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v19

    goto :goto_9c6

    :cond_9c4
    const/16 v19, 0x0

    .line 4877
    .local v19, "countBg":I
    :goto_9c6
    invoke-virtual {v4, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v108

    .line 4878
    .local v108, "actualTime":J
    if-eqz v14, :cond_9d1

    .line 4879
    invoke-virtual {v14, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v179

    goto :goto_9d3

    :cond_9d1
    move-wide/from16 v179, v106

    .line 4881
    .local v179, "actualTimeBg":J
    :goto_9d3
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v174

    if-eqz v174, :cond_9e4

    .line 4882
    move/from16 v174, v0

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v0

    goto :goto_9e7

    :cond_9e4
    move/from16 v174, v0

    const/4 v0, 0x0

    .line 4883
    .local v0, "resultCount":I
    :goto_9e7
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v176

    if-eqz v176, :cond_9f8

    .line 4884
    move/from16 v176, v0

    .end local v0    # "resultCount":I
    .local v176, "resultCount":I
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v0

    goto :goto_9fb

    .end local v176    # "resultCount":I
    .restart local v0    # "resultCount":I
    :cond_9f8
    move/from16 v176, v0

    .end local v0    # "resultCount":I
    .restart local v176    # "resultCount":I
    const/4 v0, 0x0

    .line 4886
    .local v0, "resultCountBg":I
    :goto_9fb
    move/from16 v181, v0

    .end local v0    # "resultCountBg":I
    .local v181, "resultCountBg":I
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    .line 4887
    .local v0, "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v0, :cond_a08

    .line 4888
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v182

    goto :goto_a0a

    :cond_a08
    move-wide/from16 v182, v106

    .line 4889
    .local v182, "unoptimizedScanTotalTime":J
    :goto_a0a
    if-eqz v0, :cond_a11

    .line 4890
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v186

    goto :goto_a13

    :cond_a11
    move-wide/from16 v186, v106

    .line 4892
    .local v186, "unoptimizedScanMaxTime":J
    :goto_a13
    nop

    .line 4893
    move-object/from16 v184, v0

    .end local v0    # "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    .local v184, "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    .line 4894
    .local v0, "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    if-eqz v0, :cond_a21

    .line 4895
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v188

    goto :goto_a23

    :cond_a21
    move-wide/from16 v188, v106

    .line 4896
    .local v188, "unoptimizedScanTotalTimeBg":J
    :goto_a23
    if-eqz v0, :cond_a2a

    .line 4897
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v190

    goto :goto_a2c

    :cond_a2a
    move-wide/from16 v190, v106

    .line 4899
    .local v190, "unoptimizedScanMaxTimeBg":J
    :goto_a2c
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v192

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v193

    .line 4900
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v194

    invoke-static/range {v108 .. v109}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v195

    invoke-static/range {v179 .. v180}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v196

    invoke-static/range {v176 .. v176}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v197

    invoke-static/range {v181 .. v181}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v198

    .line 4901
    invoke-static/range {v182 .. v183}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v199

    invoke-static/range {v188 .. v189}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v200

    .line 4902
    invoke-static/range {v186 .. v187}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v201

    invoke-static/range {v190 .. v191}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v202

    move-object/from16 v203, v0

    .end local v0    # "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    .local v203, "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    filled-new-array/range {v192 .. v202}, [Ljava/lang/Object;

    move-result-object v0

    .line 4899
    move-object/from16 v192, v4

    .end local v4    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .local v192, "bleTimer":Landroid/os/BatteryStats$Timer;
    const-string v4, "blem"

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a6f

    .line 4872
    .end local v5    # "count":I
    .end local v14    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    .end local v19    # "countBg":I
    .end local v108    # "actualTime":J
    .end local v176    # "resultCount":I
    .end local v179    # "actualTimeBg":J
    .end local v181    # "resultCountBg":I
    .end local v182    # "unoptimizedScanTotalTime":J
    .end local v184    # "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    .end local v186    # "unoptimizedScanMaxTime":J
    .end local v188    # "unoptimizedScanTotalTimeBg":J
    .end local v190    # "unoptimizedScanMaxTimeBg":J
    .end local v192    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v203    # "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    .restart local v4    # "bleTimer":Landroid/os/BatteryStats$Timer;
    :cond_a66
    move/from16 v174, v0

    move-object/from16 v192, v4

    .end local v4    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v192    # "bleTimer":Landroid/os/BatteryStats$Timer;
    goto :goto_a6f

    .line 4868
    .end local v16    # "totalTime":J
    .end local v192    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v4    # "bleTimer":Landroid/os/BatteryStats$Timer;
    :cond_a6b
    move/from16 v174, v0

    move-object/from16 v192, v4

    .line 4906
    .end local v4    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v192    # "bleTimer":Landroid/os/BatteryStats$Timer;
    :goto_a6f
    nop

    .line 4907
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 4906
    const-string v4, "ble"

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4909
    move-object v0, v1

    move v1, v2

    move-object v14, v3

    .end local v2    # "uid":I
    .end local v3    # "category":Ljava/lang/String;
    .local v1, "uid":I
    .local v14, "category":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v2

    if-eqz v2, :cond_aa6

    .line 4910
    sget v2, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 4911
    .end local v114    # "args":[Ljava/lang/Object;
    .local v2, "args":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 4912
    .local v3, "hasData":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a88
    sget v5, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v4, v5, :cond_a9c

    .line 4913
    invoke-virtual {v13, v4, v6}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v5

    .line 4914
    .local v5, "val":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v2, v4

    .line 4915
    if-eqz v5, :cond_a99

    const/4 v3, 0x1

    .line 4912
    .end local v5    # "val":I
    :cond_a99
    add-int/lit8 v4, v4, 0x1

    goto :goto_a88

    .line 4917
    .end local v4    # "i":I
    :cond_a9c
    if-eqz v3, :cond_aa4

    .line 4918
    const-string/jumbo v4, "ua"

    invoke-static {v0, v1, v14, v4, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4922
    .end local v3    # "hasData":Z
    :cond_aa4
    move-object/from16 v114, v2

    .end local v2    # "args":[Ljava/lang/Object;
    .restart local v114    # "args":[Ljava/lang/Object;
    :cond_aa6
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    if-eqz v2, :cond_ad6

    .line 4923
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 4925
    .local v2, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v2, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v3

    .line 4926
    .local v3, "totTimeMs":J
    invoke-virtual {v2}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    .line 4927
    .local v5, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v5, :cond_abf

    .line 4928
    invoke-virtual {v5, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v16

    goto :goto_ac1

    :cond_abf
    move-wide/from16 v16, v106

    .line 4929
    .local v16, "bgTimeMs":J
    :goto_ac1
    move-object/from16 v19, v2

    .end local v2    # "timer":Landroid/os/BatteryStats$Timer;
    .local v19, "timer":Landroid/os/BatteryStats$Timer;
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-wide/from16 v108, v3

    .end local v3    # "totTimeMs":J
    .local v108, "totTimeMs":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "awl"

    invoke-static {v0, v1, v14, v3, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4932
    .end local v5    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v16    # "bgTimeMs":J
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v108    # "totTimeMs":J
    :cond_ad6
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v2

    .line 4933
    .local v2, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "iw":I
    :goto_ae0
    const/16 v4, 0x5f

    if-ltz v3, :cond_ba4

    .line 4934
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 4935
    .local v5, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const-string v16, ""

    .line 4936
    .local v16, "linePrefix":Ljava/lang/String;
    move-wide/from16 v108, v8

    const/4 v8, 0x0

    .end local v8    # "rawRealtime":J
    .local v108, "rawRealtime":J
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4937
    move-object/from16 v17, v2

    move/from16 v9, v174

    .end local v2    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v17, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v5, v9}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    move-object v9, v5

    .end local v5    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .local v9, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const-string v5, "f"

    move-object v4, v9

    move v9, v1

    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v10

    move-object v10, v4

    move/from16 v205, v3

    move-object/from16 v204, v17

    move-wide/from16 v3, v108

    .end local v17    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v108    # "rawRealtime":J
    .local v1, "sb":Ljava/lang/StringBuilder;
    .local v3, "rawRealtime":J
    .local v7, "linePrefix":Ljava/lang/String;
    .local v9, "uid":I
    .local v10, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .local v16, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v204, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v205, "iw":I
    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4939
    invoke-virtual {v10, v8}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 4940
    .local v2, "pTimer":Landroid/os/BatteryStats$Timer;
    const-string/jumbo v5, "p"

    move/from16 v6, p3

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4942
    move-object v8, v2

    .end local v2    # "pTimer":Landroid/os/BatteryStats$Timer;
    .local v8, "pTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v8, :cond_b24

    invoke-virtual {v8}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    goto :goto_b25

    :cond_b24
    const/4 v2, 0x0

    :goto_b25
    const-string v5, "bp"

    move/from16 v6, p3

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4944
    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move/from16 v18, v2

    move-object v2, v5

    const-string/jumbo v5, "w"

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4948
    .end local v7    # "linePrefix":Ljava/lang/String;
    .local v2, "linePrefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_b8e

    .line 4949
    move-object/from16 v5, v204

    move/from16 v7, v205

    .end local v204    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v205    # "iw":I
    .local v5, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v7, "iw":I
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v19, v2

    .end local v2    # "linePrefix":Ljava/lang/String;
    .local v19, "linePrefix":Ljava/lang/String;
    move-object/from16 v2, v17

    check-cast v2, Ljava/lang/String;

    .line 4950
    .local v2, "name":Ljava/lang/String;
    move-object/from16 v17, v5

    const/16 v5, 0x2c

    .end local v5    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v17    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    if-ltz v20, :cond_b63

    .line 4951
    move-object/from16 v108, v10

    const/16 v10, 0x5f

    .end local v10    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .local v108, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    invoke-virtual {v2, v5, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_b67

    .line 4950
    .end local v108    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .restart local v10    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_b63
    move-object/from16 v108, v10

    const/16 v10, 0x5f

    .line 4953
    .end local v10    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .restart local v108    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :goto_b67
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v109

    if-ltz v109, :cond_b73

    .line 4954
    invoke-virtual {v2, v5, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 4956
    :cond_b73
    const/16 v5, 0xd

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v109

    if-ltz v109, :cond_b7f

    .line 4957
    invoke-virtual {v2, v5, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 4959
    :cond_b7f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v2, v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string/jumbo v5, "wl"

    invoke-static {v0, v9, v14, v5, v10}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b96

    .line 4948
    .end local v7    # "iw":I
    .end local v17    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v19    # "linePrefix":Ljava/lang/String;
    .end local v108    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .local v2, "linePrefix":Ljava/lang/String;
    .restart local v10    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .restart local v204    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v205    # "iw":I
    :cond_b8e
    move-object/from16 v19, v2

    move-object/from16 v108, v10

    move-object/from16 v17, v204

    move/from16 v7, v205

    .line 4933
    .end local v2    # "linePrefix":Ljava/lang/String;
    .end local v8    # "pTimer":Landroid/os/BatteryStats$Timer;
    .end local v10    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v204    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v205    # "iw":I
    .restart local v7    # "iw":I
    .restart local v17    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :goto_b96
    add-int/lit8 v2, v7, -0x1

    move-object v7, v1

    move v1, v9

    move-object/from16 v10, v16

    const/16 v174, 0x1

    move-wide v8, v3

    move v3, v2

    move-object/from16 v2, v17

    .end local v7    # "iw":I
    .local v2, "iw":I
    goto/16 :goto_ae0

    .end local v9    # "uid":I
    .end local v16    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v17    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v1, "uid":I
    .local v2, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v3, "iw":I
    .local v7, "sb":Ljava/lang/StringBuilder;
    .local v8, "rawRealtime":J
    .local v10, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    :cond_ba4
    move-object/from16 v17, v2

    move-object/from16 v16, v10

    const/16 v18, 0x2

    move v10, v4

    move-wide/from16 v213, v8

    move v9, v1

    move-object v1, v7

    move v7, v3

    move-wide/from16 v3, v213

    .line 4964
    .end local v2    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "rawRealtime":J
    .end local v10    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v1, "sb":Ljava/lang/StringBuilder;
    .local v3, "rawRealtime":J
    .restart local v9    # "uid":I
    .restart local v16    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v17    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 4965
    .local v2, "mcTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v2, :cond_be0

    .line 4966
    nop

    .line 4967
    invoke-virtual {v2, v3, v4, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v7

    div-long v7, v7, v21

    .line 4968
    .local v7, "totalMcWakelockTimeMs":J
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    .line 4969
    .local v5, "countMcWakelock":I
    cmp-long v19, v7, v106

    if-lez v19, :cond_bdd

    .line 4970
    nop

    .line 4971
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v19, v2

    .end local v2    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .local v19, "mcTimer":Landroid/os/BatteryStats$Timer;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v10, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 4970
    const-string/jumbo v10, "wmc"

    invoke-static {v0, v9, v14, v10, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_be2

    .line 4969
    .end local v19    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .restart local v2    # "mcTimer":Landroid/os/BatteryStats$Timer;
    :cond_bdd
    move-object/from16 v19, v2

    .end local v2    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .restart local v19    # "mcTimer":Landroid/os/BatteryStats$Timer;
    goto :goto_be2

    .line 4965
    .end local v5    # "countMcWakelock":I
    .end local v7    # "totalMcWakelockTimeMs":J
    .end local v19    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .restart local v2    # "mcTimer":Landroid/os/BatteryStats$Timer;
    :cond_be0
    move-object/from16 v19, v2

    .line 4975
    .end local v2    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .restart local v19    # "mcTimer":Landroid/os/BatteryStats$Timer;
    :goto_be2
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v10

    .line 4976
    .local v10, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/16 v174, 0x1

    add-int/lit8 v2, v2, -0x1

    .local v2, "isy":I
    :goto_bee
    if-ltz v2, :cond_c7a

    .line 4977
    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v108

    move-object/from16 v5, v108

    check-cast v5, Landroid/os/BatteryStats$Timer;

    .line 4979
    .local v5, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v5, v3, v4, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v179

    add-long v179, v179, v99

    div-long v179, v179, v21

    .line 4980
    .local v179, "totalTime":J
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v108

    .line 4981
    .local v108, "count":I
    invoke-virtual {v5}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v7

    .line 4982
    .local v7, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v7, :cond_c0f

    .line 4983
    invoke-virtual {v7, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v181

    goto :goto_c11

    :cond_c0f
    const-wide/16 v181, -0x1

    .line 4984
    .local v181, "bgTime":J
    :goto_c11
    if-eqz v7, :cond_c1a

    invoke-virtual {v7, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v8

    move/from16 v109, v8

    goto :goto_c1c

    :cond_c1a
    const/16 v109, -0x1

    .line 4985
    .local v109, "bgCount":I
    :goto_c1c
    cmp-long v8, v179, v106

    if-eqz v8, :cond_c64

    .line 4986
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v176, v15

    move-object/from16 v15, v185

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v183

    move/from16 v184, v2

    .end local v2    # "isy":I
    .local v184, "isy":I
    move-object/from16 v2, v183

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4987
    invoke-static/range {v179 .. v180}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v183, v5

    .end local v5    # "timer":Landroid/os/BatteryStats$Timer;
    .local v183, "timer":Landroid/os/BatteryStats$Timer;
    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v185, v7

    .end local v7    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .local v185, "bgTimer":Landroid/os/BatteryStats$Timer;
    invoke-static/range {v181 .. v182}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v186, v10

    .end local v10    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v186, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-static/range {v109 .. v109}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v2, v8, v5, v7, v10}, [Ljava/lang/Object;

    move-result-object v2

    .line 4986
    const-string/jumbo v5, "sy"

    invoke-static {v0, v9, v14, v5, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c70

    .line 4985
    .end local v183    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v184    # "isy":I
    .end local v185    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v186    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v2    # "isy":I
    .restart local v5    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v7    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .restart local v10    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_c64
    move/from16 v184, v2

    move-object/from16 v183, v5

    move-object/from16 v186, v10

    move-object/from16 v176, v15

    move-object/from16 v15, v185

    move-object/from16 v185, v7

    .line 4976
    .end local v2    # "isy":I
    .end local v5    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v7    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v10    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v108    # "count":I
    .end local v109    # "bgCount":I
    .end local v179    # "totalTime":J
    .end local v181    # "bgTime":J
    .restart local v184    # "isy":I
    .restart local v186    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :goto_c70
    add-int/lit8 v2, v184, -0x1

    move-object/from16 v185, v15

    move-object/from16 v15, v176

    move-object/from16 v10, v186

    .end local v184    # "isy":I
    .restart local v2    # "isy":I
    goto/16 :goto_bee

    .end local v186    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v10    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_c7a
    move/from16 v184, v2

    move-object/from16 v186, v10

    move-object/from16 v176, v15

    move-object/from16 v15, v185

    .line 4991
    .end local v2    # "isy":I
    .end local v10    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v186    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v10

    .line 4992
    .local v10, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/16 v174, 0x1

    add-int/lit8 v2, v2, -0x1

    .local v2, "ij":I
    :goto_c8e
    if-ltz v2, :cond_d0e

    .line 4993
    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    .line 4995
    .restart local v5    # "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v5, v3, v4, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v7

    add-long v7, v7, v99

    div-long v7, v7, v21

    .line 4996
    .local v7, "totalTime":J
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v108

    .line 4997
    .restart local v108    # "count":I
    move-wide/from16 v179, v3

    .end local v3    # "rawRealtime":J
    .local v179, "rawRealtime":J
    invoke-virtual {v5}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 4998
    .local v3, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v3, :cond_caf

    .line 4999
    invoke-virtual {v3, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v183

    goto :goto_cb1

    :cond_caf
    const-wide/16 v183, -0x1

    .line 5000
    .local v183, "bgTime":J
    :goto_cb1
    if-eqz v3, :cond_cb8

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    goto :goto_cb9

    :cond_cb8
    const/4 v4, -0x1

    .line 5001
    .local v4, "bgCount":I
    :goto_cb9
    cmp-long v185, v7, v106

    if-eqz v185, :cond_cff

    .line 5002
    move-object/from16 v185, v3

    .end local v3    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .restart local v185    # "bgTimer":Landroid/os/BatteryStats$Timer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v187

    move/from16 v188, v2

    .end local v2    # "ij":I
    .local v188, "ij":I
    move-object/from16 v2, v187

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5003
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move/from16 v187, v4

    .end local v4    # "bgCount":I
    .local v187, "bgCount":I
    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v189, v5

    .end local v5    # "timer":Landroid/os/BatteryStats$Timer;
    .local v189, "timer":Landroid/os/BatteryStats$Timer;
    invoke-static/range {v183 .. v184}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-wide/from16 v190, v7

    .end local v7    # "totalTime":J
    .local v190, "totalTime":J
    invoke-static/range {v187 .. v187}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v2, v3, v4, v5, v7}, [Ljava/lang/Object;

    move-result-object v2

    .line 5002
    const-string/jumbo v3, "jb"

    invoke-static {v0, v9, v14, v3, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d09

    .line 5001
    .end local v185    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v187    # "bgCount":I
    .end local v188    # "ij":I
    .end local v189    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v190    # "totalTime":J
    .restart local v2    # "ij":I
    .restart local v3    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .restart local v4    # "bgCount":I
    .restart local v5    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v7    # "totalTime":J
    :cond_cff
    move/from16 v188, v2

    move-object/from16 v185, v3

    move/from16 v187, v4

    move-object/from16 v189, v5

    move-wide/from16 v190, v7

    .line 4992
    .end local v2    # "ij":I
    .end local v3    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v4    # "bgCount":I
    .end local v5    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v7    # "totalTime":J
    .end local v108    # "count":I
    .end local v183    # "bgTime":J
    .restart local v188    # "ij":I
    :goto_d09
    add-int/lit8 v2, v188, -0x1

    move-wide/from16 v3, v179

    .end local v188    # "ij":I
    .restart local v2    # "ij":I
    goto :goto_c8e

    .end local v179    # "rawRealtime":J
    .local v3, "rawRealtime":J
    :cond_d0e
    move/from16 v188, v2

    move-wide/from16 v179, v3

    .line 5007
    .end local v2    # "ij":I
    .end local v3    # "rawRealtime":J
    .restart local v179    # "rawRealtime":J
    invoke-static {}, Landroid/app/job/JobParameters;->getJobStopReasonCodes()[I

    move-result-object v2

    .line 5008
    .local v2, "jobStopReasonCodes":[I
    array-length v3, v2

    const/16 v174, 0x1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 5010
    .local v3, "jobCompletionArgs":[Ljava/lang/Object;
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v4

    .line 5011
    .local v4, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "ic":I
    :goto_d27
    if-ltz v5, :cond_d86

    .line 5012
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseIntArray;

    .line 5013
    .local v7, "types":Landroid/util/SparseIntArray;
    if-eqz v7, :cond_d7b

    .line 5014
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v108

    move-object/from16 v109, v4

    .end local v4    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .local v109, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    move-object/from16 v4, v108

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    aput-object v4, v3, v8

    .line 5015
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d54
    array-length v8, v2

    if-ge v4, v8, :cond_d70

    .line 5016
    add-int/lit8 v8, v4, 0x1

    move-object/from16 v108, v2

    .end local v2    # "jobStopReasonCodes":[I
    .local v108, "jobStopReasonCodes":[I
    aget v2, v108, v4

    move/from16 v181, v4

    const/4 v4, 0x0

    .end local v4    # "i":I
    .local v181, "i":I
    invoke-virtual {v7, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v8

    .line 5015
    add-int/lit8 v4, v181, 0x1

    move-object/from16 v2, v108

    const/4 v8, 0x0

    .end local v181    # "i":I
    .restart local v4    # "i":I
    goto :goto_d54

    .end local v108    # "jobStopReasonCodes":[I
    .restart local v2    # "jobStopReasonCodes":[I
    :cond_d70
    move-object/from16 v108, v2

    move/from16 v181, v4

    .line 5019
    .end local v2    # "jobStopReasonCodes":[I
    .end local v4    # "i":I
    .restart local v108    # "jobStopReasonCodes":[I
    const-string/jumbo v2, "jbc"

    invoke-static {v0, v9, v14, v2, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d7f

    .line 5013
    .end local v108    # "jobStopReasonCodes":[I
    .end local v109    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v2    # "jobStopReasonCodes":[I
    .local v4, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :cond_d7b
    move-object/from16 v108, v2

    move-object/from16 v109, v4

    .line 5011
    .end local v2    # "jobStopReasonCodes":[I
    .end local v4    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v7    # "types":Landroid/util/SparseIntArray;
    .restart local v108    # "jobStopReasonCodes":[I
    .restart local v109    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :goto_d7f
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v2, v108

    move-object/from16 v4, v109

    goto :goto_d27

    .end local v108    # "jobStopReasonCodes":[I
    .end local v109    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v2    # "jobStopReasonCodes":[I
    .restart local v4    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :cond_d86
    move-object/from16 v108, v2

    move-object/from16 v109, v4

    .line 5024
    .end local v2    # "jobStopReasonCodes":[I
    .end local v4    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v5    # "ic":I
    .restart local v108    # "jobStopReasonCodes":[I
    .restart local v109    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-virtual {v13, v1, v6}, Landroid/os/BatteryStats$Uid;->getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V

    .line 5025
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_da1

    .line 5026
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v4, "jbd"

    invoke-static {v0, v9, v14, v4, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5029
    :cond_da1
    const-string v4, "fla"

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    move v8, v6

    move v2, v9

    move-wide/from16 v6, v179

    const/16 v128, 0xd

    move-object v9, v3

    move-object v3, v14

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v14    # "category":Ljava/lang/String;
    .end local v179    # "rawRealtime":J
    .local v0, "sb":Ljava/lang/StringBuilder;
    .local v2, "uid":I
    .local v3, "category":Ljava/lang/String;
    .local v6, "rawRealtime":J
    .local v9, "jobCompletionArgs":[Ljava/lang/Object;
    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 5031
    move-wide v3, v6

    .end local v3    # "category":Ljava/lang/String;
    .restart local v14    # "category":Ljava/lang/String;
    const-string v4, "cam"

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object/from16 v1, p2

    move/from16 v8, p3

    move-object v3, v14

    .end local v14    # "category":Ljava/lang/String;
    .restart local v3    # "category":Ljava/lang/String;
    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 5033
    move-wide v3, v6

    .end local v3    # "category":Ljava/lang/String;
    .restart local v14    # "category":Ljava/lang/String;
    const-string/jumbo v4, "vid"

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object v3, v14

    .end local v14    # "category":Ljava/lang/String;
    .restart local v3    # "category":Ljava/lang/String;
    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 5035
    move-wide v3, v6

    .end local v3    # "category":Ljava/lang/String;
    .restart local v14    # "category":Ljava/lang/String;
    const-string v4, "aud"

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object v3, v14

    .end local v14    # "category":Ljava/lang/String;
    .restart local v3    # "category":Ljava/lang/String;
    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 5038
    move-wide v3, v6

    move v6, v8

    .end local v6    # "rawRealtime":J
    .local v3, "rawRealtime":J
    .restart local v14    # "category":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v5

    .line 5039
    .local v5, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 5040
    .local v7, "NSE":I
    const/4 v8, 0x0

    .local v8, "ise":I
    :goto_de6
    if-ge v8, v7, :cond_e58

    .line 5041
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v179

    check-cast v179, Landroid/os/BatteryStats$Uid$Sensor;

    .line 5042
    .local v179, "se":Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v180

    .line 5043
    .local v180, "sensorNumber":I
    move-object/from16 v181, v5

    .end local v5    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .local v181, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v179 .. v179}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    .line 5044
    .local v5, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v5, :cond_e4f

    .line 5046
    invoke-virtual {v5, v3, v4, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v182

    add-long v182, v182, v99

    div-long v182, v182, v21

    .line 5048
    .local v182, "totalTime":J
    cmp-long v184, v182, v106

    if-eqz v184, :cond_e4c

    .line 5049
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v184

    .line 5050
    .local v184, "count":I
    move-wide/from16 v187, v3

    .end local v3    # "rawRealtime":J
    .local v187, "rawRealtime":J
    invoke-virtual/range {v179 .. v179}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 5051
    .local v3, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v3, :cond_e17

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    goto :goto_e18

    :cond_e17
    const/4 v4, 0x0

    .line 5053
    .local v4, "bgCount":I
    :goto_e18
    invoke-virtual {v5, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v189

    .line 5054
    .local v189, "actualTime":J
    if-eqz v3, :cond_e23

    .line 5055
    invoke-virtual {v3, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v193

    goto :goto_e25

    :cond_e23
    move-wide/from16 v193, v106

    .line 5056
    .local v193, "bgActualTime":J
    :goto_e25
    invoke-static/range {v180 .. v180}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v195

    invoke-static/range {v182 .. v183}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v196

    .line 5057
    invoke-static/range {v184 .. v184}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v197

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v198

    invoke-static/range {v189 .. v190}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v199

    invoke-static/range {v193 .. v194}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v200

    move-object/from16 v185, v3

    .end local v3    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .restart local v185    # "bgTimer":Landroid/os/BatteryStats$Timer;
    filled-new-array/range {v195 .. v200}, [Ljava/lang/Object;

    move-result-object v3

    .line 5056
    move/from16 v191, v4

    .end local v4    # "bgCount":I
    .local v191, "bgCount":I
    const-string/jumbo v4, "sr"

    invoke-static {v1, v2, v14, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e51

    .line 5048
    .end local v184    # "count":I
    .end local v185    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v187    # "rawRealtime":J
    .end local v189    # "actualTime":J
    .end local v191    # "bgCount":I
    .end local v193    # "bgActualTime":J
    .local v3, "rawRealtime":J
    :cond_e4c
    move-wide/from16 v187, v3

    .end local v3    # "rawRealtime":J
    .restart local v187    # "rawRealtime":J
    goto :goto_e51

    .line 5044
    .end local v182    # "totalTime":J
    .end local v187    # "rawRealtime":J
    .restart local v3    # "rawRealtime":J
    :cond_e4f
    move-wide/from16 v187, v3

    .line 5040
    .end local v3    # "rawRealtime":J
    .end local v5    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v179    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v180    # "sensorNumber":I
    .restart local v187    # "rawRealtime":J
    :goto_e51
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v181

    move-wide/from16 v3, v187

    goto :goto_de6

    .end local v181    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v187    # "rawRealtime":J
    .restart local v3    # "rawRealtime":J
    .local v5, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    :cond_e58
    move-wide/from16 v187, v3

    move-object/from16 v181, v5

    .line 5062
    .end local v3    # "rawRealtime":J
    .end local v5    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v8    # "ise":I
    .restart local v181    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .restart local v187    # "rawRealtime":J
    const-string/jumbo v4, "vib"

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move v8, v6

    move-object v3, v14

    move v14, v7

    move-wide/from16 v6, v187

    .end local v7    # "NSE":I
    .end local v187    # "rawRealtime":J
    .local v3, "category":Ljava/lang/String;
    .restart local v6    # "rawRealtime":J
    .local v14, "NSE":I
    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 5065
    move v1, v2

    move-object v2, v3

    move-wide v3, v6

    .end local v3    # "category":Ljava/lang/String;
    .local v1, "uid":I
    .local v2, "category":Ljava/lang/String;
    const-string v4, "fg"

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move/from16 v8, p3

    move-object v3, v2

    move v2, v1

    move-object/from16 v1, p2

    .end local v1    # "uid":I
    .local v2, "uid":I
    .restart local v3    # "category":Ljava/lang/String;
    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 5068
    move v1, v2

    move-object v2, v3

    move-wide v3, v6

    .end local v3    # "category":Ljava/lang/String;
    .restart local v1    # "uid":I
    .local v2, "category":Ljava/lang/String;
    const-string v4, "fgs"

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object v3, v2

    move v2, v1

    move-object/from16 v1, p2

    .end local v1    # "uid":I
    .local v2, "uid":I
    .restart local v3    # "category":Ljava/lang/String;
    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 5071
    move v5, v2

    move-object v2, v3

    move-wide v3, v6

    move v6, v8

    .end local v6    # "rawRealtime":J
    .local v2, "category":Ljava/lang/String;
    .local v3, "rawRealtime":J
    .local v5, "uid":I
    const/4 v7, 0x7

    new-array v8, v7, [Ljava/lang/Object;

    .line 5072
    .local v8, "stateTimes":[Ljava/lang/Object;
    const-wide/16 v178, 0x0

    .line 5073
    .local v178, "totalStateTime":J
    const/16 v180, 0x0

    move-object/from16 v182, v9

    move/from16 v9, v180

    move-wide/from16 v179, v178

    .end local v178    # "totalStateTime":J
    .local v9, "ips":I
    .local v179, "totalStateTime":J
    .local v182, "jobCompletionArgs":[Ljava/lang/Object;
    :goto_e9e
    if-ge v9, v7, :cond_eb4

    .line 5074
    invoke-virtual {v13, v9, v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v183

    .line 5075
    .local v183, "time":J
    add-long v179, v179, v183

    .line 5076
    add-long v187, v183, v99

    div-long v187, v187, v21

    invoke-static/range {v187 .. v188}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v8, v9

    .line 5073
    .end local v183    # "time":J
    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x7

    goto :goto_e9e

    .line 5078
    .end local v9    # "ips":I
    :cond_eb4
    cmp-long v7, v179, v106

    if-lez v7, :cond_ebe

    .line 5079
    const-string/jumbo v7, "st"

    invoke-static {v1, v5, v2, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5082
    :cond_ebe
    invoke-virtual {v13, v6}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v183

    .line 5083
    .local v183, "userCpuTimeUs":J
    invoke-virtual {v13, v6}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v187

    .line 5084
    .local v187, "systemCpuTimeUs":J
    cmp-long v7, v183, v106

    if-gtz v7, :cond_ed4

    cmp-long v7, v187, v106

    if-lez v7, :cond_ecf

    goto :goto_ed4

    :cond_ecf
    move-wide/from16 v189, v3

    move-object/from16 v3, v176

    goto :goto_eed

    .line 5085
    :cond_ed4
    :goto_ed4
    div-long v189, v183, v21

    invoke-static/range {v189 .. v190}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    div-long v189, v187, v21

    invoke-static/range {v189 .. v190}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 5086
    move-wide/from16 v189, v3

    move-object/from16 v3, v176

    .end local v3    # "rawRealtime":J
    .local v189, "rawRealtime":J
    filled-new-array {v7, v9, v3}, [Ljava/lang/Object;

    move-result-object v4

    .line 5085
    const-string v7, "cpu"

    invoke-static {v1, v5, v2, v7, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5090
    :goto_eed
    if-eqz v118, :cond_1002

    .line 5091
    invoke-virtual {v13, v6}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v4

    .line 5094
    .local v4, "cpuFreqTimeMs":[J
    if-eqz v4, :cond_f6e

    array-length v7, v4

    .line 5095
    invoke-virtual/range {v118 .. v118}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v9

    if-ne v7, v9, :cond_f6a

    .line 5096
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5097
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_f01
    array-length v9, v4

    if-ge v7, v9, :cond_f17

    .line 5098
    if-eqz v7, :cond_f0b

    const/16 v9, 0x2c

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5099
    :cond_f0b
    move/from16 v176, v7

    move-object v9, v8

    .end local v7    # "i":I
    .end local v8    # "stateTimes":[Ljava/lang/Object;
    .local v9, "stateTimes":[Ljava/lang/Object;
    .local v176, "i":I
    aget-wide v7, v4, v176

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5097
    add-int/lit8 v7, v176, 0x1

    move-object v8, v9

    .end local v176    # "i":I
    .restart local v7    # "i":I
    goto :goto_f01

    .end local v9    # "stateTimes":[Ljava/lang/Object;
    .restart local v8    # "stateTimes":[Ljava/lang/Object;
    :cond_f17
    move/from16 v176, v7

    move-object v9, v8

    .line 5101
    .end local v7    # "i":I
    .end local v8    # "stateTimes":[Ljava/lang/Object;
    .restart local v9    # "stateTimes":[Ljava/lang/Object;
    invoke-virtual {v13, v6}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v7

    .line 5102
    .local v7, "screenOffCpuFreqTimeMs":[J
    if-eqz v7, :cond_f44

    .line 5103
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_f21
    move-object/from16 v176, v3

    array-length v3, v7

    if-ge v8, v3, :cond_f3e

    .line 5104
    move-object/from16 v185, v7

    const/16 v3, 0x2c

    .end local v7    # "screenOffCpuFreqTimeMs":[J
    .local v185, "screenOffCpuFreqTimeMs":[J
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v191, v8

    move-object v3, v9

    .end local v8    # "i":I
    .end local v9    # "stateTimes":[Ljava/lang/Object;
    .local v3, "stateTimes":[Ljava/lang/Object;
    .local v191, "i":I
    aget-wide v8, v185, v191

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5103
    add-int/lit8 v8, v191, 0x1

    move-object v9, v3

    move-object/from16 v3, v176

    move-object/from16 v7, v185

    .end local v191    # "i":I
    .restart local v8    # "i":I
    goto :goto_f21

    .end local v3    # "stateTimes":[Ljava/lang/Object;
    .end local v185    # "screenOffCpuFreqTimeMs":[J
    .restart local v7    # "screenOffCpuFreqTimeMs":[J
    .restart local v9    # "stateTimes":[Ljava/lang/Object;
    :cond_f3e
    move-object/from16 v185, v7

    move/from16 v191, v8

    move-object v3, v9

    .end local v7    # "screenOffCpuFreqTimeMs":[J
    .end local v8    # "i":I
    .end local v9    # "stateTimes":[Ljava/lang/Object;
    .restart local v3    # "stateTimes":[Ljava/lang/Object;
    .restart local v185    # "screenOffCpuFreqTimeMs":[J
    goto :goto_f55

    .line 5107
    .end local v3    # "stateTimes":[Ljava/lang/Object;
    .end local v185    # "screenOffCpuFreqTimeMs":[J
    .restart local v7    # "screenOffCpuFreqTimeMs":[J
    .restart local v9    # "stateTimes":[Ljava/lang/Object;
    :cond_f44
    move-object/from16 v176, v3

    move-object/from16 v185, v7

    move-object v3, v9

    .end local v7    # "screenOffCpuFreqTimeMs":[J
    .end local v9    # "stateTimes":[Ljava/lang/Object;
    .restart local v3    # "stateTimes":[Ljava/lang/Object;
    .restart local v185    # "screenOffCpuFreqTimeMs":[J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_f4a
    array-length v8, v4

    if-ge v7, v8, :cond_f55

    .line 5108
    const-string v8, ",0"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5107
    add-int/lit8 v7, v7, 0x1

    goto :goto_f4a

    .line 5111
    .end local v7    # "i":I
    :cond_f55
    :goto_f55
    array-length v7, v4

    .line 5112
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "A"

    filled-new-array {v9, v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    .line 5111
    const-string v8, "ctf"

    invoke-static {v1, v5, v2, v8, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f71

    .line 5095
    .end local v3    # "stateTimes":[Ljava/lang/Object;
    .end local v185    # "screenOffCpuFreqTimeMs":[J
    .local v8, "stateTimes":[Ljava/lang/Object;
    :cond_f6a
    move-object/from16 v176, v3

    move-object v3, v8

    .end local v8    # "stateTimes":[Ljava/lang/Object;
    .restart local v3    # "stateTimes":[Ljava/lang/Object;
    goto :goto_f71

    .line 5094
    .end local v3    # "stateTimes":[Ljava/lang/Object;
    .restart local v8    # "stateTimes":[Ljava/lang/Object;
    :cond_f6e
    move-object/from16 v176, v3

    move-object v3, v8

    .line 5115
    .end local v8    # "stateTimes":[Ljava/lang/Object;
    .restart local v3    # "stateTimes":[Ljava/lang/Object;
    :goto_f71
    nop

    .line 5116
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v7

    new-array v7, v7, [J

    .line 5117
    .local v7, "timesInFreqMs":[J
    const/4 v8, 0x0

    .local v8, "procState":I
    :goto_f7d
    const/4 v9, 0x7

    if-ge v8, v9, :cond_ffb

    .line 5118
    invoke-virtual {v13, v7, v8}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v178

    if-eqz v178, :cond_fee

    .line 5119
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5120
    const/16 v76, 0x0

    move/from16 v9, v76

    .local v9, "i":I
    :goto_f8e
    move-object/from16 v76, v3

    .end local v3    # "stateTimes":[Ljava/lang/Object;
    .local v76, "stateTimes":[Ljava/lang/Object;
    array-length v3, v7

    if-ge v9, v3, :cond_fa8

    .line 5121
    if-eqz v9, :cond_f9a

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5122
    :cond_f9a
    move-object/from16 v191, v4

    .end local v4    # "cpuFreqTimeMs":[J
    .local v191, "cpuFreqTimeMs":[J
    aget-wide v3, v7, v9

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5120
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v76

    move-object/from16 v4, v191

    goto :goto_f8e

    .end local v191    # "cpuFreqTimeMs":[J
    .restart local v4    # "cpuFreqTimeMs":[J
    :cond_fa8
    move-object/from16 v191, v4

    .line 5124
    .end local v4    # "cpuFreqTimeMs":[J
    .end local v9    # "i":I
    .restart local v191    # "cpuFreqTimeMs":[J
    invoke-virtual {v13, v7, v8}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes([JI)Z

    move-result v3

    if-eqz v3, :cond_fc9

    .line 5125
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_fb1
    array-length v4, v7

    if-ge v3, v4, :cond_fc6

    .line 5126
    const/16 v9, 0x2c

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v193, v8

    .end local v8    # "procState":I
    .local v193, "procState":I
    aget-wide v8, v7, v3

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5125
    add-int/lit8 v3, v3, 0x1

    move/from16 v8, v193

    goto :goto_fb1

    .end local v193    # "procState":I
    .restart local v8    # "procState":I
    :cond_fc6
    move/from16 v193, v8

    .end local v3    # "i":I
    .end local v8    # "procState":I
    .restart local v193    # "procState":I
    goto :goto_fd7

    .line 5129
    .end local v193    # "procState":I
    .restart local v8    # "procState":I
    :cond_fc9
    move/from16 v193, v8

    .end local v8    # "procState":I
    .restart local v193    # "procState":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_fcc
    array-length v4, v7

    if-ge v3, v4, :cond_fd7

    .line 5130
    const-string v4, ",0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5129
    add-int/lit8 v3, v3, 0x1

    goto :goto_fcc

    .line 5133
    .end local v3    # "i":I
    :cond_fd7
    :goto_fd7
    sget-object v3, Landroid/os/BatteryStats$Uid;->UID_PROCESS_TYPES:[Ljava/lang/String;

    aget-object v3, v3, v193

    array-length v4, v7

    .line 5134
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v3, v4, v8}, [Ljava/lang/Object;

    move-result-object v3

    .line 5133
    const-string v4, "ctf"

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_ff4

    .line 5118
    .end local v76    # "stateTimes":[Ljava/lang/Object;
    .end local v191    # "cpuFreqTimeMs":[J
    .end local v193    # "procState":I
    .local v3, "stateTimes":[Ljava/lang/Object;
    .restart local v4    # "cpuFreqTimeMs":[J
    .restart local v8    # "procState":I
    :cond_fee
    move-object/from16 v76, v3

    move-object/from16 v191, v4

    move/from16 v193, v8

    .line 5117
    .end local v3    # "stateTimes":[Ljava/lang/Object;
    .end local v4    # "cpuFreqTimeMs":[J
    .end local v8    # "procState":I
    .restart local v76    # "stateTimes":[Ljava/lang/Object;
    .restart local v191    # "cpuFreqTimeMs":[J
    .restart local v193    # "procState":I
    :goto_ff4
    add-int/lit8 v8, v193, 0x1

    move-object/from16 v3, v76

    move-object/from16 v4, v191

    .end local v193    # "procState":I
    .restart local v8    # "procState":I
    goto :goto_f7d

    .end local v76    # "stateTimes":[Ljava/lang/Object;
    .end local v191    # "cpuFreqTimeMs":[J
    .restart local v3    # "stateTimes":[Ljava/lang/Object;
    .restart local v4    # "cpuFreqTimeMs":[J
    :cond_ffb
    move-object/from16 v76, v3

    move-object/from16 v191, v4

    move/from16 v193, v8

    .end local v3    # "stateTimes":[Ljava/lang/Object;
    .end local v4    # "cpuFreqTimeMs":[J
    .end local v8    # "procState":I
    .restart local v76    # "stateTimes":[Ljava/lang/Object;
    .restart local v191    # "cpuFreqTimeMs":[J
    .restart local v193    # "procState":I
    goto :goto_1006

    .line 5090
    .end local v7    # "timesInFreqMs":[J
    .end local v76    # "stateTimes":[Ljava/lang/Object;
    .end local v191    # "cpuFreqTimeMs":[J
    .end local v193    # "procState":I
    .local v8, "stateTimes":[Ljava/lang/Object;
    :cond_1002
    move-object/from16 v176, v3

    move-object/from16 v76, v8

    .line 5140
    .end local v8    # "stateTimes":[Ljava/lang/Object;
    .restart local v76    # "stateTimes":[Ljava/lang/Object;
    :goto_1006
    nop

    .line 5141
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v3

    .line 5142
    .local v3, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/16 v174, 0x1

    add-int/lit8 v4, v4, -0x1

    .local v4, "ipr":I
    :goto_1013
    if-ltz v4, :cond_1096

    .line 5143
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid$Proc;

    .line 5145
    .local v7, "ps":Landroid/os/BatteryStats$Uid$Proc;
    invoke-virtual {v7, v6}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v8

    .line 5146
    .local v8, "userMillis":J
    invoke-virtual {v7, v6}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v193

    .line 5147
    .local v193, "systemMillis":J
    invoke-virtual {v7, v6}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v195

    .line 5148
    .local v195, "foregroundMillis":J
    invoke-virtual {v7, v6}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v178

    .line 5149
    .local v178, "starts":I
    invoke-virtual {v7, v6}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v191

    .line 5150
    .local v191, "numCrashes":I
    invoke-virtual {v7, v6}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v197

    .line 5152
    .local v197, "numAnrs":I
    cmp-long v198, v8, v106

    if-nez v198, :cond_104b

    cmp-long v198, v193, v106

    if-nez v198, :cond_104b

    cmp-long v198, v195, v106

    if-nez v198, :cond_104b

    if-nez v178, :cond_104b

    if-nez v197, :cond_104b

    if-eqz v191, :cond_1046

    goto :goto_104b

    :cond_1046
    move-object/from16 v198, v0

    move-object/from16 v200, v3

    goto :goto_108e

    .line 5154
    :cond_104b
    :goto_104b
    move-object/from16 v198, v0

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .local v198, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v199

    move-object/from16 v200, v3

    .end local v3    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .local v200, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    move-object/from16 v3, v199

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v206

    .line 5155
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v207

    invoke-static/range {v193 .. v194}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v208

    invoke-static/range {v195 .. v196}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v209

    invoke-static/range {v178 .. v178}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v210

    invoke-static/range {v197 .. v197}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v211

    invoke-static/range {v191 .. v191}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v212

    filled-new-array/range {v206 .. v212}, [Ljava/lang/Object;

    move-result-object v0

    .line 5154
    const-string/jumbo v3, "pr"

    invoke-static {v1, v5, v2, v3, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5142
    .end local v7    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v8    # "userMillis":J
    .end local v178    # "starts":I
    .end local v191    # "numCrashes":I
    .end local v193    # "systemMillis":J
    .end local v195    # "foregroundMillis":J
    .end local v197    # "numAnrs":I
    :goto_108e
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v198

    move-object/from16 v3, v200

    goto/16 :goto_1013

    .end local v198    # "sb":Ljava/lang/StringBuilder;
    .end local v200    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    :cond_1096
    move-object/from16 v198, v0

    move-object/from16 v200, v3

    .line 5159
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v4    # "ipr":I
    .restart local v198    # "sb":Ljava/lang/StringBuilder;
    .restart local v200    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    nop

    .line 5160
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v0

    .line 5161
    .local v0, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/16 v174, 0x1

    add-int/lit8 v3, v3, -0x1

    .local v3, "ipkg":I
    :goto_10a7
    if-ltz v3, :cond_1173

    .line 5162
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Pkg;

    .line 5163
    .local v4, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    const/4 v7, 0x0

    .line 5164
    .local v7, "wakeups":I
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v8

    .line 5165
    .local v8, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/16 v174, 0x1

    add-int/lit8 v9, v9, -0x1

    .local v9, "iwa":I
    :goto_10bc
    if-ltz v9, :cond_10fa

    .line 5166
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v178

    move-object/from16 v191, v4

    .end local v4    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .local v191, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    move-object/from16 v4, v178

    check-cast v4, Landroid/os/BatteryStats$Counter;

    invoke-virtual {v4, v6}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v4

    .line 5167
    .local v4, "count":I
    add-int/2addr v7, v4

    .line 5168
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v178

    move/from16 v193, v4

    .end local v4    # "count":I
    .local v193, "count":I
    move-object/from16 v4, v178

    check-cast v4, Ljava/lang/String;

    move/from16 v178, v7

    move-object/from16 v20, v8

    const/16 v7, 0x5f

    const/16 v8, 0x2c

    .end local v7    # "wakeups":I
    .end local v8    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .local v20, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .local v178, "wakeups":I
    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 5169
    .local v4, "name":Ljava/lang/String;
    invoke-static/range {v193 .. v193}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v4, v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "wua"

    invoke-static {v1, v5, v2, v8, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5165
    .end local v4    # "name":Ljava/lang/String;
    .end local v193    # "count":I
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v8, v20

    move/from16 v7, v178

    move-object/from16 v4, v191

    goto :goto_10bc

    .end local v20    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v178    # "wakeups":I
    .end local v191    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .local v4, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .restart local v7    # "wakeups":I
    .restart local v8    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    :cond_10fa
    move-object/from16 v191, v4

    move/from16 v178, v7

    move-object/from16 v20, v8

    .line 5171
    .end local v4    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v7    # "wakeups":I
    .end local v8    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v9    # "iwa":I
    .restart local v20    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .restart local v178    # "wakeups":I
    .restart local v191    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    invoke-virtual/range {v191 .. v191}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v4

    .line 5172
    .local v4, "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/16 v174, 0x1

    add-int/lit8 v7, v7, -0x1

    .local v7, "isvc":I
    :goto_110c
    if-ltz v7, :cond_1165

    .line 5173
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 5174
    .local v8, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move-object/from16 v193, v10

    move-wide/from16 v9, v103

    .end local v10    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v103    # "batteryUptime":J
    .local v9, "batteryUptime":J
    .local v193, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v8, v9, v10, v6}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v103

    .line 5175
    .local v103, "startTime":J
    invoke-virtual {v8, v6}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v195

    .line 5176
    .local v195, "starts":I
    invoke-virtual {v8, v6}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v196

    .line 5177
    .local v196, "launches":I
    cmp-long v197, v103, v106

    if-nez v197, :cond_1132

    if-nez v195, :cond_1132

    if-eqz v196, :cond_112d

    goto :goto_1132

    :cond_112d
    move-object/from16 v197, v0

    move/from16 v199, v3

    goto :goto_115a

    .line 5178
    :cond_1132
    :goto_1132
    nop

    .line 5179
    invoke-static/range {v178 .. v178}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v206

    .line 5180
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v207

    .line 5181
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v208

    div-long v201, v103, v21

    .line 5182
    invoke-static/range {v201 .. v202}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v209

    .line 5183
    invoke-static/range {v195 .. v195}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v210

    .line 5184
    invoke-static/range {v196 .. v196}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v211

    move-object/from16 v197, v0

    .end local v0    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .local v197, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    filled-new-array/range {v206 .. v211}, [Ljava/lang/Object;

    move-result-object v0

    .line 5178
    move/from16 v199, v3

    .end local v3    # "ipkg":I
    .local v199, "ipkg":I
    const-string v3, "apk"

    invoke-static {v1, v5, v2, v3, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5172
    .end local v8    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v103    # "startTime":J
    .end local v195    # "starts":I
    .end local v196    # "launches":I
    :goto_115a
    add-int/lit8 v7, v7, -0x1

    move-wide/from16 v103, v9

    move-object/from16 v10, v193

    move-object/from16 v0, v197

    move/from16 v3, v199

    goto :goto_110c

    .end local v9    # "batteryUptime":J
    .end local v193    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v197    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v199    # "ipkg":I
    .restart local v0    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v3    # "ipkg":I
    .restart local v10    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v103, "batteryUptime":J
    :cond_1165
    move-object/from16 v197, v0

    move/from16 v199, v3

    move-object/from16 v193, v10

    move-wide/from16 v9, v103

    .line 5161
    .end local v0    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v3    # "ipkg":I
    .end local v4    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v7    # "isvc":I
    .end local v10    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v20    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v103    # "batteryUptime":J
    .end local v178    # "wakeups":I
    .end local v191    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .restart local v9    # "batteryUptime":J
    .restart local v193    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v197    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v199    # "ipkg":I
    add-int/lit8 v3, v199, -0x1

    move-object/from16 v10, v193

    .end local v199    # "ipkg":I
    .restart local v3    # "ipkg":I
    goto/16 :goto_10a7

    .end local v9    # "batteryUptime":J
    .end local v193    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v197    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v0    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v10    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v103    # "batteryUptime":J
    :cond_1173
    move-object/from16 v197, v0

    move/from16 v199, v3

    move-object/from16 v193, v10

    move-wide/from16 v9, v103

    const/16 v174, 0x1

    .line 4784
    .end local v0    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v3    # "ipkg":I
    .end local v5    # "uid":I
    .end local v10    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v13    # "u":Landroid/os/BatteryStats$Uid;
    .end local v14    # "NSE":I
    .end local v17    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v19    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .end local v76    # "stateTimes":[Ljava/lang/Object;
    .end local v102    # "mobileActiveCount":I
    .end local v103    # "batteryUptime":J
    .end local v108    # "jobStopReasonCodes":[I
    .end local v109    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v119    # "mobileBytesRx":J
    .end local v121    # "mobileBytesTx":J
    .end local v123    # "wifiBytesRx":J
    .end local v125    # "wifiBytesTx":J
    .end local v127    # "wifiScanCount":I
    .end local v129    # "mobilePacketsRx":J
    .end local v131    # "mobilePacketsTx":J
    .end local v133    # "mobileActiveTime":J
    .end local v135    # "mobileWakeup":J
    .end local v137    # "wifiPacketsRx":J
    .end local v139    # "wifiPacketsTx":J
    .end local v141    # "wifiWakeup":J
    .end local v143    # "btBytesRx":J
    .end local v145    # "btBytesTx":J
    .end local v147    # "mobileBytesBgRx":J
    .end local v149    # "mobileBytesBgTx":J
    .end local v151    # "wifiBytesBgRx":J
    .end local v153    # "wifiBytesBgTx":J
    .end local v155    # "mobilePacketsBgRx":J
    .end local v157    # "mobilePacketsBgTx":J
    .end local v159    # "wifiPacketsBgRx":J
    .end local v161    # "wifiPacketsBgTx":J
    .end local v163    # "fullWifiLockOnTime":J
    .end local v165    # "wifiScanTime":J
    .end local v167    # "wifiScanCountBg":I
    .end local v168    # "wifiScanActualTimeMs":J
    .end local v170    # "wifiScanActualTimeMsBg":J
    .end local v172    # "uidWifiRunningTime":J
    .end local v179    # "totalStateTime":J
    .end local v181    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v182    # "jobCompletionArgs":[Ljava/lang/Object;
    .end local v183    # "userCpuTimeUs":J
    .end local v186    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v187    # "systemCpuTimeUs":J
    .end local v192    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v200    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v9    # "batteryUptime":J
    :goto_117d
    add-int/lit8 v0, v117, 0x1

    move-object/from16 v14, p6

    move-object v8, v1

    move-wide/from16 v103, v9

    move-wide/from16 v108, v11

    move-object/from16 v113, v15

    move-object/from16 v10, v16

    move-object/from16 v13, v105

    move-object/from16 v15, v176

    move-wide/from16 v116, v189

    move-object/from16 v7, v198

    const/16 v12, 0x2c

    move/from16 v9, p4

    move-object v11, v2

    move/from16 v105, v70

    .end local v117    # "iu":I
    .local v0, "iu":I
    goto/16 :goto_78c

    .line 5189
    .end local v0    # "iu":I
    .end local v2    # "category":Ljava/lang/String;
    .end local v9    # "batteryUptime":J
    .end local v16    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v70    # "NU":I
    .end local v105    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v189    # "rawRealtime":J
    .end local v198    # "sb":Ljava/lang/StringBuilder;
    .local v1, "NU":I
    .local v7, "sb":Ljava/lang/StringBuilder;
    .local v10, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v11, "category":Ljava/lang/String;
    .local v13, "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v103    # "batteryUptime":J
    .local v108, "rawRealtimeMs":J
    .restart local v116    # "rawRealtime":J
    :cond_119b
    return-void
.end method

.method public final blacklist dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .registers 235
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "which"    # I
    .param p5, "reqUid"    # I
    .param p6, "wifiOnly"    # Z
    .param p7, "dumpHelper"    # Landroid/os/BatteryStats$BatteryStatsDumpHelper;

    .line 5216
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, p3

    move/from16 v5, p4

    if-eqz v5, :cond_27

    .line 5217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: BatteryStats.dump called for which type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but only STATS_SINCE_CHARGED is supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5219
    return-void

    .line 5222
    :cond_27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v9, 0x3e8

    mul-long v11, v2, v9

    .line 5223
    .local v11, "rawUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-long v13, v2, v9

    .line 5224
    .local v13, "rawRealtime":J
    const-wide/16 v15, 0x1f4

    add-long v2, v13, v15

    div-long v17, v2, v9

    .line 5225
    .local v17, "rawRealtimeMs":J
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v2

    .line 5227
    .local v2, "batteryUptime":J
    move-wide/from16 v19, v9

    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v9

    .line 5228
    .local v9, "whichBatteryUptime":J
    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v7

    .line 5229
    .local v7, "whichBatteryRealtime":J
    move-wide/from16 v21, v2

    .end local v2    # "batteryUptime":J
    .local v21, "batteryUptime":J
    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v2

    .line 5230
    .local v2, "totalRealtime":J
    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v23

    .line 5231
    .local v23, "totalUptime":J
    move-wide/from16 v25, v9

    .end local v9    # "whichBatteryUptime":J
    .local v25, "whichBatteryUptime":J
    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v9

    .line 5232
    .local v9, "whichBatteryScreenOffUptime":J
    move-wide/from16 v27, v11

    .end local v11    # "rawUptime":J
    .local v27, "rawUptime":J
    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v11

    .line 5234
    .local v11, "whichBatteryScreenOffRealtime":J
    invoke-virtual {v0, v13, v14}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v29

    .line 5235
    .local v29, "batteryTimeRemaining":J
    invoke-virtual {v0, v13, v14}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v31

    .line 5236
    .local v31, "chargeTimeRemaining":J
    move-wide/from16 v33, v9

    .end local v9    # "whichBatteryScreenOffUptime":J
    .local v33, "whichBatteryScreenOffUptime":J
    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v9

    .line 5238
    .local v9, "screenDozeTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    move-wide/from16 v35, v15

    const/16 v15, 0x80

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5240
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v15

    .line 5241
    .local v15, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    move-object/from16 v16, v15

    .end local v15    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v16, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 5243
    .local v15, "NU":I
    move/from16 v37, v15

    .end local v15    # "NU":I
    .local v37, "NU":I
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v15

    .line 5244
    .local v15, "estimatedBatteryCapacity":I
    move-wide/from16 v38, v13

    .end local v13    # "rawRealtime":J
    .local v38, "rawRealtime":J
    const-string v13, " mAh"

    const/4 v14, 0x0

    if-lez v15, :cond_ad

    .line 5245
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5246
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5247
    const-string v14, "  Estimated battery capacity: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5248
    move-wide/from16 v40, v9

    .end local v9    # "screenDozeTime":J
    .local v40, "screenDozeTime":J
    int-to-double v9, v15

    invoke-static {v9, v10}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5249
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5250
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_af

    .line 5244
    .end local v40    # "screenDozeTime":J
    .restart local v9    # "screenDozeTime":J
    :cond_ad
    move-wide/from16 v40, v9

    .line 5253
    .end local v9    # "screenDozeTime":J
    .restart local v40    # "screenDozeTime":J
    :goto_af
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getLearnedBatteryCapacity()I

    move-result v9

    .line 5254
    .local v9, "lastLearnedBatteryCapacity":I
    if-lez v9, :cond_d7

    .line 5255
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5256
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5257
    const-string v10, "  Last learned battery capacity: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5258
    div-int/lit16 v10, v9, 0x3e8

    move v14, v9

    .end local v9    # "lastLearnedBatteryCapacity":I
    .local v14, "lastLearnedBatteryCapacity":I
    int-to-double v9, v10

    invoke-static {v9, v10}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5259
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5260
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d8

    .line 5254
    .end local v14    # "lastLearnedBatteryCapacity":I
    .restart local v9    # "lastLearnedBatteryCapacity":I
    :cond_d7
    move v14, v9

    .line 5262
    .end local v9    # "lastLearnedBatteryCapacity":I
    .restart local v14    # "lastLearnedBatteryCapacity":I
    :goto_d8
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v9

    .line 5263
    .local v9, "minLearnedBatteryCapacity":I
    if-lez v9, :cond_101

    .line 5264
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5265
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5266
    const-string v10, "  Min learned battery capacity: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5267
    div-int/lit16 v10, v9, 0x3e8

    move/from16 v42, v9

    .end local v9    # "minLearnedBatteryCapacity":I
    .local v42, "minLearnedBatteryCapacity":I
    int-to-double v9, v10

    invoke-static {v9, v10}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5268
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5269
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_103

    .line 5263
    .end local v42    # "minLearnedBatteryCapacity":I
    .restart local v9    # "minLearnedBatteryCapacity":I
    :cond_101
    move/from16 v42, v9

    .line 5271
    .end local v9    # "minLearnedBatteryCapacity":I
    .restart local v42    # "minLearnedBatteryCapacity":I
    :goto_103
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v9

    .line 5272
    .local v9, "maxLearnedBatteryCapacity":I
    if-lez v9, :cond_12c

    .line 5273
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5274
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5275
    const-string v10, "  Max learned battery capacity: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5276
    div-int/lit16 v10, v9, 0x3e8

    move/from16 v43, v9

    .end local v9    # "maxLearnedBatteryCapacity":I
    .local v43, "maxLearnedBatteryCapacity":I
    int-to-double v9, v10

    invoke-static {v9, v10}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5277
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5278
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12e

    .line 5272
    .end local v43    # "maxLearnedBatteryCapacity":I
    .restart local v9    # "maxLearnedBatteryCapacity":I
    :cond_12c
    move/from16 v43, v9

    .line 5281
    .end local v9    # "maxLearnedBatteryCapacity":I
    .restart local v43    # "maxLearnedBatteryCapacity":I
    :goto_12e
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5282
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5283
    const-string v9, "  Time on battery: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5284
    div-long v9, v7, v19

    invoke-static {v4, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v9, "("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5285
    invoke-virtual {v0, v7, v8, v2, v3}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5286
    const-string v10, ") realtime, "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5287
    move-wide/from16 v44, v2

    .end local v2    # "totalRealtime":J
    .local v44, "totalRealtime":J
    div-long v2, v25, v19

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5288
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v25

    .end local v25    # "whichBatteryUptime":J
    .local v2, "whichBatteryUptime":J
    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5289
    const-string v10, ") uptime"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5290
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5292
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5293
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5294
    const-string v10, "  Time on battery screen off: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5295
    nop

    .end local v2    # "whichBatteryUptime":J
    .restart local v25    # "whichBatteryUptime":J
    div-long v2, v11, v19

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5296
    invoke-virtual {v0, v11, v12, v7, v8}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5297
    const-string v2, ") realtime, "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5298
    div-long v2, v33, v19

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5299
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5300
    move-wide/from16 v2, v33

    .end local v33    # "whichBatteryScreenOffUptime":J
    .local v2, "whichBatteryScreenOffUptime":J
    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5301
    const-string v10, ") uptime"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5302
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5304
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5305
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5306
    const-string v10, "  Time on battery screen doze: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5307
    nop

    .end local v2    # "whichBatteryScreenOffUptime":J
    .restart local v33    # "whichBatteryScreenOffUptime":J
    div-long v2, v40, v19

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5308
    move-wide/from16 v2, v40

    .end local v40    # "screenDozeTime":J
    .local v2, "screenDozeTime":J
    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5309
    const-string v10, ")"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5310
    nop

    .end local v2    # "screenDozeTime":J
    .restart local v40    # "screenDozeTime":J
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5312
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5313
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5314
    const-string v2, "  Total run time: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5315
    div-long v2, v44, v19

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5316
    const-string/jumbo v2, "realtime, "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5317
    div-long v2, v23, v19

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5318
    const-string/jumbo v2, "uptime"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5319
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5320
    const-wide/16 v46, 0x0

    cmp-long v2, v29, v46

    if-ltz v2, :cond_21f

    .line 5321
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5322
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5323
    const-string v2, "  Battery time remaining: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5324
    div-long v2, v29, v19

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5325
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5327
    :cond_21f
    cmp-long v2, v31, v46

    if-ltz v2, :cond_23b

    .line 5328
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5329
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5330
    const-string v2, "  Charge time remaining: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5331
    div-long v2, v31, v19

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5332
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5335
    :cond_23b
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v2

    .line 5336
    .local v2, "dischargeCount":J
    cmp-long v48, v2, v46

    const-wide v49, 0x408f400000000000L    # 1000.0

    if-ltz v48, :cond_26b

    .line 5337
    move-wide/from16 v51, v11

    const/4 v11, 0x0

    .end local v11    # "whichBatteryScreenOffRealtime":J
    .local v51, "whichBatteryScreenOffRealtime":J
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5338
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5339
    const-string v11, "  Discharge: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5340
    long-to-double v11, v2

    div-double v11, v11, v49

    invoke-static {v11, v12}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5341
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5342
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26d

    .line 5336
    .end local v51    # "whichBatteryScreenOffRealtime":J
    .restart local v11    # "whichBatteryScreenOffRealtime":J
    :cond_26b
    move-wide/from16 v51, v11

    .line 5345
    .end local v11    # "whichBatteryScreenOffRealtime":J
    .restart local v51    # "whichBatteryScreenOffRealtime":J
    :goto_26d
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v11

    .line 5346
    .local v11, "dischargeScreenOffCount":J
    cmp-long v48, v11, v46

    if-ltz v48, :cond_298

    .line 5347
    move-wide/from16 v53, v2

    const/4 v2, 0x0

    .end local v2    # "dischargeCount":J
    .local v53, "dischargeCount":J
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5348
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5349
    const-string v2, "  Screen off discharge: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5350
    long-to-double v2, v11

    div-double v2, v2, v49

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5351
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5352
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_29a

    .line 5346
    .end local v53    # "dischargeCount":J
    .restart local v2    # "dischargeCount":J
    :cond_298
    move-wide/from16 v53, v2

    .line 5355
    .end local v2    # "dischargeCount":J
    .restart local v53    # "dischargeCount":J
    :goto_29a
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v2

    .line 5356
    .local v2, "dischargeScreenDozeCount":J
    cmp-long v48, v2, v46

    if-ltz v48, :cond_2c5

    .line 5357
    move-wide/from16 v55, v11

    const/4 v11, 0x0

    .end local v11    # "dischargeScreenOffCount":J
    .local v55, "dischargeScreenOffCount":J
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5358
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5359
    const-string v11, "  Screen doze discharge: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5360
    long-to-double v11, v2

    div-double v11, v11, v49

    invoke-static {v11, v12}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5361
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5362
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2c7

    .line 5356
    .end local v55    # "dischargeScreenOffCount":J
    .restart local v11    # "dischargeScreenOffCount":J
    :cond_2c5
    move-wide/from16 v55, v11

    .line 5365
    .end local v11    # "dischargeScreenOffCount":J
    .restart local v55    # "dischargeScreenOffCount":J
    :goto_2c7
    sub-long v11, v53, v55

    .line 5366
    .local v11, "dischargeScreenOnCount":J
    cmp-long v48, v11, v46

    if-ltz v48, :cond_2f0

    .line 5367
    move-wide/from16 v57, v2

    const/4 v2, 0x0

    .end local v2    # "dischargeScreenDozeCount":J
    .local v57, "dischargeScreenDozeCount":J
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5368
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5369
    const-string v2, "  Screen on discharge: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5370
    long-to-double v2, v11

    div-double v2, v2, v49

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5371
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5372
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2f2

    .line 5366
    .end local v57    # "dischargeScreenDozeCount":J
    .restart local v2    # "dischargeScreenDozeCount":J
    :cond_2f0
    move-wide/from16 v57, v2

    .line 5375
    .end local v2    # "dischargeScreenDozeCount":J
    .restart local v57    # "dischargeScreenDozeCount":J
    :goto_2f2
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v2

    .line 5376
    .local v2, "dischargeLightDozeCount":J
    cmp-long v48, v2, v46

    if-ltz v48, :cond_31d

    .line 5377
    move-wide/from16 v59, v11

    const/4 v11, 0x0

    .end local v11    # "dischargeScreenOnCount":J
    .local v59, "dischargeScreenOnCount":J
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5378
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5379
    const-string v11, "  Device light doze discharge: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5380
    long-to-double v11, v2

    div-double v11, v11, v49

    invoke-static {v11, v12}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5381
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5382
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_31f

    .line 5376
    .end local v59    # "dischargeScreenOnCount":J
    .restart local v11    # "dischargeScreenOnCount":J
    :cond_31d
    move-wide/from16 v59, v11

    .line 5385
    .end local v11    # "dischargeScreenOnCount":J
    .restart local v59    # "dischargeScreenOnCount":J
    :goto_31f
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v11

    .line 5386
    .local v11, "dischargeDeepDozeCount":J
    cmp-long v48, v11, v46

    if-ltz v48, :cond_34a

    .line 5387
    move-wide/from16 v61, v2

    const/4 v2, 0x0

    .end local v2    # "dischargeLightDozeCount":J
    .local v61, "dischargeLightDozeCount":J
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5388
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5389
    const-string v2, "  Device deep doze discharge: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5390
    long-to-double v2, v11

    div-double v2, v2, v49

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5391
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5392
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_34c

    .line 5386
    .end local v61    # "dischargeLightDozeCount":J
    .restart local v2    # "dischargeLightDozeCount":J
    :cond_34a
    move-wide/from16 v61, v2

    .line 5395
    .end local v2    # "dischargeLightDozeCount":J
    .restart local v61    # "dischargeLightDozeCount":J
    :goto_34c
    const-string v2, "  Start clock time: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5396
    const-string/jumbo v2, "yyyy-MM-dd-HH-mm-ss"

    move-wide/from16 v48, v11

    .end local v11    # "dischargeDeepDozeCount":J
    .local v48, "dischargeDeepDozeCount":J
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v11

    invoke-static {v2, v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5398
    move-wide/from16 v11, v38

    .end local v38    # "rawRealtime":J
    .local v11, "rawRealtime":J
    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v2

    .line 5399
    .local v2, "screenOnTime":J
    move/from16 v38, v14

    .end local v14    # "lastLearnedBatteryCapacity":I
    .local v38, "lastLearnedBatteryCapacity":I
    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v13

    .line 5400
    .local v13, "interactiveTime":J
    move-wide/from16 v63, v13

    .end local v13    # "interactiveTime":J
    .local v63, "interactiveTime":J
    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v13

    .line 5401
    .local v13, "powerSaveModeEnabledTime":J
    move/from16 v39, v15

    .end local v15    # "estimatedBatteryCapacity":I
    .local v39, "estimatedBatteryCapacity":I
    const/4 v15, 0x1

    move-wide/from16 v65, v13

    .end local v13    # "powerSaveModeEnabledTime":J
    .local v65, "powerSaveModeEnabledTime":J
    invoke-virtual {v0, v15, v11, v12, v5}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v13

    .line 5403
    .local v13, "deviceIdleModeLightTime":J
    const/4 v15, 0x2

    move-wide/from16 v67, v13

    .end local v13    # "deviceIdleModeLightTime":J
    .local v67, "deviceIdleModeLightTime":J
    invoke-virtual {v0, v15, v11, v12, v5}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v13

    .line 5405
    .local v13, "deviceIdleModeFullTime":J
    move-wide/from16 v69, v13

    const/4 v15, 0x1

    .end local v13    # "deviceIdleModeFullTime":J
    .local v69, "deviceIdleModeFullTime":J
    invoke-virtual {v0, v15, v11, v12, v5}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v13

    .line 5407
    .local v13, "deviceLightIdlingTime":J
    move-wide/from16 v71, v13

    const/4 v15, 0x2

    .end local v13    # "deviceLightIdlingTime":J
    .local v71, "deviceLightIdlingTime":J
    invoke-virtual {v0, v15, v11, v12, v5}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v13

    .line 5409
    .local v13, "deviceIdlingTime":J
    move-wide/from16 v73, v13

    .end local v13    # "deviceIdlingTime":J
    .local v73, "deviceIdlingTime":J
    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v13

    .line 5410
    .local v13, "phoneOnTime":J
    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v75

    .line 5411
    .local v75, "wifiRunningTime":J
    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v77

    .line 5412
    .local v77, "wifiOnTime":J
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5413
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5414
    const-string v15, "  Screen on: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v79, v13

    .end local v13    # "phoneOnTime":J
    .local v79, "phoneOnTime":J
    div-long v13, v2, v19

    invoke-static {v4, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5415
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5416
    const-string v13, ") "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getScreenOnCount(I)I

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5417
    const-string/jumbo v14, "x, Interactive: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v14, v63, v19

    invoke-static {v4, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5418
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, v63

    move-object/from16 v63, v13

    .end local v63    # "interactiveTime":J
    .local v14, "interactiveTime":J
    invoke-virtual {v0, v14, v15, v7, v8}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5419
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5420
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5421
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5422
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5423
    const-string v13, "  Screen brightnesses:"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5424
    const/4 v13, 0x0

    .line 5425
    .local v13, "didOne":Z
    const/16 v64, 0x0

    move/from16 v224, v64

    move/from16 v64, v13

    move/from16 v13, v224

    .local v13, "i":I
    .local v64, "didOne":Z
    :goto_404
    move-wide/from16 v81, v14

    .end local v14    # "interactiveTime":J
    .local v81, "interactiveTime":J
    const/4 v14, 0x5

    const-string v15, " "

    if-ge v13, v14, :cond_448

    .line 5426
    move-wide/from16 v83, v7

    .end local v7    # "whichBatteryRealtime":J
    .local v83, "whichBatteryRealtime":J
    invoke-virtual {v0, v13, v11, v12, v5}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v7

    .line 5427
    .local v7, "time":J
    cmp-long v14, v7, v46

    if-nez v14, :cond_418

    .line 5428
    move/from16 v85, v13

    goto :goto_441

    .line 5430
    :cond_418
    const-string v14, "\n    "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5431
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5432
    const/4 v14, 0x1

    .line 5433
    .end local v64    # "didOne":Z
    .local v14, "didOne":Z
    sget-object v64, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    move/from16 v85, v13

    .end local v13    # "i":I
    .local v85, "i":I
    aget-object v13, v64, v85

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5434
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5435
    move/from16 v64, v14

    .end local v14    # "didOne":Z
    .restart local v64    # "didOne":Z
    div-long v13, v7, v19

    invoke-static {v4, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5436
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5437
    invoke-virtual {v0, v7, v8, v2, v3}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5438
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5425
    .end local v7    # "time":J
    :goto_441
    add-int/lit8 v13, v85, 0x1

    move-wide/from16 v14, v81

    move-wide/from16 v7, v83

    .end local v85    # "i":I
    .restart local v13    # "i":I
    goto :goto_404

    .end local v83    # "whichBatteryRealtime":J
    .local v7, "whichBatteryRealtime":J
    :cond_448
    move-wide/from16 v83, v7

    move/from16 v85, v13

    .line 5440
    .end local v7    # "whichBatteryRealtime":J
    .end local v13    # "i":I
    .restart local v83    # "whichBatteryRealtime":J
    const-string v7, " (no activity)"

    if-nez v64, :cond_453

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5441
    :cond_453
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5442
    cmp-long v8, v65, v46

    if-eqz v8, :cond_48e

    .line 5443
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5444
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5445
    const-string v8, "  Power save mode enabled: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5446
    move-object v13, v15

    div-long v14, v65, v19

    invoke-static {v4, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5447
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5448
    move-wide/from16 v14, v65

    move-object/from16 v65, v9

    move-wide v8, v14

    move-wide/from16 v14, v83

    move-wide/from16 v83, v2

    .end local v2    # "screenOnTime":J
    .end local v65    # "powerSaveModeEnabledTime":J
    .local v8, "powerSaveModeEnabledTime":J
    .local v14, "whichBatteryRealtime":J
    .local v83, "screenOnTime":J
    invoke-virtual {v0, v8, v9, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5449
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5450
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_498

    .line 5442
    .end local v8    # "powerSaveModeEnabledTime":J
    .end local v14    # "whichBatteryRealtime":J
    .restart local v2    # "screenOnTime":J
    .restart local v65    # "powerSaveModeEnabledTime":J
    .local v83, "whichBatteryRealtime":J
    :cond_48e
    move-wide/from16 v13, v65

    move-object/from16 v65, v9

    move-wide v8, v13

    move-object v13, v15

    move-wide/from16 v14, v83

    move-wide/from16 v83, v2

    .line 5452
    .end local v2    # "screenOnTime":J
    .end local v65    # "powerSaveModeEnabledTime":J
    .restart local v8    # "powerSaveModeEnabledTime":J
    .restart local v14    # "whichBatteryRealtime":J
    .local v83, "screenOnTime":J
    :goto_498
    cmp-long v2, v71, v46

    const-string/jumbo v3, "x"

    if-eqz v2, :cond_4da

    .line 5453
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5454
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5455
    const-string v2, "  Device light idling: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5456
    move-wide/from16 v85, v8

    .end local v8    # "powerSaveModeEnabledTime":J
    .local v85, "powerSaveModeEnabledTime":J
    div-long v8, v71, v19

    invoke-static {v4, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5457
    move-object/from16 v8, v65

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5458
    move-object/from16 v65, v10

    move-wide/from16 v9, v71

    .end local v71    # "deviceLightIdlingTime":J
    .local v9, "deviceLightIdlingTime":J
    invoke-virtual {v0, v9, v10, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5459
    move-object/from16 v2, v63

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    .end local v9    # "deviceLightIdlingTime":J
    .restart local v71    # "deviceLightIdlingTime":J
    invoke-virtual {v0, v9, v5}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5460
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5461
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4e2

    .line 5452
    .end local v85    # "powerSaveModeEnabledTime":J
    .restart local v8    # "powerSaveModeEnabledTime":J
    :cond_4da
    move-wide/from16 v85, v8

    move-object/from16 v2, v63

    move-object/from16 v8, v65

    move-object/from16 v65, v10

    .line 5463
    .end local v8    # "powerSaveModeEnabledTime":J
    .restart local v85    # "powerSaveModeEnabledTime":J
    :goto_4e2
    cmp-long v9, v67, v46

    if-eqz v9, :cond_527

    .line 5464
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5465
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5466
    const-string v9, "  Idle mode light time: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5467
    div-long v9, v67, v19

    invoke-static {v4, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5468
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5469
    move-object/from16 v63, v13

    move-wide/from16 v9, v67

    .end local v67    # "deviceIdleModeLightTime":J
    .local v9, "deviceIdleModeLightTime":J
    invoke-virtual {v0, v9, v10, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5470
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5471
    const/4 v13, 0x1

    .end local v9    # "deviceIdleModeLightTime":J
    .restart local v67    # "deviceIdleModeLightTime":J
    invoke-virtual {v0, v13, v5}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5472
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5473
    const-string v9, " -- longest "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5474
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v9

    invoke-static {v4, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5475
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_529

    .line 5463
    :cond_527
    move-object/from16 v63, v13

    .line 5477
    :goto_529
    cmp-long v9, v73, v46

    if-eqz v9, :cond_55f

    .line 5478
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5479
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5480
    const-string v9, "  Device full idling: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5481
    div-long v9, v73, v19

    invoke-static {v4, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5482
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5483
    move-wide/from16 v9, v73

    .end local v73    # "deviceIdlingTime":J
    .local v9, "deviceIdlingTime":J
    invoke-virtual {v0, v9, v10, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5484
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x2

    .end local v9    # "deviceIdlingTime":J
    .restart local v73    # "deviceIdlingTime":J
    invoke-virtual {v0, v13, v5}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5485
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5486
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5488
    :cond_55f
    cmp-long v9, v69, v46

    if-eqz v9, :cond_5a1

    .line 5489
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5490
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5491
    const-string v9, "  Idle mode full time: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5492
    div-long v9, v69, v19

    invoke-static {v4, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5493
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5494
    move-wide/from16 v9, v69

    .end local v69    # "deviceIdleModeFullTime":J
    .local v9, "deviceIdleModeFullTime":J
    invoke-virtual {v0, v9, v10, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5495
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5496
    const/4 v13, 0x2

    .end local v9    # "deviceIdleModeFullTime":J
    .restart local v69    # "deviceIdleModeFullTime":J
    invoke-virtual {v0, v13, v5}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5497
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5498
    const-string v9, " -- longest "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5499
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v9

    invoke-static {v4, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5500
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5502
    :cond_5a1
    cmp-long v9, v79, v46

    if-eqz v9, :cond_5d0

    .line 5503
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5504
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5505
    const-string v9, "  Active phone call: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v9, v79, v19

    invoke-static {v4, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5506
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v79

    .end local v79    # "phoneOnTime":J
    .local v9, "phoneOnTime":J
    invoke-virtual {v0, v9, v10, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5507
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getPhoneOnCount(I)I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5d2

    .line 5502
    .end local v9    # "phoneOnTime":J
    .restart local v79    # "phoneOnTime":J
    :cond_5d0
    move-wide/from16 v9, v79

    .line 5509
    .end local v79    # "phoneOnTime":J
    .restart local v9    # "phoneOnTime":J
    :goto_5d2
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v13

    .line 5510
    .local v13, "connChanges":I
    if-eqz v13, :cond_5e6

    .line 5511
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5512
    move-object/from16 v79, v3

    const-string v3, "  Connectivity changes: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_5e8

    .line 5510
    :cond_5e6
    move-object/from16 v79, v3

    .line 5516
    :goto_5e8
    const-wide/16 v87, 0x0

    .line 5517
    .local v87, "fullWakeLockTimeTotalMicros":J
    const-wide/16 v89, 0x0

    .line 5519
    .local v89, "partialWakeLockTimeTotalMicros":J
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5521
    .local v3, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    const/16 v80, 0x0

    move-wide/from16 v91, v9

    move/from16 v9, v80

    .local v9, "iu":I
    .local v91, "phoneOnTime":J
    :goto_5f7
    move/from16 v10, v37

    .end local v37    # "NU":I
    .local v10, "NU":I
    if-ge v9, v10, :cond_683

    .line 5522
    move/from16 v37, v13

    move-object/from16 v13, v16

    .end local v16    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v13, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v37, "connChanges":I
    invoke-virtual {v13, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/BatteryStats$Uid;

    .line 5524
    .local v16, "u":Landroid/os/BatteryStats$Uid;
    nop

    .line 5525
    move/from16 v80, v9

    .end local v9    # "iu":I
    .local v80, "iu":I
    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v9

    .line 5526
    .local v9, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v93

    move-object/from16 v94, v13

    const/4 v13, 0x1

    .end local v13    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v94, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    add-int/lit8 v93, v93, -0x1

    move/from16 v13, v93

    .local v13, "iw":I
    :goto_617
    if-ltz v13, :cond_673

    .line 5527
    invoke-virtual {v9, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v93

    move/from16 v95, v10

    .end local v10    # "NU":I
    .local v95, "NU":I
    move-object/from16 v10, v93

    check-cast v10, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 5529
    .local v10, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    move-object/from16 v96, v2

    move-object/from16 v93, v7

    const/4 v7, 0x1

    invoke-virtual {v10, v7}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 5530
    .local v2, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v2, :cond_634

    .line 5531
    invoke-virtual {v2, v11, v12, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v97

    add-long v87, v87, v97

    .line 5535
    :cond_634
    move-object/from16 v103, v2

    const/4 v7, 0x0

    .end local v2    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    .local v103, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v10, v7}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 5536
    .local v2, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v2, :cond_668

    .line 5537
    invoke-virtual {v2, v11, v12, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v101

    .line 5539
    .local v101, "totalTimeMicros":J
    cmp-long v7, v101, v46

    if-lez v7, :cond_665

    .line 5540
    if-gez p5, :cond_660

    .line 5544
    new-instance v97, Landroid/os/BatteryStats$TimerEntry;

    invoke-virtual {v9, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v98, v7

    check-cast v98, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v99

    move-object/from16 v100, v2

    .end local v2    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .local v100, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    invoke-direct/range {v97 .. v102}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v2, v97

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_662

    .line 5540
    .end local v100    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .restart local v2    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    :cond_660
    move-object/from16 v100, v2

    .line 5547
    .end local v2    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .restart local v100    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    :goto_662
    add-long v89, v89, v101

    goto :goto_66a

    .line 5539
    .end local v100    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .restart local v2    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    :cond_665
    move-object/from16 v100, v2

    .end local v2    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .restart local v100    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    goto :goto_66a

    .line 5536
    .end local v100    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v101    # "totalTimeMicros":J
    .restart local v2    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    :cond_668
    move-object/from16 v100, v2

    .line 5526
    .end local v2    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v10    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v103    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    :goto_66a
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v7, v93

    move/from16 v10, v95

    move-object/from16 v2, v96

    goto :goto_617

    .end local v95    # "NU":I
    .local v10, "NU":I
    :cond_673
    move-object/from16 v96, v2

    move-object/from16 v93, v7

    move/from16 v95, v10

    .line 5521
    .end local v9    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v10    # "NU":I
    .end local v13    # "iw":I
    .end local v16    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v95    # "NU":I
    add-int/lit8 v9, v80, 0x1

    move/from16 v13, v37

    move-object/from16 v16, v94

    move/from16 v37, v95

    .end local v80    # "iu":I
    .local v9, "iu":I
    goto/16 :goto_5f7

    .end local v37    # "connChanges":I
    .end local v94    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v95    # "NU":I
    .restart local v10    # "NU":I
    .local v13, "connChanges":I
    .local v16, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    :cond_683
    move-object/from16 v96, v2

    move-object/from16 v93, v7

    move/from16 v80, v9

    move/from16 v95, v10

    move/from16 v37, v13

    move-object/from16 v94, v16

    .line 5553
    .end local v9    # "iu":I
    .end local v10    # "NU":I
    .end local v13    # "connChanges":I
    .end local v16    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v37    # "connChanges":I
    .restart local v94    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v95    # "NU":I
    move-object v7, v3

    const/4 v10, 0x0

    .end local v3    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v7, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-virtual {v0, v10, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 5554
    .local v2, "mobileRxTotalBytes":J
    move-wide/from16 v97, v11

    const/4 v13, 0x1

    .end local v11    # "rawRealtime":J
    .local v97, "rawRealtime":J
    invoke-virtual {v0, v13, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v10

    .line 5555
    .local v10, "mobileTxTotalBytes":J
    move-wide/from16 v99, v14

    const/4 v9, 0x2

    .end local v14    # "whichBatteryRealtime":J
    .local v99, "whichBatteryRealtime":J
    invoke-virtual {v0, v9, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v13

    .line 5556
    .local v13, "wifiRxTotalBytes":J
    const/4 v12, 0x3

    move-wide v15, v10

    .end local v10    # "mobileTxTotalBytes":J
    .local v15, "mobileTxTotalBytes":J
    invoke-virtual {v0, v12, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v9

    .line 5557
    .local v9, "wifiTxTotalBytes":J
    move-wide/from16 v101, v9

    const/4 v11, 0x0

    .end local v9    # "wifiTxTotalBytes":J
    .local v101, "wifiTxTotalBytes":J
    invoke-virtual {v0, v11, v5}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v9

    .line 5558
    .local v9, "mobileRxTotalPackets":J
    move-wide/from16 v103, v13

    const/4 v11, 0x1

    .end local v13    # "wifiRxTotalBytes":J
    .local v103, "wifiRxTotalBytes":J
    invoke-virtual {v0, v11, v5}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v12

    .line 5559
    .local v12, "mobileTxTotalPackets":J
    move-wide/from16 v105, v15

    const/4 v11, 0x2

    .end local v15    # "mobileTxTotalBytes":J
    .local v105, "mobileTxTotalBytes":J
    invoke-virtual {v0, v11, v5}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v14

    .line 5560
    .local v14, "wifiRxTotalPackets":J
    const/4 v11, 0x3

    move-wide/from16 v107, v14

    .end local v14    # "wifiRxTotalPackets":J
    .local v107, "wifiRxTotalPackets":J
    invoke-virtual {v0, v11, v5}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v14

    .line 5561
    .local v14, "wifiTxTotalPackets":J
    const/4 v11, 0x4

    move-wide/from16 v109, v14

    .end local v14    # "wifiTxTotalPackets":J
    .local v109, "wifiTxTotalPackets":J
    invoke-virtual {v0, v11, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v14

    .line 5562
    .local v14, "btRxTotalBytes":J
    move-wide/from16 v111, v14

    const/4 v11, 0x5

    .end local v14    # "btRxTotalBytes":J
    .local v111, "btRxTotalBytes":J
    invoke-virtual {v0, v11, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v14

    .line 5564
    .local v14, "btTxTotalBytes":J
    cmp-long v16, v87, v46

    if-eqz v16, :cond_6f4

    .line 5565
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5566
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5567
    const-string v11, "  Total full wakelock time: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v113, v87, v35

    move-wide/from16 v115, v2

    .end local v2    # "mobileRxTotalBytes":J
    .local v115, "mobileRxTotalBytes":J
    div-long v2, v113, v19

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 5569
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6f6

    .line 5564
    .end local v115    # "mobileRxTotalBytes":J
    .restart local v2    # "mobileRxTotalBytes":J
    :cond_6f4
    move-wide/from16 v115, v2

    .line 5572
    .end local v2    # "mobileRxTotalBytes":J
    .restart local v115    # "mobileRxTotalBytes":J
    :goto_6f6
    cmp-long v2, v89, v46

    if-eqz v2, :cond_714

    .line 5573
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5574
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5575
    const-string v2, "  Total partial wakelock time: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v2, v89, v35

    div-long v2, v2, v19

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 5577
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5580
    :cond_714
    nop

    .line 5581
    move-wide/from16 v2, v97

    .end local v97    # "rawRealtime":J
    .local v2, "rawRealtime":J
    invoke-virtual {v0, v2, v3, v5}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v97

    .line 5582
    .local v97, "multicastWakeLockTimeTotalMicros":J
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v11

    .line 5583
    .local v11, "multicastWakeLockCountTotal":I
    cmp-long v16, v97, v46

    if-eqz v16, :cond_758

    .line 5584
    move-object/from16 v16, v7

    const/4 v7, 0x0

    .end local v7    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v16, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5585
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5586
    const-string v7, "  Total WiFi Multicast wakelock Count: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5587
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5588
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5590
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5591
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5592
    const-string v7, "  Total WiFi Multicast wakelock time: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5593
    add-long v113, v97, v35

    move-wide/from16 v117, v14

    .end local v14    # "btTxTotalBytes":J
    .local v117, "btTxTotalBytes":J
    div-long v14, v113, v19

    invoke-static {v4, v14, v15}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 5594
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_75c

    .line 5583
    .end local v16    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v117    # "btTxTotalBytes":J
    .restart local v7    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v14    # "btTxTotalBytes":J
    :cond_758
    move-object/from16 v16, v7

    move-wide/from16 v117, v14

    .line 5597
    .end local v7    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v14    # "btTxTotalBytes":J
    .restart local v16    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v117    # "btTxTotalBytes":J
    :goto_75c
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDisplayCount()I

    move-result v14

    .line 5598
    .local v14, "numDisplays":I
    const/4 v15, 0x1

    if-le v14, v15, :cond_8b2

    .line 5599
    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5600
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5601
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5602
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5603
    const-string v7, "  MULTI-DISPLAY POWER SUMMARY START"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5604
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5606
    const/4 v7, 0x0

    .local v7, "display":I
    :goto_77f
    if-ge v7, v14, :cond_887

    .line 5607
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5608
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5609
    const-string v15, "  Display "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5610
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5611
    const-string v15, " Statistics:"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5612
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5614
    move/from16 v80, v14

    .end local v14    # "numDisplays":I
    .local v80, "numDisplays":I
    invoke-virtual {v0, v7, v2, v3}, Landroid/os/BatteryStats;->getDisplayScreenOnTime(IJ)J

    move-result-wide v14

    .line 5615
    .local v14, "displayScreenOnTime":J
    move/from16 v113, v11

    const/4 v11, 0x0

    .end local v11    # "multicastWakeLockCountTotal":I
    .local v113, "multicastWakeLockCountTotal":I
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5616
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5617
    const-string v11, "    Screen on: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5618
    move-wide/from16 v119, v12

    .end local v12    # "mobileTxTotalPackets":J
    .local v119, "mobileTxTotalPackets":J
    div-long v11, v14, v19

    invoke-static {v4, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5619
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5620
    move-wide/from16 v11, v99

    .end local v99    # "whichBatteryRealtime":J
    .local v11, "whichBatteryRealtime":J
    invoke-virtual {v0, v14, v15, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5621
    move-object/from16 v13, v96

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5622
    move-wide/from16 v99, v9

    .end local v9    # "mobileRxTotalPackets":J
    .local v99, "mobileRxTotalPackets":J
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5624
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5625
    const-string v9, "    Screen brightness levels:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5626
    const/4 v9, 0x0

    .line 5627
    .end local v64    # "didOne":Z
    .local v9, "didOne":Z
    const/4 v10, 0x0

    move/from16 v64, v9

    .end local v9    # "didOne":Z
    .local v10, "bin":I
    .restart local v64    # "didOne":Z
    :goto_7de
    const/4 v9, 0x5

    if-ge v10, v9, :cond_829

    .line 5628
    move-wide/from16 v121, v11

    .end local v11    # "whichBatteryRealtime":J
    .local v121, "whichBatteryRealtime":J
    invoke-virtual {v0, v7, v10, v2, v3}, Landroid/os/BatteryStats;->getDisplayScreenBrightnessTime(IIJ)J

    move-result-wide v11

    .line 5629
    .local v11, "timeUs":J
    cmp-long v9, v11, v46

    if-nez v9, :cond_7f2

    .line 5630
    move-object/from16 v96, v63

    move-object/from16 v9, v65

    move/from16 v63, v10

    goto :goto_820

    .line 5632
    :cond_7f2
    const/16 v64, 0x1

    .line 5633
    const-string v9, "\n      "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5634
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5635
    sget-object v9, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v9, v9, v10

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5636
    move-object/from16 v9, v63

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5637
    move-object/from16 v96, v9

    move/from16 v63, v10

    .end local v10    # "bin":I
    .local v63, "bin":I
    div-long v9, v11, v19

    invoke-static {v4, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5638
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5639
    invoke-virtual {v0, v11, v12, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5640
    move-object/from16 v9, v65

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5627
    .end local v11    # "timeUs":J
    :goto_820
    add-int/lit8 v10, v63, 0x1

    move-object/from16 v65, v9

    move-object/from16 v63, v96

    move-wide/from16 v11, v121

    .end local v63    # "bin":I
    .restart local v10    # "bin":I
    goto :goto_7de

    .end local v121    # "whichBatteryRealtime":J
    .local v11, "whichBatteryRealtime":J
    :cond_829
    move-wide/from16 v121, v11

    move-object/from16 v96, v63

    move-object/from16 v9, v65

    move/from16 v63, v10

    .line 5642
    .end local v10    # "bin":I
    .end local v11    # "whichBatteryRealtime":J
    .restart local v121    # "whichBatteryRealtime":J
    if-nez v64, :cond_839

    move-object/from16 v10, v93

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_83b

    :cond_839
    move-object/from16 v10, v93

    .line 5643
    :goto_83b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5645
    invoke-virtual {v0, v7, v2, v3}, Landroid/os/BatteryStats;->getDisplayScreenDozeTime(IJ)J

    move-result-wide v11

    .line 5646
    .local v11, "displayScreenDozeTimeUs":J
    move/from16 v63, v7

    const/4 v7, 0x0

    .end local v7    # "display":I
    .local v63, "display":I
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5647
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5648
    const-string v7, "    Screen Doze: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5649
    move-wide/from16 v123, v14

    .end local v14    # "displayScreenOnTime":J
    .local v123, "displayScreenOnTime":J
    div-long v14, v11, v19

    invoke-static {v4, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5650
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5651
    move-wide/from16 v14, v121

    .end local v121    # "whichBatteryRealtime":J
    .local v14, "whichBatteryRealtime":J
    invoke-virtual {v0, v11, v12, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5652
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5653
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5606
    .end local v11    # "displayScreenDozeTimeUs":J
    .end local v123    # "displayScreenOnTime":J
    add-int/lit8 v7, v63, 0x1

    move-object/from16 v65, v9

    move-object/from16 v93, v10

    move-object/from16 v63, v96

    move-wide/from16 v9, v99

    move/from16 v11, v113

    move-object/from16 v96, v13

    move-wide/from16 v99, v14

    move/from16 v14, v80

    move-wide/from16 v12, v119

    .end local v63    # "display":I
    .restart local v7    # "display":I
    goto/16 :goto_77f

    .end local v80    # "numDisplays":I
    .end local v113    # "multicastWakeLockCountTotal":I
    .end local v119    # "mobileTxTotalPackets":J
    .local v9, "mobileRxTotalPackets":J
    .local v11, "multicastWakeLockCountTotal":I
    .restart local v12    # "mobileTxTotalPackets":J
    .local v14, "numDisplays":I
    .local v99, "whichBatteryRealtime":J
    :cond_887
    move/from16 v113, v11

    move-wide/from16 v119, v12

    move/from16 v80, v14

    move-object/from16 v13, v96

    move-wide/from16 v14, v99

    move-wide/from16 v99, v9

    move-object/from16 v96, v63

    move-object/from16 v9, v65

    move-object/from16 v10, v93

    move/from16 v63, v7

    .line 5655
    .end local v7    # "display":I
    .end local v9    # "mobileRxTotalPackets":J
    .end local v11    # "multicastWakeLockCountTotal":I
    .end local v12    # "mobileTxTotalPackets":J
    .local v14, "whichBatteryRealtime":J
    .restart local v80    # "numDisplays":I
    .local v99, "mobileRxTotalPackets":J
    .restart local v113    # "multicastWakeLockCountTotal":I
    .restart local v119    # "mobileTxTotalPackets":J
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5656
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5657
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5658
    const-string v7, "  MULTI-DISPLAY POWER SUMMARY END"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5659
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8c4

    .line 5598
    .end local v80    # "numDisplays":I
    .end local v113    # "multicastWakeLockCountTotal":I
    .end local v119    # "mobileTxTotalPackets":J
    .restart local v9    # "mobileRxTotalPackets":J
    .restart local v11    # "multicastWakeLockCountTotal":I
    .restart local v12    # "mobileTxTotalPackets":J
    .local v14, "numDisplays":I
    .local v99, "whichBatteryRealtime":J
    :cond_8b2
    move/from16 v113, v11

    move-wide/from16 v119, v12

    move/from16 v80, v14

    move-object/from16 v13, v96

    move-wide/from16 v14, v99

    move-wide/from16 v99, v9

    move-object/from16 v96, v63

    move-object/from16 v9, v65

    move-object/from16 v10, v93

    .line 5662
    .end local v9    # "mobileRxTotalPackets":J
    .end local v11    # "multicastWakeLockCountTotal":I
    .end local v12    # "mobileTxTotalPackets":J
    .local v14, "whichBatteryRealtime":J
    .restart local v80    # "numDisplays":I
    .local v99, "mobileRxTotalPackets":J
    .restart local v113    # "multicastWakeLockCountTotal":I
    .restart local v119    # "mobileTxTotalPackets":J
    :goto_8c4
    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5663
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5664
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5665
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5666
    const-string v7, "  CONNECTIVITY POWER SUMMARY START"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5667
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5669
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5670
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5671
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5672
    const-string v7, "  Logging duration for connectivity statistics: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5673
    div-long v11, v14, v19

    invoke-static {v4, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5674
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5676
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5677
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5678
    const-string v7, "  Cellular Statistics:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5679
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5681
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5682
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5683
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5684
    const-string v7, "     Cellular kernel active time: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5685
    invoke-virtual {v0, v2, v3, v5}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v11

    .line 5686
    .local v11, "mobileActiveTime":J
    move-wide/from16 v121, v2

    .end local v2    # "rawRealtime":J
    .local v121, "rawRealtime":J
    div-long v2, v11, v19

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5687
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5688
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5689
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5691
    nop

    .line 5692
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 5691
    move-object v2, v4

    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v4, "Cellular"

    move-object v3, v6

    move-object/from16 v65, v9

    move-object/from16 v93, v10

    move-wide/from16 v123, v11

    move-wide/from16 v125, v21

    move-object/from16 v7, v79

    move-wide/from16 v9, v115

    move-wide/from16 v11, v121

    move/from16 v6, p4

    .end local v21    # "batteryUptime":J
    .end local v115    # "mobileRxTotalBytes":J
    .end local v121    # "rawRealtime":J
    .local v9, "mobileRxTotalBytes":J
    .local v11, "rawRealtime":J
    .local v123, "mobileActiveTime":J
    .local v125, "batteryUptime":J
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 5694
    move-object v0, v2

    move-object v6, v3

    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v1, p2

    move-object v2, v0

    move-wide/from16 v4, v17

    move-object/from16 v0, p0

    move/from16 v7, p4

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "rawRealtimeMs":J
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .local v4, "rawRealtimeMs":J
    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats;->printCellularPerRatBreakdown(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 5696
    const-string v3, "     Cellular data received: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5697
    const-string v3, "     Cellular data sent: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v9, v105

    .end local v105    # "mobileTxTotalBytes":J
    .local v9, "mobileTxTotalBytes":J
    .restart local v115    # "mobileRxTotalBytes":J
    invoke-virtual {v0, v9, v10}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5698
    const-string v3, "     Cellular packets received: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v9, v99

    .end local v99    # "mobileRxTotalPackets":J
    .local v9, "mobileRxTotalPackets":J
    .restart local v105    # "mobileTxTotalBytes":J
    invoke-virtual {v1, v9, v10}, Ljava/io/PrintWriter;->println(J)V

    .line 5699
    const-string v3, "     Cellular packets sent: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v9, v119

    .end local v119    # "mobileTxTotalPackets":J
    .local v9, "mobileTxTotalPackets":J
    .restart local v99    # "mobileRxTotalPackets":J
    invoke-virtual {v1, v9, v10}, Ljava/io/PrintWriter;->println(J)V

    .line 5701
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5702
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5703
    const-string v3, "     Cellular Radio Access Technology:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5704
    const/4 v3, 0x0

    .line 5705
    .end local v64    # "didOne":Z
    .local v3, "didOne":Z
    const/16 v17, 0x0

    move/from16 v224, v17

    move/from16 v17, v3

    move/from16 v3, v224

    .local v3, "connType":I
    .local v17, "didOne":Z
    :goto_9bb
    move-wide/from16 v21, v4

    .end local v4    # "rawRealtimeMs":J
    .local v21, "rawRealtimeMs":J
    sget v4, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v3, v4, :cond_a54

    .line 5706
    invoke-virtual {v0, v3, v11, v12, v7}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v4

    .line 5707
    .local v4, "time":J
    cmp-long v18, v4, v46

    if-nez v18, :cond_9d1

    .line 5708
    move/from16 v18, v3

    move-wide/from16 v119, v9

    move-object/from16 v3, v96

    goto/16 :goto_a49

    .line 5710
    :cond_9d1
    move-wide/from16 v119, v9

    .end local v9    # "mobileTxTotalPackets":J
    .restart local v119    # "mobileTxTotalPackets":J
    const-string v9, "\n       "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5711
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5712
    const/4 v9, 0x1

    .line 5713
    .end local v17    # "didOne":Z
    .local v9, "didOne":Z
    sget-object v10, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    array-length v10, v10

    if-ge v3, v10, :cond_9e6

    .line 5714
    sget-object v10, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    aget-object v10, v10, v3

    goto :goto_9e8

    :cond_9e6
    const-string v10, "ERROR"

    .line 5713
    :goto_9e8
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5715
    move-object/from16 v10, v96

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5716
    move/from16 v17, v9

    move-object/from16 v63, v10

    .end local v9    # "didOne":Z
    .restart local v17    # "didOne":Z
    div-long v9, v4, v19

    invoke-static {v2, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5717
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5718
    invoke-virtual {v0, v4, v5, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5719
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5721
    const/16 v9, 0xd

    if-ne v3, v9, :cond_a43

    .line 5723
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats;->getNrNsaTime(J)J

    move-result-wide v9

    .line 5724
    .local v9, "nrNsaTime":J
    cmp-long v18, v9, v46

    if-eqz v18, :cond_a3c

    .line 5725
    move/from16 v18, v3

    .end local v3    # "connType":I
    .local v18, "connType":I
    const-string v3, "\n         "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5726
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5727
    const-string/jumbo v3, "nr_nsa"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5728
    move-object/from16 v3, v63

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5729
    move-wide/from16 v63, v4

    .end local v4    # "time":J
    .local v63, "time":J
    div-long v4, v9, v19

    invoke-static {v2, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5730
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5731
    invoke-virtual {v0, v9, v10, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5732
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a49

    .line 5724
    .end local v18    # "connType":I
    .end local v63    # "time":J
    .restart local v3    # "connType":I
    .restart local v4    # "time":J
    :cond_a3c
    move/from16 v18, v3

    move-object/from16 v3, v63

    move-wide/from16 v63, v4

    .end local v3    # "connType":I
    .end local v4    # "time":J
    .restart local v18    # "connType":I
    .restart local v63    # "time":J
    goto :goto_a49

    .line 5721
    .end local v9    # "nrNsaTime":J
    .end local v18    # "connType":I
    .end local v63    # "time":J
    .restart local v3    # "connType":I
    .restart local v4    # "time":J
    :cond_a43
    move/from16 v18, v3

    move-object/from16 v3, v63

    move-wide/from16 v63, v4

    .line 5705
    .end local v3    # "connType":I
    .end local v4    # "time":J
    .restart local v18    # "connType":I
    :goto_a49
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v96, v3

    move v3, v4

    move-wide/from16 v4, v21

    move-wide/from16 v9, v119

    .end local v18    # "connType":I
    .local v4, "connType":I
    goto/16 :goto_9bb

    .end local v4    # "connType":I
    .end local v119    # "mobileTxTotalPackets":J
    .restart local v3    # "connType":I
    .local v9, "mobileTxTotalPackets":J
    :cond_a54
    move/from16 v18, v3

    move-wide/from16 v119, v9

    move-object/from16 v3, v96

    .line 5736
    .end local v3    # "connType":I
    .end local v9    # "mobileTxTotalPackets":J
    .restart local v119    # "mobileTxTotalPackets":J
    if-nez v17, :cond_a62

    move-object/from16 v10, v93

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a64

    :cond_a62
    move-object/from16 v10, v93

    .line 5737
    :goto_a64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5739
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5740
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5741
    const-string v4, "     Cellular Rx signal strength (RSRP):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5742
    const-string/jumbo v4, "good (-108dBm to -98dBm): "

    const-string/jumbo v5, "great (greater than -98dBm): "

    const-string/jumbo v9, "very poor (less than -128dBm): "

    const-string/jumbo v1, "poor (-128dBm to -118dBm): "

    move-object/from16 v93, v10

    const-string/jumbo v10, "moderate (-118dBm to -108dBm): "

    filled-new-array {v9, v1, v10, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 5748
    .local v9, "cellularRxSignalStrengthDescription":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 5749
    .end local v17    # "didOne":Z
    .local v1, "didOne":Z
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v4

    array-length v5, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 5751
    .local v10, "numCellularRxBins":I
    const/4 v4, 0x0

    move/from16 v17, v1

    .end local v1    # "didOne":Z
    .local v4, "i":I
    .restart local v17    # "didOne":Z
    :goto_a9a
    if-ge v4, v10, :cond_add

    .line 5752
    move-object/from16 v18, v9

    move/from16 v63, v10

    .end local v9    # "cellularRxSignalStrengthDescription":[Ljava/lang/String;
    .end local v10    # "numCellularRxBins":I
    .local v18, "cellularRxSignalStrengthDescription":[Ljava/lang/String;
    .local v63, "numCellularRxBins":I
    invoke-virtual {v0, v4, v11, v12, v7}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v9

    .line 5753
    .local v9, "time":J
    cmp-long v1, v9, v46

    if-nez v1, :cond_aac

    .line 5754
    move-object/from16 v96, v3

    move v5, v4

    goto :goto_ad4

    .line 5756
    :cond_aac
    const-string v1, "\n       "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5757
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5758
    const/4 v1, 0x1

    .line 5759
    .end local v17    # "didOne":Z
    .restart local v1    # "didOne":Z
    aget-object v5, v18, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5760
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5761
    move-object/from16 v96, v3

    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    div-long v3, v9, v19

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5762
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5763
    invoke-virtual {v0, v9, v10, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5764
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v17, v1

    .line 5751
    .end local v1    # "didOne":Z
    .end local v9    # "time":J
    .restart local v17    # "didOne":Z
    :goto_ad4
    add-int/lit8 v4, v5, 0x1

    move-object/from16 v9, v18

    move/from16 v10, v63

    move-object/from16 v3, v96

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_a9a

    .end local v18    # "cellularRxSignalStrengthDescription":[Ljava/lang/String;
    .end local v63    # "numCellularRxBins":I
    .local v9, "cellularRxSignalStrengthDescription":[Ljava/lang/String;
    .restart local v10    # "numCellularRxBins":I
    :cond_add
    move-object/from16 v96, v3

    move v5, v4

    move-object/from16 v18, v9

    move/from16 v63, v10

    .line 5766
    .end local v4    # "i":I
    .end local v9    # "cellularRxSignalStrengthDescription":[Ljava/lang/String;
    .end local v10    # "numCellularRxBins":I
    .restart local v18    # "cellularRxSignalStrengthDescription":[Ljava/lang/String;
    .restart local v63    # "numCellularRxBins":I
    if-nez v17, :cond_aec

    move-object/from16 v10, v93

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_aee

    :cond_aec
    move-object/from16 v10, v93

    .line 5767
    :goto_aee
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5769
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5770
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5771
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5772
    const-string v1, "  Wifi Statistics:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5773
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5775
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5776
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5777
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5778
    const-string v1, "     Wifi kernel active time: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5779
    invoke-virtual {v0, v11, v12, v7}, Landroid/os/BatteryStats;->getWifiActiveTime(JI)J

    move-result-wide v4

    .line 5780
    .local v4, "wifiActiveTime":J
    div-long v6, v4, v19

    invoke-static {v2, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5781
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5782
    move-object/from16 v9, v65

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5783
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5785
    nop

    .line 5786
    move-wide v6, v4

    .end local v4    # "wifiActiveTime":J
    .local v6, "wifiActiveTime":J
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 5785
    const-string v4, "WiFi"

    move-object v1, v3

    move-wide/from16 v127, v21

    move-object/from16 v3, p3

    move-wide/from16 v21, v6

    move-object/from16 v7, v96

    move/from16 v6, p4

    .end local v6    # "wifiActiveTime":J
    .local v21, "wifiActiveTime":J
    .local v127, "rawRealtimeMs":J
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 5788
    move v5, v6

    move-object v6, v3

    const-string v3, "     Wifi data received: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v103

    .end local v103    # "wifiRxTotalBytes":J
    .local v3, "wifiRxTotalBytes":J
    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5789
    const-string v9, "     Wifi data sent: "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v101

    .end local v101    # "wifiTxTotalBytes":J
    .local v3, "wifiTxTotalBytes":J
    .restart local v103    # "wifiRxTotalBytes":J
    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5790
    const-string v9, "     Wifi packets received: "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v107

    .end local v107    # "wifiRxTotalPackets":J
    .local v3, "wifiRxTotalPackets":J
    .restart local v101    # "wifiTxTotalBytes":J
    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 5791
    const-string v9, "     Wifi packets sent: "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v109

    .end local v109    # "wifiTxTotalPackets":J
    .local v3, "wifiTxTotalPackets":J
    .restart local v107    # "wifiRxTotalPackets":J
    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 5793
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5794
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5795
    const-string v9, "     Wifi states:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5796
    const/4 v9, 0x0

    .line 5797
    .end local v17    # "didOne":Z
    .local v9, "didOne":Z
    const/16 v17, 0x0

    move/from16 v3, v17

    .local v3, "i":I
    .restart local v109    # "wifiTxTotalPackets":J
    :goto_b94
    const/16 v4, 0x8

    if-ge v3, v4, :cond_bd4

    .line 5798
    move v4, v9

    move-object/from16 v93, v10

    .end local v9    # "didOne":Z
    .local v4, "didOne":Z
    invoke-virtual {v0, v3, v11, v12, v5}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v9

    .line 5799
    .local v9, "time":J
    cmp-long v17, v9, v46

    if-nez v17, :cond_ba7

    .line 5800
    move/from16 v17, v3

    move v9, v4

    goto :goto_bcf

    .line 5802
    :cond_ba7
    move/from16 v17, v3

    .end local v3    # "i":I
    .local v17, "i":I
    const-string v3, "\n       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5803
    const/4 v3, 0x1

    .line 5804
    .end local v4    # "didOne":Z
    .local v3, "didOne":Z
    sget-object v4, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v17

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5805
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5806
    move/from16 v64, v3

    .end local v3    # "didOne":Z
    .restart local v64    # "didOne":Z
    div-long v3, v9, v19

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5807
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5808
    invoke-virtual {v0, v9, v10, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5809
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v64

    .line 5797
    .end local v64    # "didOne":Z
    .local v9, "didOne":Z
    :goto_bcf
    add-int/lit8 v3, v17, 0x1

    move-object/from16 v10, v93

    .end local v17    # "i":I
    .local v3, "i":I
    goto :goto_b94

    :cond_bd4
    move/from16 v17, v3

    move v4, v9

    move-object/from16 v93, v10

    .line 5811
    .end local v3    # "i":I
    .end local v9    # "didOne":Z
    .restart local v4    # "didOne":Z
    if-nez v4, :cond_be1

    move-object/from16 v10, v93

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_be3

    :cond_be1
    move-object/from16 v10, v93

    .line 5812
    :goto_be3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5814
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5815
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5816
    const-string v3, "     Wifi supplicant states:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5817
    const/4 v3, 0x0

    .line 5818
    .end local v4    # "didOne":Z
    .local v3, "didOne":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_bf8
    const/16 v9, 0xd

    if-ge v4, v9, :cond_c38

    .line 5819
    move-object/from16 v93, v10

    invoke-virtual {v0, v4, v11, v12, v5}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v9

    .line 5820
    .local v9, "time":J
    cmp-long v17, v9, v46

    if-nez v17, :cond_c09

    .line 5821
    move/from16 v96, v4

    goto :goto_c33

    .line 5823
    :cond_c09
    move/from16 v17, v3

    .end local v3    # "didOne":Z
    .local v17, "didOne":Z
    const-string v3, "\n       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5824
    const/4 v3, 0x1

    .line 5825
    .end local v17    # "didOne":Z
    .restart local v3    # "didOne":Z
    sget-object v17, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    move/from16 v64, v3

    .end local v3    # "didOne":Z
    .restart local v64    # "didOne":Z
    aget-object v3, v17, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5826
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5827
    move/from16 v96, v4

    .end local v4    # "i":I
    .local v96, "i":I
    div-long v3, v9, v19

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5828
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5829
    invoke-virtual {v0, v9, v10, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5830
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v64

    .line 5818
    .end local v9    # "time":J
    .end local v64    # "didOne":Z
    .restart local v3    # "didOne":Z
    :goto_c33
    add-int/lit8 v4, v96, 0x1

    move-object/from16 v10, v93

    .end local v96    # "i":I
    .restart local v4    # "i":I
    goto :goto_bf8

    :cond_c38
    move/from16 v17, v3

    move/from16 v96, v4

    move-object/from16 v93, v10

    .line 5832
    .end local v3    # "didOne":Z
    .end local v4    # "i":I
    .restart local v17    # "didOne":Z
    if-nez v17, :cond_c46

    move-object/from16 v10, v93

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c48

    :cond_c46
    move-object/from16 v10, v93

    .line 5833
    :goto_c48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5835
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5836
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5837
    const-string v3, "     Wifi Rx signal strength (RSSI):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5838
    const-string/jumbo v3, "good (-66.25dBm to -55dBm): "

    const-string/jumbo v4, "great (greater than -55dBm): "

    const-string/jumbo v9, "very poor (less than -88.75dBm): "

    move-object/from16 v96, v7

    const-string/jumbo v7, "poor (-88.75 to -77.5dBm): "

    const-string/jumbo v1, "moderate (-77.5dBm to -66.25dBm): "

    filled-new-array {v9, v7, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 5844
    .local v9, "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 5845
    .end local v17    # "didOne":Z
    .restart local v1    # "didOne":Z
    array-length v3, v9

    const/4 v4, 0x5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 5847
    .local v7, "numWifiRxBins":I
    const/4 v3, 0x0

    move/from16 v17, v1

    .end local v1    # "didOne":Z
    .local v3, "i":I
    .restart local v17    # "didOne":Z
    :goto_c7b
    if-ge v3, v7, :cond_cbc

    .line 5848
    move-object/from16 v64, v9

    move-object/from16 v93, v10

    .end local v9    # "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    .local v64, "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    invoke-virtual {v0, v3, v11, v12, v5}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v9

    .line 5849
    .local v9, "time":J
    cmp-long v1, v9, v46

    if-nez v1, :cond_c8c

    .line 5850
    move/from16 v114, v3

    goto :goto_cb5

    .line 5852
    :cond_c8c
    const-string v1, "\n    "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5853
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5854
    const/4 v1, 0x1

    .line 5855
    .end local v17    # "didOne":Z
    .restart local v1    # "didOne":Z
    const-string v4, "     "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5856
    aget-object v4, v64, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5857
    move/from16 v114, v3

    .end local v3    # "i":I
    .local v114, "i":I
    div-long v3, v9, v19

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5858
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5859
    invoke-virtual {v0, v9, v10, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5860
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v17, v1

    .line 5847
    .end local v1    # "didOne":Z
    .end local v9    # "time":J
    .restart local v17    # "didOne":Z
    :goto_cb5
    add-int/lit8 v3, v114, 0x1

    move-object/from16 v9, v64

    move-object/from16 v10, v93

    .end local v114    # "i":I
    .restart local v3    # "i":I
    goto :goto_c7b

    .end local v64    # "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    .local v9, "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    :cond_cbc
    move/from16 v114, v3

    move-object/from16 v64, v9

    move-object/from16 v93, v10

    .line 5862
    .end local v3    # "i":I
    .end local v9    # "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    .restart local v64    # "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    if-nez v17, :cond_cc9

    move-object/from16 v10, v93

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5863
    :cond_cc9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5865
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5866
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5867
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5868
    const-string v1, "  GPS Statistics:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5869
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5871
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5872
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5873
    const-string v1, "     GPS signal quality (Top 4 Average CN0):"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5874
    const-string/jumbo v1, "poor (less than 20 dBHz): "

    const-string/jumbo v4, "good (greater than 20 dBHz): "

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 5877
    .local v9, "gpsSignalQualityDescription":[Ljava/lang/String;
    array-length v1, v9

    const/4 v4, 0x2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 5880
    .local v10, "numGpsSignalQualityBins":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d05
    if-ge v1, v10, :cond_d3c

    .line 5881
    move-object/from16 v93, v9

    move/from16 v114, v10

    .end local v9    # "gpsSignalQualityDescription":[Ljava/lang/String;
    .end local v10    # "numGpsSignalQualityBins":I
    .local v93, "gpsSignalQualityDescription":[Ljava/lang/String;
    .local v114, "numGpsSignalQualityBins":I
    invoke-virtual {v0, v1, v11, v12, v5}, Landroid/os/BatteryStats;->getGpsSignalQualityTime(IJI)J

    move-result-wide v9

    .line 5882
    .local v9, "time":J
    const-string v4, "\n    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5883
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5884
    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5885
    aget-object v4, v93, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5886
    div-long v4, v9, v19

    invoke-static {v2, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5887
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5888
    invoke-virtual {v0, v9, v10, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5889
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5880
    .end local v9    # "time":J
    add-int/lit8 v1, v1, 0x1

    move/from16 v5, p4

    move-object/from16 v9, v93

    move/from16 v10, v114

    goto :goto_d05

    .end local v93    # "gpsSignalQualityDescription":[Ljava/lang/String;
    .end local v114    # "numGpsSignalQualityBins":I
    .local v9, "gpsSignalQualityDescription":[Ljava/lang/String;
    .restart local v10    # "numGpsSignalQualityBins":I
    :cond_d3c
    move-object/from16 v93, v9

    move/from16 v114, v10

    .line 5891
    .end local v1    # "i":I
    .end local v9    # "gpsSignalQualityDescription":[Ljava/lang/String;
    .end local v10    # "numGpsSignalQualityBins":I
    .restart local v93    # "gpsSignalQualityDescription":[Ljava/lang/String;
    .restart local v114    # "numGpsSignalQualityBins":I
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5893
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getGpsBatteryDrainMaMs()J

    move-result-wide v9

    .line 5894
    .local v9, "gpsBatteryDrainMaMs":J
    cmp-long v1, v9, v46

    if-lez v1, :cond_d81

    .line 5895
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5896
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5897
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5898
    const-string v1, "     GPS Battery Drain: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5899
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-double v4, v9

    const-wide v121, 0x414b774000000000L    # 3600000.0

    div-double v4, v4, v121

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5901
    const-string/jumbo v1, "mAh"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5902
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5905
    :cond_d81
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5906
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5907
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5908
    const-string v1, "  CONNECTIVITY POWER SUMMARY END"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5909
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5910
    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5912
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5913
    const-string v1, "  Bluetooth total received: "

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v4, v111

    .end local v111    # "btRxTotalBytes":J
    .local v4, "btRxTotalBytes":J
    invoke-virtual {v0, v4, v5}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5914
    const-string v1, ", sent: "

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v111, v9

    move-wide/from16 v9, v117

    .end local v117    # "btTxTotalBytes":J
    .local v9, "btTxTotalBytes":J
    .local v111, "gpsBatteryDrainMaMs":J
    invoke-virtual {v0, v9, v10}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5916
    move/from16 v1, p4

    invoke-virtual {v0, v11, v12, v1}, Landroid/os/BatteryStats;->getBluetoothScanTime(JI)J

    move-result-wide v117

    move-wide/from16 v121, v9

    .end local v9    # "btTxTotalBytes":J
    .local v121, "btTxTotalBytes":J
    div-long v9, v117, v19

    .line 5917
    .local v9, "bluetoothScanTimeMs":J
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5918
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5919
    const-string v0, "  Bluetooth scan time: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5920
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5922
    move-wide/from16 v117, v4

    .end local v4    # "btRxTotalBytes":J
    .local v117, "btRxTotalBytes":J
    const-string v4, "Bluetooth"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move-object v0, v6

    move v6, v1

    move-object v1, v3

    move-object v3, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 5925
    move-object v4, v2

    move-object v2, v3

    move v5, v6

    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5927
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Device battery use since last full charge"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5928
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    Amount discharged (lower bound): "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5929
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 5930
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    Amount discharged (upper bound): "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5931
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 5932
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    Amount discharged while screen on: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5933
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 5934
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    Amount discharged while screen off: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5935
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 5936
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    Amount discharged while screen doze: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5937
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 5938
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5941
    move-object/from16 v3, p7

    move-wide/from16 v129, v9

    const/4 v6, 0x1

    .end local v9    # "bluetoothScanTimeMs":J
    .local v129, "bluetoothScanTimeMs":J
    invoke-interface {v3, v0, v6}, Landroid/os/BatteryStats$BatteryStatsDumpHelper;->getBatteryUsageStats(Landroid/os/BatteryStats;Z)Landroid/os/BatteryUsageStats;

    move-result-object v9

    .line 5942
    .local v9, "stats":Landroid/os/BatteryUsageStats;
    invoke-virtual {v9, v1, v2}, Landroid/os/BatteryUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5944
    nop

    .line 5945
    invoke-virtual {v9}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/os/BatteryStats;->getUidMobileRadioStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 5946
    .local v10, "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    move-object/from16 v131, v9

    .end local v9    # "stats":Landroid/os/BatteryUsageStats;
    .local v131, "stats":Landroid/os/BatteryUsageStats;
    const-string v9, " ("

    move/from16 v132, v7

    .end local v7    # "numWifiRxBins":I
    .local v132, "numWifiRxBins":I
    const-string v7, ": "

    if-lez v6, :cond_f06

    .line 5947
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5948
    const-string v6, "  Per-app mobile ms per packet:"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5949
    const-wide/16 v133, 0x0

    .line 5950
    .local v133, "totalTime":J
    const/4 v6, 0x0

    move-wide/from16 v224, v133

    move-wide/from16 v133, v11

    move-wide/from16 v11, v224

    .local v6, "i":I
    .local v11, "totalTime":J
    .local v133, "rawRealtime":J
    :goto_e7e
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_edd

    .line 5951
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$UidMobileRadioStats;

    .line 5952
    .local v3, "mrs":Landroid/os/BatteryStats$UidMobileRadioStats;
    move/from16 v135, v6

    const/4 v6, 0x0

    .end local v6    # "i":I
    .local v135, "i":I
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5953
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5954
    const-string v6, "    Uid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5955
    iget v6, v3, Landroid/os/BatteryStats$UidMobileRadioStats;->uid:I

    invoke-static {v4, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 5956
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5957
    move-object/from16 v136, v7

    iget-wide v6, v3, Landroid/os/BatteryStats$UidMobileRadioStats;->millisecondsPerPacket:D

    invoke-static {v6, v7}, Landroid/os/BatteryStats;->formatValue(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5958
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5959
    iget-wide v6, v3, Landroid/os/BatteryStats$UidMobileRadioStats;->rxPackets:J

    move-wide/from16 v137, v6

    iget-wide v6, v3, Landroid/os/BatteryStats$UidMobileRadioStats;->txPackets:J

    add-long v6, v137, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5960
    const-string v6, " packets over "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5961
    iget-wide v6, v3, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveMs:J

    invoke-static {v4, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 5962
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5963
    iget v6, v3, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5964
    move-object/from16 v7, v79

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5965
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5966
    iget-wide v6, v3, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveMs:J

    add-long/2addr v11, v6

    .line 5950
    .end local v3    # "mrs":Landroid/os/BatteryStats$UidMobileRadioStats;
    add-int/lit8 v6, v135, 0x1

    move-object/from16 v3, p7

    move-object/from16 v7, v136

    .end local v135    # "i":I
    .restart local v6    # "i":I
    goto :goto_e7e

    :cond_edd
    move/from16 v135, v6

    move-object/from16 v136, v7

    .line 5968
    .end local v6    # "i":I
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5969
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5970
    const-string v3, "    TOTAL TIME: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5971
    invoke-static {v4, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5972
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5973
    invoke-virtual {v0, v11, v12, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5974
    move-object/from16 v7, v65

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5975
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5976
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_f0c

    .line 5946
    .end local v133    # "rawRealtime":J
    .local v11, "rawRealtime":J
    :cond_f06
    move-object/from16 v136, v7

    move-wide/from16 v133, v11

    move-object/from16 v7, v65

    .line 5979
    .end local v11    # "rawRealtime":J
    .restart local v133    # "rawRealtime":J
    :goto_f0c
    new-instance v3, Landroid/os/BatteryStats$1;

    invoke-direct {v3, v0}, Landroid/os/BatteryStats$1;-><init>(Landroid/os/BatteryStats;)V

    move-object v11, v3

    .line 5994
    .local v11, "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    const-string v12, " realtime"

    if-gez p5, :cond_112a

    .line 5995
    nop

    .line 5996
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v65

    .line 5997
    .local v65, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v65 .. v65}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_1001

    .line 5998
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6000
    .local v3, "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-interface/range {v65 .. v65}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v135

    if-eqz v135, :cond_f72

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v135

    check-cast v135, Ljava/util/Map$Entry;

    .line 6001
    .local v135, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v135 .. v135}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v137

    move-object/from16 v0, v137

    check-cast v0, Landroid/os/BatteryStats$Timer;

    .line 6002
    .local v0, "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v144, v6

    move-object/from16 v137, v7

    move-wide/from16 v6, v133

    .end local v133    # "rawRealtime":J
    .local v6, "rawRealtime":J
    invoke-static {v0, v6, v7, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v142

    .line 6003
    .local v142, "totalTimeMillis":J
    cmp-long v133, v142, v46

    if-lez v133, :cond_f67

    .line 6004
    new-instance v138, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface/range {v135 .. v135}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v133

    move-object/from16 v139, v133

    check-cast v139, Ljava/lang/String;

    const/16 v140, 0x0

    move-object/from16 v141, v0

    .end local v0    # "timer":Landroid/os/BatteryStats$Timer;
    .local v141, "timer":Landroid/os/BatteryStats$Timer;
    invoke-direct/range {v138 .. v143}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v0, v138

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f69

    .line 6003
    .end local v141    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v0    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_f67
    move-object/from16 v141, v0

    .line 6006
    .end local v0    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v135    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v142    # "totalTimeMillis":J
    :goto_f69
    move-object/from16 v0, p0

    move-wide/from16 v133, v6

    move-object/from16 v7, v137

    move-object/from16 v6, v144

    goto :goto_f2e

    .line 6007
    .end local v6    # "rawRealtime":J
    .restart local v133    # "rawRealtime":J
    :cond_f72
    move-object/from16 v137, v7

    move-wide/from16 v6, v133

    .end local v133    # "rawRealtime":J
    .restart local v6    # "rawRealtime":J
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_ff6

    .line 6008
    invoke-static {v3, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6009
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  All kernel wake locks:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6010
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f88
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_fe5

    .line 6011
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$TimerEntry;

    .line 6012
    .local v1, "timer":Landroid/os/BatteryStats$TimerEntry;
    move-wide/from16 v133, v6

    .end local v6    # "rawRealtime":J
    .restart local v133    # "rawRealtime":J
    const-string v6, ": "

    .line 6013
    .local v6, "linePrefix":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6014
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6015
    const-string v7, "  Kernel Wake lock "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6016
    iget-object v7, v1, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6017
    move-object v7, v1

    .end local v1    # "timer":Landroid/os/BatteryStats$TimerEntry;
    .local v7, "timer":Landroid/os/BatteryStats$TimerEntry;
    iget-object v1, v7, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move/from16 v135, v0

    move-object v0, v4

    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .local v0, "sb":Ljava/lang/StringBuilder;
    .local v135, "i":I
    const/4 v4, 0x0

    move-object/from16 v138, v7

    move-object/from16 v7, p2

    move-object/from16 v224, v10

    move-object v10, v2

    move-wide/from16 v225, v133

    move-object/from16 v134, v3

    move-object/from16 v133, v224

    move-wide/from16 v2, v225

    .end local v3    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v7    # "timer":Landroid/os/BatteryStats$TimerEntry;
    .end local v10    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .local v2, "rawRealtime":J
    .local v133, "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .local v134, "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v138, "timer":Landroid/os/BatteryStats$TimerEntry;
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6019
    .end local v6    # "linePrefix":Ljava/lang/String;
    .local v1, "linePrefix":Ljava/lang/String;
    move-object/from16 v4, v136

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_fd5

    .line 6020
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6022
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6010
    .end local v1    # "linePrefix":Ljava/lang/String;
    .end local v138    # "timer":Landroid/os/BatteryStats$TimerEntry;
    :cond_fd5
    add-int/lit8 v1, v135, 0x1

    move/from16 v5, p4

    move-object/from16 v136, v4

    move-object v4, v0

    move v0, v1

    move-object v1, v7

    move-wide v6, v2

    move-object v2, v10

    move-object/from16 v10, v133

    move-object/from16 v3, v134

    .end local v135    # "i":I
    .local v1, "i":I
    goto :goto_f88

    .end local v1    # "i":I
    .end local v2    # "rawRealtime":J
    .end local v133    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .end local v134    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v0, "i":I
    .restart local v3    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .local v6, "rawRealtime":J
    .restart local v10    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    :cond_fe5
    move/from16 v135, v0

    move-object/from16 v134, v3

    move-object v0, v4

    move-object/from16 v133, v10

    move-object/from16 v4, v136

    move-object v10, v2

    move-wide v2, v6

    move-object/from16 v7, p2

    .line 6025
    .end local v3    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "rawRealtime":J
    .end local v10    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .local v0, "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "rawRealtime":J
    .restart local v133    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .restart local v134    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    goto :goto_100d

    .line 6007
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "rawRealtime":J
    .end local v133    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .end local v134    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v3    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "rawRealtime":J
    .restart local v10    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    :cond_ff6
    move-object/from16 v134, v3

    move-object v0, v4

    move-object/from16 v133, v10

    move-object/from16 v4, v136

    move-object v10, v2

    move-wide v2, v6

    move-object v7, v1

    .end local v3    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "rawRealtime":J
    .end local v10    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "rawRealtime":J
    .restart local v133    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .restart local v134    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    goto :goto_100d

    .line 5997
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "rawRealtime":J
    .end local v134    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v10    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .local v133, "rawRealtime":J
    :cond_1001
    move-object v0, v10

    move-object v10, v2

    move-wide/from16 v2, v133

    move-object/from16 v133, v0

    move-object v0, v4

    move-object/from16 v137, v7

    move-object/from16 v4, v136

    move-object v7, v1

    .line 6029
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "rawRealtime":J
    .local v133, "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    :goto_100d
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_107e

    .line 6030
    move-object/from16 v1, v16

    .end local v16    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v1, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-static {v1, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6031
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  All partial wake locks:"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6032
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1021
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_106d

    .line 6033
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$TimerEntry;

    .line 6034
    .local v6, "timer":Landroid/os/BatteryStats$TimerEntry;
    move-object/from16 v16, v1

    const/4 v1, 0x0

    .end local v1    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v16    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6035
    const-string v1, "  Wake lock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6036
    iget v1, v6, Landroid/os/BatteryStats$TimerEntry;->mId:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 6037
    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6038
    iget-object v1, v6, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6039
    iget-object v1, v6, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move-object/from16 v136, v4

    const/4 v4, 0x0

    move-object/from16 v134, v6

    .end local v6    # "timer":Landroid/os/BatteryStats$TimerEntry;
    .local v134, "timer":Landroid/os/BatteryStats$TimerEntry;
    const-string v6, ": "

    move-object/from16 v135, v96

    move/from16 v96, v5

    move/from16 v5, p4

    .end local v5    # "i":I
    .restart local v96    # "i":I
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 6040
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6041
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6032
    .end local v134    # "timer":Landroid/os/BatteryStats$TimerEntry;
    add-int/lit8 v1, v96, 0x1

    move v5, v1

    move-object/from16 v1, v16

    move-object/from16 v96, v135

    move-object/from16 v4, v136

    .end local v96    # "i":I
    .local v1, "i":I
    goto :goto_1021

    .end local v16    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v1, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v5    # "i":I
    :cond_106d
    move-object/from16 v16, v1

    move-object/from16 v136, v4

    move-object/from16 v135, v96

    move/from16 v96, v5

    move/from16 v5, p4

    .line 6043
    .end local v1    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v5    # "i":I
    .restart local v16    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 6044
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    goto :goto_1084

    .line 6029
    :cond_107e
    move/from16 v5, p4

    move-object/from16 v136, v4

    move-object/from16 v135, v96

    .line 6047
    :goto_1084
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v96

    .line 6048
    .local v96, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v96 .. v96}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1136

    .line 6049
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  All wakeup reasons:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6050
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6051
    .local v1, "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-interface/range {v96 .. v96}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10a3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10d9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 6052
    .local v6, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v134

    move-wide/from16 v144, v2

    .end local v2    # "rawRealtime":J
    .local v144, "rawRealtime":J
    move-object/from16 v2, v134

    check-cast v2, Landroid/os/BatteryStats$Timer;

    .line 6053
    .local v2, "timer":Landroid/os/BatteryStats$Timer;
    new-instance v138, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v139, v3

    check-cast v139, Ljava/lang/String;

    .line 6054
    invoke-virtual {v2, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    move-object/from16 v141, v2

    .end local v2    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v141    # "timer":Landroid/os/BatteryStats$Timer;
    int-to-long v2, v3

    const/16 v140, 0x0

    move-wide/from16 v142, v2

    invoke-direct/range {v138 .. v143}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    .line 6053
    move-object/from16 v2, v138

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6055
    .end local v6    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v141    # "timer":Landroid/os/BatteryStats$Timer;
    move-wide/from16 v2, v144

    goto :goto_10a3

    .line 6056
    .end local v144    # "rawRealtime":J
    .local v2, "rawRealtime":J
    :cond_10d9
    move-wide/from16 v144, v2

    .end local v2    # "rawRealtime":J
    .restart local v144    # "rawRealtime":J
    invoke-static {v1, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6057
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10df
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1120

    .line 6058
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$TimerEntry;

    .line 6059
    .local v3, "timer":Landroid/os/BatteryStats$TimerEntry;
    const-string v134, ": "

    .line 6060
    .local v134, "linePrefix":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6061
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6062
    const-string v4, "  Wakeup reason "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6063
    iget-object v4, v3, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6064
    move-object v4, v1

    .end local v1    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v4, "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    iget-object v1, v3, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move-object v6, v4

    .end local v4    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v6, "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    const/4 v4, 0x0

    move-object/from16 v138, v6

    .end local v6    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v138, "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    const-string v6, ": "

    move/from16 v139, v2

    move-object/from16 v140, v3

    move-wide/from16 v2, v144

    .end local v3    # "timer":Landroid/os/BatteryStats$TimerEntry;
    .end local v144    # "rawRealtime":J
    .local v2, "rawRealtime":J
    .local v139, "i":I
    .local v140, "timer":Landroid/os/BatteryStats$TimerEntry;
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 6065
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6066
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6057
    .end local v134    # "linePrefix":Ljava/lang/String;
    .end local v140    # "timer":Landroid/os/BatteryStats$TimerEntry;
    add-int/lit8 v1, v139, 0x1

    move v2, v1

    move-object/from16 v1, v138

    .end local v139    # "i":I
    .local v1, "i":I
    goto :goto_10df

    .end local v138    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v1, "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v2, "i":I
    .restart local v144    # "rawRealtime":J
    :cond_1120
    move-object/from16 v138, v1

    move/from16 v139, v2

    move-wide/from16 v2, v144

    .line 6068
    .end local v1    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v144    # "rawRealtime":J
    .local v2, "rawRealtime":J
    .restart local v138    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    goto :goto_1136

    .line 5994
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "rawRealtime":J
    .end local v65    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v96    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v138    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v4, "sb":Ljava/lang/StringBuilder;
    .restart local v10    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .local v133, "rawRealtime":J
    :cond_112a
    move-object v0, v10

    move-object v10, v2

    move-wide/from16 v2, v133

    move-object/from16 v133, v0

    move-object v0, v4

    move-object/from16 v137, v7

    move-object/from16 v135, v96

    move-object v7, v1

    .line 6072
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "rawRealtime":J
    .local v133, "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    :cond_1136
    :goto_1136
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    move-result-object v1

    .line 6073
    .local v1, "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-lez v4, :cond_1184

    .line 6074
    const-string v4, "  Memory Stats"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6075
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1146
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_117e

    .line 6076
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6077
    const-string v6, "  Bandwidth "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6078
    move-object/from16 v65, v11

    .end local v11    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v65, "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-virtual {v1, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6079
    const-string v6, " Time "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6080
    invoke-virtual {v1, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v6, v2, v3, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6081
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6075
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v10, p3

    move-object/from16 v11, v65

    goto :goto_1146

    .end local v65    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v11    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    :cond_117e
    move-object/from16 v65, v11

    .line 6083
    .end local v4    # "i":I
    .end local v11    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v65    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    goto :goto_1186

    .line 6073
    .end local v65    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v11    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    :cond_1184
    move-object/from16 v65, v11

    .line 6086
    .end local v11    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v65    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    :goto_1186
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v10

    .line 6087
    .local v10, "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_121e

    .line 6088
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Resource Power Manager Stats"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6089
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1209

    .line 6090
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_11a6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11f7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v96, v4

    check-cast v96, Ljava/util/Map$Entry;

    .line 6091
    .local v96, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v96 .. v96}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6092
    .local v4, "timerName":Ljava/lang/String;
    invoke-interface/range {v96 .. v96}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Timer;

    .line 6093
    .local v6, "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v134, v137

    move-object/from16 v137, v12

    move-object/from16 v12, v134

    move-object/from16 v134, v1

    move-object/from16 v146, v135

    move-object v1, v0

    move-object v0, v7

    move-object/from16 v135, v10

    move-object v7, v4

    move-wide v3, v2

    move-object v2, v6

    move-object/from16 v6, p3

    move-wide/from16 v224, v14

    move-object/from16 v14, p0

    move-object/from16 v15, v79

    move-object/from16 v79, v11

    move-wide/from16 v10, v224

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "timerName":Ljava/lang/String;
    .end local v6    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v14    # "whichBatteryRealtime":J
    .local v1, "sb":Ljava/lang/StringBuilder;
    .local v2, "timer":Landroid/os/BatteryStats$Timer;
    .local v3, "rawRealtime":J
    .local v7, "timerName":Ljava/lang/String;
    .local v10, "whichBatteryRealtime":J
    .local v134, "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .local v135, "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    .line 6094
    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    move-wide v2, v3

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "rawRealtime":J
    .end local v7    # "timerName":Ljava/lang/String;
    .end local v96    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .local v2, "rawRealtime":J
    move-object/from16 v7, v79

    move-object/from16 v79, v15

    move-wide v14, v10

    move-object v11, v7

    move-object/from16 v7, v137

    move-object/from16 v137, v12

    move-object v12, v7

    move-object v7, v1

    move-object/from16 v1, v134

    move-object/from16 v10, v135

    move-object/from16 v135, v146

    goto :goto_11a6

    .line 6090
    .end local v134    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .end local v135    # "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v1, "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .local v10, "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v14    # "whichBatteryRealtime":J
    :cond_11f7
    move-object/from16 v11, v137

    move-object/from16 v137, v12

    move-object v12, v11

    move-object/from16 v134, v1

    move-object v1, v7

    move-object/from16 v146, v135

    move-object/from16 v135, v10

    move-wide v10, v14

    move-object/from16 v15, v79

    move-object/from16 v14, p0

    .end local v1    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .end local v14    # "whichBatteryRealtime":J
    .local v10, "whichBatteryRealtime":J
    .restart local v134    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .restart local v135    # "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    goto :goto_121a

    .line 6089
    .end local v134    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .end local v135    # "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v1    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .local v10, "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v14    # "whichBatteryRealtime":J
    :cond_1209
    move-object/from16 v11, v137

    move-object/from16 v137, v12

    move-object v12, v11

    move-object/from16 v134, v1

    move-object v1, v7

    move-object/from16 v146, v135

    move-object/from16 v135, v10

    move-wide v10, v14

    move-object/from16 v15, v79

    move-object/from16 v14, p0

    .line 6096
    .end local v1    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .end local v14    # "whichBatteryRealtime":J
    .local v10, "whichBatteryRealtime":J
    .restart local v134    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .restart local v135    # "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :goto_121a
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_122f

    .line 6087
    .end local v134    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .end local v135    # "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v1    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .local v10, "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v14    # "whichBatteryRealtime":J
    :cond_121e
    move-object/from16 v11, v137

    move-object/from16 v137, v12

    move-object v12, v11

    move-object/from16 v134, v1

    move-object v1, v7

    move-object/from16 v146, v135

    move-object/from16 v135, v10

    move-wide v10, v14

    move-object/from16 v15, v79

    move-object/from16 v14, p0

    .line 6114
    .end local v1    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .end local v14    # "whichBatteryRealtime":J
    .local v10, "whichBatteryRealtime":J
    .restart local v134    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .restart local v135    # "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :goto_122f
    invoke-virtual {v14}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v4

    .line 6115
    .local v4, "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    if-eqz v4, :cond_1295

    .line 6116
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6117
    const-string v6, "  CPU scaling: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6118
    invoke-virtual {v4}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v6

    move-object/from16 v79, v12

    array-length v12, v6

    move-object/from16 v96, v6

    const/4 v6, 0x0

    :goto_1248
    if-ge v6, v12, :cond_128a

    move/from16 v138, v6

    aget v6, v96, v138

    .line 6119
    .local v6, "policy":I
    move/from16 v139, v12

    const-string v12, " policy"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v140, v9

    const/16 v9, 0x3a

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6120
    invoke-virtual {v4, v6}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v9

    array-length v12, v9

    move-object/from16 v141, v4

    const/4 v4, 0x0

    .end local v4    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .local v141, "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    :goto_1269
    if-ge v4, v12, :cond_127f

    move/from16 v142, v4

    aget v4, v9, v142

    .line 6121
    .local v4, "frequency":I
    move/from16 v143, v6

    .end local v6    # "policy":I
    .local v143, "policy":I
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6120
    .end local v4    # "frequency":I
    add-int/lit8 v4, v142, 0x1

    move/from16 v6, v143

    goto :goto_1269

    .end local v143    # "policy":I
    .restart local v6    # "policy":I
    :cond_127f
    move/from16 v143, v6

    .line 6118
    .end local v6    # "policy":I
    add-int/lit8 v6, v138, 0x1

    move/from16 v12, v139

    move-object/from16 v9, v140

    move-object/from16 v4, v141

    goto :goto_1248

    .line 6125
    .end local v141    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .local v4, "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    :cond_128a
    move-object/from16 v141, v4

    move-object/from16 v140, v9

    .end local v4    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v141    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6126
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_129b

    .line 6115
    .end local v141    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v4    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    :cond_1295
    move-object/from16 v141, v4

    move-object/from16 v140, v9

    move-object/from16 v79, v12

    .line 6129
    .end local v4    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v141    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    :goto_129b
    const/4 v4, 0x0

    move v9, v4

    .local v9, "iu":I
    :goto_129d
    move/from16 v12, v95

    .end local v95    # "NU":I
    .local v12, "NU":I
    if-ge v9, v12, :cond_2384

    .line 6130
    move-object/from16 v4, v94

    .end local v94    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v4, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 6131
    .local v6, "uid":I
    if-ltz p5, :cond_12d7

    move/from16 v95, v12

    move/from16 v12, p5

    .end local v12    # "NU":I
    .restart local v95    # "NU":I
    if-eq v6, v12, :cond_12d9

    const/16 v12, 0x3e8

    if-eq v6, v12, :cond_12d9

    .line 6132
    move-object/from16 v6, p3

    move-wide/from16 v209, v2

    move-object/from16 v94, v4

    move-object/from16 v163, v8

    move/from16 v145, v9

    move-wide/from16 v138, v10

    move-object/from16 v66, v13

    move-object/from16 v184, v15

    move-object/from16 v175, v79

    move-wide/from16 v182, v123

    move-wide/from16 v13, v125

    move-wide/from16 v206, v127

    move-object/from16 v9, v136

    move-object/from16 v215, v146

    const/16 v50, 0x1

    const/16 v152, 0x5

    move-object v2, v1

    move v11, v5

    goto/16 :goto_2365

    .line 6131
    .end local v95    # "NU":I
    .restart local v12    # "NU":I
    :cond_12d7
    move/from16 v95, v12

    .line 6135
    .end local v12    # "NU":I
    .restart local v95    # "NU":I
    :cond_12d9
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid;

    .line 6137
    .local v12, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6138
    move-object/from16 v94, v4

    .end local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v94    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    const-string v4, "  "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6139
    invoke-static {v1, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 6140
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6141
    const/16 v96, 0x0

    .line 6143
    .local v96, "uidActivity":Z
    move-wide/from16 v138, v10

    const/4 v4, 0x0

    move v11, v9

    .end local v9    # "iu":I
    .end local v10    # "whichBatteryRealtime":J
    .local v11, "iu":I
    .local v138, "whichBatteryRealtime":J
    invoke-virtual {v12, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v9

    .line 6144
    .local v9, "mobileRxBytes":J
    move/from16 v142, v6

    const/4 v4, 0x1

    .end local v6    # "uid":I
    .local v142, "uid":I
    invoke-virtual {v12, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    .line 6145
    .local v6, "mobileTxBytes":J
    move-wide/from16 v143, v6

    const/4 v4, 0x2

    .end local v6    # "mobileTxBytes":J
    .local v143, "mobileTxBytes":J
    invoke-virtual {v12, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    .line 6146
    .local v6, "wifiRxBytes":J
    const/4 v4, 0x3

    move-wide/from16 v147, v6

    .end local v6    # "wifiRxBytes":J
    .local v147, "wifiRxBytes":J
    invoke-virtual {v12, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    .line 6147
    .local v6, "wifiTxBytes":J
    const/4 v4, 0x4

    move-wide/from16 v149, v6

    .end local v6    # "wifiTxBytes":J
    .local v149, "wifiTxBytes":J
    invoke-virtual {v12, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    .line 6148
    .local v6, "btRxBytes":J
    move-wide/from16 v151, v6

    const/4 v4, 0x5

    .end local v6    # "btRxBytes":J
    .local v151, "btRxBytes":J
    invoke-virtual {v12, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    .line 6150
    .local v6, "btTxBytes":J
    move-wide/from16 v153, v6

    const/4 v4, 0x0

    .end local v6    # "btTxBytes":J
    .local v153, "btTxBytes":J
    invoke-virtual {v12, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v6

    .line 6151
    .local v6, "mobileRxPackets":J
    move-wide/from16 v155, v6

    const/4 v4, 0x1

    .end local v6    # "mobileRxPackets":J
    .local v155, "mobileRxPackets":J
    invoke-virtual {v12, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v6

    .line 6152
    .local v6, "mobileTxPackets":J
    move-wide/from16 v157, v6

    const/4 v4, 0x2

    .end local v6    # "mobileTxPackets":J
    .local v157, "mobileTxPackets":J
    invoke-virtual {v12, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v6

    .line 6153
    .local v6, "wifiRxPackets":J
    const/4 v4, 0x3

    move-wide/from16 v159, v6

    .end local v6    # "wifiRxPackets":J
    .local v159, "wifiRxPackets":J
    invoke-virtual {v12, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v6

    .line 6155
    .local v6, "wifiTxPackets":J
    move-wide/from16 v161, v6

    .end local v6    # "wifiTxPackets":J
    .local v161, "wifiTxPackets":J
    invoke-virtual {v12, v5}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v6

    .line 6156
    .local v6, "uidMobileActiveTime":J
    invoke-virtual {v12, v5}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v4

    .line 6158
    .local v4, "uidMobileActiveCount":I
    move-wide/from16 v163, v6

    .end local v6    # "uidMobileActiveTime":J
    .local v163, "uidMobileActiveTime":J
    invoke-virtual {v12, v2, v3, v5}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v6

    .line 6159
    .local v6, "fullWifiLockOnTime":J
    move-wide/from16 v165, v6

    .end local v6    # "fullWifiLockOnTime":J
    .local v165, "fullWifiLockOnTime":J
    invoke-virtual {v12, v2, v3, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v6

    .line 6160
    .local v6, "wifiScanTime":J
    move/from16 v145, v11

    .end local v11    # "iu":I
    .local v145, "iu":I
    invoke-virtual {v12, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v11

    .line 6161
    .local v11, "wifiScanCount":I
    move-wide/from16 v167, v6

    .end local v6    # "wifiScanTime":J
    .local v167, "wifiScanTime":J
    invoke-virtual {v12, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v7

    .line 6163
    .local v7, "wifiScanCountBg":I
    move/from16 v169, v7

    .end local v7    # "wifiScanCountBg":I
    .local v169, "wifiScanCountBg":I
    invoke-virtual {v12, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v6

    .line 6164
    .local v6, "wifiScanActualTime":J
    move-wide/from16 v170, v6

    .end local v6    # "wifiScanActualTime":J
    .local v170, "wifiScanActualTime":J
    invoke-virtual {v12, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v6

    .line 6165
    .local v6, "wifiScanActualTimeBg":J
    move-wide/from16 v172, v6

    .end local v6    # "wifiScanActualTimeBg":J
    .local v172, "wifiScanActualTimeBg":J
    invoke-virtual {v12, v2, v3, v5}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v6

    .line 6167
    .local v6, "uidWifiRunningTime":J
    move-wide/from16 v174, v2

    .end local v2    # "rawRealtime":J
    .local v174, "rawRealtime":J
    invoke-virtual {v12, v5}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v2

    .line 6168
    .local v2, "mobileWakeup":J
    move-wide/from16 v176, v6

    .end local v6    # "uidWifiRunningTime":J
    .local v176, "uidWifiRunningTime":J
    invoke-virtual {v12, v5}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v6

    .line 6170
    .local v6, "wifiWakeup":J
    cmp-long v178, v9, v46

    if-gtz v178, :cond_1390

    cmp-long v178, v143, v46

    if-gtz v178, :cond_1390

    cmp-long v178, v155, v46

    if-gtz v178, :cond_1390

    cmp-long v178, v157, v46

    if-lez v178, :cond_138b

    goto :goto_1390

    :cond_138b
    move-wide/from16 v178, v6

    move-wide/from16 v5, v157

    goto :goto_13c8

    .line 6172
    :cond_1390
    :goto_1390
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Mobile network: "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6173
    invoke-virtual {v14, v9, v10}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " received, "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6174
    move-wide/from16 v178, v6

    move-wide/from16 v5, v143

    .end local v6    # "wifiWakeup":J
    .end local v143    # "mobileTxBytes":J
    .local v5, "mobileTxBytes":J
    .local v178, "wifiWakeup":J
    invoke-virtual {v14, v5, v6}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6175
    const-string v7, " sent (packets "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v5, v155

    .end local v155    # "mobileRxPackets":J
    .local v5, "mobileRxPackets":J
    .restart local v143    # "mobileTxBytes":J
    invoke-virtual {v1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 6176
    const-string v7, " received, "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v5, v157

    .end local v157    # "mobileTxPackets":J
    .local v5, "mobileTxPackets":J
    .restart local v155    # "mobileRxPackets":J
    invoke-virtual {v1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v7, " sent)"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6178
    :goto_13c8
    cmp-long v7, v163, v46

    if-gtz v7, :cond_13dd

    if-lez v4, :cond_13cf

    goto :goto_13dd

    :cond_13cf
    move-object/from16 v7, p3

    move-wide/from16 v157, v5

    move-wide/from16 v182, v123

    move-wide/from16 v180, v163

    move-wide/from16 v123, v9

    move-object/from16 v163, v12

    move v12, v4

    goto :goto_1442

    .line 6179
    :cond_13dd
    :goto_13dd
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6180
    move-object/from16 v7, p3

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v157, v5

    .end local v5    # "mobileTxPackets":J
    .restart local v157    # "mobileTxPackets":J
    const-string v5, "    Mobile radio active: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6181
    div-long v5, v163, v19

    invoke-static {v0, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6182
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6183
    move-wide/from16 v5, v123

    move-wide/from16 v123, v9

    move-wide/from16 v9, v163

    move-object/from16 v163, v12

    .end local v12    # "u":Landroid/os/BatteryStats$Uid;
    .local v5, "mobileActiveTime":J
    .local v9, "uidMobileActiveTime":J
    .local v123, "mobileRxBytes":J
    .local v163, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v14, v9, v10, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6184
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6185
    add-long v180, v155, v157

    .line 6186
    .local v180, "packets":J
    cmp-long v12, v180, v46

    if-nez v12, :cond_141b

    .line 6187
    const-wide/16 v180, 0x1

    move v12, v4

    move-wide/from16 v182, v5

    move-wide/from16 v4, v180

    goto :goto_1420

    .line 6186
    :cond_141b
    move v12, v4

    move-wide/from16 v182, v5

    move-wide/from16 v4, v180

    .line 6189
    .end local v5    # "mobileActiveTime":J
    .end local v180    # "packets":J
    .local v4, "packets":J
    .local v12, "uidMobileActiveCount":I
    .local v182, "mobileActiveTime":J
    :goto_1420
    const-string v6, " @ "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6190
    move-wide/from16 v180, v9

    .end local v9    # "uidMobileActiveTime":J
    .local v180, "uidMobileActiveTime":J
    div-long v9, v180, v19

    long-to-double v9, v9

    move-wide/from16 v184, v9

    long-to-double v9, v4

    div-double v9, v184, v9

    invoke-static {v9, v10}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6191
    const-string v6, " mspp"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6195
    .end local v4    # "packets":J
    :goto_1442
    cmp-long v4, v2, v46

    if-lez v4, :cond_145c

    .line 6196
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6197
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6198
    const-string v4, "    Mobile radio AP wakeups: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6199
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6203
    :cond_145c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6204
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 6203
    move-wide v9, v2

    move-object v3, v4

    .end local v2    # "mobileWakeup":J
    .local v9, "mobileWakeup":J
    const-string v4, "Cellular"

    move/from16 v6, p4

    move-object v2, v0

    move/from16 v66, v11

    move-object v0, v14

    move-wide/from16 v186, v151

    move-wide/from16 v188, v153

    move-wide/from16 v190, v165

    move-wide/from16 v192, v167

    move-wide/from16 v194, v170

    move-wide/from16 v196, v172

    move-wide/from16 v198, v176

    move-wide/from16 v200, v178

    const/16 v152, 0x5

    move-wide/from16 v224, v147

    move-object/from16 v148, v8

    move-object/from16 v147, v15

    move-wide/from16 v14, v224

    move-wide/from16 v7, v161

    move-wide/from16 v224, v149

    move/from16 v149, v12

    move-wide/from16 v150, v9

    move-wide/from16 v9, v224

    move-wide/from16 v11, v159

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "uidMobileActiveCount":I
    .end local v147    # "wifiRxBytes":J
    .end local v151    # "btRxBytes":J
    .end local v153    # "btTxBytes":J
    .end local v159    # "wifiRxPackets":J
    .end local v161    # "wifiTxPackets":J
    .end local v165    # "fullWifiLockOnTime":J
    .end local v167    # "wifiScanTime":J
    .end local v170    # "wifiScanActualTime":J
    .end local v172    # "wifiScanActualTimeBg":J
    .end local v176    # "uidWifiRunningTime":J
    .end local v178    # "wifiWakeup":J
    .local v2, "sb":Ljava/lang/StringBuilder;
    .local v7, "wifiTxPackets":J
    .local v9, "wifiTxBytes":J
    .local v11, "wifiRxPackets":J
    .local v14, "wifiRxBytes":J
    .local v66, "wifiScanCount":I
    .local v149, "uidMobileActiveCount":I
    .local v150, "mobileWakeup":J
    .local v186, "btRxBytes":J
    .local v188, "btTxBytes":J
    .local v190, "fullWifiLockOnTime":J
    .local v192, "wifiScanTime":J
    .local v194, "wifiScanActualTime":J
    .local v196, "wifiScanActualTimeBg":J
    .local v198, "uidWifiRunningTime":J
    .local v200, "wifiWakeup":J
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 6206
    cmp-long v3, v14, v46

    if-gtz v3, :cond_14b6

    cmp-long v3, v9, v46

    if-gtz v3, :cond_14b6

    cmp-long v3, v11, v46

    if-gtz v3, :cond_14b6

    cmp-long v3, v7, v46

    if-lez v3, :cond_14e6

    .line 6207
    :cond_14b6
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    Wi-Fi network: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6208
    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " received, "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6209
    invoke-virtual {v0, v9, v10}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6210
    const-string v3, " sent (packets "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    .line 6211
    const-string v3, " received, "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    const-string v3, " sent)"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6214
    :cond_14e6
    move-wide/from16 v3, v190

    .end local v190    # "fullWifiLockOnTime":J
    .local v3, "fullWifiLockOnTime":J
    cmp-long v5, v3, v46

    if-nez v5, :cond_1548

    move-wide/from16 v5, v192

    .end local v192    # "wifiScanTime":J
    .local v5, "wifiScanTime":J
    cmp-long v153, v5, v46

    if-nez v153, :cond_1539

    if-nez v66, :cond_1539

    if-nez v169, :cond_1539

    move-wide/from16 v161, v7

    move-wide/from16 v153, v9

    move-wide/from16 v8, v194

    .end local v7    # "wifiTxPackets":J
    .end local v9    # "wifiTxBytes":J
    .end local v194    # "wifiScanActualTime":J
    .local v8, "wifiScanActualTime":J
    .local v153, "wifiTxBytes":J
    .restart local v161    # "wifiTxPackets":J
    cmp-long v7, v8, v46

    if-nez v7, :cond_1530

    move-wide/from16 v159, v11

    move-wide/from16 v10, v196

    .end local v11    # "wifiRxPackets":J
    .end local v196    # "wifiScanActualTimeBg":J
    .local v10, "wifiScanActualTimeBg":J
    .restart local v159    # "wifiRxPackets":J
    cmp-long v7, v10, v46

    if-nez v7, :cond_152b

    move-wide/from16 v164, v14

    move-wide/from16 v14, v198

    .end local v198    # "uidWifiRunningTime":J
    .local v14, "uidWifiRunningTime":J
    .local v164, "wifiRxBytes":J
    cmp-long v7, v14, v46

    if-eqz v7, :cond_1511

    goto :goto_1558

    :cond_1511
    move-object/from16 v7, p3

    move-wide/from16 v190, v3

    move-wide/from16 v167, v5

    move-wide/from16 v170, v8

    move-wide v5, v10

    move-wide/from16 v176, v14

    move/from16 v14, v66

    move-wide/from16 v11, v138

    move-object/from16 v15, v147

    move-object/from16 v10, v148

    move/from16 v8, v169

    move-wide/from16 v3, v174

    move-object v9, v1

    goto/16 :goto_1627

    .end local v164    # "wifiRxBytes":J
    .local v14, "wifiRxBytes":J
    .restart local v198    # "uidWifiRunningTime":J
    :cond_152b
    move-wide/from16 v164, v14

    move-wide/from16 v14, v198

    .end local v198    # "uidWifiRunningTime":J
    .local v14, "uidWifiRunningTime":J
    .restart local v164    # "wifiRxBytes":J
    goto :goto_1558

    .end local v10    # "wifiScanActualTimeBg":J
    .end local v159    # "wifiRxPackets":J
    .end local v164    # "wifiRxBytes":J
    .restart local v11    # "wifiRxPackets":J
    .local v14, "wifiRxBytes":J
    .restart local v196    # "wifiScanActualTimeBg":J
    .restart local v198    # "uidWifiRunningTime":J
    :cond_1530
    move-wide/from16 v159, v11

    move-wide/from16 v164, v14

    move-wide/from16 v10, v196

    move-wide/from16 v14, v198

    .end local v11    # "wifiRxPackets":J
    .end local v196    # "wifiScanActualTimeBg":J
    .end local v198    # "uidWifiRunningTime":J
    .restart local v10    # "wifiScanActualTimeBg":J
    .local v14, "uidWifiRunningTime":J
    .restart local v159    # "wifiRxPackets":J
    .restart local v164    # "wifiRxBytes":J
    goto :goto_1558

    .end local v8    # "wifiScanActualTime":J
    .end local v10    # "wifiScanActualTimeBg":J
    .end local v153    # "wifiTxBytes":J
    .end local v159    # "wifiRxPackets":J
    .end local v161    # "wifiTxPackets":J
    .end local v164    # "wifiRxBytes":J
    .restart local v7    # "wifiTxPackets":J
    .restart local v9    # "wifiTxBytes":J
    .restart local v11    # "wifiRxPackets":J
    .local v14, "wifiRxBytes":J
    .restart local v194    # "wifiScanActualTime":J
    .restart local v196    # "wifiScanActualTimeBg":J
    .restart local v198    # "uidWifiRunningTime":J
    :cond_1539
    move-wide/from16 v161, v7

    move-wide/from16 v153, v9

    move-wide/from16 v159, v11

    move-wide/from16 v164, v14

    move-wide/from16 v8, v194

    move-wide/from16 v10, v196

    move-wide/from16 v14, v198

    .end local v7    # "wifiTxPackets":J
    .end local v9    # "wifiTxBytes":J
    .end local v11    # "wifiRxPackets":J
    .end local v194    # "wifiScanActualTime":J
    .end local v196    # "wifiScanActualTimeBg":J
    .end local v198    # "uidWifiRunningTime":J
    .restart local v8    # "wifiScanActualTime":J
    .restart local v10    # "wifiScanActualTimeBg":J
    .local v14, "uidWifiRunningTime":J
    .restart local v153    # "wifiTxBytes":J
    .restart local v159    # "wifiRxPackets":J
    .restart local v161    # "wifiTxPackets":J
    .restart local v164    # "wifiRxBytes":J
    goto :goto_1558

    .end local v5    # "wifiScanTime":J
    .end local v8    # "wifiScanActualTime":J
    .end local v10    # "wifiScanActualTimeBg":J
    .end local v153    # "wifiTxBytes":J
    .end local v159    # "wifiRxPackets":J
    .end local v161    # "wifiTxPackets":J
    .end local v164    # "wifiRxBytes":J
    .restart local v7    # "wifiTxPackets":J
    .restart local v9    # "wifiTxBytes":J
    .restart local v11    # "wifiRxPackets":J
    .local v14, "wifiRxBytes":J
    .restart local v192    # "wifiScanTime":J
    .restart local v194    # "wifiScanActualTime":J
    .restart local v196    # "wifiScanActualTimeBg":J
    .restart local v198    # "uidWifiRunningTime":J
    :cond_1548
    move-wide/from16 v161, v7

    move-wide/from16 v153, v9

    move-wide/from16 v159, v11

    move-wide/from16 v164, v14

    move-wide/from16 v5, v192

    move-wide/from16 v8, v194

    move-wide/from16 v10, v196

    move-wide/from16 v14, v198

    .line 6217
    .end local v7    # "wifiTxPackets":J
    .end local v9    # "wifiTxBytes":J
    .end local v11    # "wifiRxPackets":J
    .end local v192    # "wifiScanTime":J
    .end local v194    # "wifiScanActualTime":J
    .end local v196    # "wifiScanActualTimeBg":J
    .end local v198    # "uidWifiRunningTime":J
    .restart local v5    # "wifiScanTime":J
    .restart local v8    # "wifiScanActualTime":J
    .restart local v10    # "wifiScanActualTimeBg":J
    .local v14, "uidWifiRunningTime":J
    .restart local v153    # "wifiTxBytes":J
    .restart local v159    # "wifiRxPackets":J
    .restart local v161    # "wifiTxPackets":J
    .restart local v164    # "wifiRxBytes":J
    :goto_1558
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6218
    move-object/from16 v7, p3

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "    Wifi Running: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6219
    move-wide/from16 v172, v10

    .end local v10    # "wifiScanActualTimeBg":J
    .restart local v172    # "wifiScanActualTimeBg":J
    div-long v10, v14, v19

    invoke-static {v2, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6220
    move-object/from16 v10, v148

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, v138

    .end local v138    # "whichBatteryRealtime":J
    .local v11, "whichBatteryRealtime":J
    invoke-virtual {v0, v14, v15, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6221
    const-string v1, ")\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6222
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Full Wifi Lock: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6223
    move-wide/from16 v176, v14

    .end local v14    # "uidWifiRunningTime":J
    .restart local v176    # "uidWifiRunningTime":J
    div-long v14, v3, v19

    invoke-static {v2, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6224
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6225
    const-string v1, ")\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6226
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Wifi Scan (blamed): "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6227
    div-long v14, v5, v19

    invoke-static {v2, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6228
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6229
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6230
    move/from16 v14, v66

    .end local v66    # "wifiScanCount":I
    .local v14, "wifiScanCount":I
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6231
    const-string/jumbo v1, "x\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6233
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Wifi Scan (actual): "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6234
    move-wide/from16 v190, v3

    .end local v3    # "fullWifiLockOnTime":J
    .restart local v190    # "fullWifiLockOnTime":J
    div-long v3, v8, v19

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6235
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6236
    move-wide/from16 v167, v5

    move-wide/from16 v3, v174

    const/4 v15, 0x0

    .end local v5    # "wifiScanTime":J
    .end local v174    # "rawRealtime":J
    .local v3, "rawRealtime":J
    .restart local v167    # "wifiScanTime":J
    invoke-virtual {v0, v3, v4, v15}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v5

    .line 6235
    invoke-virtual {v0, v8, v9, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6237
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6238
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6239
    const-string/jumbo v1, "x\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6240
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Background Wifi Scan: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6241
    div-long v5, v172, v19

    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6242
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6243
    move-wide/from16 v170, v8

    const/4 v6, 0x0

    .end local v8    # "wifiScanActualTime":J
    .restart local v170    # "wifiScanActualTime":J
    invoke-virtual {v0, v3, v4, v6}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v8

    .line 6242
    move-wide/from16 v5, v172

    .end local v172    # "wifiScanActualTimeBg":J
    .local v5, "wifiScanActualTimeBg":J
    invoke-virtual {v0, v5, v6, v8, v9}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6244
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6245
    move/from16 v8, v169

    .end local v169    # "wifiScanCountBg":I
    .local v8, "wifiScanCountBg":I
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6246
    move-object/from16 v15, v147

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6247
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v9, p2

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6250
    :goto_1627
    move-wide/from16 v138, v11

    move-wide/from16 v11, v200

    .end local v200    # "wifiWakeup":J
    .local v11, "wifiWakeup":J
    .restart local v138    # "whichBatteryRealtime":J
    cmp-long v1, v11, v46

    if-lez v1, :cond_1645

    .line 6251
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6252
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6253
    const-string v1, "    WiFi AP wakeups: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6254
    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6255
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6258
    :cond_1645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6259
    move-wide/from16 v172, v5

    .end local v5    # "wifiScanActualTimeBg":J
    .restart local v172    # "wifiScanActualTimeBg":J
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 6258
    move-wide/from16 v174, v3

    .end local v3    # "rawRealtime":J
    .restart local v174    # "rawRealtime":J
    const-string v4, "WiFi"

    move/from16 v6, p4

    move-object v3, v0

    move/from16 v169, v8

    move-object v1, v9

    move-wide/from16 v8, v174

    move-object/from16 v0, p0

    .end local v174    # "rawRealtime":J
    .local v8, "rawRealtime":J
    .restart local v169    # "wifiScanCountBg":I
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 6261
    move v5, v6

    move-wide/from16 v3, v186

    .end local v186    # "btRxBytes":J
    .local v3, "btRxBytes":J
    cmp-long v6, v3, v46

    if-gtz v6, :cond_167f

    move-wide/from16 v178, v11

    move-wide/from16 v11, v188

    .end local v188    # "btTxBytes":J
    .local v11, "btTxBytes":J
    .restart local v178    # "wifiWakeup":J
    cmp-long v6, v11, v46

    if-lez v6, :cond_16a3

    goto :goto_1683

    .end local v178    # "wifiWakeup":J
    .local v11, "wifiWakeup":J
    .restart local v188    # "btTxBytes":J
    :cond_167f
    move-wide/from16 v178, v11

    move-wide/from16 v11, v188

    .line 6262
    .end local v188    # "btTxBytes":J
    .local v11, "btTxBytes":J
    .restart local v178    # "wifiWakeup":J
    :goto_1683
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Bluetooth network: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6263
    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " received, "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6264
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6265
    const-string v6, " sent"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6268
    :cond_16a3
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    .line 6269
    .local v6, "bleTimer":Landroid/os/BatteryStats$Timer;
    move-wide/from16 v188, v11

    .end local v11    # "btTxBytes":J
    .restart local v188    # "btTxBytes":J
    const-string v11, "\n"

    const-string v12, " times)"

    if-eqz v6, :cond_189a

    .line 6271
    invoke-virtual {v6, v8, v9, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v147

    add-long v147, v147, v35

    move-wide/from16 v186, v3

    .end local v3    # "btRxBytes":J
    .restart local v186    # "btRxBytes":J
    div-long v3, v147, v19

    .line 6273
    .local v3, "totalTimeMs":J
    cmp-long v66, v3, v46

    if-eqz v66, :cond_1887

    .line 6274
    invoke-virtual {v6, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v0

    .line 6275
    .local v0, "count":I
    move-wide/from16 v174, v8

    .end local v8    # "rawRealtime":J
    .restart local v174    # "rawRealtime":J
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v8

    .line 6276
    .local v8, "bleTimerBg":Landroid/os/BatteryStats$Timer;
    if-eqz v8, :cond_16ce

    invoke-virtual {v8, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v9

    goto :goto_16cf

    :cond_16ce
    const/4 v9, 0x0

    .line 6278
    .local v9, "countBg":I
    :goto_16cf
    move-object/from16 v148, v10

    move-object/from16 v66, v13

    move/from16 v147, v14

    move-wide/from16 v13, v127

    move/from16 v127, v9

    .end local v9    # "countBg":I
    .end local v14    # "wifiScanCount":I
    .local v13, "rawRealtimeMs":J
    .local v127, "countBg":I
    .local v147, "wifiScanCount":I
    invoke-virtual {v6, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v9

    .line 6279
    .local v9, "actualTimeMs":J
    if-eqz v8, :cond_16e4

    .line 6280
    invoke-virtual {v8, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v184

    goto :goto_16e6

    :cond_16e4
    move-wide/from16 v184, v46

    :goto_16e6
    move-wide/from16 v192, v184

    .line 6282
    .local v192, "actualTimeMsBg":J
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v128

    if-eqz v128, :cond_16f9

    .line 6283
    move-object/from16 v128, v6

    .end local v6    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .local v128, "bleTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    goto :goto_16fc

    .end local v128    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v6    # "bleTimer":Landroid/os/BatteryStats$Timer;
    :cond_16f9
    move-object/from16 v128, v6

    .end local v6    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v128    # "bleTimer":Landroid/os/BatteryStats$Timer;
    const/4 v6, 0x0

    .line 6284
    .local v6, "resultCount":I
    :goto_16fc
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v166

    if-eqz v166, :cond_170d

    .line 6285
    move-object/from16 v166, v8

    .end local v8    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    .local v166, "bleTimerBg":Landroid/os/BatteryStats$Timer;
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v8

    goto :goto_1710

    .end local v166    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    .restart local v8    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    :cond_170d
    move-object/from16 v166, v8

    .end local v8    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    .restart local v166    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    const/4 v8, 0x0

    .line 6287
    .local v8, "resultCountBg":I
    :goto_1710
    move-object/from16 v184, v15

    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    .line 6288
    .local v15, "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v15, :cond_171d

    .line 6289
    invoke-virtual {v15, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v194

    goto :goto_171f

    :cond_171d
    move-wide/from16 v194, v46

    :goto_171f
    move-wide/from16 v196, v194

    .line 6290
    .local v196, "unoptimizedScanTotalTime":J
    if-eqz v15, :cond_1728

    .line 6291
    invoke-virtual {v15, v13, v14}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v194

    goto :goto_172a

    :cond_1728
    move-wide/from16 v194, v46

    :goto_172a
    move-wide/from16 v198, v194

    .line 6293
    .local v198, "unoptimizedScanMaxTime":J
    nop

    .line 6294
    move-object/from16 v185, v15

    .end local v15    # "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    .local v185, "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    .line 6295
    .local v15, "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    if-eqz v15, :cond_173a

    .line 6296
    invoke-virtual {v15, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v194

    goto :goto_173c

    :cond_173a
    move-wide/from16 v194, v46

    :goto_173c
    move-wide/from16 v200, v194

    .line 6297
    .local v200, "unoptimizedScanTotalTimeBg":J
    if-eqz v15, :cond_1745

    .line 6298
    invoke-virtual {v15, v13, v14}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v194

    goto :goto_1747

    :cond_1745
    move-wide/from16 v194, v46

    :goto_1747
    move-wide/from16 v202, v194

    .line 6300
    .local v202, "unoptimizedScanMaxTimeBg":J
    move-object/from16 v194, v15

    const/4 v15, 0x0

    .end local v15    # "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    .local v194, "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6301
    cmp-long v15, v9, v3

    if-eqz v15, :cond_177d

    .line 6302
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6303
    const-string v15, "    Bluetooth Scan (total blamed realtime): "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6304
    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6305
    move-object/from16 v15, v140

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6306
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6307
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6308
    invoke-virtual/range {v128 .. v128}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v140

    if-eqz v140, :cond_1777

    .line 6309
    move-wide/from16 v204, v3

    .end local v3    # "totalTimeMs":J
    .local v204, "totalTimeMs":J
    const-string v3, " (currently running)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1779

    .line 6308
    .end local v204    # "totalTimeMs":J
    .restart local v3    # "totalTimeMs":J
    :cond_1777
    move-wide/from16 v204, v3

    .line 6311
    .end local v3    # "totalTimeMs":J
    .restart local v204    # "totalTimeMs":J
    :goto_1779
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1781

    .line 6301
    .end local v204    # "totalTimeMs":J
    .restart local v3    # "totalTimeMs":J
    :cond_177d
    move-wide/from16 v204, v3

    move-object/from16 v15, v140

    .line 6314
    .end local v3    # "totalTimeMs":J
    .restart local v204    # "totalTimeMs":J
    :goto_1781
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6315
    const-string v3, "    Bluetooth Scan (total actual realtime): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6316
    invoke-static {v2, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6317
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6318
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6319
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6320
    invoke-virtual/range {v128 .. v128}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v3

    if-eqz v3, :cond_17a0

    .line 6321
    const-string v3, " (currently running)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6323
    :cond_17a0
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6324
    cmp-long v3, v192, v46

    if-gtz v3, :cond_17af

    if-lez v127, :cond_17aa

    goto :goto_17af

    :cond_17aa
    move/from16 v140, v0

    move-wide/from16 v3, v192

    goto :goto_17de

    .line 6325
    :cond_17af
    :goto_17af
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6326
    const-string v3, "    Bluetooth Scan (background realtime): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6327
    move-wide/from16 v3, v192

    .end local v192    # "actualTimeMsBg":J
    .local v3, "actualTimeMsBg":J
    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6328
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6329
    move/from16 v140, v0

    move/from16 v0, v127

    .end local v127    # "countBg":I
    .local v0, "countBg":I
    .local v140, "count":I
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6330
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6331
    if-eqz v166, :cond_17d9

    invoke-virtual/range {v166 .. v166}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v127

    if-eqz v127, :cond_17d9

    .line 6332
    move/from16 v127, v0

    .end local v0    # "countBg":I
    .restart local v127    # "countBg":I
    const-string v0, " (currently running in background)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17db

    .line 6331
    .end local v127    # "countBg":I
    .restart local v0    # "countBg":I
    :cond_17d9
    move/from16 v127, v0

    .line 6334
    .end local v0    # "countBg":I
    .restart local v127    # "countBg":I
    :goto_17db
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6337
    :goto_17de
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6338
    const-string v0, "    Bluetooth Scan Results: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6339
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6340
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6341
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6342
    const-string v0, " in background)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6344
    cmp-long v0, v196, v46

    if-gtz v0, :cond_1809

    cmp-long v0, v200, v46

    if-lez v0, :cond_17fd

    goto :goto_1809

    :cond_17fd
    move-wide/from16 v192, v3

    move-wide/from16 v195, v196

    move-wide/from16 v197, v198

    move-wide/from16 v199, v200

    move-wide/from16 v3, v202

    goto/16 :goto_187d

    .line 6345
    :cond_1809
    :goto_1809
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6346
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6347
    const-string v0, "    Unoptimized Bluetooth Scan (realtime): "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6348
    move-wide/from16 v192, v3

    move-wide/from16 v3, v196

    .end local v196    # "unoptimizedScanTotalTime":J
    .local v3, "unoptimizedScanTotalTime":J
    .restart local v192    # "actualTimeMsBg":J
    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6349
    const-string v0, " (max "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6350
    move-wide/from16 v195, v3

    move-wide/from16 v3, v198

    .end local v198    # "unoptimizedScanMaxTime":J
    .local v3, "unoptimizedScanMaxTime":J
    .local v195, "unoptimizedScanTotalTime":J
    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6351
    move-object/from16 v0, v79

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6352
    if-eqz v185, :cond_183f

    .line 6353
    invoke-virtual/range {v185 .. v185}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v79

    if-eqz v79, :cond_183c

    .line 6354
    move-wide/from16 v197, v3

    .end local v3    # "unoptimizedScanMaxTime":J
    .local v197, "unoptimizedScanMaxTime":J
    const-string v3, " (currently running unoptimized)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1841

    .line 6353
    .end local v197    # "unoptimizedScanMaxTime":J
    .restart local v3    # "unoptimizedScanMaxTime":J
    :cond_183c
    move-wide/from16 v197, v3

    .end local v3    # "unoptimizedScanMaxTime":J
    .restart local v197    # "unoptimizedScanMaxTime":J
    goto :goto_1841

    .line 6352
    .end local v197    # "unoptimizedScanMaxTime":J
    .restart local v3    # "unoptimizedScanMaxTime":J
    :cond_183f
    move-wide/from16 v197, v3

    .line 6356
    .end local v3    # "unoptimizedScanMaxTime":J
    .restart local v197    # "unoptimizedScanMaxTime":J
    :goto_1841
    if-eqz v194, :cond_1877

    cmp-long v3, v200, v46

    if-lez v3, :cond_1877

    .line 6357
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6358
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6359
    const-string v3, "    Unoptimized Bluetooth Scan (background realtime): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6360
    move-wide/from16 v3, v200

    .end local v200    # "unoptimizedScanTotalTimeBg":J
    .local v3, "unoptimizedScanTotalTimeBg":J
    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6361
    move-wide/from16 v199, v3

    .end local v3    # "unoptimizedScanTotalTimeBg":J
    .local v199, "unoptimizedScanTotalTimeBg":J
    const-string v3, " (max "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6362
    move-wide/from16 v3, v202

    .end local v202    # "unoptimizedScanMaxTimeBg":J
    .local v3, "unoptimizedScanMaxTimeBg":J
    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6363
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6364
    invoke-virtual/range {v194 .. v194}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v79

    if-eqz v79, :cond_1874

    .line 6365
    move-object/from16 v79, v0

    const-string v0, " (currently running unoptimized in background)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_187d

    .line 6364
    :cond_1874
    move-object/from16 v79, v0

    goto :goto_187d

    .line 6356
    .end local v3    # "unoptimizedScanMaxTimeBg":J
    .end local v199    # "unoptimizedScanTotalTimeBg":J
    .restart local v200    # "unoptimizedScanTotalTimeBg":J
    .restart local v202    # "unoptimizedScanMaxTimeBg":J
    :cond_1877
    move-object/from16 v79, v0

    move-wide/from16 v199, v200

    move-wide/from16 v3, v202

    .line 6369
    .end local v200    # "unoptimizedScanTotalTimeBg":J
    .end local v202    # "unoptimizedScanMaxTimeBg":J
    .restart local v3    # "unoptimizedScanMaxTimeBg":J
    .restart local v199    # "unoptimizedScanTotalTimeBg":J
    :goto_187d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6370
    const/16 v96, 0x1

    goto :goto_18ac

    .line 6273
    .end local v9    # "actualTimeMs":J
    .end local v13    # "rawRealtimeMs":J
    .end local v128    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v140    # "count":I
    .end local v147    # "wifiScanCount":I
    .end local v166    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    .end local v174    # "rawRealtime":J
    .end local v185    # "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    .end local v192    # "actualTimeMsBg":J
    .end local v194    # "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    .end local v195    # "unoptimizedScanTotalTime":J
    .end local v197    # "unoptimizedScanMaxTime":J
    .end local v199    # "unoptimizedScanTotalTimeBg":J
    .end local v204    # "totalTimeMs":J
    .local v3, "totalTimeMs":J
    .local v6, "bleTimer":Landroid/os/BatteryStats$Timer;
    .local v8, "rawRealtime":J
    .restart local v14    # "wifiScanCount":I
    .local v127, "rawRealtimeMs":J
    :cond_1887
    move-wide/from16 v204, v3

    move-wide/from16 v174, v8

    move-object/from16 v148, v10

    move-object/from16 v66, v13

    move/from16 v147, v14

    move-object/from16 v184, v15

    move-wide/from16 v13, v127

    move-object/from16 v15, v140

    move-object/from16 v128, v6

    .end local v3    # "totalTimeMs":J
    .end local v6    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v8    # "rawRealtime":J
    .end local v14    # "wifiScanCount":I
    .end local v127    # "rawRealtimeMs":J
    .restart local v13    # "rawRealtimeMs":J
    .restart local v128    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v147    # "wifiScanCount":I
    .restart local v174    # "rawRealtime":J
    .restart local v204    # "totalTimeMs":J
    goto :goto_18ac

    .line 6269
    .end local v13    # "rawRealtimeMs":J
    .end local v128    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v147    # "wifiScanCount":I
    .end local v174    # "rawRealtime":J
    .end local v186    # "btRxBytes":J
    .end local v204    # "totalTimeMs":J
    .local v3, "btRxBytes":J
    .restart local v6    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v8    # "rawRealtime":J
    .restart local v14    # "wifiScanCount":I
    .restart local v127    # "rawRealtimeMs":J
    :cond_189a
    move-wide/from16 v186, v3

    move-wide/from16 v174, v8

    move-object/from16 v148, v10

    move-object/from16 v66, v13

    move/from16 v147, v14

    move-object/from16 v184, v15

    move-wide/from16 v13, v127

    move-object/from16 v15, v140

    move-object/from16 v128, v6

    .line 6376
    .end local v3    # "btRxBytes":J
    .end local v6    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v8    # "rawRealtime":J
    .end local v14    # "wifiScanCount":I
    .end local v127    # "rawRealtimeMs":J
    .restart local v13    # "rawRealtimeMs":J
    .restart local v128    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v147    # "wifiScanCount":I
    .restart local v174    # "rawRealtime":J
    .restart local v186    # "btRxBytes":J
    :goto_18ac
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v0

    const-string v8, ", "

    if-eqz v0, :cond_18f9

    .line 6377
    const/4 v0, 0x0

    .line 6378
    .local v0, "hasData":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18b6
    sget v4, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v3, v4, :cond_18eb

    .line 6379
    move-object/from16 v9, v163

    .end local v163    # "u":Landroid/os/BatteryStats$Uid;
    .local v9, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v9, v3, v5}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v4

    .line 6380
    .local v4, "val":I
    if-eqz v4, :cond_18e2

    .line 6381
    if-nez v0, :cond_18cf

    .line 6382
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6383
    const-string v6, "    User activity: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6384
    const/4 v0, 0x1

    goto :goto_18d2

    .line 6386
    :cond_18cf
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6388
    :goto_18d2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6389
    move-object/from16 v10, v146

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6390
    sget-object v6, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18e4

    .line 6380
    :cond_18e2
    move-object/from16 v10, v146

    .line 6378
    .end local v4    # "val":I
    :goto_18e4
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v163, v9

    move-object/from16 v146, v10

    goto :goto_18b6

    .end local v9    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v163    # "u":Landroid/os/BatteryStats$Uid;
    :cond_18eb
    move-object/from16 v10, v146

    move-object/from16 v9, v163

    .line 6393
    .end local v3    # "i":I
    .end local v163    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v9    # "u":Landroid/os/BatteryStats$Uid;
    if-eqz v0, :cond_18fd

    .line 6394
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18fd

    .line 6376
    .end local v0    # "hasData":Z
    .end local v9    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v163    # "u":Landroid/os/BatteryStats$Uid;
    :cond_18f9
    move-object/from16 v10, v146

    move-object/from16 v9, v163

    .line 6398
    .end local v163    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v9    # "u":Landroid/os/BatteryStats$Uid;
    :cond_18fd
    :goto_18fd
    nop

    .line 6399
    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v0

    .line 6400
    .local v0, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    const-wide/16 v3, 0x0

    .local v3, "totalFullWakelock":J
    const-wide/16 v192, 0x0

    .local v192, "totalPartialWakelock":J
    const-wide/16 v194, 0x0

    .line 6401
    .local v194, "totalWindowWakelock":J
    const-wide/16 v196, 0x0

    .line 6402
    .local v196, "totalDrawWakelock":J
    const/4 v6, 0x0

    .line 6403
    .local v6, "countWakelock":I
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v127

    const/16 v50, 0x1

    add-int/lit8 v127, v127, -0x1

    move-object/from16 v163, v9

    move-object/from16 v146, v10

    move-object/from16 v166, v12

    move-object/from16 v140, v15

    move/from16 v15, v127

    move-wide/from16 v9, v192

    move-wide/from16 v192, v194

    move-object/from16 v127, v11

    move-wide/from16 v11, v196

    .end local v194    # "totalWindowWakelock":J
    .end local v196    # "totalDrawWakelock":J
    .local v9, "totalPartialWakelock":J
    .local v11, "totalDrawWakelock":J
    .local v15, "iw":I
    .restart local v163    # "u":Landroid/os/BatteryStats$Uid;
    .local v192, "totalWindowWakelock":J
    :goto_1925
    if-ltz v15, :cond_19f8

    .line 6404
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v185

    move-wide/from16 v194, v11

    .end local v11    # "totalDrawWakelock":J
    .local v194, "totalDrawWakelock":J
    move-object/from16 v11, v185

    check-cast v11, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 6405
    .local v11, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    move v12, v6

    .end local v6    # "countWakelock":I
    .local v12, "countWakelock":I
    const-string v6, ": "

    .line 6406
    .local v6, "linePrefix":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6407
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6408
    const-string v1, "    Wake lock "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6409
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6410
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v185

    move-wide/from16 v196, v3

    .end local v3    # "totalFullWakelock":J
    .local v196, "totalFullWakelock":J
    const-string v4, "full"

    move-object/from16 v1, v79

    move-object/from16 v79, v0

    move-object v0, v2

    move-wide/from16 v2, v174

    move-object/from16 v175, v1

    move-wide/from16 v224, v196

    move-wide/from16 v196, v9

    move-wide/from16 v9, v224

    move/from16 v174, v15

    move-object/from16 v1, v185

    move v15, v12

    move-object/from16 v12, p2

    .end local v12    # "countWakelock":I
    .local v0, "sb":Ljava/lang/StringBuilder;
    .local v2, "rawRealtime":J
    .local v9, "totalFullWakelock":J
    .local v15, "countWakelock":I
    .local v79, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v174, "iw":I
    .local v196, "totalPartialWakelock":J
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6412
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    .line 6413
    .local v1, "pTimer":Landroid/os/BatteryStats$Timer;
    const-string/jumbo v4, "partial"

    move/from16 v5, p4

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6415
    move-object/from16 v185, v1

    .end local v1    # "pTimer":Landroid/os/BatteryStats$Timer;
    .local v185, "pTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v185, :cond_1983

    invoke-virtual/range {v185 .. v185}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    goto :goto_1984

    :cond_1983
    const/4 v1, 0x0

    :goto_1984
    const-string v4, "background partial"

    move/from16 v5, p4

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6417
    const/4 v4, 0x2

    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-string/jumbo v4, "window"

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6419
    const/16 v1, 0x12

    invoke-virtual {v11, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-string v4, "draw"

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6421
    .end local v6    # "linePrefix":Ljava/lang/String;
    .local v1, "linePrefix":Ljava/lang/String;
    move-object/from16 v4, v137

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6422
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6423
    const/16 v96, 0x1

    .line 6424
    add-int/lit8 v6, v15, 0x1

    .line 6426
    .end local v15    # "countWakelock":I
    .local v6, "countWakelock":I
    move-object/from16 v137, v1

    const/4 v15, 0x1

    .end local v1    # "linePrefix":Ljava/lang/String;
    .local v137, "linePrefix":Ljava/lang/String;
    invoke-virtual {v11, v15}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    invoke-static {v1, v2, v3, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v198

    add-long v9, v9, v198

    .line 6428
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    invoke-static {v1, v2, v3, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v198

    add-long v196, v196, v198

    .line 6430
    const/4 v15, 0x2

    invoke-virtual {v11, v15}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    invoke-static {v1, v2, v3, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v198

    add-long v192, v192, v198

    .line 6432
    const/16 v1, 0x12

    invoke-virtual {v11, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    invoke-static {v1, v2, v3, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v198

    add-long v194, v194, v198

    .line 6403
    .end local v11    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v137    # "linePrefix":Ljava/lang/String;
    .end local v185    # "pTimer":Landroid/os/BatteryStats$Timer;
    add-int/lit8 v15, v174, -0x1

    move-wide/from16 v224, v2

    move-object v2, v0

    move-object/from16 v0, v79

    move-object/from16 v79, v175

    move-wide/from16 v174, v224

    move-object/from16 v137, v4

    move-wide v3, v9

    move-object v1, v12

    move-wide/from16 v11, v194

    move-wide/from16 v9, v196

    .end local v174    # "iw":I
    .local v15, "iw":I
    goto/16 :goto_1925

    .end local v79    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v194    # "totalDrawWakelock":J
    .end local v196    # "totalPartialWakelock":J
    .local v0, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v2, "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "totalFullWakelock":J
    .local v9, "totalPartialWakelock":J
    .local v11, "totalDrawWakelock":J
    .local v174, "rawRealtime":J
    :cond_19f8
    move-wide/from16 v196, v9

    move-wide/from16 v194, v11

    move-object v12, v1

    move-wide v9, v3

    move-object/from16 v4, v137

    move-object/from16 v224, v79

    move-object/from16 v79, v0

    move-object v0, v2

    move-wide/from16 v2, v174

    move/from16 v174, v15

    move-object/from16 v175, v224

    move v15, v6

    .line 6435
    .end local v3    # "totalFullWakelock":J
    .end local v6    # "countWakelock":I
    .end local v11    # "totalDrawWakelock":J
    .end local v174    # "rawRealtime":J
    .local v0, "sb":Ljava/lang/StringBuilder;
    .local v2, "rawRealtime":J
    .local v9, "totalFullWakelock":J
    .local v15, "countWakelock":I
    .restart local v79    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v194    # "totalDrawWakelock":J
    .restart local v196    # "totalPartialWakelock":J
    const/4 v11, 0x1

    if-le v15, v11, :cond_1afa

    .line 6438
    const-wide/16 v198, 0x0

    .line 6439
    .local v198, "actualTotalPartialWakelock":J
    const-wide/16 v200, 0x0

    .line 6440
    .local v200, "actualBgPartialWakelock":J
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_1a3a

    .line 6441
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    .line 6443
    .local v1, "aggTimer":Landroid/os/BatteryStats$Timer;
    nop

    .line 6444
    invoke-virtual {v1, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v198

    .line 6445
    invoke-virtual {v1}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    .line 6446
    .local v6, "bgAggTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v6, :cond_1a2d

    .line 6447
    invoke-virtual {v6, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v202

    goto :goto_1a2f

    :cond_1a2d
    move-wide/from16 v202, v46

    :goto_1a2f
    move-wide/from16 v200, v202

    move-wide/from16 v202, v13

    move-wide/from16 v13, v198

    move-wide/from16 v198, v2

    move-wide/from16 v1, v200

    goto :goto_1a42

    .line 6440
    .end local v1    # "aggTimer":Landroid/os/BatteryStats$Timer;
    .end local v6    # "bgAggTimer":Landroid/os/BatteryStats$Timer;
    :cond_1a3a
    move-wide/from16 v202, v13

    move-wide/from16 v13, v198

    move-wide/from16 v198, v2

    move-wide/from16 v1, v200

    .line 6450
    .end local v2    # "rawRealtime":J
    .end local v200    # "actualBgPartialWakelock":J
    .local v1, "actualBgPartialWakelock":J
    .local v13, "actualTotalPartialWakelock":J
    .local v198, "rawRealtime":J
    .local v202, "rawRealtimeMs":J
    :goto_1a42
    cmp-long v3, v13, v46

    if-nez v3, :cond_1a5d

    cmp-long v3, v1, v46

    if-nez v3, :cond_1a5d

    cmp-long v3, v9, v46

    if-nez v3, :cond_1a5d

    cmp-long v3, v196, v46

    if-nez v3, :cond_1a5d

    cmp-long v3, v192, v46

    if-eqz v3, :cond_1a57

    goto :goto_1a5d

    :cond_1a57
    move-wide/from16 v200, v9

    move-wide/from16 v9, v194

    goto/16 :goto_1b02

    .line 6453
    :cond_1a5d
    :goto_1a5d
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6454
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6455
    const-string v3, "    TOTAL wake: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6456
    const/4 v3, 0x0

    .line 6457
    .local v3, "needComma":Z
    cmp-long v6, v9, v46

    if-eqz v6, :cond_1a77

    .line 6458
    const/4 v3, 0x1

    .line 6459
    invoke-static {v0, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6460
    const-string v6, "full"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6462
    :cond_1a77
    cmp-long v6, v196, v46

    if-eqz v6, :cond_1a8e

    .line 6463
    if-eqz v3, :cond_1a80

    .line 6464
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6466
    :cond_1a80
    const/4 v3, 0x1

    .line 6467
    move-wide/from16 v200, v9

    move-wide/from16 v9, v196

    .end local v196    # "totalPartialWakelock":J
    .local v9, "totalPartialWakelock":J
    .local v200, "totalFullWakelock":J
    invoke-static {v0, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6468
    const-string v6, "blamed partial"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a92

    .line 6462
    .end local v200    # "totalFullWakelock":J
    .local v9, "totalFullWakelock":J
    .restart local v196    # "totalPartialWakelock":J
    :cond_1a8e
    move-wide/from16 v200, v9

    move-wide/from16 v9, v196

    .line 6470
    .end local v196    # "totalPartialWakelock":J
    .local v9, "totalPartialWakelock":J
    .restart local v200    # "totalFullWakelock":J
    :goto_1a92
    cmp-long v6, v13, v46

    if-eqz v6, :cond_1aa4

    .line 6471
    if-eqz v3, :cond_1a9b

    .line 6472
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6474
    :cond_1a9b
    const/4 v3, 0x1

    .line 6475
    invoke-static {v0, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6476
    const-string v6, "actual partial"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6478
    :cond_1aa4
    cmp-long v6, v1, v46

    if-eqz v6, :cond_1ab6

    .line 6479
    if-eqz v3, :cond_1aad

    .line 6480
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6482
    :cond_1aad
    const/4 v3, 0x1

    .line 6483
    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6484
    const-string v6, "actual background partial"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6486
    :cond_1ab6
    cmp-long v6, v192, v46

    if-eqz v6, :cond_1ace

    .line 6487
    if-eqz v3, :cond_1abf

    .line 6488
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6490
    :cond_1abf
    const/4 v3, 0x1

    .line 6491
    move-wide/from16 v196, v9

    move-wide/from16 v9, v192

    .end local v192    # "totalWindowWakelock":J
    .local v9, "totalWindowWakelock":J
    .restart local v196    # "totalPartialWakelock":J
    invoke-static {v0, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6492
    const-string/jumbo v6, "window"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ad2

    .line 6486
    .end local v196    # "totalPartialWakelock":J
    .local v9, "totalPartialWakelock":J
    .restart local v192    # "totalWindowWakelock":J
    :cond_1ace
    move-wide/from16 v196, v9

    move-wide/from16 v9, v192

    .line 6494
    .end local v192    # "totalWindowWakelock":J
    .local v9, "totalWindowWakelock":J
    .restart local v196    # "totalPartialWakelock":J
    :goto_1ad2
    cmp-long v6, v194, v46

    if-eqz v6, :cond_1aeb

    .line 6495
    if-eqz v3, :cond_1add

    .line 6496
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6498
    :cond_1add
    const/4 v3, 0x1

    .line 6499
    move-wide/from16 v192, v9

    move-wide/from16 v9, v194

    .end local v194    # "totalDrawWakelock":J
    .local v9, "totalDrawWakelock":J
    .restart local v192    # "totalWindowWakelock":J
    invoke-static {v0, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6500
    const-string v6, "draw"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1aef

    .line 6494
    .end local v192    # "totalWindowWakelock":J
    .local v9, "totalWindowWakelock":J
    .restart local v194    # "totalDrawWakelock":J
    :cond_1aeb
    move-wide/from16 v192, v9

    move-wide/from16 v9, v194

    .line 6502
    .end local v194    # "totalDrawWakelock":J
    .local v9, "totalDrawWakelock":J
    .restart local v192    # "totalWindowWakelock":J
    :goto_1aef
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6503
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1b02

    .line 6435
    .end local v1    # "actualBgPartialWakelock":J
    .end local v3    # "needComma":Z
    .end local v198    # "rawRealtime":J
    .end local v200    # "totalFullWakelock":J
    .end local v202    # "rawRealtimeMs":J
    .restart local v2    # "rawRealtime":J
    .local v9, "totalFullWakelock":J
    .local v13, "rawRealtimeMs":J
    .restart local v194    # "totalDrawWakelock":J
    :cond_1afa
    move-wide/from16 v198, v2

    move-wide/from16 v200, v9

    move-wide/from16 v202, v13

    move-wide/from16 v9, v194

    .line 6508
    .end local v2    # "rawRealtime":J
    .end local v13    # "rawRealtimeMs":J
    .end local v194    # "totalDrawWakelock":J
    .local v9, "totalDrawWakelock":J
    .restart local v198    # "rawRealtime":J
    .restart local v200    # "totalFullWakelock":J
    .restart local v202    # "rawRealtimeMs":J
    :goto_1b02
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v11

    .line 6509
    .local v11, "mcTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v11, :cond_1b43

    .line 6510
    move-wide/from16 v2, v198

    .end local v198    # "rawRealtime":J
    .restart local v2    # "rawRealtime":J
    invoke-virtual {v11, v2, v3, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v13

    .line 6511
    .local v13, "multicastWakeLockTimeMicros":J
    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v1

    .line 6513
    .local v1, "multicastWakeLockCount":I
    cmp-long v6, v13, v46

    if-lez v6, :cond_1b40

    .line 6514
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6515
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6516
    const-string v6, "    WiFi Multicast Wakelock"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6517
    const-string v6, " count = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6519
    const-string v6, " time = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6520
    add-long v194, v13, v35

    move-wide/from16 v198, v9

    .end local v9    # "totalDrawWakelock":J
    .local v198, "totalDrawWakelock":J
    div-long v9, v194, v19

    invoke-static {v0, v9, v10}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 6521
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1b47

    .line 6513
    .end local v198    # "totalDrawWakelock":J
    .restart local v9    # "totalDrawWakelock":J
    :cond_1b40
    move-wide/from16 v198, v9

    .end local v9    # "totalDrawWakelock":J
    .restart local v198    # "totalDrawWakelock":J
    goto :goto_1b47

    .line 6509
    .end local v1    # "multicastWakeLockCount":I
    .end local v2    # "rawRealtime":J
    .end local v13    # "multicastWakeLockTimeMicros":J
    .restart local v9    # "totalDrawWakelock":J
    .local v198, "rawRealtime":J
    :cond_1b43
    move-wide/from16 v2, v198

    move-wide/from16 v198, v9

    .line 6525
    .end local v9    # "totalDrawWakelock":J
    .restart local v2    # "rawRealtime":J
    .local v198, "totalDrawWakelock":J
    :goto_1b47
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v9

    .line 6526
    .local v9, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v50, 0x1

    add-int/lit8 v1, v1, -0x1

    .local v1, "isy":I
    :goto_1b53
    if-ltz v1, :cond_1c18

    .line 6527
    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Timer;

    .line 6529
    .local v10, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v10, v2, v3, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v13

    add-long v13, v13, v35

    div-long v13, v13, v19

    .line 6530
    .local v13, "totalTime":J
    invoke-virtual {v10, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    .line 6531
    .local v6, "count":I
    move-object/from16 v174, v4

    invoke-virtual {v10}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    .line 6532
    .local v4, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v4, :cond_1b7a

    .line 6533
    move-object/from16 v194, v10

    move-object/from16 v185, v11

    move-wide/from16 v10, v202

    .end local v11    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .end local v202    # "rawRealtimeMs":J
    .local v10, "rawRealtimeMs":J
    .local v185, "mcTimer":Landroid/os/BatteryStats$Timer;
    .local v194, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v4, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v202

    goto :goto_1b82

    .end local v185    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .end local v194    # "timer":Landroid/os/BatteryStats$Timer;
    .local v10, "timer":Landroid/os/BatteryStats$Timer;
    .restart local v11    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .restart local v202    # "rawRealtimeMs":J
    :cond_1b7a
    move-object/from16 v194, v10

    move-object/from16 v185, v11

    move-wide/from16 v10, v202

    .end local v11    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .end local v202    # "rawRealtimeMs":J
    .local v10, "rawRealtimeMs":J
    .restart local v185    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .restart local v194    # "timer":Landroid/os/BatteryStats$Timer;
    const-wide/16 v202, -0x1

    :goto_1b82
    move-wide/from16 v204, v202

    .line 6534
    .local v204, "bgTime":J
    if-eqz v4, :cond_1b8b

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v137

    goto :goto_1b8d

    :cond_1b8b
    const/16 v137, -0x1

    :goto_1b8d
    move/from16 v195, v137

    .line 6535
    .local v195, "bgCount":I
    move-object/from16 v202, v4

    const/4 v4, 0x0

    .end local v4    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .local v202, "bgTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6536
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6537
    const-string v4, "    Sync "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6538
    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6539
    move-object/from16 v4, v136

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6540
    cmp-long v136, v13, v46

    if-eqz v136, :cond_1bed

    .line 6541
    invoke-static {v0, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6542
    move/from16 v136, v1

    .end local v1    # "isy":I
    .local v136, "isy":I
    const-string/jumbo v1, "realtime ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6543
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6544
    move-object/from16 v1, v166

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6545
    cmp-long v137, v204, v46

    if-lez v137, :cond_1be2

    .line 6546
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6547
    move-wide/from16 v206, v13

    move-wide/from16 v13, v204

    .end local v204    # "bgTime":J
    .local v13, "bgTime":J
    .local v206, "totalTime":J
    invoke-static {v0, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6548
    move/from16 v166, v6

    .end local v6    # "count":I
    .local v166, "count":I
    const-string v6, "background ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6549
    move/from16 v6, v195

    .end local v195    # "bgCount":I
    .local v6, "bgCount":I
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v137, v6

    goto :goto_1c00

    .line 6545
    .end local v166    # "count":I
    .end local v206    # "totalTime":J
    .local v6, "count":I
    .local v13, "totalTime":J
    .restart local v195    # "bgCount":I
    .restart local v204    # "bgTime":J
    :cond_1be2
    move/from16 v166, v6

    move-wide/from16 v206, v13

    move/from16 v6, v195

    move-wide/from16 v13, v204

    .end local v195    # "bgCount":I
    .end local v204    # "bgTime":J
    .local v6, "bgCount":I
    .local v13, "bgTime":J
    .restart local v166    # "count":I
    .restart local v206    # "totalTime":J
    move/from16 v137, v6

    goto :goto_1c00

    .line 6553
    .end local v136    # "isy":I
    .end local v166    # "count":I
    .end local v206    # "totalTime":J
    .restart local v1    # "isy":I
    .local v6, "count":I
    .local v13, "totalTime":J
    .restart local v195    # "bgCount":I
    .restart local v204    # "bgTime":J
    :cond_1bed
    move/from16 v136, v1

    move-wide/from16 v206, v13

    move-object/from16 v1, v166

    move-wide/from16 v13, v204

    move/from16 v166, v6

    move/from16 v6, v195

    .end local v1    # "isy":I
    .end local v195    # "bgCount":I
    .end local v204    # "bgTime":J
    .local v6, "bgCount":I
    .local v13, "bgTime":J
    .restart local v136    # "isy":I
    .restart local v166    # "count":I
    .restart local v206    # "totalTime":J
    move/from16 v137, v6

    .end local v6    # "bgCount":I
    .local v137, "bgCount":I
    const-string v6, "(not used)"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6555
    :goto_1c00
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6556
    const/16 v96, 0x1

    .line 6526
    .end local v13    # "bgTime":J
    .end local v137    # "bgCount":I
    .end local v166    # "count":I
    .end local v194    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v202    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v206    # "totalTime":J
    add-int/lit8 v6, v136, -0x1

    move-object/from16 v166, v1

    move-object/from16 v136, v4

    move v1, v6

    move-wide/from16 v202, v10

    move-object/from16 v4, v174

    move-object/from16 v11, v185

    .end local v136    # "isy":I
    .local v6, "isy":I
    goto/16 :goto_1b53

    .end local v6    # "isy":I
    .end local v10    # "rawRealtimeMs":J
    .end local v185    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .restart local v1    # "isy":I
    .restart local v11    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .local v202, "rawRealtimeMs":J
    :cond_1c18
    move-object/from16 v174, v4

    move-object/from16 v185, v11

    move-object/from16 v4, v136

    move-wide/from16 v10, v202

    move/from16 v136, v1

    move-object/from16 v1, v166

    .line 6559
    .end local v1    # "isy":I
    .end local v11    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .end local v202    # "rawRealtimeMs":J
    .restart local v10    # "rawRealtimeMs":J
    .restart local v185    # "mcTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v13

    .line 6560
    .local v13, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/16 v50, 0x1

    add-int/lit8 v6, v6, -0x1

    .local v6, "ij":I
    :goto_1c30
    if-ltz v6, :cond_1cd8

    .line 6561
    invoke-virtual {v13, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Timer;

    .line 6563
    .local v14, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v14, v2, v3, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v194

    add-long v194, v194, v35

    move-wide/from16 v202, v2

    .end local v2    # "rawRealtime":J
    .local v202, "rawRealtime":J
    div-long v2, v194, v19

    .line 6564
    .local v2, "totalTime":J
    move-object/from16 v136, v9

    .end local v9    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v136, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v14, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v9

    .line 6565
    .local v9, "count":I
    move-object/from16 v166, v14

    .end local v14    # "timer":Landroid/os/BatteryStats$Timer;
    .local v166, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual/range {v166 .. v166}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    .line 6566
    .local v14, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v14, :cond_1c55

    .line 6567
    invoke-virtual {v14, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v194

    goto :goto_1c57

    :cond_1c55
    const-wide/16 v194, -0x1

    :goto_1c57
    move-wide/from16 v204, v194

    .line 6568
    .restart local v204    # "bgTime":J
    if-eqz v14, :cond_1c60

    invoke-virtual {v14, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v194

    goto :goto_1c62

    :cond_1c60
    const/16 v194, -0x1

    :goto_1c62
    move/from16 v195, v194

    .line 6569
    .restart local v195    # "bgCount":I
    move-object/from16 v194, v14

    const/4 v14, 0x0

    .end local v14    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .local v194, "bgTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6570
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6571
    const-string v14, "    Job "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6572
    invoke-virtual {v13, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6573
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6574
    cmp-long v14, v2, v46

    if-eqz v14, :cond_1cb8

    .line 6575
    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6576
    const-string/jumbo v14, "realtime ("

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6577
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6578
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6579
    cmp-long v14, v204, v46

    if-lez v14, :cond_1caf

    .line 6580
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6581
    move-wide/from16 v206, v2

    move-wide/from16 v2, v204

    .end local v204    # "bgTime":J
    .local v2, "bgTime":J
    .restart local v206    # "totalTime":J
    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6582
    const-string v14, "background ("

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6583
    move/from16 v14, v195

    .end local v195    # "bgCount":I
    .local v14, "bgCount":I
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6584
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v195, v1

    goto :goto_1cc5

    .line 6579
    .end local v14    # "bgCount":I
    .end local v206    # "totalTime":J
    .local v2, "totalTime":J
    .restart local v195    # "bgCount":I
    .restart local v204    # "bgTime":J
    :cond_1caf
    move-wide/from16 v206, v2

    move/from16 v14, v195

    move-wide/from16 v2, v204

    .end local v195    # "bgCount":I
    .end local v204    # "bgTime":J
    .local v2, "bgTime":J
    .restart local v14    # "bgCount":I
    .restart local v206    # "totalTime":J
    move-object/from16 v195, v1

    goto :goto_1cc5

    .line 6587
    .end local v14    # "bgCount":I
    .end local v206    # "totalTime":J
    .local v2, "totalTime":J
    .restart local v195    # "bgCount":I
    .restart local v204    # "bgTime":J
    :cond_1cb8
    move-wide/from16 v206, v2

    move/from16 v14, v195

    move-wide/from16 v2, v204

    .end local v195    # "bgCount":I
    .end local v204    # "bgTime":J
    .local v2, "bgTime":J
    .restart local v14    # "bgCount":I
    .restart local v206    # "totalTime":J
    move-object/from16 v195, v1

    const-string v1, "(not used)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6589
    :goto_1cc5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6590
    const/16 v96, 0x1

    .line 6560
    .end local v2    # "bgTime":J
    .end local v9    # "count":I
    .end local v14    # "bgCount":I
    .end local v166    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v194    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v206    # "totalTime":J
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v9, v136

    move-object/from16 v1, v195

    move-wide/from16 v2, v202

    goto/16 :goto_1c30

    .end local v136    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v202    # "rawRealtime":J
    .local v2, "rawRealtime":J
    .local v9, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_1cd8
    move-object/from16 v195, v1

    move-wide/from16 v202, v2

    move-object/from16 v136, v9

    .line 6593
    .end local v2    # "rawRealtime":J
    .end local v6    # "ij":I
    .end local v9    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v136    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v202    # "rawRealtime":J
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v9

    .line 6594
    .local v9, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v50, 0x1

    add-int/lit8 v1, v1, -0x1

    .local v1, "ic":I
    :goto_1cea
    if-ltz v1, :cond_1d51

    .line 6595
    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    .line 6596
    .local v2, "types":Landroid/util/SparseIntArray;
    if-eqz v2, :cond_1d44

    .line 6597
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6598
    const-string v3, "    Job Completions "

    invoke-virtual {v12, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6599
    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6600
    const-string v3, ":"

    invoke-virtual {v12, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6601
    const/4 v3, 0x0

    .local v3, "it":I
    :goto_1d0b
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_1d3a

    .line 6602
    move-object/from16 v14, v146

    invoke-virtual {v12, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6603
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6604
    move-object/from16 v6, v148

    invoke-virtual {v12, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6605
    move/from16 v137, v1

    .end local v1    # "ic":I
    .local v137, "ic":I
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 6606
    const-string/jumbo v1, "x)"

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6601
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v137

    goto :goto_1d0b

    .end local v137    # "ic":I
    .restart local v1    # "ic":I
    :cond_1d3a
    move/from16 v137, v1

    move-object/from16 v14, v146

    move-object/from16 v6, v148

    .line 6608
    .end local v1    # "ic":I
    .end local v3    # "it":I
    .restart local v137    # "ic":I
    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    goto :goto_1d4a

    .line 6596
    .end local v137    # "ic":I
    .restart local v1    # "ic":I
    :cond_1d44
    move/from16 v137, v1

    move-object/from16 v14, v146

    move-object/from16 v6, v148

    .line 6594
    .end local v1    # "ic":I
    .end local v2    # "types":Landroid/util/SparseIntArray;
    .restart local v137    # "ic":I
    :goto_1d4a
    add-int/lit8 v1, v137, -0x1

    move-object/from16 v148, v6

    move-object/from16 v146, v14

    .end local v137    # "ic":I
    .restart local v1    # "ic":I
    goto :goto_1cea

    :cond_1d51
    move/from16 v137, v1

    move-object/from16 v14, v146

    move-object/from16 v6, v148

    .line 6612
    .end local v1    # "ic":I
    move-object/from16 v1, v163

    .end local v163    # "u":Landroid/os/BatteryStats$Uid;
    .local v1, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v1, v0, v5}, Landroid/os/BatteryStats$Uid;->getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V

    .line 6613
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1d6e

    .line 6614
    const-string v2, "    Jobs deferred on launch "

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6617
    :cond_1d6e
    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Flashlight"

    move-object v3, v1

    move-object v1, v0

    move-object v0, v12

    move-object v12, v3

    move-object/from16 v163, v6

    move-object/from16 v146, v9

    move-object/from16 v148, v13

    move-object/from16 v137, v174

    move-object/from16 v13, v195

    move-object/from16 v6, p3

    move-object v9, v4

    move-wide/from16 v3, v202

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v13    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v202    # "rawRealtime":J
    .local v1, "sb":Ljava/lang/StringBuilder;
    .local v3, "rawRealtime":J
    .local v12, "u":Landroid/os/BatteryStats$Uid;
    .local v146, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .local v148, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object v0, v1

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    or-int v96, v96, v2

    .line 6619
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Camera"

    move/from16 v5, p4

    move-object/from16 v0, p2

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object v0, v1

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    or-int v96, v96, v2

    .line 6621
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Video"

    move-object/from16 v0, p2

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object v0, v1

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    or-int v96, v96, v2

    .line 6623
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Audio"

    move-object/from16 v0, p2

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v224, v1

    move-object v1, v0

    move-object/from16 v0, v224

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    or-int v2, v96, v2

    .line 6626
    .end local v96    # "uidActivity":Z
    .local v2, "uidActivity":Z
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v7

    .line 6627
    .local v7, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    move/from16 v96, v15

    .end local v15    # "countWakelock":I
    .local v96, "countWakelock":I
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 6628
    .local v15, "NSE":I
    const/16 v166, 0x0

    move/from16 v224, v166

    move/from16 v166, v2

    move/from16 v2, v224

    .local v2, "ise":I
    .local v166, "uidActivity":Z
    :goto_1dd3
    if-ge v2, v15, :cond_1ead

    .line 6629
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v174

    check-cast v174, Landroid/os/BatteryStats$Uid$Sensor;

    .line 6630
    .local v174, "se":Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v194

    .line 6631
    .local v194, "sensorNumber":I
    move/from16 v195, v2

    const/4 v2, 0x0

    .end local v2    # "ise":I
    .local v195, "ise":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6632
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6633
    const-string v2, "    Sensor "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6634
    invoke-virtual/range {v174 .. v174}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v2

    .line 6635
    .local v2, "handle":I
    const/16 v6, -0x2710

    if-ne v2, v6, :cond_1dfb

    .line 6636
    const-string v6, "GPS"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1dfe

    .line 6638
    :cond_1dfb
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6640
    :goto_1dfe
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6642
    invoke-virtual/range {v174 .. v174}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    .line 6643
    .local v6, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v6, :cond_1e87

    .line 6645
    invoke-virtual {v6, v3, v4, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v202

    add-long v202, v202, v35

    move-wide/from16 v204, v3

    move v4, v2

    .end local v2    # "handle":I
    .end local v3    # "rawRealtime":J
    .local v4, "handle":I
    .local v204, "rawRealtime":J
    div-long v2, v202, v19

    .line 6647
    .local v2, "totalTime":J
    move/from16 v202, v4

    .end local v4    # "handle":I
    .local v202, "handle":I
    invoke-virtual {v6, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    .line 6648
    .local v4, "count":I
    move-object/from16 v203, v7

    .end local v7    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .local v203, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v174 .. v174}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v7

    .line 6649
    .local v7, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v7, :cond_1e25

    invoke-virtual {v7, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v206

    goto :goto_1e27

    :cond_1e25
    const/16 v206, 0x0

    :goto_1e27
    move/from16 v207, v206

    .line 6651
    .local v207, "bgCount":I
    move-object/from16 v206, v14

    move/from16 v208, v15

    .end local v15    # "NSE":I
    .local v208, "NSE":I
    invoke-virtual {v6, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v14

    .line 6652
    .local v14, "actualTime":J
    if-eqz v7, :cond_1e38

    .line 6653
    invoke-virtual {v7, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v209

    goto :goto_1e3a

    :cond_1e38
    move-wide/from16 v209, v46

    :goto_1e3a
    move-wide/from16 v211, v209

    .line 6656
    .local v211, "bgActualTime":J
    cmp-long v209, v2, v46

    if-eqz v209, :cond_1e7d

    .line 6657
    cmp-long v209, v14, v2

    if-eqz v209, :cond_1e4f

    .line 6658
    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6659
    move-wide/from16 v209, v2

    .end local v2    # "totalTime":J
    .local v209, "totalTime":J
    const-string v2, "blamed realtime, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e51

    .line 6657
    .end local v209    # "totalTime":J
    .restart local v2    # "totalTime":J
    :cond_1e4f
    move-wide/from16 v209, v2

    .line 6662
    .end local v2    # "totalTime":J
    .restart local v209    # "totalTime":J
    :goto_1e51
    invoke-static {v0, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6663
    const-string/jumbo v2, "realtime ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6664
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6665
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6667
    cmp-long v2, v211, v46

    if-nez v2, :cond_1e66

    if-lez v207, :cond_1e86

    .line 6668
    :cond_1e66
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6669
    move-wide/from16 v2, v211

    .end local v211    # "bgActualTime":J
    .local v2, "bgActualTime":J
    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6670
    nop

    .end local v2    # "bgActualTime":J
    .restart local v211    # "bgActualTime":J
    const-string v2, "background ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6671
    move/from16 v2, v207

    .end local v207    # "bgCount":I
    .local v2, "bgCount":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6672
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e86

    .line 6675
    .end local v209    # "totalTime":J
    .local v2, "totalTime":J
    .restart local v207    # "bgCount":I
    :cond_1e7d
    move-wide/from16 v209, v2

    move/from16 v2, v207

    .end local v207    # "bgCount":I
    .local v2, "bgCount":I
    .restart local v209    # "totalTime":J
    const-string v3, "(not used)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6677
    .end local v2    # "bgCount":I
    .end local v4    # "count":I
    .end local v7    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v14    # "actualTime":J
    .end local v209    # "totalTime":J
    .end local v211    # "bgActualTime":J
    :cond_1e86
    :goto_1e86
    goto :goto_1e96

    .line 6678
    .end local v202    # "handle":I
    .end local v203    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v204    # "rawRealtime":J
    .end local v208    # "NSE":I
    .local v2, "handle":I
    .restart local v3    # "rawRealtime":J
    .local v7, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .restart local v15    # "NSE":I
    :cond_1e87
    move/from16 v202, v2

    move-wide/from16 v204, v3

    move-object/from16 v203, v7

    move-object/from16 v206, v14

    move/from16 v208, v15

    .end local v2    # "handle":I
    .end local v3    # "rawRealtime":J
    .end local v7    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v15    # "NSE":I
    .restart local v202    # "handle":I
    .restart local v203    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .restart local v204    # "rawRealtime":J
    .restart local v208    # "NSE":I
    const-string v2, "(not used)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6681
    :goto_1e96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6682
    const/16 v166, 0x1

    .line 6628
    .end local v6    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v174    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v194    # "sensorNumber":I
    .end local v202    # "handle":I
    add-int/lit8 v2, v195, 0x1

    move-object/from16 v6, p3

    move-object/from16 v7, v203

    move-wide/from16 v3, v204

    move-object/from16 v14, v206

    move/from16 v15, v208

    .end local v195    # "ise":I
    .local v2, "ise":I
    goto/16 :goto_1dd3

    .end local v203    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v204    # "rawRealtime":J
    .end local v208    # "NSE":I
    .restart local v3    # "rawRealtime":J
    .restart local v7    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .restart local v15    # "NSE":I
    :cond_1ead
    move/from16 v195, v2

    move-wide/from16 v204, v3

    move-object/from16 v203, v7

    move-object/from16 v206, v14

    move/from16 v208, v15

    .line 6685
    .end local v2    # "ise":I
    .end local v3    # "rawRealtime":J
    .end local v7    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v15    # "NSE":I
    .restart local v203    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .restart local v204    # "rawRealtime":J
    .restart local v208    # "NSE":I
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Vibrator"

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    move-object/from16 v6, p3

    move-wide/from16 v3, v204

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v204    # "rawRealtime":J
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "rawRealtime":J
    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object v0, v1

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    or-int v13, v166, v2

    .line 6687
    .end local v166    # "uidActivity":Z
    .local v13, "uidActivity":Z
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Foreground activities"

    move/from16 v5, p4

    move-object/from16 v0, p2

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object v0, v1

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    or-int/2addr v13, v2

    .line 6689
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Foreground services"

    move-object/from16 v0, p2

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v224, v1

    move-object v1, v0

    move-object/from16 v0, v224

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    or-int/2addr v2, v13

    .line 6692
    .end local v13    # "uidActivity":Z
    .local v2, "uidActivity":Z
    const-wide/16 v13, 0x0

    .line 6693
    .local v13, "totalStateTime":J
    const/4 v7, 0x0

    .local v7, "ips":I
    :goto_1ef0
    const/4 v15, 0x7

    if-ge v7, v15, :cond_1f30

    .line 6694
    invoke-virtual {v12, v7, v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v194

    .line 6695
    .local v194, "time":J
    cmp-long v15, v194, v46

    if-lez v15, :cond_1f28

    .line 6696
    add-long v13, v13, v194

    .line 6697
    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6698
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6699
    const-string v15, "    "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6700
    sget-object v15, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v15, v15, v7

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6701
    const-string v15, " for: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6702
    add-long v204, v194, v35

    move-wide/from16 v209, v3

    move v4, v2

    .end local v2    # "uidActivity":Z
    .end local v3    # "rawRealtime":J
    .local v4, "uidActivity":Z
    .local v209, "rawRealtime":J
    div-long v2, v204, v19

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6703
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6704
    const/4 v2, 0x1

    .end local v4    # "uidActivity":Z
    .restart local v2    # "uidActivity":Z
    goto :goto_1f2b

    .line 6695
    .end local v209    # "rawRealtime":J
    .restart local v3    # "rawRealtime":J
    :cond_1f28
    move-wide/from16 v209, v3

    move v4, v2

    .line 6693
    .end local v3    # "rawRealtime":J
    .end local v194    # "time":J
    .restart local v209    # "rawRealtime":J
    :goto_1f2b
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v3, v209

    goto :goto_1ef0

    .end local v209    # "rawRealtime":J
    .restart local v3    # "rawRealtime":J
    :cond_1f30
    move-wide/from16 v209, v3

    move v4, v2

    .line 6707
    .end local v2    # "uidActivity":Z
    .end local v3    # "rawRealtime":J
    .end local v7    # "ips":I
    .restart local v4    # "uidActivity":Z
    .restart local v209    # "rawRealtime":J
    cmp-long v2, v13, v46

    if-lez v2, :cond_1f51

    .line 6708
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6709
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6710
    const-string v2, "    Total running: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6711
    add-long v2, v13, v35

    div-long v2, v2, v19

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6712
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6715
    :cond_1f51
    invoke-virtual {v12, v5}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v2

    .line 6716
    .local v2, "userCpuTimeUs":J
    invoke-virtual {v12, v5}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v194

    .line 6717
    .local v194, "systemCpuTimeUs":J
    cmp-long v7, v2, v46

    if-gtz v7, :cond_1f65

    cmp-long v7, v194, v46

    if-lez v7, :cond_1f62

    goto :goto_1f65

    :cond_1f62
    move-wide/from16 v204, v2

    goto :goto_1f8a

    .line 6718
    :cond_1f65
    :goto_1f65
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6719
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6720
    const-string v7, "    Total cpu time: u="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6721
    move-wide/from16 v204, v2

    .end local v2    # "userCpuTimeUs":J
    .local v204, "userCpuTimeUs":J
    div-long v2, v204, v19

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6722
    const-string/jumbo v2, "s="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6723
    div-long v2, v194, v19

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6724
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6727
    :goto_1f8a
    invoke-virtual {v12, v5}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v2

    .line 6728
    .local v2, "cpuFreqTimes":[J
    if-eqz v2, :cond_1fba

    .line 6729
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6730
    const-string v3, "    Total cpu time per freq:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6731
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f9a
    array-length v7, v2

    if-ge v3, v7, :cond_1faf

    .line 6732
    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v15, v2

    move/from16 v166, v3

    .end local v2    # "cpuFreqTimes":[J
    .end local v3    # "i":I
    .local v15, "cpuFreqTimes":[J
    .local v166, "i":I
    aget-wide v2, v15, v166

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6731
    add-int/lit8 v3, v166, 0x1

    move-object v2, v15

    .end local v166    # "i":I
    .restart local v3    # "i":I
    goto :goto_1f9a

    .end local v15    # "cpuFreqTimes":[J
    .restart local v2    # "cpuFreqTimes":[J
    :cond_1faf
    move-object v15, v2

    move/from16 v166, v3

    .line 6734
    .end local v2    # "cpuFreqTimes":[J
    .end local v3    # "i":I
    .restart local v15    # "cpuFreqTimes":[J
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1fbb

    .line 6728
    .end local v15    # "cpuFreqTimes":[J
    .restart local v2    # "cpuFreqTimes":[J
    :cond_1fba
    move-object v15, v2

    .line 6736
    .end local v2    # "cpuFreqTimes":[J
    .restart local v15    # "cpuFreqTimes":[J
    :goto_1fbb
    invoke-virtual {v12, v5}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v2

    .line 6737
    .local v2, "screenOffCpuFreqTimes":[J
    if-eqz v2, :cond_1fee

    .line 6738
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6739
    const-string v3, "    Total screen-off cpu time per freq:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6740
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1fcb
    array-length v7, v2

    if-ge v3, v7, :cond_1fe2

    .line 6741
    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v166, v2

    move/from16 v174, v3

    .end local v2    # "screenOffCpuFreqTimes":[J
    .end local v3    # "i":I
    .local v166, "screenOffCpuFreqTimes":[J
    .local v174, "i":I
    aget-wide v2, v166, v174

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6740
    add-int/lit8 v3, v174, 0x1

    move-object/from16 v2, v166

    .end local v174    # "i":I
    .restart local v3    # "i":I
    goto :goto_1fcb

    .end local v166    # "screenOffCpuFreqTimes":[J
    .restart local v2    # "screenOffCpuFreqTimes":[J
    :cond_1fe2
    move-object/from16 v166, v2

    move/from16 v174, v3

    .line 6743
    .end local v2    # "screenOffCpuFreqTimes":[J
    .end local v3    # "i":I
    .restart local v166    # "screenOffCpuFreqTimes":[J
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1ff0

    .line 6737
    .end local v166    # "screenOffCpuFreqTimes":[J
    .restart local v2    # "screenOffCpuFreqTimes":[J
    :cond_1fee
    move-object/from16 v166, v2

    .line 6746
    .end local v2    # "screenOffCpuFreqTimes":[J
    .restart local v166    # "screenOffCpuFreqTimes":[J
    :goto_1ff0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v2

    new-array v2, v2, [J

    .line 6747
    .local v2, "timesInFreqMs":[J
    const/4 v3, 0x0

    .local v3, "procState":I
    :goto_1ffb
    const/4 v7, 0x7

    if-ge v3, v7, :cond_2097

    .line 6748
    invoke-virtual {v12, v2, v3}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v7

    if-eqz v7, :cond_2045

    .line 6749
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6750
    const-string v7, "    Cpu times per freq at state "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v174, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    move/from16 v202, v4

    .end local v4    # "uidActivity":Z
    .local v202, "uidActivity":Z
    aget-object v4, v174, v3

    .line 6751
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6752
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_201e
    array-length v7, v2

    if-ge v4, v7, :cond_2037

    .line 6753
    move/from16 v174, v4

    move-object/from16 v7, v206

    .end local v4    # "i":I
    .restart local v174    # "i":I
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v206, v10

    .end local v10    # "rawRealtimeMs":J
    .local v206, "rawRealtimeMs":J
    aget-wide v10, v2, v174

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6752
    add-int/lit8 v4, v174, 0x1

    move-wide/from16 v10, v206

    move-object/from16 v206, v7

    .end local v174    # "i":I
    .restart local v4    # "i":I
    goto :goto_201e

    .end local v206    # "rawRealtimeMs":J
    .restart local v10    # "rawRealtimeMs":J
    :cond_2037
    move/from16 v174, v4

    move-object/from16 v7, v206

    move-wide/from16 v206, v10

    .line 6755
    .end local v4    # "i":I
    .end local v10    # "rawRealtimeMs":J
    .restart local v206    # "rawRealtimeMs":J
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_204b

    .line 6748
    .end local v202    # "uidActivity":Z
    .end local v206    # "rawRealtimeMs":J
    .local v4, "uidActivity":Z
    .restart local v10    # "rawRealtimeMs":J
    :cond_2045
    move/from16 v202, v4

    move-object/from16 v7, v206

    move-wide/from16 v206, v10

    .line 6758
    .end local v4    # "uidActivity":Z
    .end local v10    # "rawRealtimeMs":J
    .restart local v202    # "uidActivity":Z
    .restart local v206    # "rawRealtimeMs":J
    :goto_204b
    invoke-virtual {v12, v2, v3}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes([JI)Z

    move-result v4

    if-eqz v4, :cond_2089

    .line 6759
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6760
    const-string v4, "   Screen-off cpu times per freq at state "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v10, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v10, v10, v3

    .line 6761
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v10, 0x3a

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6762
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2069
    array-length v10, v2

    if-ge v4, v10, :cond_207e

    .line 6763
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    move/from16 v174, v3

    .end local v2    # "timesInFreqMs":[J
    .end local v3    # "procState":I
    .local v11, "timesInFreqMs":[J
    .local v174, "procState":I
    aget-wide v2, v11, v4

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6762
    add-int/lit8 v4, v4, 0x1

    move-object v2, v11

    move/from16 v3, v174

    goto :goto_2069

    .end local v11    # "timesInFreqMs":[J
    .end local v174    # "procState":I
    .restart local v2    # "timesInFreqMs":[J
    .restart local v3    # "procState":I
    :cond_207e
    move-object v11, v2

    move/from16 v174, v3

    .line 6765
    .end local v2    # "timesInFreqMs":[J
    .end local v3    # "procState":I
    .end local v4    # "i":I
    .restart local v11    # "timesInFreqMs":[J
    .restart local v174    # "procState":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_208c

    .line 6758
    .end local v11    # "timesInFreqMs":[J
    .end local v174    # "procState":I
    .restart local v2    # "timesInFreqMs":[J
    .restart local v3    # "procState":I
    :cond_2089
    move-object v11, v2

    move/from16 v174, v3

    .line 6747
    .end local v2    # "timesInFreqMs":[J
    .end local v3    # "procState":I
    .restart local v11    # "timesInFreqMs":[J
    .restart local v174    # "procState":I
    :goto_208c
    add-int/lit8 v3, v174, 0x1

    move-object v2, v11

    move/from16 v4, v202

    move-wide/from16 v10, v206

    move-object/from16 v206, v7

    .end local v174    # "procState":I
    .restart local v3    # "procState":I
    goto/16 :goto_1ffb

    .end local v11    # "timesInFreqMs":[J
    .end local v202    # "uidActivity":Z
    .end local v206    # "rawRealtimeMs":J
    .restart local v2    # "timesInFreqMs":[J
    .local v4, "uidActivity":Z
    .restart local v10    # "rawRealtimeMs":J
    :cond_2097
    move/from16 v174, v3

    move/from16 v202, v4

    move-object/from16 v7, v206

    move-wide/from16 v206, v10

    move-object v11, v2

    .line 6769
    .end local v2    # "timesInFreqMs":[J
    .end local v3    # "procState":I
    .end local v4    # "uidActivity":Z
    .end local v10    # "rawRealtimeMs":J
    .restart local v11    # "timesInFreqMs":[J
    .restart local v202    # "uidActivity":Z
    .restart local v206    # "rawRealtimeMs":J
    nop

    .line 6770
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v2

    .line 6771
    .local v2, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/16 v50, 0x1

    add-int/lit8 v3, v3, -0x1

    .local v3, "ipr":I
    :goto_20ad
    if-ltz v3, :cond_222e

    .line 6772
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Proc;

    .line 6779
    .local v4, "ps":Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v174, v11

    .end local v11    # "timesInFreqMs":[J
    .local v174, "timesInFreqMs":[J
    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v10

    .line 6780
    .local v10, "userTime":J
    move-object/from16 v211, v12

    move-wide/from16 v212, v13

    .end local v12    # "u":Landroid/os/BatteryStats$Uid;
    .end local v13    # "totalStateTime":J
    .local v211, "u":Landroid/os/BatteryStats$Uid;
    .local v212, "totalStateTime":J
    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v12

    .line 6781
    .local v12, "systemTime":J
    move-object/from16 v214, v15

    .end local v15    # "cpuFreqTimes":[J
    .local v214, "cpuFreqTimes":[J
    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v14

    .line 6782
    .local v14, "foregroundTime":J
    move-object/from16 v215, v7

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v7

    .line 6783
    .local v7, "starts":I
    move-object/from16 v216, v9

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v9

    .line 6784
    .local v9, "numCrashes":I
    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v1

    .line 6785
    .local v1, "numAnrs":I
    if-nez v5, :cond_20e0

    .line 6786
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    move-result v217

    goto :goto_20e2

    :cond_20e0
    const/16 v217, 0x0

    :goto_20e2
    move/from16 v218, v217

    .line 6788
    .local v218, "numExcessive":I
    cmp-long v217, v10, v46

    if-nez v217, :cond_2103

    cmp-long v217, v12, v46

    if-nez v217, :cond_2103

    cmp-long v217, v14, v46

    if-nez v217, :cond_2103

    if-nez v7, :cond_2103

    if-nez v218, :cond_2103

    if-nez v9, :cond_2103

    if-eqz v1, :cond_20f9

    goto :goto_2103

    :cond_20f9
    move/from16 v219, v3

    move-object/from16 v1, v127

    move-object/from16 v127, v2

    move-object/from16 v2, p2

    goto/16 :goto_2216

    .line 6790
    :cond_2103
    :goto_2103
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6791
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "    Proc "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6792
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6793
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "      CPU: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6794
    invoke-static {v0, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v5, "usr + "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6795
    invoke-static {v0, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v5, "krn ; "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6796
    invoke-static {v0, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v5, "fg"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6797
    if-nez v7, :cond_214d

    if-nez v9, :cond_214d

    if-eqz v1, :cond_2146

    goto :goto_214d

    :cond_2146
    move/from16 v217, v1

    move-object/from16 v5, v127

    move-object/from16 v127, v2

    goto :goto_2194

    .line 6798
    :cond_214d
    :goto_214d
    move-object/from16 v5, v127

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v127, v2

    .end local v2    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .local v127, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-string v2, "      "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6799
    const/4 v2, 0x0

    .line 6800
    .local v2, "hasOne":Z
    if-eqz v7, :cond_216c

    .line 6801
    const/4 v2, 0x1

    .line 6802
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v217, v2

    .end local v2    # "hasOne":Z
    .local v217, "hasOne":Z
    const-string v2, " starts"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v217

    .line 6804
    .end local v217    # "hasOne":Z
    .restart local v2    # "hasOne":Z
    :cond_216c
    if-eqz v9, :cond_2180

    .line 6805
    if-eqz v2, :cond_2173

    .line 6806
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6808
    :cond_2173
    const/4 v2, 0x1

    .line 6809
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v217, v2

    .end local v2    # "hasOne":Z
    .restart local v217    # "hasOne":Z
    const-string v2, " crashes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v217

    .line 6811
    .end local v217    # "hasOne":Z
    .restart local v2    # "hasOne":Z
    :cond_2180
    if-eqz v1, :cond_2192

    .line 6812
    if-eqz v2, :cond_2187

    .line 6813
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6815
    :cond_2187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v217, v1

    .end local v1    # "numAnrs":I
    .local v217, "numAnrs":I
    const-string v1, " anrs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2194

    .line 6811
    .end local v217    # "numAnrs":I
    .restart local v1    # "numAnrs":I
    :cond_2192
    move/from16 v217, v1

    .line 6818
    .end local v1    # "numAnrs":I
    .end local v2    # "hasOne":Z
    .restart local v217    # "numAnrs":I
    :goto_2194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6819
    const/4 v1, 0x0

    .local v1, "e":I
    :goto_219e
    move/from16 v219, v3

    move/from16 v3, v218

    .end local v218    # "numExcessive":I
    .local v3, "numExcessive":I
    .local v219, "ipr":I
    if-ge v1, v3, :cond_220c

    .line 6820
    move/from16 v218, v3

    .end local v3    # "numExcessive":I
    .restart local v218    # "numExcessive":I
    invoke-virtual {v4, v1}, Landroid/os/BatteryStats$Uid$Proc;->getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    move-result-object v3

    .line 6821
    .local v3, "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    if-eqz v3, :cond_21fe

    .line 6822
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v220, v1

    .end local v1    # "e":I
    .local v220, "e":I
    const-string v1, "      * Killed for "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6823
    iget v1, v3, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    move-object/from16 v221, v4

    const/4 v4, 0x2

    .end local v4    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .local v221, "ps":Landroid/os/BatteryStats$Uid$Proc;
    if-ne v1, v4, :cond_21c3

    .line 6824
    const-string v1, "cpu"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_21c9

    .line 6826
    :cond_21c3
    const-string/jumbo v1, "unknown"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6828
    :goto_21c9
    const-string v1, " use: "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6829
    move-object v1, v5

    iget-wide v4, v3, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6830
    const-string v4, " over "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6831
    iget-wide v4, v3, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6832
    iget-wide v4, v3, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    cmp-long v4, v4, v46

    if-eqz v4, :cond_2203

    .line 6833
    move-object/from16 v4, v140

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6834
    iget-wide v4, v3, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    const-wide/16 v222, 0x64

    mul-long v4, v4, v222

    move-wide/from16 v222, v4

    iget-wide v4, v3, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    div-long v4, v222, v4

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 6835
    const-string v4, "%)"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2203

    .line 6821
    .end local v220    # "e":I
    .end local v221    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .restart local v1    # "e":I
    .restart local v4    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    :cond_21fe
    move/from16 v220, v1

    move-object/from16 v221, v4

    move-object v1, v5

    .line 6819
    .end local v1    # "e":I
    .end local v3    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .end local v4    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .restart local v220    # "e":I
    .restart local v221    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    :cond_2203
    :goto_2203
    add-int/lit8 v3, v220, 0x1

    move-object v5, v1

    move v1, v3

    move/from16 v3, v219

    move-object/from16 v4, v221

    .end local v220    # "e":I
    .local v3, "e":I
    goto :goto_219e

    .end local v218    # "numExcessive":I
    .end local v221    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .restart local v1    # "e":I
    .local v3, "numExcessive":I
    .restart local v4    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    :cond_220c
    move/from16 v220, v1

    move/from16 v218, v3

    move-object/from16 v221, v4

    move-object v1, v5

    .line 6839
    .end local v1    # "e":I
    .end local v3    # "numExcessive":I
    .end local v4    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .restart local v218    # "numExcessive":I
    .restart local v221    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    const/4 v3, 0x1

    move/from16 v202, v3

    .line 6771
    .end local v7    # "starts":I
    .end local v9    # "numCrashes":I
    .end local v10    # "userTime":J
    .end local v12    # "systemTime":J
    .end local v14    # "foregroundTime":J
    .end local v217    # "numAnrs":I
    .end local v218    # "numExcessive":I
    .end local v221    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    :goto_2216
    add-int/lit8 v3, v219, -0x1

    move-object/from16 v5, v127

    move-object/from16 v127, v1

    move-object v1, v2

    move-object v2, v5

    move/from16 v5, p4

    move-object/from16 v11, v174

    move-object/from16 v12, v211

    move-wide/from16 v13, v212

    move-object/from16 v15, v214

    move-object/from16 v7, v215

    move-object/from16 v9, v216

    .end local v219    # "ipr":I
    .local v3, "ipr":I
    goto/16 :goto_20ad

    .end local v127    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v174    # "timesInFreqMs":[J
    .end local v211    # "u":Landroid/os/BatteryStats$Uid;
    .end local v212    # "totalStateTime":J
    .end local v214    # "cpuFreqTimes":[J
    .local v2, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v11    # "timesInFreqMs":[J
    .local v12, "u":Landroid/os/BatteryStats$Uid;
    .restart local v13    # "totalStateTime":J
    .restart local v15    # "cpuFreqTimes":[J
    :cond_222e
    move-object/from16 v127, v2

    move/from16 v219, v3

    move-object/from16 v215, v7

    move-object/from16 v216, v9

    move-object/from16 v174, v11

    move-object/from16 v211, v12

    move-wide/from16 v212, v13

    move-object/from16 v214, v15

    move-object v2, v1

    .line 6843
    .end local v2    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v3    # "ipr":I
    .end local v11    # "timesInFreqMs":[J
    .end local v12    # "u":Landroid/os/BatteryStats$Uid;
    .end local v13    # "totalStateTime":J
    .end local v15    # "cpuFreqTimes":[J
    .restart local v127    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v174    # "timesInFreqMs":[J
    .restart local v211    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v212    # "totalStateTime":J
    .restart local v214    # "cpuFreqTimes":[J
    nop

    .line 6844
    invoke-virtual/range {v211 .. v211}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 6845
    .local v1, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/16 v50, 0x1

    add-int/lit8 v3, v3, -0x1

    .local v3, "ipkg":I
    :goto_224c
    if-ltz v3, :cond_234f

    .line 6846
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    Apk "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6847
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6848
    const/4 v4, 0x0

    .line 6849
    .local v4, "apkActivity":Z
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Pkg;

    .line 6850
    .local v5, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v7

    .line 6851
    .local v7, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/16 v50, 0x1

    add-int/lit8 v8, v8, -0x1

    .local v8, "iwa":I
    :goto_2277
    if-ltz v8, :cond_22a7

    .line 6852
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "      Wakeup alarm "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6853
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v9, v216

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6854
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Counter;

    move/from16 v11, p4

    invoke-virtual {v10, v11}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 6855
    const-string v10, " times"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6856
    const/4 v4, 0x1

    .line 6851
    add-int/lit8 v8, v8, -0x1

    goto :goto_2277

    :cond_22a7
    move/from16 v11, p4

    move-object/from16 v9, v216

    .line 6858
    .end local v8    # "iwa":I
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v8

    .line 6859
    .local v8, "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/16 v50, 0x1

    add-int/lit8 v10, v10, -0x1

    .local v10, "isvc":I
    :goto_22b7
    if-ltz v10, :cond_2331

    .line 6860
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 6861
    .local v12, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move-wide/from16 v13, v125

    .end local v125    # "batteryUptime":J
    .local v13, "batteryUptime":J
    invoke-virtual {v12, v13, v14, v11}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v125

    .line 6862
    .local v125, "startTime":J
    invoke-virtual {v12, v11}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v15

    .line 6863
    .local v15, "starts":I
    move-object/from16 v216, v1

    .end local v1    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .local v216, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v12, v11}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v1

    .line 6864
    .local v1, "launches":I
    cmp-long v217, v125, v46

    if-nez v217, :cond_22db

    if-nez v15, :cond_22db

    if-eqz v1, :cond_22d8

    goto :goto_22db

    :cond_22d8
    move/from16 v217, v3

    goto :goto_2328

    .line 6865
    :cond_22db
    :goto_22db
    move/from16 v217, v3

    const/4 v3, 0x0

    .end local v3    # "ipkg":I
    .local v217, "ipkg":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6866
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "      Service "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6867
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6868
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "        Created for: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6869
    move/from16 v218, v4

    .end local v4    # "apkActivity":Z
    .local v218, "apkActivity":Z
    div-long v3, v125, v19

    invoke-static {v0, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6870
    const-string/jumbo v3, "uptime\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6871
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "        Starts: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6872
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6873
    const-string v3, ", launches: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6874
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6875
    const/4 v3, 0x1

    move v4, v3

    .line 6859
    .end local v1    # "launches":I
    .end local v12    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v15    # "starts":I
    .end local v125    # "startTime":J
    .end local v218    # "apkActivity":Z
    .restart local v4    # "apkActivity":Z
    :goto_2328
    add-int/lit8 v10, v10, -0x1

    move-wide/from16 v125, v13

    move-object/from16 v1, v216

    move/from16 v3, v217

    goto :goto_22b7

    .end local v13    # "batteryUptime":J
    .end local v216    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v217    # "ipkg":I
    .local v1, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v3    # "ipkg":I
    .local v125, "batteryUptime":J
    :cond_2331
    move-object/from16 v216, v1

    move/from16 v217, v3

    move/from16 v218, v4

    move-wide/from16 v13, v125

    .line 6878
    .end local v1    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v3    # "ipkg":I
    .end local v4    # "apkActivity":Z
    .end local v10    # "isvc":I
    .end local v125    # "batteryUptime":J
    .restart local v13    # "batteryUptime":J
    .restart local v216    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v217    # "ipkg":I
    .restart local v218    # "apkActivity":Z
    if-nez v218, :cond_2343

    .line 6879
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "      (nothing executed)"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6881
    :cond_2343
    const/16 v202, 0x1

    .line 6845
    .end local v5    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v7    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v8    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v218    # "apkActivity":Z
    add-int/lit8 v3, v217, -0x1

    move-wide/from16 v125, v13

    move-object/from16 v1, v216

    move-object/from16 v216, v9

    .end local v217    # "ipkg":I
    .restart local v3    # "ipkg":I
    goto/16 :goto_224c

    .end local v13    # "batteryUptime":J
    .end local v216    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v1    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v125    # "batteryUptime":J
    :cond_234f
    move/from16 v11, p4

    move/from16 v217, v3

    move-wide/from16 v13, v125

    move-object/from16 v9, v216

    const/16 v50, 0x1

    move-object/from16 v216, v1

    .line 6883
    .end local v1    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v3    # "ipkg":I
    .end local v125    # "batteryUptime":J
    .restart local v13    # "batteryUptime":J
    .restart local v216    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    if-nez v202, :cond_2365

    .line 6884
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    (nothing executed)"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6129
    .end local v79    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v96    # "countWakelock":I
    .end local v123    # "mobileRxBytes":J
    .end local v127    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v128    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v136    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v142    # "uid":I
    .end local v143    # "mobileTxBytes":J
    .end local v146    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v147    # "wifiScanCount":I
    .end local v148    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v149    # "uidMobileActiveCount":I
    .end local v150    # "mobileWakeup":J
    .end local v153    # "wifiTxBytes":J
    .end local v155    # "mobileRxPackets":J
    .end local v157    # "mobileTxPackets":J
    .end local v159    # "wifiRxPackets":J
    .end local v161    # "wifiTxPackets":J
    .end local v164    # "wifiRxBytes":J
    .end local v166    # "screenOffCpuFreqTimes":[J
    .end local v167    # "wifiScanTime":J
    .end local v169    # "wifiScanCountBg":I
    .end local v170    # "wifiScanActualTime":J
    .end local v172    # "wifiScanActualTimeBg":J
    .end local v174    # "timesInFreqMs":[J
    .end local v176    # "uidWifiRunningTime":J
    .end local v178    # "wifiWakeup":J
    .end local v180    # "uidMobileActiveTime":J
    .end local v185    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .end local v186    # "btRxBytes":J
    .end local v188    # "btTxBytes":J
    .end local v190    # "fullWifiLockOnTime":J
    .end local v192    # "totalWindowWakelock":J
    .end local v194    # "systemCpuTimeUs":J
    .end local v196    # "totalPartialWakelock":J
    .end local v198    # "totalDrawWakelock":J
    .end local v200    # "totalFullWakelock":J
    .end local v202    # "uidActivity":Z
    .end local v203    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v204    # "userCpuTimeUs":J
    .end local v208    # "NSE":I
    .end local v211    # "u":Landroid/os/BatteryStats$Uid;
    .end local v212    # "totalStateTime":J
    .end local v214    # "cpuFreqTimes":[J
    .end local v216    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    :cond_2365
    :goto_2365
    add-int/lit8 v1, v145, 0x1

    move-object/from16 v136, v9

    move v5, v11

    move-wide/from16 v125, v13

    move-object/from16 v13, v66

    move-wide/from16 v10, v138

    move-object/from16 v8, v163

    move-object/from16 v79, v175

    move-wide/from16 v123, v182

    move-object/from16 v15, v184

    move-wide/from16 v127, v206

    move-object/from16 v146, v215

    move-object/from16 v14, p0

    move v9, v1

    move-object v1, v2

    move-wide/from16 v2, v209

    .end local v145    # "iu":I
    .local v1, "iu":I
    goto/16 :goto_129d

    .line 6887
    .end local v1    # "iu":I
    .end local v13    # "batteryUptime":J
    .end local v95    # "NU":I
    .end local v138    # "whichBatteryRealtime":J
    .end local v182    # "mobileActiveTime":J
    .end local v206    # "rawRealtimeMs":J
    .end local v209    # "rawRealtime":J
    .local v2, "rawRealtime":J
    .local v10, "whichBatteryRealtime":J
    .local v12, "NU":I
    .local v123, "mobileActiveTime":J
    .restart local v125    # "batteryUptime":J
    .local v127, "rawRealtimeMs":J
    :cond_2384
    return-void
.end method

.method public blacklist dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p4, "flags"    # I
    .param p5, "histStart"    # J
    .param p7, "dumpHelper"    # Landroid/os/BatteryStats$BatteryStatsDumpHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/FileDescriptor;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ",
            "Landroid/os/BatteryStats$BatteryStatsDumpHelper;",
            ")V"
        }
    .end annotation

    .line 8108
    .local p3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 8109
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 8111
    and-int/lit8 v1, p4, 0x18

    if-eqz v1, :cond_13

    .line 8112
    invoke-direct {p0, v0, p4, p5, p6}, Landroid/os/BatteryStats;->dumpProtoHistoryLocked(Landroid/util/proto/ProtoOutputStream;IJ)V

    .line 8113
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 8114
    return-void

    .line 8117
    :cond_13
    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 8119
    .local v1, "bToken":J
    const-wide v3, 0x10500000001L

    const/16 v5, 0x24

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8120
    const-wide v3, 0x10300000002L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8121
    const-wide v3, 0x10900000003L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8122
    const-wide v3, 0x10900000004L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8124
    and-int/lit8 v3, p4, 0x4

    if-nez v3, :cond_5f

    .line 8125
    nop

    .line 8126
    const/4 v3, 0x0

    invoke-interface {p7, p0, v3}, Landroid/os/BatteryStats$BatteryStatsDumpHelper;->getBatteryUsageStats(Landroid/os/BatteryStats;Z)Landroid/os/BatteryUsageStats;

    move-result-object v3

    .line 8127
    .local v3, "stats":Landroid/os/BatteryUsageStats;
    new-instance v4, Landroid/os/BatteryStats$ProportionalAttributionCalculator;

    invoke-direct {v4, p1, v3}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;-><init>(Landroid/content/Context;Landroid/os/BatteryUsageStats;)V

    .line 8129
    .local v4, "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    invoke-direct {p0, v0, v3, p3, v4}, Landroid/os/BatteryStats;->dumpProtoAppsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;Ljava/util/List;Landroid/os/BatteryStats$ProportionalAttributionCalculator;)V

    .line 8130
    invoke-direct {p0, v0, v3}, Landroid/os/BatteryStats;->dumpProtoSystemLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;)V

    .line 8133
    .end local v3    # "stats":Landroid/os/BatteryUsageStats;
    .end local v4    # "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    :cond_5f
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8134
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 8135
    return-void
.end method

.method final greylist-max-o formatBytesLocked(J)Ljava/lang/String;
    .registers 8
    .param p1, "bytes"    # J

    .line 3771
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3773
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_20

    .line 3774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3775
    :cond_20
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_41

    .line 3776
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    long-to-double v1, p1

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.2fKB"

    invoke-virtual {v0, v2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 3777
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3778
    :cond_41
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_62

    .line 3779
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    long-to-double v1, p1

    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.2fMB"

    invoke-virtual {v0, v2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 3780
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3782
    :cond_62
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    long-to-double v1, p1

    const-wide/high16 v3, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.2fGB"

    invoke-virtual {v0, v2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 3783
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o formatRatioLocked(JJ)Ljava/lang/String;
    .registers 9
    .param p1, "num"    # J
    .param p3, "den"    # J

    .line 3761
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_9

    .line 3762
    const-string v0, "--%"

    return-object v0

    .line 3764
    :cond_9
    long-to-float v0, p1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 3765
    .local v0, "perc":F
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3766
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.1f%%"

    invoke-virtual {v1, v3, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 3767
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract blacklist getActiveRadioDurationMs(IIIJ)J
.end method

.method public abstract blacklist getActiveRxRadioDurationMs(IIJ)J
.end method

.method public abstract blacklist getActiveTxRadioDurationMs(IIIJ)J
.end method

.method public blacklist getBatteryCapacity()I
    .registers 3

    .line 3648
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getLearnedBatteryCapacity()I

    move-result v0

    .line 3649
    .local v0, "batteryCapacityUah":I
    if-lez v0, :cond_9

    .line 3650
    div-int/lit16 v1, v0, 0x3e8

    return v1

    .line 3652
    :cond_9
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v0

    .line 3653
    if-lez v0, :cond_12

    .line 3654
    div-int/lit16 v1, v0, 0x3e8

    return v1

    .line 3656
    :cond_12
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v1

    return v1
.end method

.method public abstract greylist-max-o getBatteryRealtime(J)J
.end method

.method public abstract greylist getBatteryUptime(J)J
.end method

.method public abstract blacklist getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;
.end method

.method public abstract greylist-max-o getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract blacklist getBluetoothEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getBluetoothScanTime(JI)J
.end method

.method public abstract blacklist getCameraEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getCameraOnTime(JI)J
.end method

.method public abstract greylist-max-o getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract blacklist getCpuEnergyConsumptionUC()J
.end method

.method public abstract blacklist getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;
.end method

.method public abstract greylist-max-o getCurrentDailyStartTime()J
.end method

.method public abstract blacklist getCustomEnergyConsumerBatteryConsumptionUC()[J
.end method

.method public abstract blacklist getCustomEnergyConsumerNames()[Ljava/lang/String;
.end method

.method public abstract greylist-max-o getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract greylist-max-o getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract greylist-max-o getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;
.end method

.method public abstract greylist-max-o getDailyPackageChanges()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getDeviceIdleModeCount(II)I
.end method

.method public abstract greylist-max-o getDeviceIdleModeTime(IJI)J
.end method

.method public abstract greylist-max-o getDeviceIdlingCount(II)I
.end method

.method public abstract greylist-max-o getDeviceIdlingTime(IJI)J
.end method

.method public abstract greylist-max-o getDischargeAmount(I)I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenDoze()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenDozeSinceCharge()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOff()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOffSinceCharge()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOn()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOnSinceCharge()I
.end method

.method public abstract greylist-max-o getDischargeCurrentLevel()I
.end method

.method public abstract greylist-max-o getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract greylist-max-o getDischargeStartLevel()I
.end method

.method public abstract blacklist getDisplayCount()I
.end method

.method public abstract blacklist getDisplayScreenBrightnessTime(IIJ)J
.end method

.method public abstract blacklist getDisplayScreenDozeTime(IJ)J
.end method

.method public abstract blacklist getDisplayScreenOnTime(IJ)J
.end method

.method public abstract greylist-max-o getEndPlatformVersion()Ljava/lang/String;
.end method

.method public abstract greylist-max-o getEstimatedBatteryCapacity()I
.end method

.method public abstract greylist-max-o getFlashlightOnCount(I)J
.end method

.method public abstract greylist-max-o getFlashlightOnTime(JI)J
.end method

.method public abstract greylist getGlobalWifiRunningTime(JI)J
.end method

.method public abstract blacklist getGnssEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getGpsBatteryDrainMaMs()J
.end method

.method public abstract greylist-max-o getGpsSignalQualityTime(IJI)J
.end method

.method public abstract greylist-max-o getHighDischargeAmountSinceCharge()I
.end method

.method public abstract greylist-max-o getHistoryStringPoolBytes()I
.end method

.method public abstract greylist-max-o getHistoryStringPoolSize()I
.end method

.method public abstract greylist-max-o getHistoryTagPoolString(I)Ljava/lang/String;
.end method

.method public abstract greylist-max-o getHistoryTagPoolUid(I)I
.end method

.method public abstract greylist-max-o getHistoryTotalSize()I
.end method

.method public abstract greylist-max-o getHistoryUsedSize()I
.end method

.method public abstract greylist-max-o getInteractiveTime(JI)J
.end method

.method public abstract greylist-max-o getIsOnBattery()Z
.end method

.method public abstract greylist-max-o getKernelMemoryStats()Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getKernelWakelockStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getLearnedBatteryCapacity()I
.end method

.method public abstract greylist-max-o getLongestDeviceIdleModeTime(I)J
.end method

.method public abstract greylist-max-o getLowDischargeAmountSinceCharge()I
.end method

.method public abstract greylist-max-o getMaxLearnedBatteryCapacity()I
.end method

.method public abstract greylist-max-o getMinLearnedBatteryCapacity()I
.end method

.method public abstract greylist-max-o getMobileRadioActiveAdjustedTime(I)J
.end method

.method public abstract greylist-max-o getMobileRadioActiveCount(I)I
.end method

.method public abstract greylist-max-p getMobileRadioActiveTime(JI)J
.end method

.method public abstract greylist-max-o getMobileRadioActiveUnknownCount(I)I
.end method

.method public abstract greylist-max-o getMobileRadioActiveUnknownTime(I)J
.end method

.method public abstract blacklist getMobileRadioEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract greylist-max-p getNetworkActivityBytes(II)J
.end method

.method public abstract greylist-max-o getNetworkActivityPackets(II)J
.end method

.method public abstract greylist-max-o getNextMaxDailyDeadline()J
.end method

.method public abstract greylist-max-o getNextMinDailyDeadline()J
.end method

.method public abstract blacklist getNrNsaTime(J)J
.end method

.method public abstract greylist-max-o getNumConnectivityChange(I)I
.end method

.method public abstract greylist-max-o getParcelVersion()I
.end method

.method public abstract greylist-max-o getPhoneDataConnectionCount(II)I
.end method

.method public abstract greylist-max-o getPhoneDataConnectionTime(IJI)J
.end method

.method public abstract greylist-max-o getPhoneDataConnectionTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract blacklist getPhoneEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getPhoneOnCount(I)I
.end method

.method public abstract greylist getPhoneOnTime(JI)J
.end method

.method public abstract greylist-max-o getPhoneSignalScanningTime(JI)J
.end method

.method public abstract greylist-max-o getPhoneSignalScanningTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getPhoneSignalStrengthCount(II)I
.end method

.method public abstract greylist getPhoneSignalStrengthTime(IJI)J
.end method

.method protected abstract greylist-max-o getPhoneSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getPowerSaveModeEnabledCount(I)I
.end method

.method public abstract greylist-max-o getPowerSaveModeEnabledTime(JI)J
.end method

.method public abstract greylist-max-o getRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist getScreenBrightnessTime(IJI)J
.end method

.method public abstract greylist-max-o getScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getScreenDozeCount(I)I
.end method

.method public abstract blacklist getScreenDozeEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getScreenDozeTime(JI)J
.end method

.method public abstract greylist-max-o getScreenOffRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getScreenOnCount(I)I
.end method

.method public abstract blacklist getScreenOnEnergyConsumptionUC()J
.end method

.method public abstract greylist getScreenOnTime(JI)J
.end method

.method public abstract greylist-max-o getStartClockTime()J
.end method

.method public abstract greylist-max-o getStartCount()I
.end method

.method public abstract greylist-max-o getStartPlatformVersion()Ljava/lang/String;
.end method

.method public abstract blacklist getStatsStartRealtime()J
.end method

.method public abstract blacklist getSystemServiceTimeAtCpuSpeeds()[J
.end method

.method public abstract greylist-max-o getUahDischarge(I)J
.end method

.method public abstract greylist-max-o getUahDischargeDeepDoze(I)J
.end method

.method public abstract greylist-max-o getUahDischargeLightDoze(I)J
.end method

.method public abstract greylist-max-o getUahDischargeScreenDoze(I)J
.end method

.method public abstract greylist-max-o getUahDischargeScreenOff(I)J
.end method

.method public abstract greylist getUidStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getWakeLockStats()Landroid/os/WakeLockStats;
.end method

.method public abstract greylist-max-o getWakeupReasonStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getWifiActiveTime(JI)J
.end method

.method public abstract greylist-max-o getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract blacklist getWifiEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getWifiMulticastWakelockCount(I)I
.end method

.method public abstract greylist-max-o getWifiMulticastWakelockTime(JI)J
.end method

.method public abstract greylist getWifiOnTime(JI)J
.end method

.method public abstract greylist-max-o getWifiSignalStrengthCount(II)I
.end method

.method public abstract greylist-max-o getWifiSignalStrengthTime(IJI)J
.end method

.method public abstract greylist-max-o getWifiSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getWifiStateCount(II)I
.end method

.method public abstract greylist-max-o getWifiStateTime(IJI)J
.end method

.method public abstract greylist-max-o getWifiStateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getWifiSupplStateCount(II)I
.end method

.method public abstract greylist-max-o getWifiSupplStateTime(IJI)J
.end method

.method public abstract greylist-max-o getWifiSupplStateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o hasBluetoothActivityReporting()Z
.end method

.method public abstract greylist-max-o hasModemActivityReporting()Z
.end method

.method public abstract greylist-max-o hasWifiActivityReporting()Z
.end method

.method public abstract blacklist isProcessStateDataAvailable()Z
.end method

.method public abstract blacklist iterateBatteryStatsHistory(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;
.end method

.method public greylist-max-o prepareForDumpLocked()V
    .registers 1

    .line 6943
    return-void
.end method
