.class public abstract Landroid/os/BatteryStats;
.super Ljava/lang/Object;
.source "BatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$BitDescription;,
        Landroid/os/BatteryStats$ControllerActivityCounter;,
        Landroid/os/BatteryStats$Counter;,
        Landroid/os/BatteryStats$DailyItem;,
        Landroid/os/BatteryStats$HistoryEventTracker;,
        Landroid/os/BatteryStats$HistoryItem;,
        Landroid/os/BatteryStats$HistoryPrinter;,
        Landroid/os/BatteryStats$HistoryStepDetails;,
        Landroid/os/BatteryStats$HistoryTag;,
        Landroid/os/BatteryStats$LevelStepTracker;,
        Landroid/os/BatteryStats$LongCounter;,
        Landroid/os/BatteryStats$PackageChange;,
        Landroid/os/BatteryStats$Timer;,
        Landroid/os/BatteryStats$TimerEntry;,
        Landroid/os/BatteryStats$Uid;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I = null

.field private static final APK_DATA:Ljava/lang/String; = "apk"

.field private static final AUDIO_DATA:Ljava/lang/String; = "aud"

.field public static final AUDIO_TURNED_ON:I = 0xf

.field private static final BATTERY_DATA:Ljava/lang/String; = "bt"

.field private static final BATTERY_DISCHARGE_DATA:Ljava/lang/String; = "dc"

.field private static final BATTERY_LEVEL_DATA:Ljava/lang/String; = "lv"

.field private static final BATTERY_STATS_CHECKIN_VERSION:I = 0x9

.field private static final BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "ble"

.field private static final BLUETOOTH_MISC_DATA:Ljava/lang/String; = "blem"

.field public static final BLUETOOTH_SCAN_ON:I = 0x13

.field private static final BYTES_PER_GB:J = 0x40000000L

.field private static final BYTES_PER_KB:J = 0x400L

.field private static final BYTES_PER_MB:J = 0x100000L

.field private static final CAMERA_DATA:Ljava/lang/String; = "cam"

.field public static final CAMERA_TURNED_ON:I = 0x11

.field private static final CHARGE_STEP_DATA:Ljava/lang/String; = "csd"

.field private static final CHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "ctr"

.field static final CHECKIN_VERSION:Ljava/lang/String; = "19"

.field private static final CPU_DATA:Ljava/lang/String; = "cpu"

.field public static final DATA_CONNECTION_1xRTT:I = 0x7

.field public static final DATA_CONNECTION_CDMA:I = 0x4

.field private static final DATA_CONNECTION_COUNT_DATA:Ljava/lang/String; = "dcc"

.field public static final DATA_CONNECTION_EDGE:I = 0x2

.field public static final DATA_CONNECTION_EHRPD:I = 0xe

.field public static final DATA_CONNECTION_EVDO_0:I = 0x5

.field public static final DATA_CONNECTION_EVDO_A:I = 0x6

.field public static final DATA_CONNECTION_EVDO_B:I = 0xc

.field public static final DATA_CONNECTION_GPRS:I = 0x1

.field public static final DATA_CONNECTION_HSDPA:I = 0x8

.field public static final DATA_CONNECTION_HSPA:I = 0xa

.field public static final DATA_CONNECTION_HSPAP:I = 0xf

.field public static final DATA_CONNECTION_HSUPA:I = 0x9

.field public static final DATA_CONNECTION_IDEN:I = 0xb

.field public static final DATA_CONNECTION_LTE:I = 0xd

.field static final DATA_CONNECTION_NAMES:[Ljava/lang/String;

.field public static final DATA_CONNECTION_NONE:I = 0x0

.field public static final DATA_CONNECTION_OTHER:I = 0x10

.field private static final DATA_CONNECTION_TIME_DATA:Ljava/lang/String; = "dct"

.field public static final DATA_CONNECTION_UMTS:I = 0x3

.field public static final DEVICE_IDLE_MODE_DEEP:I = 0x2

.field public static final DEVICE_IDLE_MODE_LIGHT:I = 0x1

.field public static final DEVICE_IDLE_MODE_OFF:I = 0x0

.field private static final DISCHARGE_STEP_DATA:Ljava/lang/String; = "dsd"

.field private static final DISCHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "dtr"

.field public static final DUMP_CHARGED_ONLY:I = 0x2

.field public static final DUMP_DAILY_ONLY:I = 0x4

.field public static final DUMP_DEVICE_WIFI_ONLY:I = 0x40

.field public static final DUMP_HISTORY_ONLY:I = 0x8

.field public static final DUMP_INCLUDE_HISTORY:I = 0x10

.field public static final DUMP_VERBOSE:I = 0x20

.field private static final FLASHLIGHT_DATA:Ljava/lang/String; = "fla"

.field public static final FLASHLIGHT_TURNED_ON:I = 0x10

.field public static final FOREGROUND_ACTIVITY:I = 0xa

.field private static final FOREGROUND_DATA:Ljava/lang/String; = "fg"

.field public static final FULL_WIFI_LOCK:I = 0x5

.field private static final GLOBAL_BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "gble"

.field private static final GLOBAL_MODEM_CONTROLLER_DATA:Ljava/lang/String; = "gmcd"

.field private static final GLOBAL_NETWORK_DATA:Ljava/lang/String; = "gn"

.field private static final GLOBAL_WIFI_CONTROLLER_DATA:Ljava/lang/String; = "gwfcd"

.field private static final GLOBAL_WIFI_DATA:Ljava/lang/String; = "gwfl"

.field private static final HISTORY_DATA:Ljava/lang/String; = "h"

.field public static final HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

.field public static final HISTORY_EVENT_NAMES:[Ljava/lang/String;

.field public static final HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field public static final HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field private static final HISTORY_STRING_POOL:Ljava/lang/String; = "hsp"

.field public static final JOB:I = 0xe

.field private static final JOB_DATA:Ljava/lang/String; = "jb"

.field private static final KERNEL_WAKELOCK_DATA:Ljava/lang/String; = "kwl"

.field private static final LOCAL_LOGV:Z = false

.field private static final MISC_DATA:Ljava/lang/String; = "m"

.field private static final MODEM_CONTROLLER_DATA:Ljava/lang/String; = "mcd"

.field public static final NETWORK_BT_RX_DATA:I = 0x4

.field public static final NETWORK_BT_TX_DATA:I = 0x5

.field private static final NETWORK_DATA:Ljava/lang/String; = "nt"

.field public static final NETWORK_MOBILE_RX_DATA:I = 0x0

.field public static final NETWORK_MOBILE_TX_DATA:I = 0x1

.field public static final NETWORK_WIFI_RX_DATA:I = 0x2

.field public static final NETWORK_WIFI_TX_DATA:I = 0x3

.field public static final NUM_DATA_CONNECTION_TYPES:I = 0x11

.field public static final NUM_NETWORK_ACTIVITY_TYPES:I = 0x6

.field public static final NUM_SCREEN_BRIGHTNESS_BINS:I = 0x5

.field public static final NUM_WIFI_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final NUM_WIFI_STATES:I = 0x8

.field public static final NUM_WIFI_SUPPL_STATES:I = 0xd

.field private static final POWER_USE_ITEM_DATA:Ljava/lang/String; = "pwi"

.field private static final POWER_USE_SUMMARY_DATA:Ljava/lang/String; = "pws"

.field private static final PROCESS_DATA:Ljava/lang/String; = "pr"

.field public static final PROCESS_STATE:I = 0xc

.field public static final RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field public static final SCREEN_BRIGHTNESS_BRIGHT:I = 0x4

.field public static final SCREEN_BRIGHTNESS_DARK:I = 0x0

.field private static final SCREEN_BRIGHTNESS_DATA:Ljava/lang/String; = "br"

.field public static final SCREEN_BRIGHTNESS_DIM:I = 0x1

.field public static final SCREEN_BRIGHTNESS_LIGHT:I = 0x3

.field public static final SCREEN_BRIGHTNESS_MEDIUM:I = 0x2

.field static final SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

.field static final SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

.field public static final SENSOR:I = 0x3

.field private static final SENSOR_DATA:Ljava/lang/String; = "sr"

.field public static final SERVICE_NAME:Ljava/lang/String; = "batterystats"

.field private static final SIGNAL_SCANNING_TIME_DATA:Ljava/lang/String; = "sst"

.field private static final SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "sgc"

.field private static final SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "sgt"

.field private static final STATE_TIME_DATA:Ljava/lang/String; = "st"

.field public static final STATS_CURRENT:I = 0x1

.field public static final STATS_SINCE_CHARGED:I = 0x0

.field public static final STATS_SINCE_UNPLUGGED:I = 0x2

.field private static final STAT_NAMES:[Ljava/lang/String;

.field public static final STEP_LEVEL_INITIAL_MODE_MASK:J = 0xff000000000000L

.field public static final STEP_LEVEL_INITIAL_MODE_SHIFT:I = 0x30

.field public static final STEP_LEVEL_LEVEL_MASK:J = 0xff0000000000L

.field public static final STEP_LEVEL_LEVEL_SHIFT:I = 0x28

.field public static final STEP_LEVEL_MODES_OF_INTEREST:[I

.field public static final STEP_LEVEL_MODE_DEVICE_IDLE:I = 0x8

.field public static final STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

.field public static final STEP_LEVEL_MODE_POWER_SAVE:I = 0x4

.field public static final STEP_LEVEL_MODE_SCREEN_STATE:I = 0x3

.field public static final STEP_LEVEL_MODE_VALUES:[I

.field public static final STEP_LEVEL_MODIFIED_MODE_MASK:J = -0x100000000000000L

.field public static final STEP_LEVEL_MODIFIED_MODE_SHIFT:I = 0x38

.field public static final STEP_LEVEL_TIME_MASK:J = 0xffffffffffL

.field public static final SYNC:I = 0xd

.field private static final SYNC_DATA:Ljava/lang/String; = "sy"

.field private static final TAG:Ljava/lang/String; = "BatteryStats"

.field private static final UID_DATA:Ljava/lang/String; = "uid"

.field private static final USER_ACTIVITY_DATA:Ljava/lang/String; = "ua"

.field private static final VERSION_DATA:Ljava/lang/String; = "vers"

.field private static final VIBRATOR_DATA:Ljava/lang/String; = "vib"

.field public static final VIBRATOR_ON:I = 0x9

.field private static final VIDEO_DATA:Ljava/lang/String; = "vid"

.field public static final VIDEO_TURNED_ON:I = 0x8

.field private static final WAKELOCK_DATA:Ljava/lang/String; = "wl"

.field private static final WAKEUP_ALARM_DATA:Ljava/lang/String; = "wua"

.field private static final WAKEUP_REASON_DATA:Ljava/lang/String; = "wr"

.field public static final WAKE_TYPE_DRAW:I = 0x12

.field public static final WAKE_TYPE_FULL:I = 0x1

.field public static final WAKE_TYPE_PARTIAL:I = 0x0

.field public static final WAKE_TYPE_WINDOW:I = 0x2

.field public static final WIFI_BATCHED_SCAN:I = 0xb

.field private static final WIFI_CONTROLLER_DATA:Ljava/lang/String; = "wfcd"

.field private static final WIFI_DATA:Ljava/lang/String; = "wfl"

.field public static final WIFI_MULTICAST_ENABLED:I = 0x7

.field public static final WIFI_RUNNING:I = 0x4

.field public static final WIFI_SCAN:I = 0x6

.field private static final WIFI_SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "wsgc"

.field private static final WIFI_SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "wsgt"

.field private static final WIFI_STATE_COUNT_DATA:Ljava/lang/String; = "wsc"

.field static final WIFI_STATE_NAMES:[Ljava/lang/String;

.field public static final WIFI_STATE_OFF:I = 0x0

.field public static final WIFI_STATE_OFF_SCANNING:I = 0x1

.field public static final WIFI_STATE_ON_CONNECTED_P2P:I = 0x5

.field public static final WIFI_STATE_ON_CONNECTED_STA:I = 0x4

.field public static final WIFI_STATE_ON_CONNECTED_STA_P2P:I = 0x6

.field public static final WIFI_STATE_ON_DISCONNECTED:I = 0x3

.field public static final WIFI_STATE_ON_NO_NETWORKS:I = 0x2

.field public static final WIFI_STATE_SOFT_AP:I = 0x7

.field private static final WIFI_STATE_TIME_DATA:Ljava/lang/String; = "wst"

.field public static final WIFI_SUPPL_STATE_ASSOCIATED:I = 0x7

.field public static final WIFI_SUPPL_STATE_ASSOCIATING:I = 0x6

.field public static final WIFI_SUPPL_STATE_AUTHENTICATING:I = 0x5

.field public static final WIFI_SUPPL_STATE_COMPLETED:I = 0xa

.field private static final WIFI_SUPPL_STATE_COUNT_DATA:Ljava/lang/String; = "wssc"

.field public static final WIFI_SUPPL_STATE_DISCONNECTED:I = 0x1

.field public static final WIFI_SUPPL_STATE_DORMANT:I = 0xb

.field public static final WIFI_SUPPL_STATE_FOUR_WAY_HANDSHAKE:I = 0x8

.field public static final WIFI_SUPPL_STATE_GROUP_HANDSHAKE:I = 0x9

.field public static final WIFI_SUPPL_STATE_INACTIVE:I = 0x3

.field public static final WIFI_SUPPL_STATE_INTERFACE_DISABLED:I = 0x2

.field public static final WIFI_SUPPL_STATE_INVALID:I = 0x0

.field static final WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

.field public static final WIFI_SUPPL_STATE_SCANNING:I = 0x4

.field static final WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

.field private static final WIFI_SUPPL_STATE_TIME_DATA:Ljava/lang/String; = "wsst"

.field public static final WIFI_SUPPL_STATE_UNINITIALIZED:I = 0xc


# instance fields
.field private final mFormatBuilder:Ljava/lang/StringBuilder;

.field private final mFormatter:Ljava/util/Formatter;


# direct methods
.method private static synthetic -getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/os/BatteryStats;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/os/BatteryStats;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/os/BatterySipper$DrainType;->values()[Lcom/android/internal/os/BatterySipper$DrainType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CAMERA:Lcom/android/internal/os/BatterySipper$DrainType;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    #@3d
    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    #@46
    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    #@4f
    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    #@57
    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    #@59
    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0x9

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    #@61
    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    #@63
    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    #@66
    move-result v1

    #@67
    const/16 v2, 0xa

    #@69
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    #@6b
    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    #@6d
    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    #@70
    move-result v1

    #@71
    const/16 v2, 0xb

    #@73
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    #@75
    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    #@77
    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    #@7a
    move-result v1

    #@7b
    const/16 v2, 0xc

    #@7d
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    #@7f
    :goto_b
    sput-object v0, Landroid/os/BatteryStats;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

    #@81
    return-object v0

    #@82
    :catch_0
    move-exception v1

    #@83
    goto :goto_b

    #@84
    :catch_1
    move-exception v1

    #@85
    goto :goto_a

    #@86
    :catch_2
    move-exception v1

    #@87
    goto :goto_9

    #@88
    :catch_3
    move-exception v1

    #@89
    goto :goto_8

    #@8a
    :catch_4
    move-exception v1

    #@8b
    goto :goto_7

    #@8c
    :catch_5
    move-exception v1

    #@8d
    goto :goto_6

    #@8e
    :catch_6
    move-exception v1

    #@8f
    goto :goto_5

    #@90
    :catch_7
    move-exception v1

    #@91
    goto :goto_4

    #@92
    :catch_8
    move-exception v1

    #@93
    goto :goto_3

    #@94
    :catch_9
    move-exception v1

    #@95
    goto :goto_2

    #@96
    :catch_a
    move-exception v1

    #@97
    goto :goto_1

    #@98
    :catch_b
    move-exception v1

    #@99
    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x4

    #@1
    const/4 v11, 0x2

    #@2
    const/4 v10, 0x1

    #@3
    const/4 v9, 0x3

    #@4
    const/4 v8, 0x0

    #@5
    .line 177
    new-array v0, v9, [Ljava/lang/String;

    #@7
    const-string/jumbo v1, "l"

    #@a
    aput-object v1, v0, v8

    #@c
    const-string/jumbo v1, "c"

    #@f
    aput-object v1, v0, v10

    #@11
    const-string/jumbo v1, "u"

    #@14
    aput-object v1, v0, v11

    #@16
    sput-object v0, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    #@18
    .line 1733
    const/4 v0, 0x5

    #@19
    new-array v0, v0, [Ljava/lang/String;

    #@1b
    .line 1734
    const-string/jumbo v1, "dark"

    #@1e
    aput-object v1, v0, v8

    #@20
    const-string/jumbo v1, "dim"

    #@23
    aput-object v1, v0, v10

    #@25
    const-string/jumbo v1, "medium"

    #@28
    aput-object v1, v0, v11

    #@2a
    const-string/jumbo v1, "light"

    #@2d
    aput-object v1, v0, v9

    #@2f
    const-string/jumbo v1, "bright"

    #@32
    aput-object v1, v0, v12

    #@34
    .line 1733
    sput-object v0, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    #@36
    .line 1737
    const/4 v0, 0x5

    #@37
    new-array v0, v0, [Ljava/lang/String;

    #@39
    .line 1738
    const-string/jumbo v1, "0"

    #@3c
    aput-object v1, v0, v8

    #@3e
    const-string/jumbo v1, "1"

    #@41
    aput-object v1, v0, v10

    #@43
    const-string/jumbo v1, "2"

    #@46
    aput-object v1, v0, v11

    #@48
    const-string/jumbo v1, "3"

    #@4b
    aput-object v1, v0, v9

    #@4d
    const-string/jumbo v1, "4"

    #@50
    aput-object v1, v0, v12

    #@52
    .line 1737
    sput-object v0, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    #@54
    .line 1925
    const/16 v0, 0x11

    #@56
    new-array v0, v0, [Ljava/lang/String;

    #@58
    .line 1926
    const-string/jumbo v1, "none"

    #@5b
    aput-object v1, v0, v8

    #@5d
    const-string/jumbo v1, "gprs"

    #@60
    aput-object v1, v0, v10

    #@62
    const-string/jumbo v1, "edge"

    #@65
    aput-object v1, v0, v11

    #@67
    const-string/jumbo v1, "umts"

    #@6a
    aput-object v1, v0, v9

    #@6c
    const-string/jumbo v1, "cdma"

    #@6f
    aput-object v1, v0, v12

    #@71
    const-string/jumbo v1, "evdo_0"

    #@74
    const/4 v2, 0x5

    #@75
    aput-object v1, v0, v2

    #@77
    const-string/jumbo v1, "evdo_A"

    #@7a
    const/4 v2, 0x6

    #@7b
    aput-object v1, v0, v2

    #@7d
    .line 1927
    const-string/jumbo v1, "1xrtt"

    #@80
    const/4 v2, 0x7

    #@81
    aput-object v1, v0, v2

    #@83
    const-string/jumbo v1, "hsdpa"

    #@86
    const/16 v2, 0x8

    #@88
    aput-object v1, v0, v2

    #@8a
    const-string/jumbo v1, "hsupa"

    #@8d
    const/16 v2, 0x9

    #@8f
    aput-object v1, v0, v2

    #@91
    const-string/jumbo v1, "hspa"

    #@94
    const/16 v2, 0xa

    #@96
    aput-object v1, v0, v2

    #@98
    const-string/jumbo v1, "iden"

    #@9b
    const/16 v2, 0xb

    #@9d
    aput-object v1, v0, v2

    #@9f
    const-string/jumbo v1, "evdo_b"

    #@a2
    const/16 v2, 0xc

    #@a4
    aput-object v1, v0, v2

    #@a6
    const-string/jumbo v1, "lte"

    #@a9
    const/16 v2, 0xd

    #@ab
    aput-object v1, v0, v2

    #@ad
    .line 1928
    const-string/jumbo v1, "ehrpd"

    #@b0
    const/16 v2, 0xe

    #@b2
    aput-object v1, v0, v2

    #@b4
    const-string/jumbo v1, "hspap"

    #@b7
    const/16 v2, 0xf

    #@b9
    aput-object v1, v0, v2

    #@bb
    const-string/jumbo v1, "other"

    #@be
    const/16 v2, 0x10

    #@c0
    aput-object v1, v0, v2

    #@c2
    .line 1925
    sput-object v0, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    #@c4
    .line 1966
    const/16 v0, 0xd

    #@c6
    new-array v0, v0, [Ljava/lang/String;

    #@c8
    .line 1967
    const-string/jumbo v1, "invalid"

    #@cb
    aput-object v1, v0, v8

    #@cd
    const-string/jumbo v1, "disconn"

    #@d0
    aput-object v1, v0, v10

    #@d2
    const-string/jumbo v1, "disabled"

    #@d5
    aput-object v1, v0, v11

    #@d7
    const-string/jumbo v1, "inactive"

    #@da
    aput-object v1, v0, v9

    #@dc
    const-string/jumbo v1, "scanning"

    #@df
    aput-object v1, v0, v12

    #@e1
    .line 1968
    const-string/jumbo v1, "authenticating"

    #@e4
    const/4 v2, 0x5

    #@e5
    aput-object v1, v0, v2

    #@e7
    const-string/jumbo v1, "associating"

    #@ea
    const/4 v2, 0x6

    #@eb
    aput-object v1, v0, v2

    #@ed
    const-string/jumbo v1, "associated"

    #@f0
    const/4 v2, 0x7

    #@f1
    aput-object v1, v0, v2

    #@f3
    const-string/jumbo v1, "4-way-handshake"

    #@f6
    const/16 v2, 0x8

    #@f8
    aput-object v1, v0, v2

    #@fa
    .line 1969
    const-string/jumbo v1, "group-handshake"

    #@fd
    const/16 v2, 0x9

    #@ff
    aput-object v1, v0, v2

    #@101
    const-string/jumbo v1, "completed"

    #@104
    const/16 v2, 0xa

    #@106
    aput-object v1, v0, v2

    #@108
    const-string/jumbo v1, "dormant"

    #@10b
    const/16 v2, 0xb

    #@10d
    aput-object v1, v0, v2

    #@10f
    const-string/jumbo v1, "uninit"

    #@112
    const/16 v2, 0xc

    #@114
    aput-object v1, v0, v2

    #@116
    .line 1966
    sput-object v0, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    #@118
    .line 1972
    const/16 v0, 0xd

    #@11a
    new-array v0, v0, [Ljava/lang/String;

    #@11c
    .line 1973
    const-string/jumbo v1, "inv"

    #@11f
    aput-object v1, v0, v8

    #@121
    const-string/jumbo v1, "dsc"

    #@124
    aput-object v1, v0, v10

    #@126
    const-string/jumbo v1, "dis"

    #@129
    aput-object v1, v0, v11

    #@12b
    const-string/jumbo v1, "inact"

    #@12e
    aput-object v1, v0, v9

    #@130
    const-string/jumbo v1, "scan"

    #@133
    aput-object v1, v0, v12

    #@135
    .line 1974
    const-string/jumbo v1, "auth"

    #@138
    const/4 v2, 0x5

    #@139
    aput-object v1, v0, v2

    #@13b
    const-string/jumbo v1, "ascing"

    #@13e
    const/4 v2, 0x6

    #@13f
    aput-object v1, v0, v2

    #@141
    const-string/jumbo v1, "asced"

    #@144
    const/4 v2, 0x7

    #@145
    aput-object v1, v0, v2

    #@147
    const-string/jumbo v1, "4-way"

    #@14a
    const/16 v2, 0x8

    #@14c
    aput-object v1, v0, v2

    #@14e
    .line 1975
    const-string/jumbo v1, "group"

    #@151
    const/16 v2, 0x9

    #@153
    aput-object v1, v0, v2

    #@155
    const-string/jumbo v1, "compl"

    #@158
    const/16 v2, 0xa

    #@15a
    aput-object v1, v0, v2

    #@15c
    const-string/jumbo v1, "dorm"

    #@15f
    const/16 v2, 0xb

    #@161
    aput-object v1, v0, v2

    #@163
    const-string/jumbo v1, "uninit"

    #@166
    const/16 v2, 0xc

    #@168
    aput-object v1, v0, v2

    #@16a
    .line 1972
    sput-object v0, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    #@16c
    .line 1979
    const/16 v0, 0x11

    #@16e
    new-array v7, v0, [Landroid/os/BatteryStats$BitDescription;

    #@170
    .line 1980
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@172
    const-string/jumbo v1, "running"

    #@175
    const-string/jumbo v2, "r"

    #@178
    const/high16 v3, -0x80000000

    #@17a
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@17d
    aput-object v0, v7, v8

    #@17f
    .line 1981
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@181
    const-string/jumbo v1, "wake_lock"

    #@184
    const-string/jumbo v2, "w"

    #@187
    const/high16 v3, 0x40000000    # 2.0f

    #@189
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@18c
    aput-object v0, v7, v10

    #@18e
    .line 1982
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@190
    const-string/jumbo v1, "sensor"

    #@193
    const-string/jumbo v2, "s"

    #@196
    const/high16 v3, 0x800000

    #@198
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@19b
    aput-object v0, v7, v11

    #@19d
    .line 1983
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@19f
    const-string/jumbo v1, "gps"

    #@1a2
    const-string/jumbo v2, "g"

    #@1a5
    const/high16 v3, 0x20000000

    #@1a7
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@1aa
    aput-object v0, v7, v9

    #@1ac
    .line 1984
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@1ae
    const-string/jumbo v1, "wifi_full_lock"

    #@1b1
    const-string/jumbo v2, "Wl"

    #@1b4
    const/high16 v3, 0x10000000

    #@1b6
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@1b9
    aput-object v0, v7, v12

    #@1bb
    .line 1985
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@1bd
    const-string/jumbo v1, "wifi_scan"

    #@1c0
    const-string/jumbo v2, "Ws"

    #@1c3
    const/high16 v3, 0x8000000

    #@1c5
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@1c8
    const/4 v1, 0x5

    #@1c9
    aput-object v0, v7, v1

    #@1cb
    .line 1986
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@1cd
    const-string/jumbo v1, "wifi_multicast"

    #@1d0
    const-string/jumbo v2, "Wm"

    #@1d3
    const/high16 v3, 0x10000

    #@1d5
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@1d8
    const/4 v1, 0x6

    #@1d9
    aput-object v0, v7, v1

    #@1db
    .line 1987
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@1dd
    const-string/jumbo v1, "wifi_radio"

    #@1e0
    const-string/jumbo v2, "Wr"

    #@1e3
    const/high16 v3, 0x4000000

    #@1e5
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@1e8
    const/4 v1, 0x7

    #@1e9
    aput-object v0, v7, v1

    #@1eb
    .line 1988
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@1ed
    const-string/jumbo v1, "mobile_radio"

    #@1f0
    const-string/jumbo v2, "Pr"

    #@1f3
    const/high16 v3, 0x2000000

    #@1f5
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@1f8
    const/16 v1, 0x8

    #@1fa
    aput-object v0, v7, v1

    #@1fc
    .line 1989
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@1fe
    const-string/jumbo v1, "phone_scanning"

    #@201
    const-string/jumbo v2, "Psc"

    #@204
    const/high16 v3, 0x200000

    #@206
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@209
    const/16 v1, 0x9

    #@20b
    aput-object v0, v7, v1

    #@20d
    .line 1990
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@20f
    const-string/jumbo v1, "audio"

    #@212
    const-string/jumbo v2, "a"

    #@215
    const/high16 v3, 0x400000

    #@217
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@21a
    const/16 v1, 0xa

    #@21c
    aput-object v0, v7, v1

    #@21e
    .line 1991
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@220
    const-string/jumbo v1, "screen"

    #@223
    const-string/jumbo v2, "S"

    #@226
    const/high16 v3, 0x100000

    #@228
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@22b
    const/16 v1, 0xb

    #@22d
    aput-object v0, v7, v1

    #@22f
    .line 1992
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@231
    const-string/jumbo v1, "plugged"

    #@234
    const-string/jumbo v2, "BP"

    #@237
    const/high16 v3, 0x80000

    #@239
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@23c
    const/16 v1, 0xc

    #@23e
    aput-object v0, v7, v1

    #@240
    .line 1993
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@242
    .line 1994
    const-string/jumbo v3, "data_conn"

    #@245
    const-string/jumbo v4, "Pcn"

    #@248
    .line 1995
    sget-object v5, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    #@24a
    sget-object v6, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    #@24c
    .line 1993
    const/16 v1, 0x3e00

    #@24e
    .line 1994
    const/16 v2, 0x9

    #@250
    .line 1993
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@253
    const/16 v1, 0xd

    #@255
    aput-object v0, v7, v1

    #@257
    .line 1996
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@259
    .line 1997
    const-string/jumbo v3, "phone_state"

    #@25c
    const-string/jumbo v4, "Pst"

    #@25f
    .line 1998
    new-array v5, v12, [Ljava/lang/String;

    #@261
    const-string/jumbo v1, "in"

    #@264
    aput-object v1, v5, v8

    #@266
    const-string/jumbo v1, "out"

    #@269
    aput-object v1, v5, v10

    #@26b
    const-string/jumbo v1, "emergency"

    #@26e
    aput-object v1, v5, v11

    #@270
    const-string/jumbo v1, "off"

    #@273
    aput-object v1, v5, v9

    #@275
    .line 1999
    new-array v6, v12, [Ljava/lang/String;

    #@277
    const-string/jumbo v1, "in"

    #@27a
    aput-object v1, v6, v8

    #@27c
    const-string/jumbo v1, "out"

    #@27f
    aput-object v1, v6, v10

    #@281
    const-string/jumbo v1, "em"

    #@284
    aput-object v1, v6, v11

    #@286
    const-string/jumbo v1, "off"

    #@289
    aput-object v1, v6, v9

    #@28b
    .line 1996
    const/16 v1, 0x1c0

    #@28d
    .line 1997
    const/4 v2, 0x6

    #@28e
    .line 1996
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@291
    const/16 v1, 0xe

    #@293
    aput-object v0, v7, v1

    #@295
    .line 2000
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@297
    .line 2001
    const-string/jumbo v3, "phone_signal_strength"

    #@29a
    const-string/jumbo v4, "Pss"

    #@29d
    .line 2002
    sget-object v5, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    #@29f
    .line 2003
    const/4 v1, 0x5

    #@2a0
    new-array v6, v1, [Ljava/lang/String;

    #@2a2
    const-string/jumbo v1, "0"

    #@2a5
    aput-object v1, v6, v8

    #@2a7
    const-string/jumbo v1, "1"

    #@2aa
    aput-object v1, v6, v10

    #@2ac
    const-string/jumbo v1, "2"

    #@2af
    aput-object v1, v6, v11

    #@2b1
    const-string/jumbo v1, "3"

    #@2b4
    aput-object v1, v6, v9

    #@2b6
    const-string/jumbo v1, "4"

    #@2b9
    aput-object v1, v6, v12

    #@2bb
    .line 2000
    const/16 v1, 0x38

    #@2bd
    move v2, v9

    #@2be
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@2c1
    const/16 v1, 0xf

    #@2c3
    aput-object v0, v7, v1

    #@2c5
    .line 2004
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@2c7
    .line 2005
    const-string/jumbo v3, "brightness"

    #@2ca
    const-string/jumbo v4, "Sb"

    #@2cd
    .line 2006
    sget-object v5, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    #@2cf
    sget-object v6, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    #@2d1
    .line 2004
    const/4 v1, 0x7

    #@2d2
    move v2, v8

    #@2d3
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@2d6
    const/16 v1, 0x10

    #@2d8
    aput-object v0, v7, v1

    #@2da
    .line 1978
    sput-object v7, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    #@2dc
    .line 2010
    const/16 v0, 0xd

    #@2de
    new-array v7, v0, [Landroid/os/BatteryStats$BitDescription;

    #@2e0
    .line 2011
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@2e2
    const-string/jumbo v1, "power_save"

    #@2e5
    const-string/jumbo v2, "ps"

    #@2e8
    const/high16 v3, -0x80000000

    #@2ea
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@2ed
    aput-object v0, v7, v8

    #@2ef
    .line 2012
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@2f1
    const-string/jumbo v1, "video"

    #@2f4
    const-string/jumbo v2, "v"

    #@2f7
    const/high16 v3, 0x40000000    # 2.0f

    #@2f9
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@2fc
    aput-object v0, v7, v10

    #@2fe
    .line 2013
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@300
    const-string/jumbo v1, "wifi_running"

    #@303
    const-string/jumbo v2, "Ww"

    #@306
    const/high16 v3, 0x20000000

    #@308
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@30b
    aput-object v0, v7, v11

    #@30d
    .line 2014
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@30f
    const-string/jumbo v1, "wifi"

    #@312
    const-string/jumbo v2, "W"

    #@315
    const/high16 v3, 0x10000000

    #@317
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@31a
    aput-object v0, v7, v9

    #@31c
    .line 2015
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@31e
    const-string/jumbo v1, "flashlight"

    #@321
    const-string/jumbo v2, "fl"

    #@324
    const/high16 v3, 0x8000000

    #@326
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@329
    aput-object v0, v7, v12

    #@32b
    .line 2016
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@32d
    .line 2017
    const-string/jumbo v3, "device_idle"

    #@330
    const-string/jumbo v4, "di"

    #@333
    .line 2018
    new-array v5, v12, [Ljava/lang/String;

    #@335
    const-string/jumbo v1, "off"

    #@338
    aput-object v1, v5, v8

    #@33a
    const-string/jumbo v1, "light"

    #@33d
    aput-object v1, v5, v10

    #@33f
    const-string/jumbo v1, "full"

    #@342
    aput-object v1, v5, v11

    #@344
    const-string/jumbo v1, "???"

    #@347
    aput-object v1, v5, v9

    #@349
    .line 2019
    new-array v6, v12, [Ljava/lang/String;

    #@34b
    const-string/jumbo v1, "off"

    #@34e
    aput-object v1, v6, v8

    #@350
    const-string/jumbo v1, "light"

    #@353
    aput-object v1, v6, v10

    #@355
    const-string/jumbo v1, "full"

    #@358
    aput-object v1, v6, v11

    #@35a
    const-string/jumbo v1, "???"

    #@35d
    aput-object v1, v6, v9

    #@35f
    .line 2016
    const/high16 v1, 0x6000000

    #@361
    .line 2017
    const/16 v2, 0x19

    #@363
    .line 2016
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@366
    const/4 v1, 0x5

    #@367
    aput-object v0, v7, v1

    #@369
    .line 2020
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@36b
    const-string/jumbo v1, "charging"

    #@36e
    const-string/jumbo v2, "ch"

    #@371
    const/high16 v3, 0x1000000

    #@373
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@376
    const/4 v1, 0x6

    #@377
    aput-object v0, v7, v1

    #@379
    .line 2021
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@37b
    const-string/jumbo v1, "phone_in_call"

    #@37e
    const-string/jumbo v2, "Pcl"

    #@381
    const/high16 v3, 0x800000

    #@383
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@386
    const/4 v1, 0x7

    #@387
    aput-object v0, v7, v1

    #@389
    .line 2022
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@38b
    const-string/jumbo v1, "bluetooth"

    #@38e
    const-string/jumbo v2, "b"

    #@391
    const/high16 v3, 0x400000

    #@393
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@396
    const/16 v1, 0x8

    #@398
    aput-object v0, v7, v1

    #@39a
    .line 2023
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@39c
    .line 2024
    const-string/jumbo v3, "wifi_signal_strength"

    #@39f
    const-string/jumbo v4, "Wss"

    #@3a2
    .line 2025
    const/4 v1, 0x5

    #@3a3
    new-array v5, v1, [Ljava/lang/String;

    #@3a5
    const-string/jumbo v1, "0"

    #@3a8
    aput-object v1, v5, v8

    #@3aa
    const-string/jumbo v1, "1"

    #@3ad
    aput-object v1, v5, v10

    #@3af
    const-string/jumbo v1, "2"

    #@3b2
    aput-object v1, v5, v11

    #@3b4
    const-string/jumbo v1, "3"

    #@3b7
    aput-object v1, v5, v9

    #@3b9
    const-string/jumbo v1, "4"

    #@3bc
    aput-object v1, v5, v12

    #@3be
    .line 2026
    const/4 v1, 0x5

    #@3bf
    new-array v6, v1, [Ljava/lang/String;

    #@3c1
    const-string/jumbo v1, "0"

    #@3c4
    aput-object v1, v6, v8

    #@3c6
    const-string/jumbo v1, "1"

    #@3c9
    aput-object v1, v6, v10

    #@3cb
    const-string/jumbo v1, "2"

    #@3ce
    aput-object v1, v6, v11

    #@3d0
    const-string/jumbo v1, "3"

    #@3d3
    aput-object v1, v6, v9

    #@3d5
    const-string/jumbo v1, "4"

    #@3d8
    aput-object v1, v6, v12

    #@3da
    .line 2023
    const/16 v1, 0x70

    #@3dc
    move v2, v12

    #@3dd
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@3e0
    const/16 v1, 0x9

    #@3e2
    aput-object v0, v7, v1

    #@3e4
    .line 2027
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@3e6
    .line 2028
    const-string/jumbo v3, "wifi_suppl"

    #@3e9
    const-string/jumbo v4, "Wsp"

    #@3ec
    .line 2029
    sget-object v5, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    #@3ee
    sget-object v6, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    #@3f0
    .line 2027
    const/16 v1, 0xf

    #@3f2
    move v2, v8

    #@3f3
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@3f6
    const/16 v1, 0xa

    #@3f8
    aput-object v0, v7, v1

    #@3fa
    .line 2030
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@3fc
    const-string/jumbo v1, "camera"

    #@3ff
    const-string/jumbo v2, "ca"

    #@402
    const/high16 v3, 0x200000

    #@404
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@407
    const/16 v1, 0xb

    #@409
    aput-object v0, v7, v1

    #@40b
    .line 2031
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@40d
    const-string/jumbo v1, "ble_scan"

    #@410
    const-string/jumbo v2, "bles"

    #@413
    const/high16 v3, 0x100000

    #@415
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@418
    const/16 v1, 0xc

    #@41a
    aput-object v0, v7, v1

    #@41c
    .line 2009
    sput-object v7, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    #@41e
    .line 2034
    const/16 v0, 0x15

    #@420
    new-array v0, v0, [Ljava/lang/String;

    #@422
    .line 2035
    const-string/jumbo v1, "null"

    #@425
    aput-object v1, v0, v8

    #@427
    const-string/jumbo v1, "proc"

    #@42a
    aput-object v1, v0, v10

    #@42c
    const-string/jumbo v1, "fg"

    #@42f
    aput-object v1, v0, v11

    #@431
    const-string/jumbo v1, "top"

    #@434
    aput-object v1, v0, v9

    #@436
    const-string/jumbo v1, "sync"

    #@439
    aput-object v1, v0, v12

    #@43b
    const-string/jumbo v1, "wake_lock_in"

    #@43e
    const/4 v2, 0x5

    #@43f
    aput-object v1, v0, v2

    #@441
    const-string/jumbo v1, "job"

    #@444
    const/4 v2, 0x6

    #@445
    aput-object v1, v0, v2

    #@447
    const-string/jumbo v1, "user"

    #@44a
    const/4 v2, 0x7

    #@44b
    aput-object v1, v0, v2

    #@44d
    const-string/jumbo v1, "userfg"

    #@450
    const/16 v2, 0x8

    #@452
    aput-object v1, v0, v2

    #@454
    const-string/jumbo v1, "conn"

    #@457
    const/16 v2, 0x9

    #@459
    aput-object v1, v0, v2

    #@45b
    .line 2036
    const-string/jumbo v1, "active"

    #@45e
    const/16 v2, 0xa

    #@460
    aput-object v1, v0, v2

    #@462
    const-string/jumbo v1, "pkginst"

    #@465
    const/16 v2, 0xb

    #@467
    aput-object v1, v0, v2

    #@469
    const-string/jumbo v1, "pkgunin"

    #@46c
    const/16 v2, 0xc

    #@46e
    aput-object v1, v0, v2

    #@470
    const-string/jumbo v1, "alarm"

    #@473
    const/16 v2, 0xd

    #@475
    aput-object v1, v0, v2

    #@477
    const-string/jumbo v1, "stats"

    #@47a
    const/16 v2, 0xe

    #@47c
    aput-object v1, v0, v2

    #@47e
    const-string/jumbo v1, "inactive"

    #@481
    const/16 v2, 0xf

    #@483
    aput-object v1, v0, v2

    #@485
    const-string/jumbo v1, "active"

    #@488
    const/16 v2, 0x10

    #@48a
    aput-object v1, v0, v2

    #@48c
    const-string/jumbo v1, "tmpwhitelist"

    #@48f
    const/16 v2, 0x11

    #@491
    aput-object v1, v0, v2

    #@493
    .line 2037
    const-string/jumbo v1, "screenwake"

    #@496
    const/16 v2, 0x12

    #@498
    aput-object v1, v0, v2

    #@49a
    const-string/jumbo v1, "wakeupap"

    #@49d
    const/16 v2, 0x13

    #@49f
    aput-object v1, v0, v2

    #@4a1
    const-string/jumbo v1, "longwake"

    #@4a4
    const/16 v2, 0x14

    #@4a6
    aput-object v1, v0, v2

    #@4a8
    .line 2034
    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    #@4aa
    .line 2040
    const/16 v0, 0x15

    #@4ac
    new-array v0, v0, [Ljava/lang/String;

    #@4ae
    .line 2041
    const-string/jumbo v1, "Enl"

    #@4b1
    aput-object v1, v0, v8

    #@4b3
    const-string/jumbo v1, "Epr"

    #@4b6
    aput-object v1, v0, v10

    #@4b8
    const-string/jumbo v1, "Efg"

    #@4bb
    aput-object v1, v0, v11

    #@4bd
    const-string/jumbo v1, "Etp"

    #@4c0
    aput-object v1, v0, v9

    #@4c2
    const-string/jumbo v1, "Esy"

    #@4c5
    aput-object v1, v0, v12

    #@4c7
    const-string/jumbo v1, "Ewl"

    #@4ca
    const/4 v2, 0x5

    #@4cb
    aput-object v1, v0, v2

    #@4cd
    const-string/jumbo v1, "Ejb"

    #@4d0
    const/4 v2, 0x6

    #@4d1
    aput-object v1, v0, v2

    #@4d3
    const-string/jumbo v1, "Eur"

    #@4d6
    const/4 v2, 0x7

    #@4d7
    aput-object v1, v0, v2

    #@4d9
    const-string/jumbo v1, "Euf"

    #@4dc
    const/16 v2, 0x8

    #@4de
    aput-object v1, v0, v2

    #@4e0
    const-string/jumbo v1, "Ecn"

    #@4e3
    const/16 v2, 0x9

    #@4e5
    aput-object v1, v0, v2

    #@4e7
    .line 2042
    const-string/jumbo v1, "Eac"

    #@4ea
    const/16 v2, 0xa

    #@4ec
    aput-object v1, v0, v2

    #@4ee
    const-string/jumbo v1, "Epi"

    #@4f1
    const/16 v2, 0xb

    #@4f3
    aput-object v1, v0, v2

    #@4f5
    const-string/jumbo v1, "Epu"

    #@4f8
    const/16 v2, 0xc

    #@4fa
    aput-object v1, v0, v2

    #@4fc
    const-string/jumbo v1, "Eal"

    #@4ff
    const/16 v2, 0xd

    #@501
    aput-object v1, v0, v2

    #@503
    const-string/jumbo v1, "Est"

    #@506
    const/16 v2, 0xe

    #@508
    aput-object v1, v0, v2

    #@50a
    const-string/jumbo v1, "Eai"

    #@50d
    const/16 v2, 0xf

    #@50f
    aput-object v1, v0, v2

    #@511
    const-string/jumbo v1, "Eaa"

    #@514
    const/16 v2, 0x10

    #@516
    aput-object v1, v0, v2

    #@518
    const-string/jumbo v1, "Etw"

    #@51b
    const/16 v2, 0x11

    #@51d
    aput-object v1, v0, v2

    #@51f
    .line 2043
    const-string/jumbo v1, "Esw"

    #@522
    const/16 v2, 0x12

    #@524
    aput-object v1, v0, v2

    #@526
    const-string/jumbo v1, "Ewa"

    #@529
    const/16 v2, 0x13

    #@52b
    aput-object v1, v0, v2

    #@52d
    const-string/jumbo v1, "Elw"

    #@530
    const/16 v2, 0x14

    #@532
    aput-object v1, v0, v2

    #@534
    .line 2040
    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    #@536
    .line 2071
    const/16 v0, 0x8

    #@538
    new-array v0, v0, [Ljava/lang/String;

    #@53a
    .line 2072
    const-string/jumbo v1, "off"

    #@53d
    aput-object v1, v0, v8

    #@53f
    const-string/jumbo v1, "scanning"

    #@542
    aput-object v1, v0, v10

    #@544
    const-string/jumbo v1, "no_net"

    #@547
    aput-object v1, v0, v11

    #@549
    const-string/jumbo v1, "disconn"

    #@54c
    aput-object v1, v0, v9

    #@54e
    .line 2073
    const-string/jumbo v1, "sta"

    #@551
    aput-object v1, v0, v12

    #@553
    const-string/jumbo v1, "p2p"

    #@556
    const/4 v2, 0x5

    #@557
    aput-object v1, v0, v2

    #@559
    const-string/jumbo v1, "sta_p2p"

    #@55c
    const/4 v2, 0x6

    #@55d
    aput-object v1, v0, v2

    #@55f
    const-string/jumbo v1, "soft_ap"

    #@562
    const/4 v2, 0x7

    #@563
    aput-object v1, v0, v2

    #@565
    .line 2071
    sput-object v0, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    #@567
    .line 2391
    const/16 v0, 0xa

    #@569
    new-array v0, v0, [I

    #@56b
    fill-array-data v0, :array_0

    #@56e
    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    #@570
    .line 2403
    const/16 v0, 0xa

    #@572
    new-array v0, v0, [I

    #@574
    fill-array-data v0, :array_1

    #@577
    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    #@579
    .line 2415
    const/16 v0, 0xa

    #@57b
    new-array v0, v0, [Ljava/lang/String;

    #@57d
    .line 2416
    const-string/jumbo v1, "screen off"

    #@580
    aput-object v1, v0, v8

    #@582
    .line 2417
    const-string/jumbo v1, "screen off power save"

    #@585
    aput-object v1, v0, v10

    #@587
    .line 2418
    const-string/jumbo v1, "screen off device idle"

    #@58a
    aput-object v1, v0, v11

    #@58c
    .line 2419
    const-string/jumbo v1, "screen on"

    #@58f
    aput-object v1, v0, v9

    #@591
    .line 2420
    const-string/jumbo v1, "screen on power save"

    #@594
    aput-object v1, v0, v12

    #@596
    .line 2421
    const-string/jumbo v1, "screen doze"

    #@599
    const/4 v2, 0x5

    #@59a
    aput-object v1, v0, v2

    #@59c
    .line 2422
    const-string/jumbo v1, "screen doze power save"

    #@59f
    const/4 v2, 0x6

    #@5a0
    aput-object v1, v0, v2

    #@5a2
    .line 2423
    const-string/jumbo v1, "screen doze-suspend"

    #@5a5
    const/4 v2, 0x7

    #@5a6
    aput-object v1, v0, v2

    #@5a8
    .line 2424
    const-string/jumbo v1, "screen doze-suspend power save"

    #@5ab
    const/16 v2, 0x8

    #@5ad
    aput-object v1, v0, v2

    #@5af
    .line 2425
    const-string/jumbo v1, "screen doze-suspend device idle"

    #@5b2
    const/16 v2, 0x9

    #@5b4
    aput-object v1, v0, v2

    #@5b6
    .line 2415
    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    #@5b8
    .line 51
    return-void

    #@5b9
    .line 2391
    nop

    #@5ba
    :array_0
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

    #@5d2
    .line 2403
    :array_1
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
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    const/16 v1, 0x20

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@a
    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@c
    .line 255
    new-instance v0, Ljava/util/Formatter;

    #@e
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    #@13
    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    #@15
    .line 51
    return-void
.end method

.method private static computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .locals 9
    .param p0, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 2557
    if-eqz p0, :cond_0

    #@2
    .line 2559
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@5
    move-result-wide v0

    #@6
    .line 2560
    .local v0, "totalTimeMicros":J
    const-wide/16 v4, 0x1f4

    #@8
    add-long/2addr v4, v0

    #@9
    const-wide/16 v6, 0x3e8

    #@b
    div-long v2, v4, v6

    #@d
    .line 2561
    .local v2, "totalTimeMillis":J
    return-wide v2

    #@e
    .line 2563
    .end local v0    # "totalTimeMicros":J
    .end local v2    # "totalTimeMillis":J
    :cond_0
    const-wide/16 v4, 0x0

    #@10
    return-wide v4
.end method

.method private static controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z
    .locals 11
    .param p0, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p1, "which"    # I

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const-wide/16 v8, 0x0

    #@4
    .line 2758
    if-nez p0, :cond_0

    #@6
    .line 2759
    return v2

    #@7
    .line 2762
    :cond_0
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@e
    move-result-wide v4

    #@f
    cmp-long v1, v4, v8

    #@11
    if-nez v1, :cond_1

    #@13
    .line 2763
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@1a
    move-result-wide v4

    #@1b
    cmp-long v1, v4, v8

    #@1d
    if-eqz v1, :cond_2

    #@1f
    .line 2765
    :cond_1
    return v10

    #@20
    .line 2764
    :cond_2
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@27
    move-result-wide v4

    #@28
    cmp-long v1, v4, v8

    #@2a
    if-nez v1, :cond_1

    #@2c
    .line 2768
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    #@2f
    move-result-object v3

    #@30
    array-length v4, v3

    #@31
    move v1, v2

    #@32
    :goto_0
    if-ge v1, v4, :cond_4

    #@34
    aget-object v0, v3, v1

    #@36
    .line 2769
    .local v0, "c":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@39
    move-result-wide v6

    #@3a
    cmp-long v5, v6, v8

    #@3c
    if-eqz v5, :cond_3

    #@3e
    .line 2770
    return v10

    #@3f
    .line 2768
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@41
    goto :goto_0

    #@42
    .line 2773
    .end local v0    # "c":Landroid/os/BatteryStats$LongCounter;
    :cond_4
    return v2
.end method

.method private static final dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p5, "which"    # I

    #@0
    .prologue
    .line 2788
    invoke-static {p4, p5}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 2789
    return-void

    #@7
    .line 2792
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    #@a
    .line 2793
    const-string/jumbo v1, ","

    #@d
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10
    .line 2794
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@17
    move-result-wide v2

    #@18
    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@1b
    .line 2795
    const-string/jumbo v1, ","

    #@1e
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21
    .line 2796
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@28
    move-result-wide v2

    #@29
    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@2c
    .line 2797
    const-string/jumbo v1, ","

    #@2f
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32
    .line 2798
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@39
    move-result-wide v2

    #@3a
    const-wide/32 v4, 0x36ee80

    #@3d
    div-long/2addr v2, v4

    #@3e
    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@41
    .line 2799
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    #@44
    move-result-object v2

    #@45
    const/4 v1, 0x0

    #@46
    array-length v3, v2

    #@47
    :goto_0
    if-ge v1, v3, :cond_1

    #@49
    aget-object v0, v2, v1

    #@4b
    .line 2800
    .local v0, "c":Landroid/os/BatteryStats$LongCounter;
    const-string/jumbo v4, ","

    #@4e
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51
    .line 2801
    invoke-virtual {v0, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@54
    move-result-wide v4

    #@55
    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@58
    .line 2799
    add-int/lit8 v1, v1, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 2803
    .end local v0    # "c":Landroid/os/BatteryStats$LongCounter;
    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    #@5e
    .line 2787
    return-void
.end method

.method private dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "steps"    # Landroid/os/BatteryStats$LevelStepTracker;
    .param p5, "tmpSb"    # Ljava/lang/StringBuilder;
    .param p6, "tmpOutInt"    # [I

    #@0
    .prologue
    .line 5288
    if-nez p4, :cond_0

    #@2
    .line 5289
    return-void

    #@3
    .line 5291
    :cond_0
    const-wide/16 v4, 0x0

    #@5
    const-wide/16 v6, 0x0

    #@7
    move-object/from16 v3, p4

    #@9
    move-object/from16 v8, p6

    #@b
    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    #@e
    move-result-wide v12

    #@f
    .line 5292
    .local v12, "timeRemaining":J
    const-wide/16 v4, 0x0

    #@11
    cmp-long v3, v12, v4

    #@13
    if-ltz v3, :cond_1

    #@15
    .line 5293
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    move-object/from16 v0, p3

    #@1a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d
    const-string/jumbo v3, " total time: "

    #@20
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    .line 5294
    const/4 v3, 0x0

    #@24
    move-object/from16 v0, p5

    #@26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    #@29
    .line 5295
    move-object/from16 v0, p5

    #@2b
    invoke-static {v0, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@2e
    .line 5296
    move-object/from16 v0, p5

    #@30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@33
    .line 5297
    const-string/jumbo v3, " (from "

    #@36
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39
    const/4 v3, 0x0

    #@3a
    aget v3, p6, v3

    #@3c
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@3f
    .line 5298
    const-string/jumbo v3, " steps)"

    #@42
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@45
    .line 5300
    :cond_1
    const/4 v2, 0x0

    #@46
    .local v2, "i":I
    :goto_0
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    #@48
    array-length v3, v3

    #@49
    if-ge v2, v3, :cond_3

    #@4b
    .line 5301
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    #@4d
    aget v3, v3, v2

    #@4f
    int-to-long v4, v3

    #@50
    .line 5302
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    #@52
    aget v3, v3, v2

    #@54
    int-to-long v6, v3

    #@55
    move-object/from16 v3, p4

    #@57
    move-object/from16 v8, p6

    #@59
    .line 5301
    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    #@5c
    move-result-wide v10

    #@5d
    .line 5303
    .local v10, "estimatedTime":J
    const-wide/16 v4, 0x0

    #@5f
    cmp-long v3, v10, v4

    #@61
    if-lez v3, :cond_2

    #@63
    .line 5304
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66
    move-object/from16 v0, p3

    #@68
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6b
    const-string/jumbo v3, " "

    #@6e
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    .line 5305
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    #@73
    aget-object v3, v3, v2

    #@75
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@78
    .line 5306
    const-string/jumbo v3, " time: "

    #@7b
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7e
    .line 5307
    const/4 v3, 0x0

    #@7f
    move-object/from16 v0, p5

    #@81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    #@84
    .line 5308
    move-object/from16 v0, p5

    #@86
    invoke-static {v0, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@89
    .line 5309
    move-object/from16 v0, p5

    #@8b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@8e
    .line 5310
    const-string/jumbo v3, " (from "

    #@91
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@94
    const/4 v3, 0x0

    #@95
    aget v3, p6, v3

    #@97
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@9a
    .line 5311
    const-string/jumbo v3, " steps)"

    #@9d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a0
    .line 5300
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@a2
    goto :goto_0

    #@a3
    .line 5287
    .end local v10    # "estimatedTime":J
    :cond_3
    return-void
.end method

.method private dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 5318
    .local p3, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    if-nez p3, :cond_0

    #@2
    .line 5319
    return-void

    #@3
    .line 5321
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    const-string/jumbo v2, "Package changes:"

    #@9
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 5322
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v2

    #@11
    if-ge v0, v2, :cond_2

    #@13
    .line 5323
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/os/BatteryStats$PackageChange;

    #@19
    .line 5324
    .local v1, "pc":Landroid/os/BatteryStats$PackageChange;
    iget-boolean v2, v1, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 5325
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    const-string/jumbo v2, "  Update "

    #@23
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    #@28
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b
    .line 5326
    const-string/jumbo v2, " vers="

    #@2e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    iget v2, v1, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    #@33
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    #@36
    .line 5322
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_0

    #@39
    .line 5328
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    const-string/jumbo v2, "  Uninstall "

    #@3f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42
    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    #@44
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@47
    goto :goto_1

    #@48
    .line 5317
    .end local v1    # "pc":Landroid/os/BatteryStats$PackageChange;
    :cond_2
    return-void
.end method

.method private static dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z
    .locals 18
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "steps"    # Landroid/os/BatteryStats$LevelStepTracker;
    .param p4, "checkin"    # Z

    #@0
    .prologue
    .line 5116
    if-nez p3, :cond_0

    #@2
    .line 5117
    const/4 v11, 0x0

    #@3
    return v11

    #@4
    .line 5119
    :cond_0
    move-object/from16 v0, p3

    #@6
    iget v2, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    #@8
    .line 5120
    .local v2, "count":I
    if-gtz v2, :cond_1

    #@a
    .line 5121
    const/4 v11, 0x0

    #@b
    return v11

    #@c
    .line 5123
    :cond_1
    if-nez p4, :cond_2

    #@e
    .line 5124
    move-object/from16 v0, p0

    #@10
    move-object/from16 v1, p2

    #@12
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15
    .line 5126
    :cond_2
    const/4 v11, 0x5

    #@16
    new-array v10, v11, [Ljava/lang/String;

    #@18
    .line 5127
    .local v10, "lineArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    #@19
    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_11

    #@1b
    .line 5128
    move-object/from16 v0, p3

    #@1d
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    #@20
    move-result-wide v4

    #@21
    .line 5129
    .local v4, "duration":J
    move-object/from16 v0, p3

    #@23
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    #@26
    move-result v7

    #@27
    .line 5130
    .local v7, "level":I
    move-object/from16 v0, p3

    #@29
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    #@2c
    move-result v11

    #@2d
    int-to-long v8, v11

    #@2e
    .line 5131
    .local v8, "initMode":J
    move-object/from16 v0, p3

    #@30
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    #@33
    move-result v11

    #@34
    int-to-long v12, v11

    #@35
    .line 5132
    .local v12, "modMode":J
    if-eqz p4, :cond_8

    #@37
    .line 5133
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3a
    move-result-object v11

    #@3b
    const/4 v14, 0x0

    #@3c
    aput-object v11, v10, v14

    #@3e
    .line 5134
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@41
    move-result-object v11

    #@42
    const/4 v14, 0x1

    #@43
    aput-object v11, v10, v14

    #@45
    .line 5135
    const-wide/16 v14, 0x3

    #@47
    and-long/2addr v14, v12

    #@48
    const-wide/16 v16, 0x0

    #@4a
    cmp-long v11, v14, v16

    #@4c
    if-nez v11, :cond_3

    #@4e
    .line 5136
    const-wide/16 v14, 0x3

    #@50
    and-long/2addr v14, v8

    #@51
    long-to-int v11, v14

    #@52
    add-int/lit8 v11, v11, 0x1

    #@54
    packed-switch v11, :pswitch_data_0

    #@57
    .line 5141
    const-string/jumbo v11, "?"

    #@5a
    const/4 v14, 0x2

    #@5b
    aput-object v11, v10, v14

    #@5d
    .line 5146
    :goto_1
    const-wide/16 v14, 0x4

    #@5f
    and-long/2addr v14, v12

    #@60
    const-wide/16 v16, 0x0

    #@62
    cmp-long v11, v14, v16

    #@64
    if-nez v11, :cond_5

    #@66
    .line 5147
    const-wide/16 v14, 0x4

    #@68
    and-long/2addr v14, v8

    #@69
    const-wide/16 v16, 0x0

    #@6b
    cmp-long v11, v14, v16

    #@6d
    if-eqz v11, :cond_4

    #@6f
    const-string/jumbo v11, "p+"

    #@72
    :goto_2
    const/4 v14, 0x3

    #@73
    aput-object v11, v10, v14

    #@75
    .line 5151
    :goto_3
    const-wide/16 v14, 0x8

    #@77
    and-long/2addr v14, v12

    #@78
    const-wide/16 v16, 0x0

    #@7a
    cmp-long v11, v14, v16

    #@7c
    if-nez v11, :cond_7

    #@7e
    .line 5152
    const-wide/16 v14, 0x8

    #@80
    and-long/2addr v14, v8

    #@81
    const-wide/16 v16, 0x0

    #@83
    cmp-long v11, v14, v16

    #@85
    if-eqz v11, :cond_6

    #@87
    const-string/jumbo v11, "i+"

    #@8a
    :goto_4
    const/4 v14, 0x4

    #@8b
    aput-object v11, v10, v14

    #@8d
    .line 5156
    :goto_5
    const-string/jumbo v11, "i"

    #@90
    const/4 v14, 0x0

    #@91
    move-object/from16 v0, p0

    #@93
    move-object/from16 v1, p2

    #@95
    invoke-static {v0, v14, v11, v1, v10}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@98
    .line 5127
    :goto_6
    add-int/lit8 v6, v6, 0x1

    #@9a
    goto/16 :goto_0

    #@9c
    .line 5137
    :pswitch_0
    const-string/jumbo v11, "s-"

    #@9f
    const/4 v14, 0x2

    #@a0
    aput-object v11, v10, v14

    #@a2
    goto :goto_1

    #@a3
    .line 5138
    :pswitch_1
    const-string/jumbo v11, "s+"

    #@a6
    const/4 v14, 0x2

    #@a7
    aput-object v11, v10, v14

    #@a9
    goto :goto_1

    #@aa
    .line 5139
    :pswitch_2
    const-string/jumbo v11, "sd"

    #@ad
    const/4 v14, 0x2

    #@ae
    aput-object v11, v10, v14

    #@b0
    goto :goto_1

    #@b1
    .line 5140
    :pswitch_3
    const-string/jumbo v11, "sds"

    #@b4
    const/4 v14, 0x2

    #@b5
    aput-object v11, v10, v14

    #@b7
    goto :goto_1

    #@b8
    .line 5144
    :cond_3
    const-string/jumbo v11, ""

    #@bb
    const/4 v14, 0x2

    #@bc
    aput-object v11, v10, v14

    #@be
    goto :goto_1

    #@bf
    .line 5147
    :cond_4
    const-string/jumbo v11, "p-"

    #@c2
    goto :goto_2

    #@c3
    .line 5149
    :cond_5
    const-string/jumbo v11, ""

    #@c6
    const/4 v14, 0x3

    #@c7
    aput-object v11, v10, v14

    #@c9
    goto :goto_3

    #@ca
    .line 5152
    :cond_6
    const-string/jumbo v11, "i-"

    #@cd
    goto :goto_4

    #@ce
    .line 5154
    :cond_7
    const-string/jumbo v11, ""

    #@d1
    const/4 v14, 0x4

    #@d2
    aput-object v11, v10, v14

    #@d4
    goto :goto_5

    #@d5
    .line 5158
    :cond_8
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d8
    .line 5159
    const-string/jumbo v11, "#"

    #@db
    move-object/from16 v0, p0

    #@dd
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e0
    move-object/from16 v0, p0

    #@e2
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    #@e5
    const-string/jumbo v11, ": "

    #@e8
    move-object/from16 v0, p0

    #@ea
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ed
    .line 5160
    move-object/from16 v0, p0

    #@ef
    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@f2
    .line 5161
    const-string/jumbo v11, " to "

    #@f5
    move-object/from16 v0, p0

    #@f7
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fa
    move-object/from16 v0, p0

    #@fc
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    #@ff
    .line 5162
    const/4 v3, 0x0

    #@100
    .line 5163
    .local v3, "haveModes":Z
    const-wide/16 v14, 0x3

    #@102
    and-long/2addr v14, v12

    #@103
    const-wide/16 v16, 0x0

    #@105
    cmp-long v11, v14, v16

    #@107
    if-nez v11, :cond_9

    #@109
    .line 5164
    const-string/jumbo v11, " ("

    #@10c
    move-object/from16 v0, p0

    #@10e
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@111
    .line 5165
    const-wide/16 v14, 0x3

    #@113
    and-long/2addr v14, v8

    #@114
    long-to-int v11, v14

    #@115
    add-int/lit8 v11, v11, 0x1

    #@117
    packed-switch v11, :pswitch_data_1

    #@11a
    .line 5170
    const-string/jumbo v11, "screen-?"

    #@11d
    move-object/from16 v0, p0

    #@11f
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@122
    .line 5172
    :goto_7
    const/4 v3, 0x1

    #@123
    .line 5174
    :cond_9
    const-wide/16 v14, 0x4

    #@125
    and-long/2addr v14, v12

    #@126
    const-wide/16 v16, 0x0

    #@128
    cmp-long v11, v14, v16

    #@12a
    if-nez v11, :cond_a

    #@12c
    .line 5175
    if-eqz v3, :cond_d

    #@12e
    const-string/jumbo v11, ", "

    #@131
    :goto_8
    move-object/from16 v0, p0

    #@133
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@136
    .line 5176
    const-wide/16 v14, 0x4

    #@138
    and-long/2addr v14, v8

    #@139
    const-wide/16 v16, 0x0

    #@13b
    cmp-long v11, v14, v16

    #@13d
    if-eqz v11, :cond_e

    #@13f
    .line 5177
    const-string/jumbo v11, "power-save-on"

    #@142
    .line 5176
    :goto_9
    move-object/from16 v0, p0

    #@144
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@147
    .line 5178
    const/4 v3, 0x1

    #@148
    .line 5180
    :cond_a
    const-wide/16 v14, 0x8

    #@14a
    and-long/2addr v14, v12

    #@14b
    const-wide/16 v16, 0x0

    #@14d
    cmp-long v11, v14, v16

    #@14f
    if-nez v11, :cond_b

    #@151
    .line 5181
    if-eqz v3, :cond_f

    #@153
    const-string/jumbo v11, ", "

    #@156
    :goto_a
    move-object/from16 v0, p0

    #@158
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15b
    .line 5182
    const-wide/16 v14, 0x8

    #@15d
    and-long/2addr v14, v8

    #@15e
    const-wide/16 v16, 0x0

    #@160
    cmp-long v11, v14, v16

    #@162
    if-eqz v11, :cond_10

    #@164
    .line 5183
    const-string/jumbo v11, "device-idle-on"

    #@167
    .line 5182
    :goto_b
    move-object/from16 v0, p0

    #@169
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16c
    .line 5184
    const/4 v3, 0x1

    #@16d
    .line 5186
    :cond_b
    if-eqz v3, :cond_c

    #@16f
    .line 5187
    const-string/jumbo v11, ")"

    #@172
    move-object/from16 v0, p0

    #@174
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@177
    .line 5189
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    #@17a
    goto/16 :goto_6

    #@17c
    .line 5166
    :pswitch_4
    const-string/jumbo v11, "screen-off"

    #@17f
    move-object/from16 v0, p0

    #@181
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@184
    goto :goto_7

    #@185
    .line 5167
    :pswitch_5
    const-string/jumbo v11, "screen-on"

    #@188
    move-object/from16 v0, p0

    #@18a
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18d
    goto :goto_7

    #@18e
    .line 5168
    :pswitch_6
    const-string/jumbo v11, "screen-doze"

    #@191
    move-object/from16 v0, p0

    #@193
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@196
    goto :goto_7

    #@197
    .line 5169
    :pswitch_7
    const-string/jumbo v11, "screen-doze-suspend"

    #@19a
    move-object/from16 v0, p0

    #@19c
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19f
    goto :goto_7

    #@1a0
    .line 5175
    :cond_d
    const-string/jumbo v11, " ("

    #@1a3
    goto :goto_8

    #@1a4
    .line 5177
    :cond_e
    const-string/jumbo v11, "power-save-off"

    #@1a7
    goto :goto_9

    #@1a8
    .line 5181
    :cond_f
    const-string/jumbo v11, " ("

    #@1ab
    goto :goto_a

    #@1ac
    .line 5183
    :cond_10
    const-string/jumbo v11, "device-idle-off"

    #@1af
    goto :goto_b

    #@1b0
    .line 5192
    .end local v3    # "haveModes":Z
    .end local v4    # "duration":J
    .end local v7    # "level":I
    .end local v8    # "initMode":J
    .end local v12    # "modMode":J
    :cond_11
    const/4 v11, 0x1

    #@1b1
    return v11

    #@1b2
    .line 5136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    #@1be
    .line 5165
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V
    .locals 25
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "flags"    # I
    .param p3, "histStart"    # J
    .param p5, "checkin"    # Z

    #@0
    .prologue
    .line 5203
    new-instance v3, Landroid/os/BatteryStats$HistoryPrinter;

    #@2
    invoke-direct {v3}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    #@5
    .line 5204
    .local v3, "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    new-instance v5, Landroid/os/BatteryStats$HistoryItem;

    #@7
    invoke-direct {v5}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    #@a
    .line 5205
    .local v5, "rec":Landroid/os/BatteryStats$HistoryItem;
    const-wide/16 v16, -0x1

    #@c
    .line 5206
    .local v16, "lastTime":J
    const-wide/16 v6, -0x1

    #@e
    .line 5207
    .local v6, "baseTime":J
    const/16 v19, 0x0

    #@10
    .line 5208
    .local v19, "printed":Z
    const/16 v20, 0x0

    #@12
    .line 5209
    .local v20, "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    #@14
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_11

    #@1a
    .line 5210
    iget-wide v0, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@1c
    move-wide/from16 v16, v0

    #@1e
    .line 5211
    const-wide/16 v8, 0x0

    #@20
    cmp-long v4, v6, v8

    #@22
    if-gez v4, :cond_1

    #@24
    .line 5212
    move-wide/from16 v6, v16

    #@26
    .line 5214
    :cond_1
    iget-wide v8, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@28
    cmp-long v4, v8, p3

    #@2a
    if-ltz v4, :cond_0

    #@2c
    .line 5215
    const-wide/16 v8, 0x0

    #@2e
    cmp-long v4, p3, v8

    #@30
    if-ltz v4, :cond_2

    #@32
    if-eqz v19, :cond_3

    #@34
    .line 5268
    :cond_2
    :goto_1
    and-int/lit8 v4, p2, 0x20

    #@36
    if-eqz v4, :cond_10

    #@38
    const/4 v9, 0x1

    #@39
    :goto_2
    move-object/from16 v4, p1

    #@3b
    move/from16 v8, p5

    #@3d
    .line 5267
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    #@40
    goto :goto_0

    #@41
    .line 5216
    :cond_3
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@43
    const/4 v8, 0x5

    #@44
    if-eq v4, v8, :cond_4

    #@46
    .line 5217
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@48
    const/4 v8, 0x7

    #@49
    if-ne v4, v8, :cond_8

    #@4b
    .line 5220
    :cond_4
    const/16 v19, 0x1

    #@4d
    .line 5222
    and-int/lit8 v4, p2, 0x20

    #@4f
    if-eqz v4, :cond_9

    #@51
    const/4 v9, 0x1

    #@52
    :goto_3
    move-object/from16 v4, p1

    #@54
    move/from16 v8, p5

    #@56
    .line 5221
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    #@59
    .line 5223
    const/4 v4, 0x0

    #@5a
    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@5c
    .line 5232
    :cond_5
    :goto_4
    const/4 v4, 0x0

    #@5d
    if-eqz v4, :cond_2

    #@5f
    .line 5233
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@61
    if-eqz v4, :cond_6

    #@63
    .line 5235
    and-int/lit8 v4, p2, 0x20

    #@65
    if-eqz v4, :cond_b

    #@67
    const/4 v9, 0x1

    #@68
    :goto_5
    move-object/from16 v4, p1

    #@6a
    move/from16 v8, p5

    #@6c
    .line 5234
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    #@6f
    .line 5236
    const/4 v4, 0x0

    #@70
    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@72
    .line 5238
    :cond_6
    iget v15, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@74
    .line 5239
    .local v15, "oldEventCode":I
    iget-object v0, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@76
    move-object/from16 v18, v0

    #@78
    .line 5240
    .local v18, "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    new-instance v4, Landroid/os/BatteryStats$HistoryTag;

    #@7a
    invoke-direct {v4}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    #@7d
    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@7f
    .line 5241
    const/4 v13, 0x0

    #@80
    .local v13, "i":I
    :goto_6
    const/16 v4, 0x15

    #@82
    if-ge v13, v4, :cond_f

    #@84
    .line 5243
    move-object/from16 v0, v20

    #@86
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    #@89
    move-result-object v2

    #@8a
    .line 5244
    .local v2, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v2, :cond_c

    #@8c
    .line 5241
    :cond_7
    add-int/lit8 v13, v13, 0x1

    #@8e
    goto :goto_6

    #@8f
    .line 5218
    .end local v2    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v13    # "i":I
    .end local v15    # "oldEventCode":I
    .end local v18    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :cond_8
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@91
    const/4 v8, 0x4

    #@92
    if-eq v4, v8, :cond_4

    #@94
    .line 5219
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@96
    const/16 v8, 0x8

    #@98
    if-eq v4, v8, :cond_4

    #@9a
    .line 5224
    iget-wide v8, v5, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@9c
    const-wide/16 v22, 0x0

    #@9e
    cmp-long v4, v8, v22

    #@a0
    if-eqz v4, :cond_5

    #@a2
    .line 5225
    const/16 v19, 0x1

    #@a4
    .line 5226
    iget-byte v10, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@a6
    .line 5227
    .local v10, "cmd":B
    const/4 v4, 0x5

    #@a7
    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@a9
    .line 5229
    and-int/lit8 v4, p2, 0x20

    #@ab
    if-eqz v4, :cond_a

    #@ad
    const/4 v9, 0x1

    #@ae
    :goto_7
    move-object/from16 v4, p1

    #@b0
    move/from16 v8, p5

    #@b2
    .line 5228
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    #@b5
    .line 5230
    iput-byte v10, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@b7
    goto :goto_4

    #@b8
    .line 5222
    .end local v10    # "cmd":B
    :cond_9
    const/4 v9, 0x0

    #@b9
    goto :goto_3

    #@ba
    .line 5229
    .restart local v10    # "cmd":B
    :cond_a
    const/4 v9, 0x0

    #@bb
    goto :goto_7

    #@bc
    .line 5235
    .end local v10    # "cmd":B
    :cond_b
    const/4 v9, 0x0

    #@bd
    goto :goto_5

    #@be
    .line 5248
    .restart local v2    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v13    # "i":I
    .restart local v15    # "oldEventCode":I
    .restart local v18    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :cond_c
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@c1
    move-result-object v4

    #@c2
    .line 5247
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c5
    move-result-object v12

    #@c6
    .local v12, "ent$iterator":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@c9
    move-result v4

    #@ca
    if-eqz v4, :cond_7

    #@cc
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@cf
    move-result-object v11

    #@d0
    check-cast v11, Ljava/util/Map$Entry;

    #@d2
    .line 5249
    .local v11, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@d5
    move-result-object v21

    #@d6
    check-cast v21, Landroid/util/SparseIntArray;

    #@d8
    .line 5250
    .local v21, "uids":Landroid/util/SparseIntArray;
    const/4 v14, 0x0

    #@d9
    .local v14, "j":I
    :goto_8
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    #@dc
    move-result v4

    #@dd
    if-ge v14, v4, :cond_d

    #@df
    .line 5251
    iput v13, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@e1
    .line 5252
    iget-object v8, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@e3
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e6
    move-result-object v4

    #@e7
    check-cast v4, Ljava/lang/String;

    #@e9
    iput-object v4, v8, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@eb
    .line 5253
    iget-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@ed
    move-object/from16 v0, v21

    #@ef
    invoke-virtual {v0, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@f2
    move-result v8

    #@f3
    iput v8, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@f5
    .line 5254
    iget-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@f7
    move-object/from16 v0, v21

    #@f9
    invoke-virtual {v0, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@fc
    move-result v8

    #@fd
    iput v8, v4, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    #@ff
    .line 5256
    and-int/lit8 v4, p2, 0x20

    #@101
    if-eqz v4, :cond_e

    #@103
    const/4 v9, 0x1

    #@104
    :goto_9
    move-object/from16 v4, p1

    #@106
    move/from16 v8, p5

    #@108
    .line 5255
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    #@10b
    .line 5257
    const/4 v4, 0x0

    #@10c
    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@10e
    .line 5258
    const/4 v4, 0x0

    #@10f
    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@111
    .line 5250
    add-int/lit8 v14, v14, 0x1

    #@113
    goto :goto_8

    #@114
    .line 5256
    :cond_e
    const/4 v9, 0x0

    #@115
    goto :goto_9

    #@116
    .line 5262
    .end local v2    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v11    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v12    # "ent$iterator":Ljava/util/Iterator;
    .end local v14    # "j":I
    .end local v21    # "uids":Landroid/util/SparseIntArray;
    :cond_f
    iput v15, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@118
    .line 5263
    move-object/from16 v0, v18

    #@11a
    iput-object v0, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@11c
    .line 5264
    const/16 v20, 0x0

    #@11e
    goto/16 :goto_1

    #@120
    .line 5268
    .end local v13    # "i":I
    .end local v15    # "oldEventCode":I
    .end local v18    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :cond_10
    const/4 v9, 0x0

    #@121
    goto/16 :goto_2

    #@123
    .line 5280
    :cond_11
    const-wide/16 v8, 0x0

    #@125
    cmp-long v4, p3, v8

    #@127
    if-ltz v4, :cond_12

    #@129
    .line 5281
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    #@12c
    .line 5282
    if-eqz p5, :cond_13

    #@12e
    const-string/jumbo v4, "NEXT: "

    #@131
    :goto_a
    move-object/from16 v0, p1

    #@133
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@136
    const-wide/16 v8, 0x1

    #@138
    add-long v8, v8, v16

    #@13a
    move-object/from16 v0, p1

    #@13c
    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->println(J)V

    #@13f
    .line 5202
    :cond_12
    return-void

    #@140
    .line 5282
    :cond_13
    const-string/jumbo v4, "  NEXT: "

    #@143
    goto :goto_a
.end method

.method private static final varargs dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 2722
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    #@3
    .line 2723
    const/4 v1, 0x0

    #@4
    array-length v2, p4

    #@5
    :goto_0
    if-ge v1, v2, :cond_0

    #@7
    aget-object v0, p4, v1

    #@9
    .line 2724
    .local v0, "arg":Ljava/lang/Object;
    const/16 v3, 0x2c

    #@b
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    #@e
    .line 2725
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@11
    .line 2723
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 2727
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    #@17
    .line 2721
    return-void
.end method

.method private static final dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v1, 0x2c

    #@2
    .line 2703
    const/16 v0, 0x9

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    #@7
    .line 2704
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@a
    .line 2705
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    #@d
    .line 2706
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@10
    .line 2707
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13
    .line 2708
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@16
    .line 2709
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19
    .line 2702
    return-void
.end method

.method private static dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "label1"    # Ljava/lang/String;
    .param p2, "label2"    # Ljava/lang/String;
    .param p3, "label3"    # Ljava/lang/String;
    .param p4, "estimatedTime"    # J

    #@0
    .prologue
    .line 5101
    const-wide/16 v2, 0x0

    #@2
    cmp-long v1, p4, v2

    #@4
    if-gez v1, :cond_0

    #@6
    .line 5102
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 5104
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    .line 5105
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e
    .line 5106
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    .line 5107
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    const/16 v1, 0x40

    #@15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@18
    .line 5108
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {v0, p4, p5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1b
    .line 5109
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@1e
    .line 5110
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    #@21
    .line 5111
    const/4 v1, 0x1

    #@22
    return v1
.end method

.method private static final dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V
    .locals 11
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p5, "rawRealtime"    # J
    .param p7, "which"    # I

    #@0
    .prologue
    .line 2743
    if-eqz p4, :cond_0

    #@2
    .line 2745
    invoke-virtual/range {p4 .. p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@5
    move-result-wide v6

    #@6
    const-wide/16 v8, 0x1f4

    #@8
    add-long/2addr v6, v8

    #@9
    .line 2746
    const-wide/16 v8, 0x3e8

    #@b
    .line 2745
    div-long v4, v6, v8

    #@d
    .line 2747
    .local v4, "totalTime":J
    move/from16 v0, p7

    #@f
    invoke-virtual {p4, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@12
    move-result v2

    #@13
    .line 2748
    .local v2, "count":I
    const-wide/16 v6, 0x0

    #@15
    cmp-long v3, v4, v6

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 2749
    const/4 v3, 0x2

    #@1a
    new-array v3, v3, [Ljava/lang/Object;

    #@1c
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1f
    move-result-object v6

    #@20
    const/4 v7, 0x0

    #@21
    aput-object v6, v3, v7

    #@23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v6

    #@27
    const/4 v7, 0x1

    #@28
    aput-object v6, v3, v7

    #@2a
    invoke-static {p0, p1, p2, p3, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@2d
    .line 2742
    .end local v2    # "count":I
    .end local v4    # "totalTime":J
    :cond_0
    return-void
.end method

.method public static final formatTimeMs(Ljava/lang/StringBuilder;J)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "time"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x3e8

    #@2
    .line 2516
    div-long v0, p1, v2

    #@4
    .line 2517
    .local v0, "sec":J
    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    #@7
    .line 2518
    mul-long/2addr v2, v0

    #@8
    sub-long v2, p1, v2

    #@a
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@d
    .line 2519
    const-string/jumbo v2, "ms "

    #@10
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 2515
    return-void
.end method

.method public static final formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "time"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x3e8

    #@2
    .line 2523
    div-long v0, p1, v2

    #@4
    .line 2524
    .local v0, "sec":J
    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    #@7
    .line 2525
    mul-long/2addr v2, v0

    #@8
    sub-long v2, p1, v2

    #@a
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@d
    .line 2526
    const-string/jumbo v2, "ms"

    #@10
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 2522
    return-void
.end method

.method private static final formatTimeRaw(Ljava/lang/StringBuilder;J)V
    .locals 13
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "seconds"    # J

    #@0
    .prologue
    .line 2488
    const-wide/32 v8, 0x15180

    #@3
    div-long v0, p1, v8

    #@5
    .line 2489
    .local v0, "days":J
    const-wide/16 v8, 0x0

    #@7
    cmp-long v8, v0, v8

    #@9
    if-eqz v8, :cond_0

    #@b
    .line 2490
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@e
    .line 2491
    const-string/jumbo v8, "d "

    #@11
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 2493
    :cond_0
    const-wide/16 v8, 0x3c

    #@16
    mul-long/2addr v8, v0

    #@17
    const-wide/16 v10, 0x3c

    #@19
    mul-long/2addr v8, v10

    #@1a
    const-wide/16 v10, 0x18

    #@1c
    mul-long v6, v8, v10

    #@1e
    .line 2495
    .local v6, "used":J
    sub-long v8, p1, v6

    #@20
    const-wide/16 v10, 0xe10

    #@22
    div-long v2, v8, v10

    #@24
    .line 2496
    .local v2, "hours":J
    const-wide/16 v8, 0x0

    #@26
    cmp-long v8, v2, v8

    #@28
    if-nez v8, :cond_1

    #@2a
    const-wide/16 v8, 0x0

    #@2c
    cmp-long v8, v6, v8

    #@2e
    if-eqz v8, :cond_2

    #@30
    .line 2497
    :cond_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@33
    .line 2498
    const-string/jumbo v8, "h "

    #@36
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 2500
    :cond_2
    const-wide/16 v8, 0x3c

    #@3b
    mul-long/2addr v8, v2

    #@3c
    const-wide/16 v10, 0x3c

    #@3e
    mul-long/2addr v8, v10

    #@3f
    add-long/2addr v6, v8

    #@40
    .line 2502
    sub-long v8, p1, v6

    #@42
    const-wide/16 v10, 0x3c

    #@44
    div-long v4, v8, v10

    #@46
    .line 2503
    .local v4, "mins":J
    const-wide/16 v8, 0x0

    #@48
    cmp-long v8, v4, v8

    #@4a
    if-nez v8, :cond_3

    #@4c
    const-wide/16 v8, 0x0

    #@4e
    cmp-long v8, v6, v8

    #@50
    if-eqz v8, :cond_4

    #@52
    .line 2504
    :cond_3
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@55
    .line 2505
    const-string/jumbo v8, "m "

    #@58
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    .line 2507
    :cond_4
    const-wide/16 v8, 0x3c

    #@5d
    mul-long/2addr v8, v4

    #@5e
    add-long/2addr v6, v8

    #@5f
    .line 2509
    const-wide/16 v8, 0x0

    #@61
    cmp-long v8, p1, v8

    #@63
    if-nez v8, :cond_5

    #@65
    const-wide/16 v8, 0x0

    #@67
    cmp-long v8, v6, v8

    #@69
    if-eqz v8, :cond_6

    #@6b
    .line 2510
    :cond_5
    sub-long v8, p1, v6

    #@6d
    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@70
    .line 2511
    const-string/jumbo v8, "s "

    #@73
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    .line 2487
    :cond_6
    return-void
.end method

.method static printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V
    .locals 7
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "oldval"    # I
    .param p2, "newval"    # I
    .param p3, "wakelockTag"    # Landroid/os/BatteryStats$HistoryTag;
    .param p4, "descriptions"    # [Landroid/os/BatteryStats$BitDescription;
    .param p5, "longNames"    # Z

    #@0
    .prologue
    .line 4673
    xor-int v2, p1, p2

    #@2
    .line 4674
    .local v2, "diff":I
    if-nez v2, :cond_0

    #@4
    return-void

    #@5
    .line 4675
    :cond_0
    const/4 v1, 0x0

    #@6
    .line 4676
    .local v1, "didWake":Z
    const/4 v3, 0x0

    #@7
    .local v3, "i":I
    :goto_0
    array-length v5, p4

    #@8
    if-ge v3, v5, :cond_a

    #@a
    .line 4677
    aget-object v0, p4, v3

    #@c
    .line 4678
    .local v0, "bd":Landroid/os/BatteryStats$BitDescription;
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    #@e
    and-int/2addr v5, v2

    #@f
    if-eqz v5, :cond_1

    #@11
    .line 4679
    if-eqz p5, :cond_2

    #@13
    const-string/jumbo v5, " "

    #@16
    :goto_1
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19
    .line 4680
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->shift:I

    #@1b
    if-gez v5, :cond_6

    #@1d
    .line 4681
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    #@1f
    and-int/2addr v5, p2

    #@20
    if-eqz v5, :cond_3

    #@22
    const-string/jumbo v5, "+"

    #@25
    :goto_2
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28
    .line 4682
    if-eqz p5, :cond_4

    #@2a
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    #@2c
    :goto_3
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    .line 4683
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    #@31
    const/high16 v6, 0x40000000    # 2.0f

    #@33
    if-ne v5, v6, :cond_1

    #@35
    if-eqz p3, :cond_1

    #@37
    .line 4684
    const/4 v1, 0x1

    #@38
    .line 4685
    const-string/jumbo v5, "="

    #@3b
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e
    .line 4686
    if-eqz p5, :cond_5

    #@40
    .line 4687
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@42
    invoke-static {p0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@45
    .line 4688
    const-string/jumbo v5, ":\""

    #@48
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b
    .line 4689
    iget-object v5, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@4d
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50
    .line 4690
    const-string/jumbo v5, "\""

    #@53
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    .line 4676
    :cond_1
    :goto_4
    add-int/lit8 v3, v3, 0x1

    #@58
    goto :goto_0

    #@59
    .line 4679
    :cond_2
    const-string/jumbo v5, ","

    #@5c
    goto :goto_1

    #@5d
    .line 4681
    :cond_3
    const-string/jumbo v5, "-"

    #@60
    goto :goto_2

    #@61
    .line 4682
    :cond_4
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    #@63
    goto :goto_3

    #@64
    .line 4692
    :cond_5
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    #@66
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@69
    goto :goto_4

    #@6a
    .line 4696
    :cond_6
    if-eqz p5, :cond_7

    #@6c
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    #@6e
    :goto_5
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    .line 4697
    const-string/jumbo v5, "="

    #@74
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@77
    .line 4698
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    #@79
    and-int/2addr v5, p2

    #@7a
    iget v6, v0, Landroid/os/BatteryStats$BitDescription;->shift:I

    #@7c
    shr-int v4, v5, v6

    #@7e
    .line 4699
    .local v4, "val":I
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    #@80
    if-eqz v5, :cond_9

    #@82
    if-ltz v4, :cond_9

    #@84
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    #@86
    array-length v5, v5

    #@87
    if-ge v4, v5, :cond_9

    #@89
    .line 4700
    if-eqz p5, :cond_8

    #@8b
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    #@8d
    aget-object v5, v5, v4

    #@8f
    :goto_6
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@92
    goto :goto_4

    #@93
    .line 4696
    .end local v4    # "val":I
    :cond_7
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    #@95
    goto :goto_5

    #@96
    .line 4700
    .restart local v4    # "val":I
    :cond_8
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    #@98
    aget-object v5, v5, v4

    #@9a
    goto :goto_6

    #@9b
    .line 4702
    :cond_9
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@9e
    goto :goto_4

    #@9f
    .line 4707
    .end local v0    # "bd":Landroid/os/BatteryStats$BitDescription;
    .end local v4    # "val":I
    :cond_a
    if-nez v1, :cond_b

    #@a1
    if-eqz p3, :cond_b

    #@a3
    .line 4708
    if-eqz p5, :cond_c

    #@a5
    const-string/jumbo v5, " wake_lock="

    #@a8
    :goto_7
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ab
    .line 4709
    if-eqz p5, :cond_d

    #@ad
    .line 4710
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@af
    invoke-static {p0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@b2
    .line 4711
    const-string/jumbo v5, ":\""

    #@b5
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b8
    .line 4712
    iget-object v5, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@ba
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bd
    .line 4713
    const-string/jumbo v5, "\""

    #@c0
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c3
    .line 4672
    :cond_b
    :goto_8
    return-void

    #@c4
    .line 4708
    :cond_c
    const-string/jumbo v5, ",w="

    #@c7
    goto :goto_7

    #@c8
    .line 4715
    :cond_d
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    #@ca
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@cd
    goto :goto_8
.end method

.method private final printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "controllerName"    # Ljava/lang/String;
    .param p5, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p6, "which"    # I

    #@0
    .prologue
    .line 2818
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    #@3
    move-result-object v17

    #@4
    move-object/from16 v0, v17

    #@6
    move/from16 v1, p6

    #@8
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@b
    move-result-wide v2

    #@c
    .line 2819
    .local v2, "idleTimeMs":J
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    #@f
    move-result-object v17

    #@10
    move-object/from16 v0, v17

    #@12
    move/from16 v1, p6

    #@14
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@17
    move-result-wide v8

    #@18
    .line 2820
    .local v8, "rxTimeMs":J
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    #@1b
    move-result-object v17

    #@1c
    move-object/from16 v0, v17

    #@1e
    move/from16 v1, p6

    #@20
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@23
    move-result-wide v6

    #@24
    .line 2821
    .local v6, "powerDrainMaMs":J
    const-wide/16 v12, 0x0

    #@26
    .line 2822
    .local v12, "totalTxTimeMs":J
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    #@29
    move-result-object v18

    #@2a
    const/16 v17, 0x0

    #@2c
    move-object/from16 v0, v18

    #@2e
    array-length v0, v0

    #@2f
    move/from16 v19, v0

    #@31
    :goto_0
    move/from16 v0, v17

    #@33
    move/from16 v1, v19

    #@35
    if-ge v0, v1, :cond_0

    #@37
    aget-object v16, v18, v17

    #@39
    .line 2823
    .local v16, "txState":Landroid/os/BatteryStats$LongCounter;
    move-object/from16 v0, v16

    #@3b
    move/from16 v1, p6

    #@3d
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@40
    move-result-wide v20

    #@41
    add-long v12, v12, v20

    #@43
    .line 2822
    add-int/lit8 v17, v17, 0x1

    #@45
    goto :goto_0

    #@46
    .line 2826
    .end local v16    # "txState":Landroid/os/BatteryStats$LongCounter;
    :cond_0
    add-long v18, v2, v8

    #@48
    add-long v10, v18, v12

    #@4a
    .line 2828
    .local v10, "totalTimeMs":J
    const/16 v17, 0x0

    #@4c
    move-object/from16 v0, p2

    #@4e
    move/from16 v1, v17

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@53
    .line 2829
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 2830
    const-string/jumbo v17, "  "

    #@59
    move-object/from16 v0, p2

    #@5b
    move-object/from16 v1, v17

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    .line 2831
    move-object/from16 v0, p2

    #@62
    move-object/from16 v1, p4

    #@64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    .line 2832
    const-string/jumbo v17, " Idle time:   "

    #@6a
    move-object/from16 v0, p2

    #@6c
    move-object/from16 v1, v17

    #@6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    .line 2833
    move-object/from16 v0, p2

    #@73
    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@76
    .line 2834
    const-string/jumbo v17, "("

    #@79
    move-object/from16 v0, p2

    #@7b
    move-object/from16 v1, v17

    #@7d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    .line 2835
    move-object/from16 v0, p0

    #@82
    invoke-virtual {v0, v2, v3, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@85
    move-result-object v17

    #@86
    move-object/from16 v0, p2

    #@88
    move-object/from16 v1, v17

    #@8a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    .line 2836
    const-string/jumbo v17, ")"

    #@90
    move-object/from16 v0, p2

    #@92
    move-object/from16 v1, v17

    #@94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    .line 2837
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v17

    #@9b
    move-object/from16 v0, p1

    #@9d
    move-object/from16 v1, v17

    #@9f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a2
    .line 2839
    const/16 v17, 0x0

    #@a4
    move-object/from16 v0, p2

    #@a6
    move/from16 v1, v17

    #@a8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@ab
    .line 2840
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    .line 2841
    const-string/jumbo v17, "  "

    #@b1
    move-object/from16 v0, p2

    #@b3
    move-object/from16 v1, v17

    #@b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    .line 2842
    move-object/from16 v0, p2

    #@ba
    move-object/from16 v1, p4

    #@bc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    .line 2843
    const-string/jumbo v17, " Rx time:     "

    #@c2
    move-object/from16 v0, p2

    #@c4
    move-object/from16 v1, v17

    #@c6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    .line 2844
    move-object/from16 v0, p2

    #@cb
    invoke-static {v0, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@ce
    .line 2845
    const-string/jumbo v17, "("

    #@d1
    move-object/from16 v0, p2

    #@d3
    move-object/from16 v1, v17

    #@d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    .line 2846
    move-object/from16 v0, p0

    #@da
    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@dd
    move-result-object v17

    #@de
    move-object/from16 v0, p2

    #@e0
    move-object/from16 v1, v17

    #@e2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    .line 2847
    const-string/jumbo v17, ")"

    #@e8
    move-object/from16 v0, p2

    #@ea
    move-object/from16 v1, v17

    #@ec
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    .line 2848
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v17

    #@f3
    move-object/from16 v0, p1

    #@f5
    move-object/from16 v1, v17

    #@f7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@fa
    .line 2850
    const/16 v17, 0x0

    #@fc
    move-object/from16 v0, p2

    #@fe
    move/from16 v1, v17

    #@100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@103
    .line 2851
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    .line 2852
    const-string/jumbo v17, "  "

    #@109
    move-object/from16 v0, p2

    #@10b
    move-object/from16 v1, v17

    #@10d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    .line 2853
    move-object/from16 v0, p2

    #@112
    move-object/from16 v1, p4

    #@114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    .line 2854
    const-string/jumbo v17, " Tx time:     "

    #@11a
    move-object/from16 v0, p2

    #@11c
    move-object/from16 v1, v17

    #@11e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    .line 2855
    move-object/from16 v0, p2

    #@123
    invoke-static {v0, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@126
    .line 2856
    const-string/jumbo v17, "("

    #@129
    move-object/from16 v0, p2

    #@12b
    move-object/from16 v1, v17

    #@12d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    .line 2857
    move-object/from16 v0, p0

    #@132
    invoke-virtual {v0, v12, v13, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@135
    move-result-object v17

    #@136
    move-object/from16 v0, p2

    #@138
    move-object/from16 v1, v17

    #@13a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    .line 2858
    const-string/jumbo v17, ")"

    #@140
    move-object/from16 v0, p2

    #@142
    move-object/from16 v1, v17

    #@144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    .line 2859
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14a
    move-result-object v17

    #@14b
    move-object/from16 v0, p1

    #@14d
    move-object/from16 v1, v17

    #@14f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@152
    .line 2861
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    #@155
    move-result-object v17

    #@156
    move-object/from16 v0, v17

    #@158
    array-length v5, v0

    #@159
    .line 2862
    .local v5, "numTxLvls":I
    const/16 v17, 0x1

    #@15b
    move/from16 v0, v17

    #@15d
    if-le v5, v0, :cond_1

    #@15f
    .line 2863
    const/4 v4, 0x0

    #@160
    .local v4, "lvl":I
    :goto_1
    if-ge v4, v5, :cond_1

    #@162
    .line 2864
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    #@165
    move-result-object v17

    #@166
    aget-object v17, v17, v4

    #@168
    move-object/from16 v0, v17

    #@16a
    move/from16 v1, p6

    #@16c
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@16f
    move-result-wide v14

    #@170
    .line 2865
    .local v14, "txLvlTimeMs":J
    const/16 v17, 0x0

    #@172
    move-object/from16 v0, p2

    #@174
    move/from16 v1, v17

    #@176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@179
    .line 2866
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17c
    .line 2867
    const-string/jumbo v17, "    ["

    #@17f
    move-object/from16 v0, p2

    #@181
    move-object/from16 v1, v17

    #@183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    .line 2868
    move-object/from16 v0, p2

    #@188
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18b
    .line 2869
    const-string/jumbo v17, "] "

    #@18e
    move-object/from16 v0, p2

    #@190
    move-object/from16 v1, v17

    #@192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    .line 2870
    move-object/from16 v0, p2

    #@197
    invoke-static {v0, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@19a
    .line 2871
    const-string/jumbo v17, "("

    #@19d
    move-object/from16 v0, p2

    #@19f
    move-object/from16 v1, v17

    #@1a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    .line 2872
    move-object/from16 v0, p0

    #@1a6
    invoke-virtual {v0, v14, v15, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@1a9
    move-result-object v17

    #@1aa
    move-object/from16 v0, p2

    #@1ac
    move-object/from16 v1, v17

    #@1ae
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b1
    .line 2873
    const-string/jumbo v17, ")"

    #@1b4
    move-object/from16 v0, p2

    #@1b6
    move-object/from16 v1, v17

    #@1b8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    .line 2874
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1be
    move-result-object v17

    #@1bf
    move-object/from16 v0, p1

    #@1c1
    move-object/from16 v1, v17

    #@1c3
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c6
    .line 2863
    add-int/lit8 v4, v4, 0x1

    #@1c8
    goto :goto_1

    #@1c9
    .line 2878
    .end local v4    # "lvl":I
    .end local v14    # "txLvlTimeMs":J
    :cond_1
    const/16 v17, 0x0

    #@1cb
    move-object/from16 v0, p2

    #@1cd
    move/from16 v1, v17

    #@1cf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1d2
    .line 2879
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d5
    .line 2880
    const-string/jumbo v17, "  "

    #@1d8
    move-object/from16 v0, p2

    #@1da
    move-object/from16 v1, v17

    #@1dc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1df
    .line 2881
    move-object/from16 v0, p2

    #@1e1
    move-object/from16 v1, p4

    #@1e3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e6
    .line 2882
    const-string/jumbo v17, " Power drain: "

    #@1e9
    move-object/from16 v0, p2

    #@1eb
    move-object/from16 v1, v17

    #@1ed
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f0
    move-result-object v17

    #@1f1
    .line 2883
    long-to-double v0, v6

    #@1f2
    move-wide/from16 v18, v0

    #@1f4
    const-wide v20, 0x414b774000000000L    # 3600000.0

    #@1f9
    div-double v18, v18, v20

    #@1fb
    invoke-static/range {v18 .. v19}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@1fe
    move-result-object v18

    #@1ff
    .line 2882
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@202
    .line 2884
    const-string/jumbo v17, "mAh"

    #@205
    move-object/from16 v0, p2

    #@207
    move-object/from16 v1, v17

    #@209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20c
    .line 2885
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20f
    move-result-object v17

    #@210
    move-object/from16 v0, p1

    #@212
    move-object/from16 v1, v17

    #@214
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@217
    .line 2817
    return-void
.end method

.method private final printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "controllerName"    # Ljava/lang/String;
    .param p5, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p6, "which"    # I

    #@0
    .prologue
    .line 2810
    invoke-static {p5, p6}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2811
    invoke-direct/range {p0 .. p6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    #@9
    .line 2809
    :cond_0
    return-void
.end method

.method private printSizeValue(Ljava/io/PrintWriter;J)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "size"    # J

    #@0
    .prologue
    const/high16 v4, 0x46200000    # 10240.0f

    #@2
    const/high16 v3, 0x44800000    # 1024.0f

    #@4
    .line 5073
    long-to-float v0, p2

    #@5
    .line 5074
    .local v0, "result":F
    const-string/jumbo v1, ""

    #@8
    .line 5075
    .local v1, "suffix":Ljava/lang/String;
    cmpl-float v2, v0, v4

    #@a
    if-ltz v2, :cond_0

    #@c
    .line 5076
    const-string/jumbo v1, "KB"

    #@f
    .line 5077
    div-float/2addr v0, v3

    #@10
    .line 5079
    :cond_0
    cmpl-float v2, v0, v4

    #@12
    if-ltz v2, :cond_1

    #@14
    .line 5080
    const-string/jumbo v1, "MB"

    #@17
    .line 5081
    div-float/2addr v0, v3

    #@18
    .line 5083
    :cond_1
    cmpl-float v2, v0, v4

    #@1a
    if-ltz v2, :cond_2

    #@1c
    .line 5084
    const-string/jumbo v1, "GB"

    #@1f
    .line 5085
    div-float/2addr v0, v3

    #@20
    .line 5087
    :cond_2
    cmpl-float v2, v0, v4

    #@22
    if-ltz v2, :cond_3

    #@24
    .line 5088
    const-string/jumbo v1, "TB"

    #@27
    .line 5089
    div-float/2addr v0, v3

    #@28
    .line 5091
    :cond_3
    cmpl-float v2, v0, v4

    #@2a
    if-ltz v2, :cond_4

    #@2c
    .line 5092
    const-string/jumbo v1, "PB"

    #@2f
    .line 5093
    div-float/2addr v0, v3

    #@30
    .line 5095
    :cond_4
    float-to-int v2, v0

    #@31
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@34
    .line 5096
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37
    .line 5072
    return-void
.end method

.method private static final printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "which"    # I
    .param p6, "prefix"    # Ljava/lang/String;
    .param p7, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2629
    if-eqz p2, :cond_3

    #@2
    .line 2631
    invoke-virtual/range {p2 .. p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@5
    move-result-wide v10

    #@6
    .line 2632
    const-wide/16 v12, 0x1f4

    #@8
    .line 2631
    add-long/2addr v10, v12

    #@9
    .line 2632
    const-wide/16 v12, 0x3e8

    #@b
    .line 2631
    div-long v8, v10, v12

    #@d
    .line 2633
    .local v8, "totalTimeMs":J
    move-object/from16 v0, p2

    #@f
    move/from16 v1, p5

    #@11
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@14
    move-result v2

    #@15
    .line 2634
    .local v2, "count":I
    const-wide/16 v10, 0x0

    #@17
    cmp-long v3, v8, v10

    #@19
    if-eqz v3, :cond_3

    #@1b
    .line 2635
    const/4 v3, 0x0

    #@1c
    move-object/from16 v0, p1

    #@1e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    #@21
    .line 2636
    move-object/from16 v0, p1

    #@23
    move-object/from16 v1, p6

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 2637
    const-string/jumbo v3, "    "

    #@2b
    move-object/from16 v0, p1

    #@2d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 2638
    move-object/from16 v0, p1

    #@32
    move-object/from16 v1, p7

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 2639
    const-string/jumbo v3, ": "

    #@3a
    move-object/from16 v0, p1

    #@3c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 2640
    move-object/from16 v0, p1

    #@41
    invoke-static {v0, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@44
    .line 2641
    const-string/jumbo v3, "realtime ("

    #@47
    move-object/from16 v0, p1

    #@49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    .line 2642
    move-object/from16 v0, p1

    #@4e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    .line 2643
    const-string/jumbo v3, " times)"

    #@54
    move-object/from16 v0, p1

    #@56
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    .line 2644
    const-wide/16 v10, 0x3e8

    #@5b
    div-long v10, p3, v10

    #@5d
    move-object/from16 v0, p2

    #@5f
    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    #@62
    move-result-wide v6

    #@63
    .line 2645
    .local v6, "maxDurationMs":J
    const-wide/16 v10, 0x0

    #@65
    cmp-long v3, v6, v10

    #@67
    if-ltz v3, :cond_0

    #@69
    .line 2646
    const-string/jumbo v3, " max="

    #@6c
    move-object/from16 v0, p1

    #@6e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    .line 2647
    move-object/from16 v0, p1

    #@73
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@76
    .line 2649
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    #@79
    move-result v3

    #@7a
    if-eqz v3, :cond_1

    #@7c
    .line 2650
    const-wide/16 v10, 0x3e8

    #@7e
    div-long v10, p3, v10

    #@80
    move-object/from16 v0, p2

    #@82
    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    #@85
    move-result-wide v4

    #@86
    .line 2651
    .local v4, "currentMs":J
    const-wide/16 v10, 0x0

    #@88
    cmp-long v3, v4, v10

    #@8a
    if-ltz v3, :cond_2

    #@8c
    .line 2652
    const-string/jumbo v3, " (running for "

    #@8f
    move-object/from16 v0, p1

    #@91
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    .line 2653
    move-object/from16 v0, p1

    #@96
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@99
    .line 2654
    const-string/jumbo v3, "ms)"

    #@9c
    move-object/from16 v0, p1

    #@9e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    .line 2659
    .end local v4    # "currentMs":J
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v3

    #@a5
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a8
    .line 2660
    const/4 v3, 0x1

    #@a9
    return v3

    #@aa
    .line 2656
    .restart local v4    # "currentMs":J
    :cond_2
    const-string/jumbo v3, " (running)"

    #@ad
    move-object/from16 v0, p1

    #@af
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    goto :goto_0

    #@b3
    .line 2663
    .end local v2    # "count":I
    .end local v4    # "currentMs":J
    .end local v6    # "maxDurationMs":J
    .end local v8    # "totalTimeMs":J
    :cond_3
    const/4 v3, 0x0

    #@b4
    return v3
.end method

.method private static final printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "which"    # I
    .param p6, "linePrefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2579
    if-eqz p1, :cond_4

    #@2
    .line 2580
    move/from16 v0, p5

    #@4
    invoke-static {p1, p2, p3, v0}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    #@7
    move-result-wide v8

    #@8
    .line 2582
    .local v8, "totalTimeMillis":J
    move/from16 v0, p5

    #@a
    invoke-virtual {p1, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@d
    move-result v2

    #@e
    .line 2583
    .local v2, "count":I
    const-wide/16 v10, 0x0

    #@10
    cmp-long v3, v8, v10

    #@12
    if-eqz v3, :cond_4

    #@14
    .line 2584
    move-object/from16 v0, p6

    #@16
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 2585
    invoke-static {p0, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1c
    .line 2586
    if-eqz p4, :cond_0

    #@1e
    .line 2587
    move-object/from16 v0, p4

    #@20
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 2588
    const/16 v3, 0x20

    #@25
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    .line 2590
    :cond_0
    const/16 v3, 0x28

    #@2a
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    .line 2591
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    .line 2592
    const-string/jumbo v3, " times)"

    #@33
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 2593
    const-wide/16 v10, 0x3e8

    #@38
    div-long v10, p2, v10

    #@3a
    invoke-virtual {p1, v10, v11}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    #@3d
    move-result-wide v6

    #@3e
    .line 2594
    .local v6, "maxDurationMs":J
    const-wide/16 v10, 0x0

    #@40
    cmp-long v3, v6, v10

    #@42
    if-ltz v3, :cond_1

    #@44
    .line 2595
    const-string/jumbo v3, " max="

    #@47
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 2596
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@4d
    .line 2598
    :cond_1
    invoke-virtual {p1}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    #@50
    move-result v3

    #@51
    if-eqz v3, :cond_2

    #@53
    .line 2599
    const-wide/16 v10, 0x3e8

    #@55
    div-long v10, p2, v10

    #@57
    invoke-virtual {p1, v10, v11}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    #@5a
    move-result-wide v4

    #@5b
    .line 2600
    .local v4, "currentMs":J
    const-wide/16 v10, 0x0

    #@5d
    cmp-long v3, v4, v10

    #@5f
    if-ltz v3, :cond_3

    #@61
    .line 2601
    const-string/jumbo v3, " (running for "

    #@64
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    .line 2602
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@6a
    .line 2603
    const-string/jumbo v3, "ms)"

    #@6d
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 2609
    .end local v4    # "currentMs":J
    :cond_2
    :goto_0
    const-string/jumbo v3, ", "

    #@73
    return-object v3

    #@74
    .line 2605
    .restart local v4    # "currentMs":J
    :cond_3
    const-string/jumbo v3, " (running)"

    #@77
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    goto :goto_0

    #@7b
    .line 2612
    .end local v2    # "count":I
    .end local v4    # "currentMs":J
    .end local v6    # "maxDurationMs":J
    .end local v8    # "totalTimeMillis":J
    :cond_4
    return-object p6
.end method

.method private static final printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "which"    # I
    .param p6, "linePrefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2679
    const-wide/16 v10, 0x0

    #@2
    .line 2680
    .local v10, "totalTimeMicros":J
    const/4 v4, 0x0

    #@3
    .line 2681
    .local v4, "count":I
    const-wide/16 v8, -0x1

    #@5
    .line 2682
    .local v8, "max":J
    const-wide/16 v6, -0x1

    #@7
    .line 2683
    .local v6, "current":J
    if-eqz p1, :cond_0

    #@9
    .line 2684
    move-object/from16 v0, p1

    #@b
    move-wide/from16 v1, p2

    #@d
    move/from16 v3, p5

    #@f
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@12
    move-result-wide v10

    #@13
    .line 2685
    move-object/from16 v0, p1

    #@15
    move/from16 v1, p5

    #@17
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@1a
    move-result v4

    #@1b
    .line 2686
    const-wide/16 v12, 0x3e8

    #@1d
    div-long v12, p2, v12

    #@1f
    move-object/from16 v0, p1

    #@21
    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    #@24
    move-result-wide v6

    #@25
    .line 2687
    const-wide/16 v12, 0x3e8

    #@27
    div-long v12, p2, v12

    #@29
    move-object/from16 v0, p1

    #@2b
    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    #@2e
    move-result-wide v8

    #@2f
    .line 2689
    :cond_0
    move-object/from16 v0, p0

    #@31
    move-object/from16 v1, p6

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 2690
    const-wide/16 v12, 0x1f4

    #@38
    add-long/2addr v12, v10

    #@39
    const-wide/16 v14, 0x3e8

    #@3b
    div-long/2addr v12, v14

    #@3c
    move-object/from16 v0, p0

    #@3e
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@41
    .line 2691
    const/16 v5, 0x2c

    #@43
    move-object/from16 v0, p0

    #@45
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@48
    .line 2692
    if-eqz p4, :cond_1

    #@4a
    new-instance v5, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    move-object/from16 v0, p4

    #@51
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    const-string/jumbo v12, ","

    #@58
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v5

    #@5c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v5

    #@60
    :goto_0
    move-object/from16 v0, p0

    #@62
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    .line 2693
    move-object/from16 v0, p0

    #@67
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    .line 2694
    const/16 v5, 0x2c

    #@6c
    move-object/from16 v0, p0

    #@6e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@71
    .line 2695
    move-object/from16 v0, p0

    #@73
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@76
    .line 2696
    const/16 v5, 0x2c

    #@78
    move-object/from16 v0, p0

    #@7a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7d
    .line 2697
    move-object/from16 v0, p0

    #@7f
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@82
    .line 2698
    const-string/jumbo v5, ","

    #@85
    return-object v5

    #@86
    .line 2692
    :cond_1
    const-string/jumbo v5, ""

    #@89
    goto :goto_0
.end method

.method private printmAh(Ljava/io/PrintWriter;D)V
    .locals 2
    .param p1, "printer"    # Ljava/io/PrintWriter;
    .param p2, "power"    # D

    #@0
    .prologue
    .line 3420
    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7
    .line 3419
    return-void
.end method

.method private printmAh(Ljava/lang/StringBuilder;D)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "power"    # D

    #@0
    .prologue
    .line 3424
    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    .line 3423
    return-void
.end method


# virtual methods
.method public abstract commitCurrentHistoryBatchLocked()V
.end method

.method public abstract computeBatteryRealtime(JI)J
.end method

.method public abstract computeBatteryScreenOffRealtime(JI)J
.end method

.method public abstract computeBatteryScreenOffUptime(JI)J
.end method

.method public abstract computeBatteryTimeRemaining(J)J
.end method

.method public abstract computeBatteryUptime(JI)J
.end method

.method public abstract computeChargeTimeRemaining(J)J
.end method

.method public abstract computeRealtime(JI)J
.end method

.method public abstract computeUptime(JI)J
.end method

.method public final dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "which"    # I
    .param p4, "reqUid"    # I

    #@0
    .prologue
    .line 2892
    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    #@3
    move-result v5

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    #@c
    .line 2891
    return-void
.end method

.method public final dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V
    .locals 196
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "which"    # I
    .param p4, "reqUid"    # I
    .param p5, "wifiOnly"    # Z

    #@0
    .prologue
    .line 2902
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v8

    #@4
    const-wide/16 v12, 0x3e8

    #@6
    mul-long v118, v8, v12

    #@8
    .line 2903
    .local v118, "rawUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b
    move-result-wide v8

    #@c
    const-wide/16 v12, 0x3e8

    #@e
    mul-long v10, v8, v12

    #@10
    .line 2904
    .local v10, "rawRealtime":J
    move-object/from16 v0, p0

    #@12
    move-wide/from16 v1, v118

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    #@17
    move-result-wide v28

    #@18
    .line 2905
    .local v28, "batteryUptime":J
    move-object/from16 v0, p0

    #@1a
    move-wide/from16 v1, v118

    #@1c
    move/from16 v3, p3

    #@1e
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    #@21
    move-result-wide v168

    #@22
    .line 2906
    .local v168, "whichBatteryUptime":J
    move-object/from16 v0, p0

    #@24
    move/from16 v1, p3

    #@26
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    #@29
    move-result-wide v162

    #@2a
    .line 2907
    .local v162, "whichBatteryRealtime":J
    move-object/from16 v0, p0

    #@2c
    move-wide/from16 v1, v118

    #@2e
    move/from16 v3, p3

    #@30
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    #@33
    move-result-wide v166

    #@34
    .line 2908
    .local v166, "whichBatteryScreenOffUptime":J
    move-object/from16 v0, p0

    #@36
    move/from16 v1, p3

    #@38
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    #@3b
    move-result-wide v164

    #@3c
    .line 2910
    .local v164, "whichBatteryScreenOffRealtime":J
    move-object/from16 v0, p0

    #@3e
    move/from16 v1, p3

    #@40
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    #@43
    move-result-wide v140

    #@44
    .line 2911
    .local v140, "totalRealtime":J
    move-object/from16 v0, p0

    #@46
    move-wide/from16 v1, v118

    #@48
    move/from16 v3, p3

    #@4a
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeUptime(JI)J

    #@4d
    move-result-wide v148

    #@4e
    .line 2912
    .local v148, "totalUptime":J
    move-object/from16 v0, p0

    #@50
    move/from16 v1, p3

    #@52
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    #@55
    move-result-wide v120

    #@56
    .line 2913
    .local v120, "screenOnTime":J
    move-object/from16 v0, p0

    #@58
    move/from16 v1, p3

    #@5a
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    #@5d
    move-result-wide v66

    #@5e
    .line 2914
    .local v66, "interactiveTime":J
    move-object/from16 v0, p0

    #@60
    move/from16 v1, p3

    #@62
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    #@65
    move-result-wide v112

    #@66
    .line 2915
    .local v112, "powerSaveModeEnabledTime":J
    const/4 v4, 0x1

    #@67
    move-object/from16 v0, p0

    #@69
    move/from16 v1, p3

    #@6b
    invoke-virtual {v0, v4, v10, v11, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    #@6e
    move-result-wide v42

    #@6f
    .line 2917
    .local v42, "deviceIdleModeLightTime":J
    const/4 v4, 0x2

    #@70
    move-object/from16 v0, p0

    #@72
    move/from16 v1, p3

    #@74
    invoke-virtual {v0, v4, v10, v11, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    #@77
    move-result-wide v40

    #@78
    .line 2919
    .local v40, "deviceIdleModeFullTime":J
    const/4 v4, 0x1

    #@79
    move-object/from16 v0, p0

    #@7b
    move/from16 v1, p3

    #@7d
    invoke-virtual {v0, v4, v10, v11, v1}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    #@80
    move-result-wide v46

    #@81
    .line 2921
    .local v46, "deviceLightIdlingTime":J
    const/4 v4, 0x2

    #@82
    move-object/from16 v0, p0

    #@84
    move/from16 v1, p3

    #@86
    invoke-virtual {v0, v4, v10, v11, v1}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    #@89
    move-result-wide v44

    #@8a
    .line 2923
    .local v44, "deviceIdlingTime":J
    move-object/from16 v0, p0

    #@8c
    move/from16 v1, p3

    #@8e
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    #@91
    move-result v38

    #@92
    .line 2924
    .local v38, "connChanges":I
    move-object/from16 v0, p0

    #@94
    move/from16 v1, p3

    #@96
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    #@99
    move-result-wide v108

    #@9a
    .line 2925
    .local v108, "phoneOnTime":J
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCoulombCounter()Landroid/os/BatteryStats$LongCounter;

    #@9d
    move-result-object v4

    #@9e
    move/from16 v0, p3

    #@a0
    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@a3
    move-result-wide v48

    #@a4
    .line 2926
    .local v48, "dischargeCount":J
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeScreenOffCoulombCounter()Landroid/os/BatteryStats$LongCounter;

    #@a7
    move-result-object v4

    #@a8
    move/from16 v0, p3

    #@aa
    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@ad
    move-result-wide v50

    #@ae
    .line 2929
    .local v50, "dischargeScreenOffCount":J
    new-instance v117, Ljava/lang/StringBuilder;

    #@b0
    const/16 v4, 0x80

    #@b2
    move-object/from16 v0, v117

    #@b4
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@b7
    .line 2931
    .local v117, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    #@ba
    move-result-object v151

    #@bb
    .line 2932
    .local v151, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v151 .. v151}, Landroid/util/SparseArray;->size()I

    #@be
    move-result v24

    #@bf
    .line 2934
    .local v24, "NU":I
    sget-object v4, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    #@c1
    aget-object v6, v4, p3

    #@c3
    .line 2937
    .local v6, "category":Ljava/lang/String;
    const-string/jumbo v7, "bt"

    #@c6
    const/16 v4, 0x9

    #@c8
    new-array v8, v4, [Ljava/lang/Object;

    #@ca
    .line 2938
    if-nez p3, :cond_2

    #@cc
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    #@cf
    move-result v4

    #@d0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d3
    move-result-object v4

    #@d4
    :goto_0
    const/4 v9, 0x0

    #@d5
    aput-object v4, v8, v9

    #@d7
    .line 2939
    const-wide/16 v12, 0x3e8

    #@d9
    div-long v12, v162, v12

    #@db
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@de
    move-result-object v4

    #@df
    const/4 v9, 0x1

    #@e0
    aput-object v4, v8, v9

    #@e2
    const-wide/16 v12, 0x3e8

    #@e4
    div-long v12, v168, v12

    #@e6
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@e9
    move-result-object v4

    #@ea
    const/4 v9, 0x2

    #@eb
    aput-object v4, v8, v9

    #@ed
    .line 2940
    const-wide/16 v12, 0x3e8

    #@ef
    div-long v12, v140, v12

    #@f1
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@f4
    move-result-object v4

    #@f5
    const/4 v9, 0x3

    #@f6
    aput-object v4, v8, v9

    #@f8
    const-wide/16 v12, 0x3e8

    #@fa
    div-long v12, v148, v12

    #@fc
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@ff
    move-result-object v4

    #@100
    const/4 v9, 0x4

    #@101
    aput-object v4, v8, v9

    #@103
    .line 2941
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    #@106
    move-result-wide v12

    #@107
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@10a
    move-result-object v4

    #@10b
    const/4 v9, 0x5

    #@10c
    aput-object v4, v8, v9

    #@10e
    .line 2942
    const-wide/16 v12, 0x3e8

    #@110
    div-long v12, v164, v12

    #@112
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@115
    move-result-object v4

    #@116
    const/4 v9, 0x6

    #@117
    aput-object v4, v8, v9

    #@119
    const-wide/16 v12, 0x3e8

    #@11b
    div-long v12, v166, v12

    #@11d
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@120
    move-result-object v4

    #@121
    const/4 v9, 0x7

    #@122
    aput-object v4, v8, v9

    #@124
    .line 2943
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    #@127
    move-result v4

    #@128
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12b
    move-result-object v4

    #@12c
    const/16 v9, 0x8

    #@12e
    aput-object v4, v8, v9

    #@130
    .line 2937
    const/4 v4, 0x0

    #@131
    move-object/from16 v0, p2

    #@133
    invoke-static {v0, v4, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@136
    .line 2947
    const-wide/16 v56, 0x0

    #@138
    .line 2948
    .local v56, "fullWakeLockTimeTotal":J
    const-wide/16 v106, 0x0

    #@13a
    .line 2950
    .local v106, "partialWakeLockTimeTotal":J
    const/16 v73, 0x0

    #@13c
    .local v73, "iu":I
    :goto_1
    move/from16 v0, v73

    #@13e
    move/from16 v1, v24

    #@140
    if-ge v0, v1, :cond_4

    #@142
    .line 2951
    move-object/from16 v0, v151

    #@144
    move/from16 v1, v73

    #@146
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@149
    move-result-object v150

    #@14a
    check-cast v150, Landroid/os/BatteryStats$Uid;

    #@14c
    .line 2954
    .local v150, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    #@14f
    move-result-object v159

    #@150
    .line 2955
    .local v159, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual/range {v159 .. v159}, Landroid/util/ArrayMap;->size()I

    #@153
    move-result v4

    #@154
    add-int/lit8 v74, v4, -0x1

    #@156
    .local v74, "iw":I
    :goto_2
    if-ltz v74, :cond_3

    #@158
    .line 2956
    move-object/from16 v0, v159

    #@15a
    move/from16 v1, v74

    #@15c
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@15f
    move-result-object v187

    #@160
    check-cast v187, Landroid/os/BatteryStats$Uid$Wakelock;

    #@162
    .line 2958
    .local v187, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v4, 0x1

    #@163
    move-object/from16 v0, v187

    #@165
    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@168
    move-result-object v58

    #@169
    .line 2959
    .local v58, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v58, :cond_0

    #@16b
    .line 2960
    move-object/from16 v0, v58

    #@16d
    move/from16 v1, p3

    #@16f
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@172
    move-result-wide v8

    #@173
    add-long v56, v56, v8

    #@175
    .line 2964
    :cond_0
    const/4 v4, 0x0

    #@176
    move-object/from16 v0, v187

    #@178
    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@17b
    move-result-object v105

    #@17c
    .line 2965
    .local v105, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v105, :cond_1

    #@17e
    .line 2966
    move-object/from16 v0, v105

    #@180
    move/from16 v1, p3

    #@182
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@185
    move-result-wide v8

    #@186
    add-long v106, v106, v8

    #@188
    .line 2955
    :cond_1
    add-int/lit8 v74, v74, -0x1

    #@18a
    goto :goto_2

    #@18b
    .line 2938
    .end local v56    # "fullWakeLockTimeTotal":J
    .end local v58    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v73    # "iu":I
    .end local v74    # "iw":I
    .end local v105    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v106    # "partialWakeLockTimeTotal":J
    .end local v150    # "u":Landroid/os/BatteryStats$Uid;
    .end local v159    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v187    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_2
    const-string/jumbo v4, "N/A"

    #@18e
    goto/16 :goto_0

    #@190
    .line 2950
    .restart local v56    # "fullWakeLockTimeTotal":J
    .restart local v73    # "iu":I
    .restart local v74    # "iw":I
    .restart local v106    # "partialWakeLockTimeTotal":J
    .restart local v150    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v159    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_3
    add-int/lit8 v73, v73, 0x1

    #@192
    goto :goto_1

    #@193
    .line 2973
    .end local v74    # "iw":I
    .end local v150    # "u":Landroid/os/BatteryStats$Uid;
    .end local v159    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_4
    const/4 v4, 0x0

    #@194
    move-object/from16 v0, p0

    #@196
    move/from16 v1, p3

    #@198
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@19b
    move-result-wide v92

    #@19c
    .line 2974
    .local v92, "mobileRxTotalBytes":J
    const/4 v4, 0x1

    #@19d
    move-object/from16 v0, p0

    #@19f
    move/from16 v1, p3

    #@1a1
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@1a4
    move-result-wide v96

    #@1a5
    .line 2975
    .local v96, "mobileTxTotalBytes":J
    const/4 v4, 0x2

    #@1a6
    move-object/from16 v0, p0

    #@1a8
    move/from16 v1, p3

    #@1aa
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@1ad
    move-result-wide v182

    #@1ae
    .line 2976
    .local v182, "wifiRxTotalBytes":J
    const/4 v4, 0x3

    #@1af
    move-object/from16 v0, p0

    #@1b1
    move/from16 v1, p3

    #@1b3
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@1b6
    move-result-wide v190

    #@1b7
    .line 2977
    .local v190, "wifiTxTotalBytes":J
    const/4 v4, 0x0

    #@1b8
    move-object/from16 v0, p0

    #@1ba
    move/from16 v1, p3

    #@1bc
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    #@1bf
    move-result-wide v94

    #@1c0
    .line 2978
    .local v94, "mobileRxTotalPackets":J
    const/4 v4, 0x1

    #@1c1
    move-object/from16 v0, p0

    #@1c3
    move/from16 v1, p3

    #@1c5
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    #@1c8
    move-result-wide v98

    #@1c9
    .line 2979
    .local v98, "mobileTxTotalPackets":J
    const/4 v4, 0x2

    #@1ca
    move-object/from16 v0, p0

    #@1cc
    move/from16 v1, p3

    #@1ce
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    #@1d1
    move-result-wide v184

    #@1d2
    .line 2980
    .local v184, "wifiRxTotalPackets":J
    const/4 v4, 0x3

    #@1d3
    move-object/from16 v0, p0

    #@1d5
    move/from16 v1, p3

    #@1d7
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    #@1da
    move-result-wide v192

    #@1db
    .line 2981
    .local v192, "wifiTxTotalPackets":J
    const/4 v4, 0x4

    #@1dc
    move-object/from16 v0, p0

    #@1de
    move/from16 v1, p3

    #@1e0
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@1e3
    move-result-wide v34

    #@1e4
    .line 2982
    .local v34, "btRxTotalBytes":J
    const/4 v4, 0x5

    #@1e5
    move-object/from16 v0, p0

    #@1e7
    move/from16 v1, p3

    #@1e9
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@1ec
    move-result-wide v36

    #@1ed
    .line 2983
    .local v36, "btTxTotalBytes":J
    const-string/jumbo v4, "gn"

    #@1f0
    const/16 v7, 0xa

    #@1f2
    new-array v7, v7, [Ljava/lang/Object;

    #@1f4
    .line 2984
    invoke-static/range {v92 .. v93}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1f7
    move-result-object v8

    #@1f8
    const/4 v9, 0x0

    #@1f9
    aput-object v8, v7, v9

    #@1fb
    invoke-static/range {v96 .. v97}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1fe
    move-result-object v8

    #@1ff
    const/4 v9, 0x1

    #@200
    aput-object v8, v7, v9

    #@202
    invoke-static/range {v182 .. v183}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@205
    move-result-object v8

    #@206
    const/4 v9, 0x2

    #@207
    aput-object v8, v7, v9

    #@209
    invoke-static/range {v190 .. v191}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@20c
    move-result-object v8

    #@20d
    const/4 v9, 0x3

    #@20e
    aput-object v8, v7, v9

    #@210
    .line 2985
    invoke-static/range {v94 .. v95}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@213
    move-result-object v8

    #@214
    const/4 v9, 0x4

    #@215
    aput-object v8, v7, v9

    #@217
    invoke-static/range {v98 .. v99}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@21a
    move-result-object v8

    #@21b
    const/4 v9, 0x5

    #@21c
    aput-object v8, v7, v9

    #@21e
    invoke-static/range {v184 .. v185}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@221
    move-result-object v8

    #@222
    const/4 v9, 0x6

    #@223
    aput-object v8, v7, v9

    #@225
    invoke-static/range {v192 .. v193}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@228
    move-result-object v8

    #@229
    const/4 v9, 0x7

    #@22a
    aput-object v8, v7, v9

    #@22c
    .line 2986
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@22f
    move-result-object v8

    #@230
    const/16 v9, 0x8

    #@232
    aput-object v8, v7, v9

    #@234
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@237
    move-result-object v8

    #@238
    const/16 v9, 0x9

    #@23a
    aput-object v8, v7, v9

    #@23c
    .line 2983
    const/4 v8, 0x0

    #@23d
    move-object/from16 v0, p2

    #@23f
    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@242
    .line 2989
    const-string/jumbo v7, "gmcd"

    #@245
    .line 2990
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@248
    move-result-object v8

    #@249
    .line 2989
    const/4 v5, 0x0

    #@24a
    move-object/from16 v4, p2

    #@24c
    move/from16 v9, p3

    #@24e
    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    #@251
    .line 2993
    move-object/from16 v0, p0

    #@253
    move/from16 v1, p3

    #@255
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    #@258
    move-result-wide v174

    #@259
    .line 2994
    .local v174, "wifiOnTime":J
    move-object/from16 v0, p0

    #@25b
    move/from16 v1, p3

    #@25d
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    #@260
    move-result-wide v180

    #@261
    .line 2995
    .local v180, "wifiRunningTime":J
    const-string/jumbo v4, "gwfl"

    #@264
    const/4 v7, 0x5

    #@265
    new-array v7, v7, [Ljava/lang/Object;

    #@267
    const-wide/16 v8, 0x3e8

    #@269
    div-long v8, v174, v8

    #@26b
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@26e
    move-result-object v8

    #@26f
    const/4 v9, 0x0

    #@270
    aput-object v8, v7, v9

    #@272
    .line 2996
    const-wide/16 v8, 0x3e8

    #@274
    div-long v8, v180, v8

    #@276
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@279
    move-result-object v8

    #@27a
    const/4 v9, 0x1

    #@27b
    aput-object v8, v7, v9

    #@27d
    const/4 v8, 0x0

    #@27e
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@281
    move-result-object v8

    #@282
    const/4 v9, 0x2

    #@283
    aput-object v8, v7, v9

    #@285
    const/4 v8, 0x0

    #@286
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@289
    move-result-object v8

    #@28a
    const/4 v9, 0x3

    #@28b
    aput-object v8, v7, v9

    #@28d
    const/4 v8, 0x0

    #@28e
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@291
    move-result-object v8

    #@292
    const/4 v9, 0x4

    #@293
    aput-object v8, v7, v9

    #@295
    .line 2995
    const/4 v8, 0x0

    #@296
    move-object/from16 v0, p2

    #@298
    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@29b
    .line 2998
    const-string/jumbo v7, "gwfcd"

    #@29e
    .line 2999
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@2a1
    move-result-object v8

    #@2a2
    .line 2998
    const/4 v5, 0x0

    #@2a3
    move-object/from16 v4, p2

    #@2a5
    move/from16 v9, p3

    #@2a7
    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    #@2aa
    .line 3002
    const-string/jumbo v7, "gble"

    #@2ad
    .line 3003
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@2b0
    move-result-object v8

    #@2b1
    .line 3002
    const/4 v5, 0x0

    #@2b2
    move-object/from16 v4, p2

    #@2b4
    move/from16 v9, p3

    #@2b6
    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    #@2b9
    .line 3006
    const-string/jumbo v4, "m"

    #@2bc
    const/16 v7, 0x15

    #@2be
    new-array v7, v7, [Ljava/lang/Object;

    #@2c0
    .line 3007
    const-wide/16 v8, 0x3e8

    #@2c2
    div-long v8, v120, v8

    #@2c4
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2c7
    move-result-object v8

    #@2c8
    const/4 v9, 0x0

    #@2c9
    aput-object v8, v7, v9

    #@2cb
    const-wide/16 v8, 0x3e8

    #@2cd
    div-long v8, v108, v8

    #@2cf
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2d2
    move-result-object v8

    #@2d3
    const/4 v9, 0x1

    #@2d4
    aput-object v8, v7, v9

    #@2d6
    .line 3008
    const-wide/16 v8, 0x3e8

    #@2d8
    div-long v8, v56, v8

    #@2da
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2dd
    move-result-object v8

    #@2de
    const/4 v9, 0x2

    #@2df
    aput-object v8, v7, v9

    #@2e1
    const-wide/16 v8, 0x3e8

    #@2e3
    div-long v8, v106, v8

    #@2e5
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2e8
    move-result-object v8

    #@2e9
    const/4 v9, 0x3

    #@2ea
    aput-object v8, v7, v9

    #@2ec
    .line 3009
    move-object/from16 v0, p0

    #@2ee
    move/from16 v1, p3

    #@2f0
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    #@2f3
    move-result-wide v8

    #@2f4
    const-wide/16 v12, 0x3e8

    #@2f6
    div-long/2addr v8, v12

    #@2f7
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2fa
    move-result-object v8

    #@2fb
    const/4 v9, 0x4

    #@2fc
    aput-object v8, v7, v9

    #@2fe
    .line 3010
    move-object/from16 v0, p0

    #@300
    move/from16 v1, p3

    #@302
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    #@305
    move-result-wide v8

    #@306
    const-wide/16 v12, 0x3e8

    #@308
    div-long/2addr v8, v12

    #@309
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@30c
    move-result-object v8

    #@30d
    const/4 v9, 0x5

    #@30e
    aput-object v8, v7, v9

    #@310
    const-wide/16 v8, 0x3e8

    #@312
    div-long v8, v66, v8

    #@314
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@317
    move-result-object v8

    #@318
    const/4 v9, 0x6

    #@319
    aput-object v8, v7, v9

    #@31b
    .line 3011
    const-wide/16 v8, 0x3e8

    #@31d
    div-long v8, v112, v8

    #@31f
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@322
    move-result-object v8

    #@323
    const/4 v9, 0x7

    #@324
    aput-object v8, v7, v9

    #@326
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@329
    move-result-object v8

    #@32a
    const/16 v9, 0x8

    #@32c
    aput-object v8, v7, v9

    #@32e
    const-wide/16 v8, 0x3e8

    #@330
    div-long v8, v40, v8

    #@332
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@335
    move-result-object v8

    #@336
    const/16 v9, 0x9

    #@338
    aput-object v8, v7, v9

    #@33a
    .line 3012
    const/4 v8, 0x2

    #@33b
    move-object/from16 v0, p0

    #@33d
    move/from16 v1, p3

    #@33f
    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    #@342
    move-result v8

    #@343
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@346
    move-result-object v8

    #@347
    const/16 v9, 0xa

    #@349
    aput-object v8, v7, v9

    #@34b
    const-wide/16 v8, 0x3e8

    #@34d
    div-long v8, v44, v8

    #@34f
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@352
    move-result-object v8

    #@353
    const/16 v9, 0xb

    #@355
    aput-object v8, v7, v9

    #@357
    .line 3013
    const/4 v8, 0x2

    #@358
    move-object/from16 v0, p0

    #@35a
    move/from16 v1, p3

    #@35c
    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    #@35f
    move-result v8

    #@360
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@363
    move-result-object v8

    #@364
    const/16 v9, 0xc

    #@366
    aput-object v8, v7, v9

    #@368
    .line 3014
    move-object/from16 v0, p0

    #@36a
    move/from16 v1, p3

    #@36c
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    #@36f
    move-result v8

    #@370
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@373
    move-result-object v8

    #@374
    const/16 v9, 0xd

    #@376
    aput-object v8, v7, v9

    #@378
    .line 3015
    move-object/from16 v0, p0

    #@37a
    move/from16 v1, p3

    #@37c
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    #@37f
    move-result-wide v8

    #@380
    const-wide/16 v12, 0x3e8

    #@382
    div-long/2addr v8, v12

    #@383
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@386
    move-result-object v8

    #@387
    const/16 v9, 0xe

    #@389
    aput-object v8, v7, v9

    #@38b
    const-wide/16 v8, 0x3e8

    #@38d
    div-long v8, v42, v8

    #@38f
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@392
    move-result-object v8

    #@393
    const/16 v9, 0xf

    #@395
    aput-object v8, v7, v9

    #@397
    .line 3016
    const/4 v8, 0x1

    #@398
    move-object/from16 v0, p0

    #@39a
    move/from16 v1, p3

    #@39c
    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    #@39f
    move-result v8

    #@3a0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a3
    move-result-object v8

    #@3a4
    const/16 v9, 0x10

    #@3a6
    aput-object v8, v7, v9

    #@3a8
    const-wide/16 v8, 0x3e8

    #@3aa
    div-long v8, v46, v8

    #@3ac
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3af
    move-result-object v8

    #@3b0
    const/16 v9, 0x11

    #@3b2
    aput-object v8, v7, v9

    #@3b4
    .line 3017
    const/4 v8, 0x1

    #@3b5
    move-object/from16 v0, p0

    #@3b7
    move/from16 v1, p3

    #@3b9
    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    #@3bc
    move-result v8

    #@3bd
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c0
    move-result-object v8

    #@3c1
    const/16 v9, 0x12

    #@3c3
    aput-object v8, v7, v9

    #@3c5
    .line 3018
    const/4 v8, 0x1

    #@3c6
    move-object/from16 v0, p0

    #@3c8
    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    #@3cb
    move-result-wide v8

    #@3cc
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3cf
    move-result-object v8

    #@3d0
    const/16 v9, 0x13

    #@3d2
    aput-object v8, v7, v9

    #@3d4
    .line 3019
    const/4 v8, 0x2

    #@3d5
    move-object/from16 v0, p0

    #@3d7
    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    #@3da
    move-result-wide v8

    #@3db
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3de
    move-result-object v8

    #@3df
    const/16 v9, 0x14

    #@3e1
    aput-object v8, v7, v9

    #@3e3
    .line 3006
    const/4 v8, 0x0

    #@3e4
    move-object/from16 v0, p2

    #@3e6
    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@3e9
    .line 3022
    const/4 v4, 0x5

    #@3ea
    new-array v0, v4, [Ljava/lang/Object;

    #@3ec
    move-object/from16 v26, v0

    #@3ee
    .line 3023
    .local v26, "args":[Ljava/lang/Object;
    const/16 v63, 0x0

    #@3f0
    .local v63, "i":I
    :goto_3
    const/4 v4, 0x5

    #@3f1
    move/from16 v0, v63

    #@3f3
    if-ge v0, v4, :cond_5

    #@3f5
    .line 3024
    move-object/from16 v0, p0

    #@3f7
    move/from16 v1, v63

    #@3f9
    move/from16 v2, p3

    #@3fb
    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    #@3fe
    move-result-wide v8

    #@3ff
    const-wide/16 v12, 0x3e8

    #@401
    div-long/2addr v8, v12

    #@402
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@405
    move-result-object v4

    #@406
    aput-object v4, v26, v63

    #@408
    .line 3023
    add-int/lit8 v63, v63, 0x1

    #@40a
    goto :goto_3

    #@40b
    .line 3026
    :cond_5
    const-string/jumbo v4, "br"

    #@40e
    const/4 v7, 0x0

    #@40f
    move-object/from16 v0, p2

    #@411
    move-object/from16 v1, v26

    #@413
    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@416
    .line 3029
    const/4 v4, 0x5

    #@417
    new-array v0, v4, [Ljava/lang/Object;

    #@419
    move-object/from16 v26, v0

    #@41b
    .line 3030
    const/16 v63, 0x0

    #@41d
    :goto_4
    const/4 v4, 0x5

    #@41e
    move/from16 v0, v63

    #@420
    if-ge v0, v4, :cond_6

    #@422
    .line 3031
    move-object/from16 v0, p0

    #@424
    move/from16 v1, v63

    #@426
    move/from16 v2, p3

    #@428
    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    #@42b
    move-result-wide v8

    #@42c
    const-wide/16 v12, 0x3e8

    #@42e
    div-long/2addr v8, v12

    #@42f
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@432
    move-result-object v4

    #@433
    aput-object v4, v26, v63

    #@435
    .line 3030
    add-int/lit8 v63, v63, 0x1

    #@437
    goto :goto_4

    #@438
    .line 3033
    :cond_6
    const-string/jumbo v4, "sgt"

    #@43b
    const/4 v7, 0x0

    #@43c
    move-object/from16 v0, p2

    #@43e
    move-object/from16 v1, v26

    #@440
    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@443
    .line 3034
    const-string/jumbo v4, "sst"

    #@446
    const/4 v7, 0x1

    #@447
    new-array v7, v7, [Ljava/lang/Object;

    #@449
    .line 3035
    move-object/from16 v0, p0

    #@44b
    move/from16 v1, p3

    #@44d
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    #@450
    move-result-wide v8

    #@451
    const-wide/16 v12, 0x3e8

    #@453
    div-long/2addr v8, v12

    #@454
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@457
    move-result-object v8

    #@458
    const/4 v9, 0x0

    #@459
    aput-object v8, v7, v9

    #@45b
    .line 3034
    const/4 v8, 0x0

    #@45c
    move-object/from16 v0, p2

    #@45e
    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@461
    .line 3036
    const/16 v63, 0x0

    #@463
    :goto_5
    const/4 v4, 0x5

    #@464
    move/from16 v0, v63

    #@466
    if-ge v0, v4, :cond_7

    #@468
    .line 3037
    move-object/from16 v0, p0

    #@46a
    move/from16 v1, v63

    #@46c
    move/from16 v2, p3

    #@46e
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    #@471
    move-result v4

    #@472
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@475
    move-result-object v4

    #@476
    aput-object v4, v26, v63

    #@478
    .line 3036
    add-int/lit8 v63, v63, 0x1

    #@47a
    goto :goto_5

    #@47b
    .line 3039
    :cond_7
    const-string/jumbo v4, "sgc"

    #@47e
    const/4 v7, 0x0

    #@47f
    move-object/from16 v0, p2

    #@481
    move-object/from16 v1, v26

    #@483
    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@486
    .line 3042
    const/16 v4, 0x11

    #@488
    new-array v0, v4, [Ljava/lang/Object;

    #@48a
    move-object/from16 v26, v0

    #@48c
    .line 3043
    const/16 v63, 0x0

    #@48e
    :goto_6
    const/16 v4, 0x11

    #@490
    move/from16 v0, v63

    #@492
    if-ge v0, v4, :cond_8

    #@494
    .line 3044
    move-object/from16 v0, p0

    #@496
    move/from16 v1, v63

    #@498
    move/from16 v2, p3

    #@49a
    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    #@49d
    move-result-wide v8

    #@49e
    const-wide/16 v12, 0x3e8

    #@4a0
    div-long/2addr v8, v12

    #@4a1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4a4
    move-result-object v4

    #@4a5
    aput-object v4, v26, v63

    #@4a7
    .line 3043
    add-int/lit8 v63, v63, 0x1

    #@4a9
    goto :goto_6

    #@4aa
    .line 3046
    :cond_8
    const-string/jumbo v4, "dct"

    #@4ad
    const/4 v7, 0x0

    #@4ae
    move-object/from16 v0, p2

    #@4b0
    move-object/from16 v1, v26

    #@4b2
    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@4b5
    .line 3047
    const/16 v63, 0x0

    #@4b7
    :goto_7
    const/16 v4, 0x11

    #@4b9
    move/from16 v0, v63

    #@4bb
    if-ge v0, v4, :cond_9

    #@4bd
    .line 3048
    move-object/from16 v0, p0

    #@4bf
    move/from16 v1, v63

    #@4c1
    move/from16 v2, p3

    #@4c3
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    #@4c6
    move-result v4

    #@4c7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4ca
    move-result-object v4

    #@4cb
    aput-object v4, v26, v63

    #@4cd
    .line 3047
    add-int/lit8 v63, v63, 0x1

    #@4cf
    goto :goto_7

    #@4d0
    .line 3050
    :cond_9
    const-string/jumbo v4, "dcc"

    #@4d3
    const/4 v7, 0x0

    #@4d4
    move-object/from16 v0, p2

    #@4d6
    move-object/from16 v1, v26

    #@4d8
    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@4db
    .line 3053
    const/16 v4, 0x8

    #@4dd
    new-array v0, v4, [Ljava/lang/Object;

    #@4df
    move-object/from16 v26, v0

    #@4e1
    .line 3054
    const/16 v63, 0x0

    #@4e3
    :goto_8
    const/16 v4, 0x8

    #@4e5
    move/from16 v0, v63

    #@4e7
    if-ge v0, v4, :cond_a

    #@4e9
    .line 3055
    move-object/from16 v0, p0

    #@4eb
    move/from16 v1, v63

    #@4ed
    move/from16 v2, p3

    #@4ef
    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    #@4f2
    move-result-wide v8

    #@4f3
    const-wide/16 v12, 0x3e8

    #@4f5
    div-long/2addr v8, v12

    #@4f6
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4f9
    move-result-object v4

    #@4fa
    aput-object v4, v26, v63

    #@4fc
    .line 3054
    add-int/lit8 v63, v63, 0x1

    #@4fe
    goto :goto_8

    #@4ff
    .line 3057
    :cond_a
    const-string/jumbo v4, "wst"

    #@502
    const/4 v7, 0x0

    #@503
    move-object/from16 v0, p2

    #@505
    move-object/from16 v1, v26

    #@507
    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@50a
    .line 3058
    const/16 v63, 0x0

    #@50c
    :goto_9
    const/16 v4, 0x8

    #@50e
    move/from16 v0, v63

    #@510
    if-ge v0, v4, :cond_b

    #@512
    .line 3059
    move-object/from16 v0, p0

    #@514
    move/from16 v1, v63

    #@516
    move/from16 v2, p3

    #@518
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiStateCount(II)I

    #@51b
    move-result v4

    #@51c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@51f
    move-result-object v4

    #@520
    aput-object v4, v26, v63

    #@522
    .line 3058
    add-int/lit8 v63, v63, 0x1

    #@524
    goto :goto_9

    #@525
    .line 3061
    :cond_b
    const-string/jumbo v4, "wsc"

    #@528
    const/4 v7, 0x0

    #@529
    move-object/from16 v0, p2

    #@52b
    move-object/from16 v1, v26

    #@52d
    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@530
    .line 3064
    const/16 v4, 0xd

    #@532
    new-array v0, v4, [Ljava/lang/Object;

    #@534
    move-object/from16 v26, v0

    #@536
    .line 3065
    const/16 v63, 0x0

    #@538
    :goto_a
    const/16 v4, 0xd

    #@53a
    move/from16 v0, v63

    #@53c
    if-ge v0, v4, :cond_c

    #@53e
    .line 3066
    move-object/from16 v0, p0

    #@540
    move/from16 v1, v63

    #@542
    move/from16 v2, p3

    #@544
    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    #@547
    move-result-wide v8

    #@548
    const-wide/16 v12, 0x3e8

    #@54a
    div-long/2addr v8, v12

    #@54b
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@54e
    move-result-object v4

    #@54f
    aput-object v4, v26, v63

    #@551
    .line 3065
    add-int/lit8 v63, v63, 0x1

    #@553
    goto :goto_a

    #@554
    .line 3068
    :cond_c
    const-string/jumbo v4, "wsst"

    #@557
    const/4 v7, 0x0

    #@558
    move-object/from16 v0, p2

    #@55a
    move-object/from16 v1, v26

    #@55c
    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@55f
    .line 3069
    const/16 v63, 0x0

    #@561
    :goto_b
    const/16 v4, 0xd

    #@563
    move/from16 v0, v63

    #@565
    if-ge v0, v4, :cond_d

    #@567
    .line 3070
    move-object/from16 v0, p0

    #@569
    move/from16 v1, v63

    #@56b
    move/from16 v2, p3

    #@56d
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSupplStateCount(II)I

    #@570
    move-result v4

    #@571
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@574
    move-result-object v4

    #@575
    aput-object v4, v26, v63

    #@577
    .line 3069
    add-int/lit8 v63, v63, 0x1

    #@579
    goto :goto_b

    #@57a
    .line 3072
    :cond_d
    const-string/jumbo v4, "wssc"

    #@57d
    const/4 v7, 0x0

    #@57e
    move-object/from16 v0, p2

    #@580
    move-object/from16 v1, v26

    #@582
    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@585
    .line 3075
    const/4 v4, 0x5

    #@586
    new-array v0, v4, [Ljava/lang/Object;

    #@588
    move-object/from16 v26, v0

    #@58a
    .line 3076
    const/16 v63, 0x0

    #@58c
    :goto_c
    const/4 v4, 0x5

    #@58d
    move/from16 v0, v63

    #@58f
    if-ge v0, v4, :cond_e

    #@591
    .line 3077
    move-object/from16 v0, p0

    #@593
    move/from16 v1, v63

    #@595
    move/from16 v2, p3

    #@597
    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    #@59a
    move-result-wide v8

    #@59b
    const-wide/16 v12, 0x3e8

    #@59d
    div-long/2addr v8, v12

    #@59e
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5a1
    move-result-object v4

    #@5a2
    aput-object v4, v26, v63

    #@5a4
    .line 3076
    add-int/lit8 v63, v63, 0x1

    #@5a6
    goto :goto_c

    #@5a7
    .line 3079
    :cond_e
    const-string/jumbo v4, "wsgt"

    #@5aa
    const/4 v7, 0x0

    #@5ab
    move-object/from16 v0, p2

    #@5ad
    move-object/from16 v1, v26

    #@5af
    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@5b2
    .line 3080
    const/16 v63, 0x0

    #@5b4
    :goto_d
    const/4 v4, 0x5

    #@5b5
    move/from16 v0, v63

    #@5b7
    if-ge v0, v4, :cond_f

    #@5b9
    .line 3081
    move-object/from16 v0, p0

    #@5bb
    move/from16 v1, v63

    #@5bd
    move/from16 v2, p3

    #@5bf
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSignalStrengthCount(II)I

    #@5c2
    move-result v4

    #@5c3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5c6
    move-result-object v4

    #@5c7
    aput-object v4, v26, v63

    #@5c9
    .line 3080
    add-int/lit8 v63, v63, 0x1

    #@5cb
    goto :goto_d

    #@5cc
    .line 3083
    :cond_f
    const-string/jumbo v4, "wsgc"

    #@5cf
    const/4 v7, 0x0

    #@5d0
    move-object/from16 v0, p2

    #@5d2
    move-object/from16 v1, v26

    #@5d4
    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@5d7
    .line 3085
    const/4 v4, 0x2

    #@5d8
    move/from16 v0, p3

    #@5da
    if-ne v0, v4, :cond_10

    #@5dc
    .line 3086
    const-string/jumbo v4, "lv"

    #@5df
    const/4 v7, 0x2

    #@5e0
    new-array v7, v7, [Ljava/lang/Object;

    #@5e2
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    #@5e5
    move-result v8

    #@5e6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5e9
    move-result-object v8

    #@5ea
    const/4 v9, 0x0

    #@5eb
    aput-object v8, v7, v9

    #@5ed
    .line 3087
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    #@5f0
    move-result v8

    #@5f1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5f4
    move-result-object v8

    #@5f5
    const/4 v9, 0x1

    #@5f6
    aput-object v8, v7, v9

    #@5f8
    .line 3086
    const/4 v8, 0x0

    #@5f9
    move-object/from16 v0, p2

    #@5fb
    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@5fe
    .line 3090
    :cond_10
    const/4 v4, 0x2

    #@5ff
    move/from16 v0, p3

    #@601
    if-ne v0, v4, :cond_11

    #@603
    .line 3091
    const-string/jumbo v4, "dc"

    #@606
    const/4 v7, 0x6

    #@607
    new-array v7, v7, [Ljava/lang/Object;

    #@609
    .line 3092
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    #@60c
    move-result v8

    #@60d
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    #@610
    move-result v9

    #@611
    sub-int/2addr v8, v9

    #@612
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@615
    move-result-object v8

    #@616
    const/4 v9, 0x0

    #@617
    aput-object v8, v7, v9

    #@619
    .line 3093
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    #@61c
    move-result v8

    #@61d
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    #@620
    move-result v9

    #@621
    sub-int/2addr v8, v9

    #@622
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@625
    move-result-object v8

    #@626
    const/4 v9, 0x1

    #@627
    aput-object v8, v7, v9

    #@629
    .line 3094
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    #@62c
    move-result v8

    #@62d
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@630
    move-result-object v8

    #@631
    const/4 v9, 0x2

    #@632
    aput-object v8, v7, v9

    #@634
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    #@637
    move-result v8

    #@638
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@63b
    move-result-object v8

    #@63c
    const/4 v9, 0x3

    #@63d
    aput-object v8, v7, v9

    #@63f
    .line 3095
    const-wide/16 v8, 0x3e8

    #@641
    div-long v8, v48, v8

    #@643
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@646
    move-result-object v8

    #@647
    const/4 v9, 0x4

    #@648
    aput-object v8, v7, v9

    #@64a
    const-wide/16 v8, 0x3e8

    #@64c
    div-long v8, v50, v8

    #@64e
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@651
    move-result-object v8

    #@652
    const/4 v9, 0x5

    #@653
    aput-object v8, v7, v9

    #@655
    .line 3091
    const/4 v8, 0x0

    #@656
    move-object/from16 v0, p2

    #@658
    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@65b
    .line 3104
    :goto_e
    if-gez p4, :cond_13

    #@65d
    .line 3105
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    #@660
    move-result-object v77

    #@661
    .line 3106
    .local v77, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v77 .. v77}, Ljava/util/Map;->size()I

    #@664
    move-result v4

    #@665
    if-lez v4, :cond_12

    #@667
    .line 3107
    invoke-interface/range {v77 .. v77}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@66a
    move-result-object v4

    #@66b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@66e
    move-result-object v53

    #@66f
    .local v53, "ent$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    #@672
    move-result v4

    #@673
    if-eqz v4, :cond_12

    #@675
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@678
    move-result-object v52

    #@679
    check-cast v52, Ljava/util/Map$Entry;

    #@67b
    .line 3108
    .local v52, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const/4 v4, 0x0

    #@67c
    move-object/from16 v0, v117

    #@67e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    #@681
    .line 3109
    invoke-interface/range {v52 .. v52}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@684
    move-result-object v9

    #@685
    check-cast v9, Landroid/os/BatteryStats$Timer;

    #@687
    const-string/jumbo v14, ""

    #@68a
    const/4 v12, 0x0

    #@68b
    move-object/from16 v8, v117

    #@68d
    move/from16 v13, p3

    #@68f
    invoke-static/range {v8 .. v14}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@692
    .line 3110
    const-string/jumbo v4, "kwl"

    #@695
    const/4 v7, 0x2

    #@696
    new-array v7, v7, [Ljava/lang/Object;

    #@698
    invoke-interface/range {v52 .. v52}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@69b
    move-result-object v8

    #@69c
    const/4 v9, 0x0

    #@69d
    aput-object v8, v7, v9

    #@69f
    .line 3111
    invoke-virtual/range {v117 .. v117}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a2
    move-result-object v8

    #@6a3
    const/4 v9, 0x1

    #@6a4
    aput-object v8, v7, v9

    #@6a6
    .line 3110
    const/4 v8, 0x0

    #@6a7
    move-object/from16 v0, p2

    #@6a9
    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@6ac
    goto :goto_f

    #@6ad
    .line 3097
    .end local v52    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v53    # "ent$iterator":Ljava/util/Iterator;
    .end local v77    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_11
    const-string/jumbo v4, "dc"

    #@6b0
    const/4 v7, 0x6

    #@6b1
    new-array v7, v7, [Ljava/lang/Object;

    #@6b3
    .line 3098
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    #@6b6
    move-result v8

    #@6b7
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6ba
    move-result-object v8

    #@6bb
    const/4 v9, 0x0

    #@6bc
    aput-object v8, v7, v9

    #@6be
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    #@6c1
    move-result v8

    #@6c2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6c5
    move-result-object v8

    #@6c6
    const/4 v9, 0x1

    #@6c7
    aput-object v8, v7, v9

    #@6c9
    .line 3099
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    #@6cc
    move-result v8

    #@6cd
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6d0
    move-result-object v8

    #@6d1
    const/4 v9, 0x2

    #@6d2
    aput-object v8, v7, v9

    #@6d4
    .line 3100
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    #@6d7
    move-result v8

    #@6d8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6db
    move-result-object v8

    #@6dc
    const/4 v9, 0x3

    #@6dd
    aput-object v8, v7, v9

    #@6df
    .line 3101
    const-wide/16 v8, 0x3e8

    #@6e1
    div-long v8, v48, v8

    #@6e3
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6e6
    move-result-object v8

    #@6e7
    const/4 v9, 0x4

    #@6e8
    aput-object v8, v7, v9

    #@6ea
    const-wide/16 v8, 0x3e8

    #@6ec
    div-long v8, v50, v8

    #@6ee
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6f1
    move-result-object v8

    #@6f2
    const/4 v9, 0x5

    #@6f3
    aput-object v8, v7, v9

    #@6f5
    .line 3097
    const/4 v8, 0x0

    #@6f6
    move-object/from16 v0, p2

    #@6f8
    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@6fb
    goto/16 :goto_e

    #@6fd
    .line 3114
    .restart local v77    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    #@700
    move-result-object v160

    #@701
    .line 3115
    .local v160, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v160 .. v160}, Ljava/util/Map;->size()I

    #@704
    move-result v4

    #@705
    if-lez v4, :cond_13

    #@707
    .line 3116
    invoke-interface/range {v160 .. v160}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@70a
    move-result-object v4

    #@70b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@70e
    move-result-object v53

    #@70f
    .restart local v53    # "ent$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    #@712
    move-result v4

    #@713
    if-eqz v4, :cond_13

    #@715
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@718
    move-result-object v52

    #@719
    check-cast v52, Ljava/util/Map$Entry;

    #@71b
    .line 3119
    .restart local v52    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v52 .. v52}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@71e
    move-result-object v4

    #@71f
    check-cast v4, Landroid/os/BatteryStats$Timer;

    #@721
    move/from16 v0, p3

    #@723
    invoke-virtual {v4, v10, v11, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@726
    move-result-wide v146

    #@727
    .line 3120
    .local v146, "totalTimeMicros":J
    invoke-interface/range {v52 .. v52}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@72a
    move-result-object v4

    #@72b
    check-cast v4, Landroid/os/BatteryStats$Timer;

    #@72d
    move/from16 v0, p3

    #@72f
    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@732
    move-result v39

    #@733
    .line 3121
    .local v39, "count":I
    const-string/jumbo v7, "wr"

    #@736
    const/4 v4, 0x3

    #@737
    new-array v8, v4, [Ljava/lang/Object;

    #@739
    .line 3122
    new-instance v4, Ljava/lang/StringBuilder;

    #@73b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@73e
    const-string/jumbo v9, "\""

    #@741
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@744
    move-result-object v9

    #@745
    invoke-interface/range {v52 .. v52}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@748
    move-result-object v4

    #@749
    check-cast v4, Ljava/lang/String;

    #@74b
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74e
    move-result-object v4

    #@74f
    const-string/jumbo v9, "\""

    #@752
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@755
    move-result-object v4

    #@756
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@759
    move-result-object v4

    #@75a
    const/4 v9, 0x0

    #@75b
    aput-object v4, v8, v9

    #@75d
    const-wide/16 v12, 0x1f4

    #@75f
    add-long v12, v12, v146

    #@761
    const-wide/16 v16, 0x3e8

    #@763
    div-long v12, v12, v16

    #@765
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@768
    move-result-object v4

    #@769
    const/4 v9, 0x1

    #@76a
    aput-object v4, v8, v9

    #@76c
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@76f
    move-result-object v4

    #@770
    const/4 v9, 0x2

    #@771
    aput-object v4, v8, v9

    #@773
    .line 3121
    const/4 v4, 0x0

    #@774
    move-object/from16 v0, p2

    #@776
    invoke-static {v0, v4, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@779
    goto :goto_10

    #@77a
    .line 3127
    .end local v39    # "count":I
    .end local v52    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v53    # "ent$iterator":Ljava/util/Iterator;
    .end local v77    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v146    # "totalTimeMicros":J
    .end local v160    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_13
    new-instance v62, Lcom/android/internal/os/BatteryStatsHelper;

    #@77c
    const/4 v4, 0x0

    #@77d
    move-object/from16 v0, v62

    #@77f
    move-object/from16 v1, p1

    #@781
    move/from16 v2, p5

    #@783
    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    #@786
    .line 3128
    .local v62, "helper":Lcom/android/internal/os/BatteryStatsHelper;
    move-object/from16 v0, v62

    #@788
    move-object/from16 v1, p0

    #@78a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    #@78d
    .line 3129
    const/4 v4, -0x1

    #@78e
    move-object/from16 v0, v62

    #@790
    move/from16 v1, p3

    #@792
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    #@795
    .line 3130
    invoke-virtual/range {v62 .. v62}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    #@798
    move-result-object v126

    #@799
    .line 3131
    .local v126, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v126, :cond_14

    #@79b
    invoke-interface/range {v126 .. v126}, Ljava/util/List;->size()I

    #@79e
    move-result v4

    #@79f
    if-lez v4, :cond_14

    #@7a1
    .line 3132
    const-string/jumbo v4, "pws"

    #@7a4
    const/4 v7, 0x4

    #@7a5
    new-array v7, v7, [Ljava/lang/Object;

    #@7a7
    .line 3133
    invoke-virtual/range {v62 .. v62}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    #@7aa
    move-result-object v8

    #@7ab
    invoke-virtual {v8}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    #@7ae
    move-result-wide v8

    #@7af
    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@7b2
    move-result-object v8

    #@7b3
    const/4 v9, 0x0

    #@7b4
    aput-object v8, v7, v9

    #@7b6
    .line 3134
    invoke-virtual/range {v62 .. v62}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    #@7b9
    move-result-wide v8

    #@7ba
    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@7bd
    move-result-object v8

    #@7be
    const/4 v9, 0x1

    #@7bf
    aput-object v8, v7, v9

    #@7c1
    .line 3135
    invoke-virtual/range {v62 .. v62}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    #@7c4
    move-result-wide v8

    #@7c5
    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@7c8
    move-result-object v8

    #@7c9
    const/4 v9, 0x2

    #@7ca
    aput-object v8, v7, v9

    #@7cc
    .line 3136
    invoke-virtual/range {v62 .. v62}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    #@7cf
    move-result-wide v8

    #@7d0
    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@7d3
    move-result-object v8

    #@7d4
    const/4 v9, 0x3

    #@7d5
    aput-object v8, v7, v9

    #@7d7
    .line 3132
    const/4 v8, 0x0

    #@7d8
    move-object/from16 v0, p2

    #@7da
    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@7dd
    .line 3137
    const/16 v63, 0x0

    #@7df
    :goto_11
    invoke-interface/range {v126 .. v126}, Ljava/util/List;->size()I

    #@7e2
    move-result v4

    #@7e3
    move/from16 v0, v63

    #@7e5
    if-ge v0, v4, :cond_14

    #@7e7
    .line 3138
    move-object/from16 v0, v126

    #@7e9
    move/from16 v1, v63

    #@7eb
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7ee
    move-result-object v27

    #@7ef
    check-cast v27, Lcom/android/internal/os/BatterySipper;

    #@7f1
    .line 3139
    .local v27, "bs":Lcom/android/internal/os/BatterySipper;
    const/4 v5, 0x0

    #@7f2
    .line 3141
    .local v5, "uid":I
    invoke-static {}, Landroid/os/BatteryStats;->-getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I

    #@7f5
    move-result-object v4

    #@7f6
    move-object/from16 v0, v27

    #@7f8
    iget-object v7, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    #@7fa
    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    #@7fd
    move-result v7

    #@7fe
    aget v4, v4, v7

    #@800
    packed-switch v4, :pswitch_data_0

    #@803
    .line 3181
    const-string/jumbo v78, "???"

    #@806
    .line 3183
    .local v78, "label":Ljava/lang/String;
    :goto_12
    const-string/jumbo v4, "pwi"

    #@809
    const/4 v7, 0x2

    #@80a
    new-array v7, v7, [Ljava/lang/Object;

    #@80c
    const/4 v8, 0x0

    #@80d
    aput-object v78, v7, v8

    #@80f
    .line 3184
    move-object/from16 v0, v27

    #@811
    iget-wide v8, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    #@813
    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@816
    move-result-object v8

    #@817
    const/4 v9, 0x1

    #@818
    aput-object v8, v7, v9

    #@81a
    .line 3183
    move-object/from16 v0, p2

    #@81c
    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@81f
    .line 3137
    add-int/lit8 v63, v63, 0x1

    #@821
    goto :goto_11

    #@822
    .line 3143
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v78, "idle"

    #@825
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@826
    .line 3146
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v78, "cell"

    #@829
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@82a
    .line 3149
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v78, "phone"

    #@82d
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@82e
    .line 3152
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v78, "wifi"

    #@831
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@832
    .line 3155
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v78, "blue"

    #@835
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@836
    .line 3158
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v78, "scrn"

    #@839
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@83a
    .line 3161
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v78, "flashlight"

    #@83d
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@83e
    .line 3164
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, v27

    #@840
    iget-object v4, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    #@842
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    #@845
    move-result v5

    #@846
    .line 3165
    const-string/jumbo v78, "uid"

    #@849
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@84a
    .line 3168
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, v27

    #@84c
    iget v4, v0, Lcom/android/internal/os/BatterySipper;->userId:I

    #@84e
    const/4 v7, 0x0

    #@84f
    invoke-static {v4, v7}, Landroid/os/UserHandle;->getUid(II)I

    #@852
    move-result v5

    #@853
    .line 3169
    const-string/jumbo v78, "user"

    #@856
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@857
    .line 3172
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v78, "unacc"

    #@85a
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@85b
    .line 3175
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v78, "over"

    #@85e
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@85f
    .line 3178
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v78, "camera"

    #@862
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@863
    .line 3188
    .end local v5    # "uid":I
    .end local v27    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v78    # "label":Ljava/lang/String;
    :cond_14
    const/16 v73, 0x0

    #@865
    :goto_13
    move/from16 v0, v73

    #@867
    move/from16 v1, v24

    #@869
    if-ge v0, v1, :cond_37

    #@86b
    .line 3189
    move-object/from16 v0, v151

    #@86d
    move/from16 v1, v73

    #@86f
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@872
    move-result v5

    #@873
    .line 3190
    .restart local v5    # "uid":I
    if-ltz p4, :cond_16

    #@875
    move/from16 v0, p4

    #@877
    if-eq v5, v0, :cond_16

    #@879
    .line 3188
    :cond_15
    add-int/lit8 v73, v73, 0x1

    #@87b
    goto :goto_13

    #@87c
    .line 3193
    :cond_16
    move-object/from16 v0, v151

    #@87e
    move/from16 v1, v73

    #@880
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@883
    move-result-object v150

    #@884
    check-cast v150, Landroid/os/BatteryStats$Uid;

    #@886
    .line 3196
    .restart local v150    # "u":Landroid/os/BatteryStats$Uid;
    const/4 v4, 0x0

    #@887
    move-object/from16 v0, v150

    #@889
    move/from16 v1, p3

    #@88b
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@88e
    move-result-wide v84

    #@88f
    .line 3197
    .local v84, "mobileBytesRx":J
    const/4 v4, 0x1

    #@890
    move-object/from16 v0, v150

    #@892
    move/from16 v1, p3

    #@894
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@897
    move-result-wide v86

    #@898
    .line 3198
    .local v86, "mobileBytesTx":J
    const/4 v4, 0x2

    #@899
    move-object/from16 v0, v150

    #@89b
    move/from16 v1, p3

    #@89d
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@8a0
    move-result-wide v170

    #@8a1
    .line 3199
    .local v170, "wifiBytesRx":J
    const/4 v4, 0x3

    #@8a2
    move-object/from16 v0, v150

    #@8a4
    move/from16 v1, p3

    #@8a6
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@8a9
    move-result-wide v172

    #@8aa
    .line 3200
    .local v172, "wifiBytesTx":J
    const/4 v4, 0x0

    #@8ab
    move-object/from16 v0, v150

    #@8ad
    move/from16 v1, p3

    #@8af
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@8b2
    move-result-wide v88

    #@8b3
    .line 3201
    .local v88, "mobilePacketsRx":J
    const/4 v4, 0x1

    #@8b4
    move-object/from16 v0, v150

    #@8b6
    move/from16 v1, p3

    #@8b8
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@8bb
    move-result-wide v90

    #@8bc
    .line 3202
    .local v90, "mobilePacketsTx":J
    move-object/from16 v0, v150

    #@8be
    move/from16 v1, p3

    #@8c0
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    #@8c3
    move-result-wide v82

    #@8c4
    .line 3203
    .local v82, "mobileActiveTime":J
    move-object/from16 v0, v150

    #@8c6
    move/from16 v1, p3

    #@8c8
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    #@8cb
    move-result v80

    #@8cc
    .line 3204
    .local v80, "mobileActiveCount":I
    move-object/from16 v0, v150

    #@8ce
    move/from16 v1, p3

    #@8d0
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    #@8d3
    move-result-wide v100

    #@8d4
    .line 3205
    .local v100, "mobileWakeup":J
    const/4 v4, 0x2

    #@8d5
    move-object/from16 v0, v150

    #@8d7
    move/from16 v1, p3

    #@8d9
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@8dc
    move-result-wide v176

    #@8dd
    .line 3206
    .local v176, "wifiPacketsRx":J
    const/4 v4, 0x3

    #@8de
    move-object/from16 v0, v150

    #@8e0
    move/from16 v1, p3

    #@8e2
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@8e5
    move-result-wide v178

    #@8e6
    .line 3207
    .local v178, "wifiPacketsTx":J
    move-object/from16 v0, v150

    #@8e8
    move/from16 v1, p3

    #@8ea
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    #@8ed
    move-result-wide v194

    #@8ee
    .line 3208
    .local v194, "wifiWakeup":J
    const/4 v4, 0x4

    #@8ef
    move-object/from16 v0, v150

    #@8f1
    move/from16 v1, p3

    #@8f3
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@8f6
    move-result-wide v30

    #@8f7
    .line 3209
    .local v30, "btBytesRx":J
    const/4 v4, 0x5

    #@8f8
    move-object/from16 v0, v150

    #@8fa
    move/from16 v1, p3

    #@8fc
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@8ff
    move-result-wide v32

    #@900
    .line 3210
    .local v32, "btBytesTx":J
    const-wide/16 v8, 0x0

    #@902
    cmp-long v4, v84, v8

    #@904
    if-gtz v4, :cond_17

    #@906
    const-wide/16 v8, 0x0

    #@908
    cmp-long v4, v86, v8

    #@90a
    if-lez v4, :cond_1c

    #@90c
    .line 3214
    :cond_17
    :goto_14
    const-string/jumbo v4, "nt"

    #@90f
    const/16 v7, 0xe

    #@911
    new-array v7, v7, [Ljava/lang/Object;

    #@913
    invoke-static/range {v84 .. v85}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@916
    move-result-object v8

    #@917
    const/4 v9, 0x0

    #@918
    aput-object v8, v7, v9

    #@91a
    invoke-static/range {v86 .. v87}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@91d
    move-result-object v8

    #@91e
    const/4 v9, 0x1

    #@91f
    aput-object v8, v7, v9

    #@921
    .line 3215
    invoke-static/range {v170 .. v171}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@924
    move-result-object v8

    #@925
    const/4 v9, 0x2

    #@926
    aput-object v8, v7, v9

    #@928
    invoke-static/range {v172 .. v173}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@92b
    move-result-object v8

    #@92c
    const/4 v9, 0x3

    #@92d
    aput-object v8, v7, v9

    #@92f
    .line 3216
    invoke-static/range {v88 .. v89}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@932
    move-result-object v8

    #@933
    const/4 v9, 0x4

    #@934
    aput-object v8, v7, v9

    #@936
    invoke-static/range {v90 .. v91}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@939
    move-result-object v8

    #@93a
    const/4 v9, 0x5

    #@93b
    aput-object v8, v7, v9

    #@93d
    .line 3217
    invoke-static/range {v176 .. v177}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@940
    move-result-object v8

    #@941
    const/4 v9, 0x6

    #@942
    aput-object v8, v7, v9

    #@944
    invoke-static/range {v178 .. v179}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@947
    move-result-object v8

    #@948
    const/4 v9, 0x7

    #@949
    aput-object v8, v7, v9

    #@94b
    .line 3218
    invoke-static/range {v82 .. v83}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@94e
    move-result-object v8

    #@94f
    const/16 v9, 0x8

    #@951
    aput-object v8, v7, v9

    #@953
    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@956
    move-result-object v8

    #@957
    const/16 v9, 0x9

    #@959
    aput-object v8, v7, v9

    #@95b
    .line 3219
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@95e
    move-result-object v8

    #@95f
    const/16 v9, 0xa

    #@961
    aput-object v8, v7, v9

    #@963
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@966
    move-result-object v8

    #@967
    const/16 v9, 0xb

    #@969
    aput-object v8, v7, v9

    #@96b
    invoke-static/range {v100 .. v101}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@96e
    move-result-object v8

    #@96f
    const/16 v9, 0xc

    #@971
    aput-object v8, v7, v9

    #@973
    invoke-static/range {v194 .. v195}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@976
    move-result-object v8

    #@977
    const/16 v9, 0xd

    #@979
    aput-object v8, v7, v9

    #@97b
    .line 3214
    move-object/from16 v0, p2

    #@97d
    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@980
    .line 3223
    :cond_18
    const-string/jumbo v7, "mcd"

    #@983
    .line 3224
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@986
    move-result-object v8

    #@987
    move-object/from16 v4, p2

    #@989
    move/from16 v9, p3

    #@98b
    .line 3223
    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    #@98e
    .line 3227
    move-object/from16 v0, v150

    #@990
    move/from16 v1, p3

    #@992
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    #@995
    move-result-wide v60

    #@996
    .line 3228
    .local v60, "fullWifiLockOnTime":J
    move-object/from16 v0, v150

    #@998
    move/from16 v1, p3

    #@99a
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    #@99d
    move-result-wide v188

    #@99e
    .line 3229
    .local v188, "wifiScanTime":J
    move-object/from16 v0, v150

    #@9a0
    move/from16 v1, p3

    #@9a2
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    #@9a5
    move-result v186

    #@9a6
    .line 3230
    .local v186, "wifiScanCount":I
    move-object/from16 v0, v150

    #@9a8
    move/from16 v1, p3

    #@9aa
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    #@9ad
    move-result-wide v152

    #@9ae
    .line 3231
    .local v152, "uidWifiRunningTime":J
    const-wide/16 v8, 0x0

    #@9b0
    cmp-long v4, v60, v8

    #@9b2
    if-nez v4, :cond_19

    #@9b4
    const-wide/16 v8, 0x0

    #@9b6
    cmp-long v4, v188, v8

    #@9b8
    if-eqz v4, :cond_1d

    #@9ba
    .line 3233
    :cond_19
    :goto_15
    const-string/jumbo v4, "wfl"

    #@9bd
    const/4 v7, 0x7

    #@9be
    new-array v7, v7, [Ljava/lang/Object;

    #@9c0
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9c3
    move-result-object v8

    #@9c4
    const/4 v9, 0x0

    #@9c5
    aput-object v8, v7, v9

    #@9c7
    invoke-static/range {v188 .. v189}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9ca
    move-result-object v8

    #@9cb
    const/4 v9, 0x1

    #@9cc
    aput-object v8, v7, v9

    #@9ce
    .line 3234
    invoke-static/range {v152 .. v153}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9d1
    move-result-object v8

    #@9d2
    const/4 v9, 0x2

    #@9d3
    aput-object v8, v7, v9

    #@9d5
    invoke-static/range {v186 .. v186}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9d8
    move-result-object v8

    #@9d9
    const/4 v9, 0x3

    #@9da
    aput-object v8, v7, v9

    #@9dc
    .line 3235
    const/4 v8, 0x0

    #@9dd
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9e0
    move-result-object v8

    #@9e1
    const/4 v9, 0x4

    #@9e2
    aput-object v8, v7, v9

    #@9e4
    const/4 v8, 0x0

    #@9e5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9e8
    move-result-object v8

    #@9e9
    const/4 v9, 0x5

    #@9ea
    aput-object v8, v7, v9

    #@9ec
    const/4 v8, 0x0

    #@9ed
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9f0
    move-result-object v8

    #@9f1
    const/4 v9, 0x6

    #@9f2
    aput-object v8, v7, v9

    #@9f4
    .line 3233
    move-object/from16 v0, p2

    #@9f6
    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@9f9
    .line 3238
    :cond_1a
    const-string/jumbo v7, "wfcd"

    #@9fc
    .line 3239
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@9ff
    move-result-object v8

    #@a00
    move-object/from16 v4, p2

    #@a02
    move/from16 v9, p3

    #@a04
    .line 3238
    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    #@a07
    .line 3241
    const-string/jumbo v16, "blem"

    #@a0a
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    #@a0d
    move-result-object v17

    #@a0e
    move-object/from16 v13, p2

    #@a10
    move v14, v5

    #@a11
    move-object v15, v6

    #@a12
    move-wide/from16 v18, v10

    #@a14
    move/from16 v20, p3

    #@a16
    invoke-static/range {v13 .. v20}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    #@a19
    .line 3244
    const-string/jumbo v7, "ble"

    #@a1c
    .line 3245
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@a1f
    move-result-object v8

    #@a20
    move-object/from16 v4, p2

    #@a22
    move/from16 v9, p3

    #@a24
    .line 3244
    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    #@a27
    .line 3247
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    #@a2a
    move-result v4

    #@a2b
    if-eqz v4, :cond_1f

    #@a2d
    .line 3248
    const/4 v4, 0x4

    #@a2e
    new-array v0, v4, [Ljava/lang/Object;

    #@a30
    move-object/from16 v26, v0

    #@a32
    .line 3249
    const/16 v59, 0x0

    #@a34
    .line 3250
    .local v59, "hasData":Z
    const/16 v63, 0x0

    #@a36
    :goto_16
    const/4 v4, 0x4

    #@a37
    move/from16 v0, v63

    #@a39
    if-ge v0, v4, :cond_1e

    #@a3b
    .line 3251
    move-object/from16 v0, v150

    #@a3d
    move/from16 v1, v63

    #@a3f
    move/from16 v2, p3

    #@a41
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    #@a44
    move-result v158

    #@a45
    .line 3252
    .local v158, "val":I
    invoke-static/range {v158 .. v158}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a48
    move-result-object v4

    #@a49
    aput-object v4, v26, v63

    #@a4b
    .line 3253
    if-eqz v158, :cond_1b

    #@a4d
    const/16 v59, 0x1

    #@a4f
    .line 3250
    :cond_1b
    add-int/lit8 v63, v63, 0x1

    #@a51
    goto :goto_16

    #@a52
    .line 3210
    .end local v59    # "hasData":Z
    .end local v60    # "fullWifiLockOnTime":J
    .end local v152    # "uidWifiRunningTime":J
    .end local v158    # "val":I
    .end local v186    # "wifiScanCount":I
    .end local v188    # "wifiScanTime":J
    :cond_1c
    const-wide/16 v8, 0x0

    #@a54
    cmp-long v4, v170, v8

    #@a56
    if-gtz v4, :cond_17

    #@a58
    const-wide/16 v8, 0x0

    #@a5a
    cmp-long v4, v172, v8

    #@a5c
    if-gtz v4, :cond_17

    #@a5e
    .line 3211
    const-wide/16 v8, 0x0

    #@a60
    cmp-long v4, v88, v8

    #@a62
    if-gtz v4, :cond_17

    #@a64
    const-wide/16 v8, 0x0

    #@a66
    cmp-long v4, v90, v8

    #@a68
    if-gtz v4, :cond_17

    #@a6a
    const-wide/16 v8, 0x0

    #@a6c
    cmp-long v4, v176, v8

    #@a6e
    if-gtz v4, :cond_17

    #@a70
    .line 3212
    const-wide/16 v8, 0x0

    #@a72
    cmp-long v4, v178, v8

    #@a74
    if-gtz v4, :cond_17

    #@a76
    const-wide/16 v8, 0x0

    #@a78
    cmp-long v4, v82, v8

    #@a7a
    if-gtz v4, :cond_17

    #@a7c
    if-gtz v80, :cond_17

    #@a7e
    .line 3213
    const-wide/16 v8, 0x0

    #@a80
    cmp-long v4, v30, v8

    #@a82
    if-gtz v4, :cond_17

    #@a84
    const-wide/16 v8, 0x0

    #@a86
    cmp-long v4, v32, v8

    #@a88
    if-gtz v4, :cond_17

    #@a8a
    const-wide/16 v8, 0x0

    #@a8c
    cmp-long v4, v100, v8

    #@a8e
    if-gtz v4, :cond_17

    #@a90
    const-wide/16 v8, 0x0

    #@a92
    cmp-long v4, v194, v8

    #@a94
    if-lez v4, :cond_18

    #@a96
    goto/16 :goto_14

    #@a98
    .line 3231
    .restart local v60    # "fullWifiLockOnTime":J
    .restart local v152    # "uidWifiRunningTime":J
    .restart local v186    # "wifiScanCount":I
    .restart local v188    # "wifiScanTime":J
    :cond_1d
    if-nez v186, :cond_19

    #@a9a
    .line 3232
    const-wide/16 v8, 0x0

    #@a9c
    cmp-long v4, v152, v8

    #@a9e
    if-eqz v4, :cond_1a

    #@aa0
    goto/16 :goto_15

    #@aa2
    .line 3255
    .restart local v59    # "hasData":Z
    :cond_1e
    if-eqz v59, :cond_1f

    #@aa4
    .line 3256
    const-string/jumbo v4, "ua"

    #@aa7
    move-object/from16 v0, p2

    #@aa9
    move-object/from16 v1, v26

    #@aab
    invoke-static {v0, v5, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@aae
    .line 3260
    .end local v59    # "hasData":Z
    :cond_1f
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    #@ab1
    move-result-object v159

    #@ab2
    .line 3261
    .restart local v159    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual/range {v159 .. v159}, Landroid/util/ArrayMap;->size()I

    #@ab5
    move-result v4

    #@ab6
    add-int/lit8 v74, v4, -0x1

    #@ab8
    .restart local v74    # "iw":I
    :goto_17
    if-ltz v74, :cond_22

    #@aba
    .line 3262
    move-object/from16 v0, v159

    #@abc
    move/from16 v1, v74

    #@abe
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@ac1
    move-result-object v187

    #@ac2
    check-cast v187, Landroid/os/BatteryStats$Uid$Wakelock;

    #@ac4
    .line 3263
    .restart local v187    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const-string/jumbo v14, ""

    #@ac7
    .line 3264
    .local v14, "linePrefix":Ljava/lang/String;
    const/4 v4, 0x0

    #@ac8
    move-object/from16 v0, v117

    #@aca
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    #@acd
    .line 3265
    const/4 v4, 0x1

    #@ace
    move-object/from16 v0, v187

    #@ad0
    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@ad3
    move-result-object v9

    #@ad4
    .line 3266
    const-string/jumbo v12, "f"

    #@ad7
    move-object/from16 v8, v117

    #@ad9
    move/from16 v13, p3

    #@adb
    .line 3265
    invoke-static/range {v8 .. v14}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@ade
    move-result-object v14

    #@adf
    .line 3267
    const/4 v4, 0x0

    #@ae0
    move-object/from16 v0, v187

    #@ae2
    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@ae5
    move-result-object v9

    #@ae6
    .line 3268
    const-string/jumbo v12, "p"

    #@ae9
    move-object/from16 v8, v117

    #@aeb
    move/from16 v13, p3

    #@aed
    .line 3267
    invoke-static/range {v8 .. v14}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@af0
    move-result-object v14

    #@af1
    .line 3269
    const/4 v4, 0x2

    #@af2
    move-object/from16 v0, v187

    #@af4
    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@af7
    move-result-object v9

    #@af8
    .line 3270
    const-string/jumbo v12, "w"

    #@afb
    move-object/from16 v8, v117

    #@afd
    move/from16 v13, p3

    #@aff
    .line 3269
    invoke-static/range {v8 .. v14}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@b02
    move-result-object v14

    #@b03
    .line 3273
    invoke-virtual/range {v117 .. v117}, Ljava/lang/StringBuilder;->length()I

    #@b06
    move-result v4

    #@b07
    if-lez v4, :cond_21

    #@b09
    .line 3274
    move-object/from16 v0, v159

    #@b0b
    move/from16 v1, v74

    #@b0d
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@b10
    move-result-object v81

    #@b11
    check-cast v81, Ljava/lang/String;

    #@b13
    .line 3275
    .local v81, "name":Ljava/lang/String;
    const/16 v4, 0x2c

    #@b15
    move-object/from16 v0, v81

    #@b17
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    #@b1a
    move-result v4

    #@b1b
    if-ltz v4, :cond_20

    #@b1d
    .line 3276
    const/16 v4, 0x2c

    #@b1f
    const/16 v7, 0x5f

    #@b21
    move-object/from16 v0, v81

    #@b23
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@b26
    move-result-object v81

    #@b27
    .line 3278
    :cond_20
    const-string/jumbo v4, "wl"

    #@b2a
    const/4 v7, 0x2

    #@b2b
    new-array v7, v7, [Ljava/lang/Object;

    #@b2d
    const/4 v8, 0x0

    #@b2e
    aput-object v81, v7, v8

    #@b30
    invoke-virtual/range {v117 .. v117}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b33
    move-result-object v8

    #@b34
    const/4 v9, 0x1

    #@b35
    aput-object v8, v7, v9

    #@b37
    move-object/from16 v0, p2

    #@b39
    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@b3c
    .line 3261
    .end local v81    # "name":Ljava/lang/String;
    :cond_21
    add-int/lit8 v74, v74, -0x1

    #@b3e
    goto/16 :goto_17

    #@b40
    .line 3282
    .end local v14    # "linePrefix":Ljava/lang/String;
    .end local v187    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_22
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    #@b43
    move-result-object v132

    #@b44
    .line 3283
    .local v132, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v132 .. v132}, Landroid/util/ArrayMap;->size()I

    #@b47
    move-result v4

    #@b48
    add-int/lit8 v72, v4, -0x1

    #@b4a
    .local v72, "isy":I
    :goto_18
    if-ltz v72, :cond_24

    #@b4c
    .line 3284
    move-object/from16 v0, v132

    #@b4e
    move/from16 v1, v72

    #@b50
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@b53
    move-result-object v133

    #@b54
    check-cast v133, Landroid/os/BatteryStats$Timer;

    #@b56
    .line 3286
    .local v133, "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v133

    #@b58
    move/from16 v1, p3

    #@b5a
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@b5d
    move-result-wide v8

    #@b5e
    const-wide/16 v12, 0x1f4

    #@b60
    add-long/2addr v8, v12

    #@b61
    const-wide/16 v12, 0x3e8

    #@b63
    div-long v144, v8, v12

    #@b65
    .line 3287
    .local v144, "totalTime":J
    move-object/from16 v0, v133

    #@b67
    move/from16 v1, p3

    #@b69
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@b6c
    move-result v39

    #@b6d
    .line 3288
    .restart local v39    # "count":I
    const-wide/16 v8, 0x0

    #@b6f
    cmp-long v4, v144, v8

    #@b71
    if-eqz v4, :cond_23

    #@b73
    .line 3289
    const-string/jumbo v4, "sy"

    #@b76
    const/4 v7, 0x3

    #@b77
    new-array v7, v7, [Ljava/lang/Object;

    #@b79
    move-object/from16 v0, v132

    #@b7b
    move/from16 v1, v72

    #@b7d
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@b80
    move-result-object v8

    #@b81
    const/4 v9, 0x0

    #@b82
    aput-object v8, v7, v9

    #@b84
    invoke-static/range {v144 .. v145}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b87
    move-result-object v8

    #@b88
    const/4 v9, 0x1

    #@b89
    aput-object v8, v7, v9

    #@b8b
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b8e
    move-result-object v8

    #@b8f
    const/4 v9, 0x2

    #@b90
    aput-object v8, v7, v9

    #@b92
    move-object/from16 v0, p2

    #@b94
    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@b97
    .line 3283
    :cond_23
    add-int/lit8 v72, v72, -0x1

    #@b99
    goto :goto_18

    #@b9a
    .line 3293
    .end local v39    # "count":I
    .end local v133    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v144    # "totalTime":J
    :cond_24
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    #@b9d
    move-result-object v76

    #@b9e
    .line 3294
    .local v76, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v76 .. v76}, Landroid/util/ArrayMap;->size()I

    #@ba1
    move-result v4

    #@ba2
    add-int/lit8 v64, v4, -0x1

    #@ba4
    .local v64, "ij":I
    :goto_19
    if-ltz v64, :cond_26

    #@ba6
    .line 3295
    move-object/from16 v0, v76

    #@ba8
    move/from16 v1, v64

    #@baa
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@bad
    move-result-object v133

    #@bae
    check-cast v133, Landroid/os/BatteryStats$Timer;

    #@bb0
    .line 3297
    .restart local v133    # "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v133

    #@bb2
    move/from16 v1, p3

    #@bb4
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@bb7
    move-result-wide v8

    #@bb8
    const-wide/16 v12, 0x1f4

    #@bba
    add-long/2addr v8, v12

    #@bbb
    const-wide/16 v12, 0x3e8

    #@bbd
    div-long v144, v8, v12

    #@bbf
    .line 3298
    .restart local v144    # "totalTime":J
    move-object/from16 v0, v133

    #@bc1
    move/from16 v1, p3

    #@bc3
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@bc6
    move-result v39

    #@bc7
    .line 3299
    .restart local v39    # "count":I
    const-wide/16 v8, 0x0

    #@bc9
    cmp-long v4, v144, v8

    #@bcb
    if-eqz v4, :cond_25

    #@bcd
    .line 3300
    const-string/jumbo v4, "jb"

    #@bd0
    const/4 v7, 0x3

    #@bd1
    new-array v7, v7, [Ljava/lang/Object;

    #@bd3
    move-object/from16 v0, v76

    #@bd5
    move/from16 v1, v64

    #@bd7
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@bda
    move-result-object v8

    #@bdb
    const/4 v9, 0x0

    #@bdc
    aput-object v8, v7, v9

    #@bde
    invoke-static/range {v144 .. v145}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@be1
    move-result-object v8

    #@be2
    const/4 v9, 0x1

    #@be3
    aput-object v8, v7, v9

    #@be5
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@be8
    move-result-object v8

    #@be9
    const/4 v9, 0x2

    #@bea
    aput-object v8, v7, v9

    #@bec
    move-object/from16 v0, p2

    #@bee
    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@bf1
    .line 3294
    :cond_25
    add-int/lit8 v64, v64, -0x1

    #@bf3
    goto :goto_19

    #@bf4
    .line 3304
    .end local v39    # "count":I
    .end local v133    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v144    # "totalTime":J
    :cond_26
    const-string/jumbo v18, "fla"

    #@bf7
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@bfa
    move-result-object v19

    #@bfb
    move-object/from16 v15, p2

    #@bfd
    move/from16 v16, v5

    #@bff
    move-object/from16 v17, v6

    #@c01
    move-wide/from16 v20, v10

    #@c03
    move/from16 v22, p3

    #@c05
    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    #@c08
    .line 3306
    const-string/jumbo v18, "cam"

    #@c0b
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@c0e
    move-result-object v19

    #@c0f
    move-object/from16 v15, p2

    #@c11
    move/from16 v16, v5

    #@c13
    move-object/from16 v17, v6

    #@c15
    move-wide/from16 v20, v10

    #@c17
    move/from16 v22, p3

    #@c19
    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    #@c1c
    .line 3308
    const-string/jumbo v18, "vid"

    #@c1f
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@c22
    move-result-object v19

    #@c23
    move-object/from16 v15, p2

    #@c25
    move/from16 v16, v5

    #@c27
    move-object/from16 v17, v6

    #@c29
    move-wide/from16 v20, v10

    #@c2b
    move/from16 v22, p3

    #@c2d
    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    #@c30
    .line 3310
    const-string/jumbo v18, "aud"

    #@c33
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@c36
    move-result-object v19

    #@c37
    move-object/from16 v15, p2

    #@c39
    move/from16 v16, v5

    #@c3b
    move-object/from16 v17, v6

    #@c3d
    move-wide/from16 v20, v10

    #@c3f
    move/from16 v22, p3

    #@c41
    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    #@c44
    .line 3313
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    #@c47
    move-result-object v124

    #@c48
    .line 3314
    .local v124, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v124 .. v124}, Landroid/util/SparseArray;->size()I

    #@c4b
    move-result v23

    #@c4c
    .line 3315
    .local v23, "NSE":I
    const/16 v70, 0x0

    #@c4e
    .local v70, "ise":I
    :goto_1a
    move/from16 v0, v70

    #@c50
    move/from16 v1, v23

    #@c52
    if-ge v0, v1, :cond_28

    #@c54
    .line 3316
    move-object/from16 v0, v124

    #@c56
    move/from16 v1, v70

    #@c58
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@c5b
    move-result-object v122

    #@c5c
    check-cast v122, Landroid/os/BatteryStats$Uid$Sensor;

    #@c5e
    .line 3317
    .local v122, "se":Landroid/os/BatteryStats$Uid$Sensor;
    move-object/from16 v0, v124

    #@c60
    move/from16 v1, v70

    #@c62
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@c65
    move-result v123

    #@c66
    .line 3318
    .local v123, "sensorNumber":I
    invoke-virtual/range {v122 .. v122}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    #@c69
    move-result-object v133

    #@c6a
    .line 3319
    .restart local v133    # "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v133, :cond_27

    #@c6c
    .line 3321
    move-object/from16 v0, v133

    #@c6e
    move/from16 v1, p3

    #@c70
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@c73
    move-result-wide v8

    #@c74
    const-wide/16 v12, 0x1f4

    #@c76
    add-long/2addr v8, v12

    #@c77
    .line 3322
    const-wide/16 v12, 0x3e8

    #@c79
    .line 3321
    div-long v144, v8, v12

    #@c7b
    .line 3323
    .restart local v144    # "totalTime":J
    move-object/from16 v0, v133

    #@c7d
    move/from16 v1, p3

    #@c7f
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@c82
    move-result v39

    #@c83
    .line 3324
    .restart local v39    # "count":I
    const-wide/16 v8, 0x0

    #@c85
    cmp-long v4, v144, v8

    #@c87
    if-eqz v4, :cond_27

    #@c89
    .line 3325
    const-string/jumbo v4, "sr"

    #@c8c
    const/4 v7, 0x3

    #@c8d
    new-array v7, v7, [Ljava/lang/Object;

    #@c8f
    invoke-static/range {v123 .. v123}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c92
    move-result-object v8

    #@c93
    const/4 v9, 0x0

    #@c94
    aput-object v8, v7, v9

    #@c96
    invoke-static/range {v144 .. v145}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@c99
    move-result-object v8

    #@c9a
    const/4 v9, 0x1

    #@c9b
    aput-object v8, v7, v9

    #@c9d
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ca0
    move-result-object v8

    #@ca1
    const/4 v9, 0x2

    #@ca2
    aput-object v8, v7, v9

    #@ca4
    move-object/from16 v0, p2

    #@ca6
    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@ca9
    .line 3315
    .end local v39    # "count":I
    .end local v144    # "totalTime":J
    :cond_27
    add-int/lit8 v70, v70, 0x1

    #@cab
    goto :goto_1a

    #@cac
    .line 3330
    .end local v122    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v123    # "sensorNumber":I
    .end local v133    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_28
    const-string/jumbo v18, "vib"

    #@caf
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    #@cb2
    move-result-object v19

    #@cb3
    move-object/from16 v15, p2

    #@cb5
    move/from16 v16, v5

    #@cb7
    move-object/from16 v17, v6

    #@cb9
    move-wide/from16 v20, v10

    #@cbb
    move/from16 v22, p3

    #@cbd
    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    #@cc0
    .line 3333
    const-string/jumbo v18, "fg"

    #@cc3
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    #@cc6
    move-result-object v19

    #@cc7
    move-object/from16 v15, p2

    #@cc9
    move/from16 v16, v5

    #@ccb
    move-object/from16 v17, v6

    #@ccd
    move-wide/from16 v20, v10

    #@ccf
    move/from16 v22, p3

    #@cd1
    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    #@cd4
    .line 3336
    const/4 v4, 0x6

    #@cd5
    new-array v0, v4, [Ljava/lang/Object;

    #@cd7
    move-object/from16 v131, v0

    #@cd9
    .line 3337
    .local v131, "stateTimes":[Ljava/lang/Object;
    const-wide/16 v142, 0x0

    #@cdb
    .line 3338
    .local v142, "totalStateTime":J
    const/16 v69, 0x0

    #@cdd
    .local v69, "ips":I
    :goto_1b
    const/4 v4, 0x6

    #@cde
    move/from16 v0, v69

    #@ce0
    if-ge v0, v4, :cond_29

    #@ce2
    .line 3339
    move-object/from16 v0, v150

    #@ce4
    move/from16 v1, v69

    #@ce6
    move/from16 v2, p3

    #@ce8
    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    #@ceb
    move-result-wide v138

    #@cec
    .line 3340
    .local v138, "time":J
    add-long v142, v142, v138

    #@cee
    .line 3341
    const-wide/16 v8, 0x1f4

    #@cf0
    add-long v8, v8, v138

    #@cf2
    const-wide/16 v12, 0x3e8

    #@cf4
    div-long/2addr v8, v12

    #@cf5
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@cf8
    move-result-object v4

    #@cf9
    aput-object v4, v131, v69

    #@cfb
    .line 3338
    add-int/lit8 v69, v69, 0x1

    #@cfd
    goto :goto_1b

    #@cfe
    .line 3343
    .end local v138    # "time":J
    :cond_29
    const-wide/16 v8, 0x0

    #@d00
    cmp-long v4, v142, v8

    #@d02
    if-lez v4, :cond_2a

    #@d04
    .line 3344
    const-string/jumbo v4, "st"

    #@d07
    move-object/from16 v0, p2

    #@d09
    move-object/from16 v1, v131

    #@d0b
    invoke-static {v0, v5, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@d0e
    .line 3347
    :cond_2a
    move-object/from16 v0, v150

    #@d10
    move/from16 v1, p3

    #@d12
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    #@d15
    move-result-wide v154

    #@d16
    .line 3348
    .local v154, "userCpuTimeUs":J
    move-object/from16 v0, v150

    #@d18
    move/from16 v1, p3

    #@d1a
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    #@d1d
    move-result-wide v134

    #@d1e
    .line 3349
    .local v134, "systemCpuTimeUs":J
    move-object/from16 v0, v150

    #@d20
    move/from16 v1, p3

    #@d22
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getCpuPowerMaUs(I)J

    #@d25
    move-result-wide v110

    #@d26
    .line 3350
    .local v110, "powerCpuMaUs":J
    const-wide/16 v8, 0x0

    #@d28
    cmp-long v4, v154, v8

    #@d2a
    if-gtz v4, :cond_2b

    #@d2c
    const-wide/16 v8, 0x0

    #@d2e
    cmp-long v4, v134, v8

    #@d30
    if-lez v4, :cond_2f

    #@d32
    .line 3351
    :cond_2b
    :goto_1c
    const-string/jumbo v4, "cpu"

    #@d35
    const/4 v7, 0x3

    #@d36
    new-array v7, v7, [Ljava/lang/Object;

    #@d38
    const-wide/16 v8, 0x3e8

    #@d3a
    div-long v8, v154, v8

    #@d3c
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d3f
    move-result-object v8

    #@d40
    const/4 v9, 0x0

    #@d41
    aput-object v8, v7, v9

    #@d43
    const-wide/16 v8, 0x3e8

    #@d45
    div-long v8, v134, v8

    #@d47
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d4a
    move-result-object v8

    #@d4b
    const/4 v9, 0x1

    #@d4c
    aput-object v8, v7, v9

    #@d4e
    .line 3352
    const-wide/16 v8, 0x3e8

    #@d50
    div-long v8, v110, v8

    #@d52
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d55
    move-result-object v8

    #@d56
    const/4 v9, 0x2

    #@d57
    aput-object v8, v7, v9

    #@d59
    .line 3351
    move-object/from16 v0, p2

    #@d5b
    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@d5e
    .line 3356
    :cond_2c
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    #@d61
    move-result-object v114

    #@d62
    .line 3357
    .local v114, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual/range {v114 .. v114}, Landroid/util/ArrayMap;->size()I

    #@d65
    move-result v4

    #@d66
    add-int/lit8 v68, v4, -0x1

    #@d68
    .local v68, "ipr":I
    :goto_1d
    if-ltz v68, :cond_31

    #@d6a
    .line 3358
    move-object/from16 v0, v114

    #@d6c
    move/from16 v1, v68

    #@d6e
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@d71
    move-result-object v116

    #@d72
    check-cast v116, Landroid/os/BatteryStats$Uid$Proc;

    #@d74
    .line 3360
    .local v116, "ps":Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v116

    #@d76
    move/from16 v1, p3

    #@d78
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    #@d7b
    move-result-wide v156

    #@d7c
    .line 3361
    .local v156, "userMillis":J
    move-object/from16 v0, v116

    #@d7e
    move/from16 v1, p3

    #@d80
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    #@d83
    move-result-wide v136

    #@d84
    .line 3362
    .local v136, "systemMillis":J
    move-object/from16 v0, v116

    #@d86
    move/from16 v1, p3

    #@d88
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    #@d8b
    move-result-wide v54

    #@d8c
    .line 3363
    .local v54, "foregroundMillis":J
    move-object/from16 v0, v116

    #@d8e
    move/from16 v1, p3

    #@d90
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    #@d93
    move-result v130

    #@d94
    .line 3364
    .local v130, "starts":I
    move-object/from16 v0, v116

    #@d96
    move/from16 v1, p3

    #@d98
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    #@d9b
    move-result v103

    #@d9c
    .line 3365
    .local v103, "numCrashes":I
    move-object/from16 v0, v116

    #@d9e
    move/from16 v1, p3

    #@da0
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    #@da3
    move-result v102

    #@da4
    .line 3367
    .local v102, "numAnrs":I
    const-wide/16 v8, 0x0

    #@da6
    cmp-long v4, v156, v8

    #@da8
    if-nez v4, :cond_2d

    #@daa
    const-wide/16 v8, 0x0

    #@dac
    cmp-long v4, v136, v8

    #@dae
    if-eqz v4, :cond_30

    #@db0
    .line 3369
    :cond_2d
    :goto_1e
    const-string/jumbo v4, "pr"

    #@db3
    const/4 v7, 0x7

    #@db4
    new-array v7, v7, [Ljava/lang/Object;

    #@db6
    move-object/from16 v0, v114

    #@db8
    move/from16 v1, v68

    #@dba
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@dbd
    move-result-object v8

    #@dbe
    const/4 v9, 0x0

    #@dbf
    aput-object v8, v7, v9

    #@dc1
    invoke-static/range {v156 .. v157}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@dc4
    move-result-object v8

    #@dc5
    const/4 v9, 0x1

    #@dc6
    aput-object v8, v7, v9

    #@dc8
    .line 3370
    invoke-static/range {v136 .. v137}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@dcb
    move-result-object v8

    #@dcc
    const/4 v9, 0x2

    #@dcd
    aput-object v8, v7, v9

    #@dcf
    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@dd2
    move-result-object v8

    #@dd3
    const/4 v9, 0x3

    #@dd4
    aput-object v8, v7, v9

    #@dd6
    invoke-static/range {v130 .. v130}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@dd9
    move-result-object v8

    #@dda
    const/4 v9, 0x4

    #@ddb
    aput-object v8, v7, v9

    #@ddd
    invoke-static/range {v102 .. v102}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@de0
    move-result-object v8

    #@de1
    const/4 v9, 0x5

    #@de2
    aput-object v8, v7, v9

    #@de4
    invoke-static/range {v103 .. v103}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@de7
    move-result-object v8

    #@de8
    const/4 v9, 0x6

    #@de9
    aput-object v8, v7, v9

    #@deb
    .line 3369
    move-object/from16 v0, p2

    #@ded
    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@df0
    .line 3357
    :cond_2e
    add-int/lit8 v68, v68, -0x1

    #@df2
    goto/16 :goto_1d

    #@df4
    .line 3350
    .end local v54    # "foregroundMillis":J
    .end local v68    # "ipr":I
    .end local v102    # "numAnrs":I
    .end local v103    # "numCrashes":I
    .end local v114    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v116    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v130    # "starts":I
    .end local v136    # "systemMillis":J
    .end local v156    # "userMillis":J
    :cond_2f
    const-wide/16 v8, 0x0

    #@df6
    cmp-long v4, v110, v8

    #@df8
    if-lez v4, :cond_2c

    #@dfa
    goto/16 :goto_1c

    #@dfc
    .line 3367
    .restart local v54    # "foregroundMillis":J
    .restart local v68    # "ipr":I
    .restart local v102    # "numAnrs":I
    .restart local v103    # "numCrashes":I
    .restart local v114    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v116    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .restart local v130    # "starts":I
    .restart local v136    # "systemMillis":J
    .restart local v156    # "userMillis":J
    :cond_30
    const-wide/16 v8, 0x0

    #@dfe
    cmp-long v4, v54, v8

    #@e00
    if-nez v4, :cond_2d

    #@e02
    .line 3368
    if-nez v130, :cond_2d

    #@e04
    if-nez v102, :cond_2d

    #@e06
    if-eqz v103, :cond_2e

    #@e08
    goto :goto_1e

    #@e09
    .line 3375
    .end local v54    # "foregroundMillis":J
    .end local v102    # "numAnrs":I
    .end local v103    # "numCrashes":I
    .end local v116    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v130    # "starts":I
    .end local v136    # "systemMillis":J
    .end local v156    # "userMillis":J
    :cond_31
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    #@e0c
    move-result-object v104

    #@e0d
    .line 3376
    .local v104, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual/range {v104 .. v104}, Landroid/util/ArrayMap;->size()I

    #@e10
    move-result v4

    #@e11
    add-int/lit8 v65, v4, -0x1

    #@e13
    .local v65, "ipkg":I
    :goto_1f
    if-ltz v65, :cond_15

    #@e15
    .line 3377
    move-object/from16 v0, v104

    #@e17
    move/from16 v1, v65

    #@e19
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@e1c
    move-result-object v115

    #@e1d
    check-cast v115, Landroid/os/BatteryStats$Uid$Pkg;

    #@e1f
    .line 3378
    .local v115, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    const/16 v161, 0x0

    #@e21
    .line 3379
    .local v161, "wakeups":I
    invoke-virtual/range {v115 .. v115}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    #@e24
    move-result-object v25

    #@e25
    .line 3380
    .local v25, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    #@e28
    move-result v4

    #@e29
    add-int/lit8 v75, v4, -0x1

    #@e2b
    .local v75, "iwa":I
    :goto_20
    if-ltz v75, :cond_32

    #@e2d
    .line 3381
    move-object/from16 v0, v25

    #@e2f
    move/from16 v1, v75

    #@e31
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@e34
    move-result-object v4

    #@e35
    check-cast v4, Landroid/os/BatteryStats$Counter;

    #@e37
    move/from16 v0, p3

    #@e39
    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    #@e3c
    move-result v39

    #@e3d
    .line 3382
    .restart local v39    # "count":I
    add-int v161, v161, v39

    #@e3f
    .line 3383
    move-object/from16 v0, v25

    #@e41
    move/from16 v1, v75

    #@e43
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@e46
    move-result-object v4

    #@e47
    check-cast v4, Ljava/lang/String;

    #@e49
    const/16 v7, 0x2c

    #@e4b
    const/16 v8, 0x5f

    #@e4d
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@e50
    move-result-object v81

    #@e51
    .line 3384
    .restart local v81    # "name":Ljava/lang/String;
    const-string/jumbo v4, "wua"

    #@e54
    const/4 v7, 0x2

    #@e55
    new-array v7, v7, [Ljava/lang/Object;

    #@e57
    const/4 v8, 0x0

    #@e58
    aput-object v81, v7, v8

    #@e5a
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e5d
    move-result-object v8

    #@e5e
    const/4 v9, 0x1

    #@e5f
    aput-object v8, v7, v9

    #@e61
    move-object/from16 v0, p2

    #@e63
    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@e66
    .line 3380
    add-int/lit8 v75, v75, -0x1

    #@e68
    goto :goto_20

    #@e69
    .line 3386
    .end local v39    # "count":I
    .end local v81    # "name":Ljava/lang/String;
    :cond_32
    invoke-virtual/range {v115 .. v115}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    #@e6c
    move-result-object v125

    #@e6d
    .line 3387
    .local v125, "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual/range {v125 .. v125}, Landroid/util/ArrayMap;->size()I

    #@e70
    move-result v4

    #@e71
    add-int/lit8 v71, v4, -0x1

    #@e73
    .local v71, "isvc":I
    :goto_21
    if-ltz v71, :cond_36

    #@e75
    .line 3388
    move-object/from16 v0, v125

    #@e77
    move/from16 v1, v71

    #@e79
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@e7c
    move-result-object v127

    #@e7d
    check-cast v127, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    #@e7f
    .line 3389
    .local v127, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move-object/from16 v0, v127

    #@e81
    move-wide/from16 v1, v28

    #@e83
    move/from16 v3, p3

    #@e85
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    #@e88
    move-result-wide v128

    #@e89
    .line 3390
    .local v128, "startTime":J
    move-object/from16 v0, v127

    #@e8b
    move/from16 v1, p3

    #@e8d
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    #@e90
    move-result v130

    #@e91
    .line 3391
    .restart local v130    # "starts":I
    move-object/from16 v0, v127

    #@e93
    move/from16 v1, p3

    #@e95
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    #@e98
    move-result v79

    #@e99
    .line 3392
    .local v79, "launches":I
    const-wide/16 v8, 0x0

    #@e9b
    cmp-long v4, v128, v8

    #@e9d
    if-nez v4, :cond_33

    #@e9f
    if-eqz v130, :cond_35

    #@ea1
    .line 3393
    :cond_33
    :goto_22
    const-string/jumbo v4, "apk"

    #@ea4
    const/4 v7, 0x6

    #@ea5
    new-array v7, v7, [Ljava/lang/Object;

    #@ea7
    .line 3394
    invoke-static/range {v161 .. v161}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@eaa
    move-result-object v8

    #@eab
    const/4 v9, 0x0

    #@eac
    aput-object v8, v7, v9

    #@eae
    .line 3395
    move-object/from16 v0, v104

    #@eb0
    move/from16 v1, v65

    #@eb2
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@eb5
    move-result-object v8

    #@eb6
    const/4 v9, 0x1

    #@eb7
    aput-object v8, v7, v9

    #@eb9
    .line 3396
    move-object/from16 v0, v125

    #@ebb
    move/from16 v1, v71

    #@ebd
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@ec0
    move-result-object v8

    #@ec1
    const/4 v9, 0x2

    #@ec2
    aput-object v8, v7, v9

    #@ec4
    .line 3397
    const-wide/16 v8, 0x3e8

    #@ec6
    div-long v8, v128, v8

    #@ec8
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@ecb
    move-result-object v8

    #@ecc
    const/4 v9, 0x3

    #@ecd
    aput-object v8, v7, v9

    #@ecf
    .line 3398
    invoke-static/range {v130 .. v130}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ed2
    move-result-object v8

    #@ed3
    const/4 v9, 0x4

    #@ed4
    aput-object v8, v7, v9

    #@ed6
    .line 3399
    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ed9
    move-result-object v8

    #@eda
    const/4 v9, 0x5

    #@edb
    aput-object v8, v7, v9

    #@edd
    .line 3393
    move-object/from16 v0, p2

    #@edf
    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@ee2
    .line 3387
    :cond_34
    add-int/lit8 v71, v71, -0x1

    #@ee4
    goto :goto_21

    #@ee5
    .line 3392
    :cond_35
    if-eqz v79, :cond_34

    #@ee7
    goto :goto_22

    #@ee8
    .line 3376
    .end local v79    # "launches":I
    .end local v127    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v128    # "startTime":J
    .end local v130    # "starts":I
    :cond_36
    add-int/lit8 v65, v65, -0x1

    #@eea
    goto/16 :goto_1f

    #@eec
    .line 2901
    .end local v5    # "uid":I
    .end local v23    # "NSE":I
    .end local v25    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v30    # "btBytesRx":J
    .end local v32    # "btBytesTx":J
    .end local v60    # "fullWifiLockOnTime":J
    .end local v64    # "ij":I
    .end local v65    # "ipkg":I
    .end local v68    # "ipr":I
    .end local v69    # "ips":I
    .end local v70    # "ise":I
    .end local v71    # "isvc":I
    .end local v72    # "isy":I
    .end local v74    # "iw":I
    .end local v75    # "iwa":I
    .end local v76    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v80    # "mobileActiveCount":I
    .end local v82    # "mobileActiveTime":J
    .end local v84    # "mobileBytesRx":J
    .end local v86    # "mobileBytesTx":J
    .end local v88    # "mobilePacketsRx":J
    .end local v90    # "mobilePacketsTx":J
    .end local v100    # "mobileWakeup":J
    .end local v104    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v110    # "powerCpuMaUs":J
    .end local v114    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v115    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v124    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v125    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v131    # "stateTimes":[Ljava/lang/Object;
    .end local v132    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v134    # "systemCpuTimeUs":J
    .end local v142    # "totalStateTime":J
    .end local v150    # "u":Landroid/os/BatteryStats$Uid;
    .end local v152    # "uidWifiRunningTime":J
    .end local v154    # "userCpuTimeUs":J
    .end local v159    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v161    # "wakeups":I
    .end local v170    # "wifiBytesRx":J
    .end local v172    # "wifiBytesTx":J
    .end local v176    # "wifiPacketsRx":J
    .end local v178    # "wifiPacketsTx":J
    .end local v186    # "wifiScanCount":I
    .end local v188    # "wifiScanTime":J
    .end local v194    # "wifiWakeup":J
    :cond_37
    return-void

    #@eed
    .line 3141
    nop

    #@eee
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_b
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_2
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_3
    .end packed-switch
.end method

.method public dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p4, "flags"    # I
    .param p5, "histStart"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 5531
    .local p3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    #@3
    .line 5533
    const-string/jumbo v2, "i"

    #@6
    const-string/jumbo v3, "vers"

    #@9
    const/4 v4, 0x4

    #@a
    new-array v4, v4, [Ljava/lang/Object;

    #@c
    .line 5534
    const-string/jumbo v5, "19"

    #@f
    const/4 v6, 0x0

    #@10
    aput-object v5, v4, v6

    #@12
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    #@15
    move-result v5

    #@16
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v5

    #@1a
    const/4 v6, 0x1

    #@1b
    aput-object v5, v4, v6

    #@1d
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    const/4 v6, 0x2

    #@22
    aput-object v5, v4, v6

    #@24
    .line 5535
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    const/4 v6, 0x3

    #@29
    aput-object v5, v4, v6

    #@2b
    .line 5533
    const/4 v5, 0x0

    #@2c
    move-object/from16 v0, p2

    #@2e
    invoke-static {v0, v5, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@31
    .line 5537
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryBaseTime()J

    #@34
    move-result-wide v2

    #@35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@38
    move-result-wide v4

    #@39
    add-long v16, v2, v4

    #@3b
    .line 5539
    .local v16, "now":J
    and-int/lit8 v2, p4, 0xe

    #@3d
    if-eqz v2, :cond_1

    #@3f
    const/4 v11, 0x1

    #@40
    .line 5542
    .local v11, "filtering":Z
    :goto_0
    and-int/lit8 v2, p4, 0x10

    #@42
    if-nez v2, :cond_0

    #@44
    and-int/lit8 v2, p4, 0x8

    #@46
    if-eqz v2, :cond_3

    #@48
    .line 5543
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    #@4b
    move-result v2

    #@4c
    if-eqz v2, :cond_3

    #@4e
    .line 5545
    const/4 v12, 0x0

    #@4f
    .local v12, "i":I
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    #@52
    move-result v2

    #@53
    if-ge v12, v2, :cond_2

    #@55
    .line 5546
    const/16 v2, 0x9

    #@57
    move-object/from16 v0, p2

    #@59
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    #@5c
    const/16 v2, 0x2c

    #@5e
    move-object/from16 v0, p2

    #@60
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    #@63
    .line 5547
    const-string/jumbo v2, "hsp"

    #@66
    move-object/from16 v0, p2

    #@68
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6b
    const/16 v2, 0x2c

    #@6d
    move-object/from16 v0, p2

    #@6f
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    #@72
    .line 5548
    move-object/from16 v0, p2

    #@74
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    #@77
    .line 5549
    const-string/jumbo v2, ","

    #@7a
    move-object/from16 v0, p2

    #@7c
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7f
    .line 5550
    move-object/from16 v0, p0

    #@81
    invoke-virtual {v0, v12}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    #@84
    move-result v2

    #@85
    move-object/from16 v0, p2

    #@87
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    #@8a
    .line 5551
    const-string/jumbo v2, ",\""

    #@8d
    move-object/from16 v0, p2

    #@8f
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@92
    .line 5552
    move-object/from16 v0, p0

    #@94
    invoke-virtual {v0, v12}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    #@97
    move-result-object v18

    #@98
    .line 5553
    .local v18, "str":Ljava/lang/String;
    const-string/jumbo v2, "\\"

    #@9b
    const-string/jumbo v3, "\\\\"

    #@9e
    move-object/from16 v0, v18

    #@a0
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@a3
    move-result-object v18

    #@a4
    .line 5554
    const-string/jumbo v2, "\""

    #@a7
    const-string/jumbo v3, "\\\""

    #@aa
    move-object/from16 v0, v18

    #@ac
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@af
    move-result-object v18

    #@b0
    .line 5555
    move-object/from16 v0, p2

    #@b2
    move-object/from16 v1, v18

    #@b4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b7
    .line 5556
    const-string/jumbo v2, "\""

    #@ba
    move-object/from16 v0, p2

    #@bc
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bf
    .line 5557
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@c2
    .line 5545
    add-int/lit8 v12, v12, 0x1

    #@c4
    goto :goto_1

    #@c5
    .line 5539
    .end local v11    # "filtering":Z
    .end local v12    # "i":I
    .end local v18    # "str":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    #@c6
    .restart local v11    # "filtering":Z
    goto/16 :goto_0

    #@c8
    .line 5559
    .restart local v12    # "i":I
    :cond_2
    const/4 v8, 0x1

    #@c9
    move-object/from16 v3, p0

    #@cb
    move-object/from16 v4, p2

    #@cd
    move/from16 v5, p4

    #@cf
    move-wide/from16 v6, p5

    #@d1
    invoke-direct/range {v3 .. v8}, Landroid/os/BatteryStats;->dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d4
    .line 5561
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    #@d7
    .line 5566
    .end local v12    # "i":I
    :cond_3
    if-eqz v11, :cond_4

    #@d9
    and-int/lit8 v2, p4, 0x6

    #@db
    if-nez v2, :cond_4

    #@dd
    .line 5567
    return-void

    #@de
    .line 5560
    .restart local v12    # "i":I
    :catchall_0
    move-exception v2

    #@df
    .line 5561
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    #@e2
    .line 5560
    throw v2

    #@e3
    .line 5570
    .end local v12    # "i":I
    :cond_4
    if-eqz p3, :cond_9

    #@e5
    .line 5571
    new-instance v23, Landroid/util/SparseArray;

    #@e7
    invoke-direct/range {v23 .. v23}, Landroid/util/SparseArray;-><init>()V

    #@ea
    .line 5572
    .local v23, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    const/4 v12, 0x0

    #@eb
    .restart local v12    # "i":I
    :goto_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    #@ee
    move-result v2

    #@ef
    if-ge v12, v2, :cond_6

    #@f1
    .line 5573
    move-object/from16 v0, p3

    #@f3
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f6
    move-result-object v10

    #@f7
    check-cast v10, Landroid/content/pm/ApplicationInfo;

    #@f9
    .line 5575
    .local v10, "ai":Landroid/content/pm/ApplicationInfo;
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    #@fb
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    #@fe
    move-result v2

    #@ff
    .line 5574
    move-object/from16 v0, v23

    #@101
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@104
    move-result-object v15

    #@105
    check-cast v15, Landroid/util/Pair;

    #@107
    .line 5576
    .local v15, "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    if-nez v15, :cond_5

    #@109
    .line 5577
    new-instance v15, Landroid/util/Pair;

    #@10b
    .end local v15    # "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@10d
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@110
    new-instance v3, Landroid/util/MutableBoolean;

    #@112
    const/4 v4, 0x0

    #@113
    invoke-direct {v3, v4}, Landroid/util/MutableBoolean;-><init>(Z)V

    #@116
    invoke-direct {v15, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@119
    .line 5578
    .restart local v15    # "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    #@11b
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    #@11e
    move-result v2

    #@11f
    move-object/from16 v0, v23

    #@121
    invoke-virtual {v0, v2, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@124
    .line 5580
    :cond_5
    iget-object v2, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@126
    check-cast v2, Ljava/util/ArrayList;

    #@128
    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@12a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12d
    .line 5572
    add-int/lit8 v12, v12, 0x1

    #@12f
    goto :goto_2

    #@130
    .line 5582
    .end local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    #@133
    move-result-object v22

    #@134
    .line 5583
    .local v22, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    #@137
    move-result v9

    #@138
    .line 5584
    .local v9, "NU":I
    const/4 v2, 0x2

    #@139
    new-array v14, v2, [Ljava/lang/String;

    #@13b
    .line 5585
    .local v14, "lineArgs":[Ljava/lang/String;
    const/4 v12, 0x0

    #@13c
    :goto_3
    if-ge v12, v9, :cond_9

    #@13e
    .line 5586
    move-object/from16 v0, v22

    #@140
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    #@143
    move-result v2

    #@144
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    #@147
    move-result v19

    #@148
    .line 5587
    .local v19, "uid":I
    move-object/from16 v0, v23

    #@14a
    move/from16 v1, v19

    #@14c
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@14f
    move-result-object v15

    #@150
    check-cast v15, Landroid/util/Pair;

    #@152
    .line 5588
    .restart local v15    # "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    if-eqz v15, :cond_7

    #@154
    iget-object v2, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@156
    check-cast v2, Landroid/util/MutableBoolean;

    #@158
    iget-boolean v2, v2, Landroid/util/MutableBoolean;->value:Z

    #@15a
    if-eqz v2, :cond_8

    #@15c
    .line 5585
    :cond_7
    add-int/lit8 v12, v12, 0x1

    #@15e
    goto :goto_3

    #@15f
    .line 5589
    :cond_8
    iget-object v2, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@161
    check-cast v2, Landroid/util/MutableBoolean;

    #@163
    const/4 v3, 0x1

    #@164
    iput-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z

    #@166
    .line 5590
    const/4 v13, 0x0

    #@167
    .local v13, "j":I
    :goto_4
    iget-object v2, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@169
    check-cast v2, Ljava/util/ArrayList;

    #@16b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@16e
    move-result v2

    #@16f
    if-ge v13, v2, :cond_7

    #@171
    .line 5591
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@174
    move-result-object v2

    #@175
    const/4 v3, 0x0

    #@176
    aput-object v2, v14, v3

    #@178
    .line 5592
    iget-object v2, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@17a
    check-cast v2, Ljava/util/ArrayList;

    #@17c
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17f
    move-result-object v2

    #@180
    check-cast v2, Ljava/lang/String;

    #@182
    const/4 v3, 0x1

    #@183
    aput-object v2, v14, v3

    #@185
    .line 5593
    const-string/jumbo v2, "i"

    #@188
    const-string/jumbo v3, "uid"

    #@18b
    const/4 v4, 0x0

    #@18c
    move-object/from16 v0, p2

    #@18e
    invoke-static {v0, v4, v2, v3, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@191
    .line 5590
    add-int/lit8 v13, v13, 0x1

    #@193
    goto :goto_4

    #@194
    .line 5599
    .end local v9    # "NU":I
    .end local v12    # "i":I
    .end local v13    # "j":I
    .end local v14    # "lineArgs":[Ljava/lang/String;
    .end local v15    # "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    .end local v19    # "uid":I
    .end local v22    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    :cond_9
    if-eqz v11, :cond_a

    #@196
    and-int/lit8 v2, p4, 0x2

    #@198
    if-eqz v2, :cond_d

    #@19a
    .line 5600
    :cond_a
    const-string/jumbo v2, ""

    #@19d
    const-string/jumbo v3, "dsd"

    #@1a0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    #@1a3
    move-result-object v4

    #@1a4
    const/4 v5, 0x1

    #@1a5
    move-object/from16 v0, p2

    #@1a7
    invoke-static {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    #@1aa
    .line 5601
    const/4 v2, 0x1

    #@1ab
    new-array v14, v2, [Ljava/lang/String;

    #@1ad
    .line 5602
    .restart local v14    # "lineArgs":[Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1b0
    move-result-wide v2

    #@1b1
    move-object/from16 v0, p0

    #@1b3
    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    #@1b6
    move-result-wide v20

    #@1b7
    .line 5603
    .local v20, "timeRemaining":J
    const-wide/16 v2, 0x0

    #@1b9
    cmp-long v2, v20, v2

    #@1bb
    if-ltz v2, :cond_b

    #@1bd
    .line 5604
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@1c0
    move-result-object v2

    #@1c1
    const/4 v3, 0x0

    #@1c2
    aput-object v2, v14, v3

    #@1c4
    .line 5605
    const-string/jumbo v2, "i"

    #@1c7
    const-string/jumbo v3, "dtr"

    #@1ca
    const/4 v4, 0x0

    #@1cb
    move-object/from16 v0, p2

    #@1cd
    invoke-static {v0, v4, v2, v3, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@1d0
    .line 5608
    :cond_b
    const-string/jumbo v2, ""

    #@1d3
    const-string/jumbo v3, "csd"

    #@1d6
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    #@1d9
    move-result-object v4

    #@1da
    const/4 v5, 0x1

    #@1db
    move-object/from16 v0, p2

    #@1dd
    invoke-static {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    #@1e0
    .line 5609
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1e3
    move-result-wide v2

    #@1e4
    move-object/from16 v0, p0

    #@1e6
    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    #@1e9
    move-result-wide v20

    #@1ea
    .line 5610
    const-wide/16 v2, 0x0

    #@1ec
    cmp-long v2, v20, v2

    #@1ee
    if-ltz v2, :cond_c

    #@1f0
    .line 5611
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@1f3
    move-result-object v2

    #@1f4
    const/4 v3, 0x0

    #@1f5
    aput-object v2, v14, v3

    #@1f7
    .line 5612
    const-string/jumbo v2, "i"

    #@1fa
    const-string/jumbo v3, "ctr"

    #@1fd
    const/4 v4, 0x0

    #@1fe
    move-object/from16 v0, p2

    #@200
    invoke-static {v0, v4, v2, v3, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@203
    .line 5616
    :cond_c
    and-int/lit8 v2, p4, 0x40

    #@205
    if-eqz v2, :cond_e

    #@207
    const/4 v7, 0x1

    #@208
    .line 5615
    :goto_5
    const/4 v5, 0x0

    #@209
    const/4 v6, -0x1

    #@20a
    move-object/from16 v2, p0

    #@20c
    move-object/from16 v3, p1

    #@20e
    move-object/from16 v4, p2

    #@210
    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    #@213
    .line 5530
    .end local v14    # "lineArgs":[Ljava/lang/String;
    .end local v20    # "timeRemaining":J
    :cond_d
    return-void

    #@214
    .line 5616
    .restart local v14    # "lineArgs":[Ljava/lang/String;
    .restart local v20    # "timeRemaining":J
    :cond_e
    const/4 v7, 0x0

    #@215
    goto :goto_5
.end method

.method public dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V
    .locals 53
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "flags"    # I
    .param p4, "reqUid"    # I
    .param p5, "histStart"    # J

    #@0
    .prologue
    .line 5340
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    #@3
    .line 5342
    and-int/lit8 v6, p3, 0xe

    #@5
    if-eqz v6, :cond_1

    #@7
    const/16 v34, 0x1

    #@9
    .line 5345
    .local v34, "filtering":Z
    :goto_0
    and-int/lit8 v6, p3, 0x8

    #@b
    if-nez v6, :cond_2

    #@d
    if-eqz v34, :cond_2

    #@f
    .line 5387
    :cond_0
    :goto_1
    if-eqz v34, :cond_7

    #@11
    and-int/lit8 v6, p3, 0x6

    #@13
    if-nez v6, :cond_7

    #@15
    .line 5388
    return-void

    #@16
    .line 5342
    .end local v34    # "filtering":Z
    :cond_1
    const/16 v34, 0x0

    #@18
    .restart local v34    # "filtering":Z
    goto :goto_0

    #@19
    .line 5346
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryTotalSize()I

    #@1c
    move-result v6

    #@1d
    int-to-long v0, v6

    #@1e
    move-wide/from16 v36, v0

    #@20
    .line 5347
    .local v36, "historyTotalSize":J
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryUsedSize()I

    #@23
    move-result v6

    #@24
    int-to-long v0, v6

    #@25
    move-wide/from16 v38, v0

    #@27
    .line 5348
    .local v38, "historyUsedSize":J
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    #@2a
    move-result v6

    #@2b
    if-eqz v6, :cond_3

    #@2d
    .line 5350
    :try_start_0
    const-string/jumbo v6, "Battery History ("

    #@30
    move-object/from16 v0, p2

    #@32
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@35
    .line 5351
    const-wide/16 v12, 0x64

    #@37
    mul-long v12, v12, v38

    #@39
    div-long v12, v12, v36

    #@3b
    move-object/from16 v0, p2

    #@3d
    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    #@40
    .line 5352
    const-string/jumbo v6, "% used, "

    #@43
    move-object/from16 v0, p2

    #@45
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    .line 5353
    move-object/from16 v0, p0

    #@4a
    move-object/from16 v1, p2

    #@4c
    move-wide/from16 v2, v38

    #@4e
    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@51
    .line 5354
    const-string/jumbo v6, " used of "

    #@54
    move-object/from16 v0, p2

    #@56
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@59
    .line 5355
    move-object/from16 v0, p0

    #@5b
    move-object/from16 v1, p2

    #@5d
    move-wide/from16 v2, v36

    #@5f
    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@62
    .line 5356
    const-string/jumbo v6, ", "

    #@65
    move-object/from16 v0, p2

    #@67
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6a
    .line 5357
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    #@6d
    move-result v6

    #@6e
    move-object/from16 v0, p2

    #@70
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    #@73
    .line 5358
    const-string/jumbo v6, " strings using "

    #@76
    move-object/from16 v0, p2

    #@78
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7b
    .line 5359
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolBytes()I

    #@7e
    move-result v6

    #@7f
    int-to-long v12, v6

    #@80
    move-object/from16 v0, p0

    #@82
    move-object/from16 v1, p2

    #@84
    invoke-direct {v0, v1, v12, v13}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@87
    .line 5360
    const-string/jumbo v6, "):"

    #@8a
    move-object/from16 v0, p2

    #@8c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8f
    .line 5361
    const/4 v10, 0x0

    #@90
    move-object/from16 v5, p0

    #@92
    move-object/from16 v6, p2

    #@94
    move/from16 v7, p3

    #@96
    move-wide/from16 v8, p5

    #@98
    invoke-direct/range {v5 .. v10}, Landroid/os/BatteryStats;->dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V

    #@9b
    .line 5362
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9e
    .line 5364
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    #@a1
    .line 5368
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingOldHistoryLocked()Z

    #@a4
    move-result v6

    #@a5
    if-eqz v6, :cond_0

    #@a7
    .line 5370
    :try_start_1
    new-instance v7, Landroid/os/BatteryStats$HistoryItem;

    #@a9
    invoke-direct {v7}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    #@ac
    .line 5371
    .local v7, "rec":Landroid/os/BatteryStats$HistoryItem;
    const-string/jumbo v6, "Old battery History:"

    #@af
    move-object/from16 v0, p2

    #@b1
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b4
    .line 5372
    new-instance v5, Landroid/os/BatteryStats$HistoryPrinter;

    #@b6
    invoke-direct {v5}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    #@b9
    .line 5373
    .local v5, "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    const-wide/16 v8, -0x1

    #@bb
    .line 5374
    .local v8, "baseTime":J
    :goto_2
    move-object/from16 v0, p0

    #@bd
    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    #@c0
    move-result v6

    #@c1
    if-eqz v6, :cond_6

    #@c3
    .line 5375
    const-wide/16 v12, 0x0

    #@c5
    cmp-long v6, v8, v12

    #@c7
    if-gez v6, :cond_4

    #@c9
    .line 5376
    iget-wide v8, v7, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@cb
    .line 5378
    :cond_4
    and-int/lit8 v6, p3, 0x20

    #@cd
    if-eqz v6, :cond_5

    #@cf
    const/4 v11, 0x1

    #@d0
    :goto_3
    const/4 v10, 0x0

    #@d1
    move-object/from16 v6, p2

    #@d3
    invoke-virtual/range {v5 .. v11}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d6
    goto :goto_2

    #@d7
    .line 5381
    .end local v5    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .end local v7    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v8    # "baseTime":J
    :catchall_0
    move-exception v6

    #@d8
    .line 5382
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    #@db
    .line 5381
    throw v6

    #@dc
    .line 5363
    :catchall_1
    move-exception v6

    #@dd
    .line 5364
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    #@e0
    .line 5363
    throw v6

    #@e1
    .line 5378
    .restart local v5    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .restart local v7    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v8    # "baseTime":J
    :cond_5
    const/4 v11, 0x0

    #@e2
    goto :goto_3

    #@e3
    .line 5380
    :cond_6
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@e6
    .line 5382
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    #@e9
    goto/16 :goto_1

    #@eb
    .line 5391
    .end local v5    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .end local v7    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v8    # "baseTime":J
    .end local v36    # "historyTotalSize":J
    .end local v38    # "historyUsedSize":J
    :cond_7
    if-nez v34, :cond_c

    #@ed
    .line 5392
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    #@f0
    move-result-object v51

    #@f1
    .line 5393
    .local v51, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v51 .. v51}, Landroid/util/SparseArray;->size()I

    #@f4
    move-result v4

    #@f5
    .line 5394
    .local v4, "NU":I
    const/16 v32, 0x0

    #@f7
    .line 5395
    .local v32, "didPid":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@fa
    move-result-wide v42

    #@fb
    .line 5396
    .local v42, "nowRealtime":J
    const/16 v35, 0x0

    #@fd
    .local v35, "i":I
    :goto_4
    move/from16 v0, v35

    #@ff
    if-ge v0, v4, :cond_b

    #@101
    .line 5397
    move-object/from16 v0, v51

    #@103
    move/from16 v1, v35

    #@105
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@108
    move-result-object v50

    #@109
    check-cast v50, Landroid/os/BatteryStats$Uid;

    #@10b
    .line 5398
    .local v50, "uid":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v50 .. v50}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    #@10e
    move-result-object v44

    #@10f
    .line 5399
    .local v44, "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    if-eqz v44, :cond_a

    #@111
    .line 5400
    const/16 v40, 0x0

    #@113
    .local v40, "j":I
    :goto_5
    invoke-virtual/range {v44 .. v44}, Landroid/util/SparseArray;->size()I

    #@116
    move-result v6

    #@117
    move/from16 v0, v40

    #@119
    if-ge v0, v6, :cond_a

    #@11b
    .line 5401
    move-object/from16 v0, v44

    #@11d
    move/from16 v1, v40

    #@11f
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@122
    move-result-object v41

    #@123
    check-cast v41, Landroid/os/BatteryStats$Uid$Pid;

    #@125
    .line 5402
    .local v41, "pid":Landroid/os/BatteryStats$Uid$Pid;
    if-nez v32, :cond_8

    #@127
    .line 5403
    const-string/jumbo v6, "Per-PID Stats:"

    #@12a
    move-object/from16 v0, p2

    #@12c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12f
    .line 5404
    const/16 v32, 0x1

    #@131
    .line 5406
    :cond_8
    move-object/from16 v0, v41

    #@133
    iget-wide v14, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    #@135
    move-object/from16 v0, v41

    #@137
    iget v6, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    #@139
    if-lez v6, :cond_9

    #@13b
    .line 5407
    move-object/from16 v0, v41

    #@13d
    iget-wide v12, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    #@13f
    sub-long v12, v42, v12

    #@141
    .line 5406
    :goto_6
    add-long v46, v14, v12

    #@143
    .line 5408
    .local v46, "time":J
    const-string/jumbo v6, "  PID "

    #@146
    move-object/from16 v0, p2

    #@148
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14b
    move-object/from16 v0, v44

    #@14d
    move/from16 v1, v40

    #@14f
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@152
    move-result v6

    #@153
    move-object/from16 v0, p2

    #@155
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    #@158
    .line 5409
    const-string/jumbo v6, " wake time: "

    #@15b
    move-object/from16 v0, p2

    #@15d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@160
    .line 5410
    move-wide/from16 v0, v46

    #@162
    move-object/from16 v2, p2

    #@164
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@167
    .line 5411
    const-string/jumbo v6, ""

    #@16a
    move-object/from16 v0, p2

    #@16c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16f
    .line 5400
    add-int/lit8 v40, v40, 0x1

    #@171
    goto :goto_5

    #@172
    .line 5407
    .end local v46    # "time":J
    :cond_9
    const-wide/16 v12, 0x0

    #@174
    goto :goto_6

    #@175
    .line 5396
    .end local v40    # "j":I
    .end local v41    # "pid":Landroid/os/BatteryStats$Uid$Pid;
    :cond_a
    add-int/lit8 v35, v35, 0x1

    #@177
    goto :goto_4

    #@178
    .line 5415
    .end local v44    # "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    .end local v50    # "uid":Landroid/os/BatteryStats$Uid;
    :cond_b
    if-eqz v32, :cond_c

    #@17a
    .line 5416
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@17d
    .line 5420
    .end local v4    # "NU":I
    .end local v32    # "didPid":Z
    .end local v35    # "i":I
    .end local v42    # "nowRealtime":J
    .end local v51    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    :cond_c
    if-eqz v34, :cond_d

    #@17f
    and-int/lit8 v6, p3, 0x2

    #@181
    if-eqz v6, :cond_12

    #@183
    .line 5421
    :cond_d
    const-string/jumbo v6, "  "

    #@186
    const-string/jumbo v10, "Discharge step durations:"

    #@189
    .line 5422
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    #@18c
    move-result-object v12

    #@18d
    const/4 v13, 0x0

    #@18e
    .line 5421
    move-object/from16 v0, p2

    #@190
    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    #@193
    move-result v6

    #@194
    if-eqz v6, :cond_10

    #@196
    .line 5423
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@199
    move-result-wide v12

    #@19a
    move-object/from16 v0, p0

    #@19c
    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    #@19f
    move-result-wide v48

    #@1a0
    .line 5424
    .local v48, "timeRemaining":J
    const-wide/16 v12, 0x0

    #@1a2
    cmp-long v6, v48, v12

    #@1a4
    if-ltz v6, :cond_e

    #@1a6
    .line 5425
    const-string/jumbo v6, "  Estimated discharge time remaining: "

    #@1a9
    move-object/from16 v0, p2

    #@1ab
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ae
    .line 5426
    const-wide/16 v12, 0x3e8

    #@1b0
    div-long v12, v48, v12

    #@1b2
    move-object/from16 v0, p2

    #@1b4
    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@1b7
    .line 5427
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@1ba
    .line 5429
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    #@1bd
    move-result-object v11

    #@1be
    .line 5430
    .local v11, "steps":Landroid/os/BatteryStats$LevelStepTracker;
    const/16 v35, 0x0

    #@1c0
    .restart local v35    # "i":I
    :goto_7
    sget-object v6, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    #@1c2
    array-length v6, v6

    #@1c3
    move/from16 v0, v35

    #@1c5
    if-ge v0, v6, :cond_f

    #@1c7
    .line 5431
    const-string/jumbo v6, "  Estimated "

    #@1ca
    sget-object v10, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    #@1cc
    aget-object v10, v10, v35

    #@1ce
    const-string/jumbo v19, " time: "

    #@1d1
    .line 5432
    sget-object v12, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    #@1d3
    aget v12, v12, v35

    #@1d5
    int-to-long v12, v12

    #@1d6
    .line 5433
    sget-object v14, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    #@1d8
    aget v14, v14, v35

    #@1da
    int-to-long v14, v14

    #@1db
    const/16 v16, 0x0

    #@1dd
    .line 5432
    invoke-virtual/range {v11 .. v16}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    #@1e0
    move-result-wide v16

    #@1e1
    move-object/from16 v12, p2

    #@1e3
    move-object v13, v6

    #@1e4
    move-object v14, v10

    #@1e5
    move-object/from16 v15, v19

    #@1e7
    .line 5431
    invoke-static/range {v12 .. v17}, Landroid/os/BatteryStats;->dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    #@1ea
    .line 5430
    add-int/lit8 v35, v35, 0x1

    #@1ec
    goto :goto_7

    #@1ed
    .line 5435
    :cond_f
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@1f0
    .line 5437
    .end local v11    # "steps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v35    # "i":I
    .end local v48    # "timeRemaining":J
    :cond_10
    const-string/jumbo v6, "  "

    #@1f3
    const-string/jumbo v10, "Charge step durations:"

    #@1f6
    .line 5438
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    #@1f9
    move-result-object v12

    #@1fa
    const/4 v13, 0x0

    #@1fb
    .line 5437
    move-object/from16 v0, p2

    #@1fd
    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    #@200
    move-result v6

    #@201
    if-eqz v6, :cond_12

    #@203
    .line 5439
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@206
    move-result-wide v12

    #@207
    move-object/from16 v0, p0

    #@209
    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    #@20c
    move-result-wide v48

    #@20d
    .line 5440
    .restart local v48    # "timeRemaining":J
    const-wide/16 v12, 0x0

    #@20f
    cmp-long v6, v48, v12

    #@211
    if-ltz v6, :cond_11

    #@213
    .line 5441
    const-string/jumbo v6, "  Estimated charge time remaining: "

    #@216
    move-object/from16 v0, p2

    #@218
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21b
    .line 5442
    const-wide/16 v12, 0x3e8

    #@21d
    div-long v12, v48, v12

    #@21f
    move-object/from16 v0, p2

    #@221
    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@224
    .line 5443
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@227
    .line 5445
    :cond_11
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@22a
    .line 5448
    .end local v48    # "timeRemaining":J
    :cond_12
    if-eqz v34, :cond_13

    #@22c
    and-int/lit8 v6, p3, 0x6

    #@22e
    if-eqz v6, :cond_1f

    #@230
    .line 5449
    :cond_13
    const-string/jumbo v6, "Daily stats:"

    #@233
    move-object/from16 v0, p2

    #@235
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@238
    .line 5450
    const-string/jumbo v6, "  Current start time: "

    #@23b
    move-object/from16 v0, p2

    #@23d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@240
    .line 5451
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    #@243
    .line 5452
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCurrentDailyStartTime()J

    #@246
    move-result-wide v12

    #@247
    .line 5451
    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    #@24a
    move-result-object v6

    #@24b
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@24e
    move-result-object v6

    #@24f
    move-object/from16 v0, p2

    #@251
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@254
    .line 5453
    const-string/jumbo v6, "  Next min deadline: "

    #@257
    move-object/from16 v0, p2

    #@259
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25c
    .line 5454
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    #@25f
    .line 5455
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMinDailyDeadline()J

    #@262
    move-result-wide v12

    #@263
    .line 5454
    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    #@266
    move-result-object v6

    #@267
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@26a
    move-result-object v6

    #@26b
    move-object/from16 v0, p2

    #@26d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@270
    .line 5456
    const-string/jumbo v6, "  Next max deadline: "

    #@273
    move-object/from16 v0, p2

    #@275
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@278
    .line 5457
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    #@27b
    .line 5458
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMaxDailyDeadline()J

    #@27e
    move-result-wide v12

    #@27f
    .line 5457
    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    #@282
    move-result-object v6

    #@283
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@286
    move-result-object v6

    #@287
    move-object/from16 v0, p2

    #@289
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28c
    .line 5459
    new-instance v17, Ljava/lang/StringBuilder;

    #@28e
    const/16 v6, 0x40

    #@290
    move-object/from16 v0, v17

    #@292
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@295
    .line 5460
    .local v17, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x1

    #@296
    new-array v0, v6, [I

    #@298
    move-object/from16 v18, v0

    #@29a
    .line 5461
    .local v18, "outInt":[I
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    #@29d
    move-result-object v16

    #@29e
    .line 5462
    .local v16, "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    #@2a1
    move-result-object v23

    #@2a2
    .line 5463
    .local v23, "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyPackageChanges()Ljava/util/ArrayList;

    #@2a5
    move-result-object v45

    #@2a6
    .line 5464
    .local v45, "pkgc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    move-object/from16 v0, v16

    #@2a8
    iget v6, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    #@2aa
    if-gtz v6, :cond_14

    #@2ac
    move-object/from16 v0, v23

    #@2ae
    iget v6, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    #@2b0
    if-lez v6, :cond_17

    #@2b2
    .line 5465
    :cond_14
    :goto_8
    and-int/lit8 v6, p3, 0x4

    #@2b4
    if-nez v6, :cond_18

    #@2b6
    if-eqz v34, :cond_18

    #@2b8
    .line 5478
    const-string/jumbo v6, "  Current daily steps:"

    #@2bb
    move-object/from16 v0, p2

    #@2bd
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c0
    .line 5479
    const-string/jumbo v14, "    "

    #@2c3
    const-string/jumbo v15, "Discharge"

    #@2c6
    move-object/from16 v12, p0

    #@2c8
    move-object/from16 v13, p2

    #@2ca
    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    #@2cd
    .line 5481
    const-string/jumbo v21, "    "

    #@2d0
    const-string/jumbo v22, "Charge"

    #@2d3
    move-object/from16 v19, p0

    #@2d5
    move-object/from16 v20, p2

    #@2d7
    move-object/from16 v24, v17

    #@2d9
    move-object/from16 v25, v18

    #@2db
    invoke-direct/range {v19 .. v25}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    #@2de
    .line 5486
    :cond_15
    :goto_9
    const/16 v31, 0x0

    #@2e0
    .line 5487
    .local v31, "curIndex":I
    :goto_a
    move-object/from16 v0, p0

    #@2e2
    move/from16 v1, v31

    #@2e4
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;

    #@2e7
    move-result-object v33

    #@2e8
    .local v33, "dit":Landroid/os/BatteryStats$DailyItem;
    if-eqz v33, :cond_1e

    #@2ea
    .line 5488
    add-int/lit8 v31, v31, 0x1

    #@2ec
    .line 5489
    and-int/lit8 v6, p3, 0x4

    #@2ee
    if-eqz v6, :cond_16

    #@2f0
    .line 5490
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@2f3
    .line 5492
    :cond_16
    const-string/jumbo v6, "  Daily from "

    #@2f6
    move-object/from16 v0, p2

    #@2f8
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2fb
    .line 5493
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    #@2fe
    move-object/from16 v0, v33

    #@300
    iget-wide v12, v0, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    #@302
    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    #@305
    move-result-object v6

    #@306
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@309
    move-result-object v6

    #@30a
    move-object/from16 v0, p2

    #@30c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30f
    .line 5494
    const-string/jumbo v6, " to "

    #@312
    move-object/from16 v0, p2

    #@314
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@317
    .line 5495
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    #@31a
    move-object/from16 v0, v33

    #@31c
    iget-wide v12, v0, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    #@31e
    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    #@321
    move-result-object v6

    #@322
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@325
    move-result-object v6

    #@326
    move-object/from16 v0, p2

    #@328
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32b
    .line 5496
    const-string/jumbo v6, ":"

    #@32e
    move-object/from16 v0, p2

    #@330
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@333
    .line 5497
    and-int/lit8 v6, p3, 0x4

    #@335
    if-nez v6, :cond_1b

    #@337
    if-eqz v34, :cond_1b

    #@339
    .line 5510
    const-string/jumbo v26, "    "

    #@33c
    const-string/jumbo v27, "Discharge"

    #@33f
    move-object/from16 v0, v33

    #@341
    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    #@343
    move-object/from16 v28, v0

    #@345
    move-object/from16 v24, p0

    #@347
    move-object/from16 v25, p2

    #@349
    move-object/from16 v29, v17

    #@34b
    move-object/from16 v30, v18

    #@34d
    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    #@350
    .line 5512
    const-string/jumbo v26, "    "

    #@353
    const-string/jumbo v27, "Charge"

    #@356
    move-object/from16 v0, v33

    #@358
    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    #@35a
    move-object/from16 v28, v0

    #@35c
    move-object/from16 v24, p0

    #@35e
    move-object/from16 v25, p2

    #@360
    move-object/from16 v29, v17

    #@362
    move-object/from16 v30, v18

    #@364
    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    #@367
    goto/16 :goto_a

    #@369
    .line 5464
    .end local v31    # "curIndex":I
    .end local v33    # "dit":Landroid/os/BatteryStats$DailyItem;
    :cond_17
    if-eqz v45, :cond_15

    #@36b
    goto/16 :goto_8

    #@36d
    .line 5466
    :cond_18
    const-string/jumbo v6, "    "

    #@370
    const-string/jumbo v10, "  Current daily discharge step durations:"

    #@373
    .line 5467
    const/4 v12, 0x0

    #@374
    .line 5466
    move-object/from16 v0, p2

    #@376
    move-object/from16 v1, v16

    #@378
    invoke-static {v0, v6, v10, v1, v12}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    #@37b
    move-result v6

    #@37c
    if-eqz v6, :cond_19

    #@37e
    .line 5468
    const-string/jumbo v14, "      "

    #@381
    const-string/jumbo v15, "Discharge"

    #@384
    move-object/from16 v12, p0

    #@386
    move-object/from16 v13, p2

    #@388
    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    #@38b
    .line 5471
    :cond_19
    const-string/jumbo v6, "    "

    #@38e
    const-string/jumbo v10, "  Current daily charge step durations:"

    #@391
    .line 5472
    const/4 v12, 0x0

    #@392
    .line 5471
    move-object/from16 v0, p2

    #@394
    move-object/from16 v1, v23

    #@396
    invoke-static {v0, v6, v10, v1, v12}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    #@399
    move-result v6

    #@39a
    if-eqz v6, :cond_1a

    #@39c
    .line 5473
    const-string/jumbo v21, "      "

    #@39f
    const-string/jumbo v22, "Charge"

    #@3a2
    move-object/from16 v19, p0

    #@3a4
    move-object/from16 v20, p2

    #@3a6
    move-object/from16 v24, v17

    #@3a8
    move-object/from16 v25, v18

    #@3aa
    invoke-direct/range {v19 .. v25}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    #@3ad
    .line 5476
    :cond_1a
    const-string/jumbo v6, "    "

    #@3b0
    move-object/from16 v0, p0

    #@3b2
    move-object/from16 v1, p2

    #@3b4
    move-object/from16 v2, v45

    #@3b6
    invoke-direct {v0, v1, v6, v2}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    #@3b9
    goto/16 :goto_9

    #@3bb
    .line 5498
    .restart local v31    # "curIndex":I
    .restart local v33    # "dit":Landroid/os/BatteryStats$DailyItem;
    :cond_1b
    const-string/jumbo v6, "      "

    #@3be
    .line 5499
    const-string/jumbo v10, "    Discharge step durations:"

    #@3c1
    move-object/from16 v0, v33

    #@3c3
    iget-object v12, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    #@3c5
    const/4 v13, 0x0

    #@3c6
    .line 5498
    move-object/from16 v0, p2

    #@3c8
    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    #@3cb
    move-result v6

    #@3cc
    if-eqz v6, :cond_1c

    #@3ce
    .line 5500
    const-string/jumbo v26, "        "

    #@3d1
    const-string/jumbo v27, "Discharge"

    #@3d4
    move-object/from16 v0, v33

    #@3d6
    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    #@3d8
    move-object/from16 v28, v0

    #@3da
    move-object/from16 v24, p0

    #@3dc
    move-object/from16 v25, p2

    #@3de
    move-object/from16 v29, v17

    #@3e0
    move-object/from16 v30, v18

    #@3e2
    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    #@3e5
    .line 5503
    :cond_1c
    const-string/jumbo v6, "      "

    #@3e8
    .line 5504
    const-string/jumbo v10, "    Charge step durations:"

    #@3eb
    move-object/from16 v0, v33

    #@3ed
    iget-object v12, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    #@3ef
    const/4 v13, 0x0

    #@3f0
    .line 5503
    move-object/from16 v0, p2

    #@3f2
    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    #@3f5
    move-result v6

    #@3f6
    if-eqz v6, :cond_1d

    #@3f8
    .line 5505
    const-string/jumbo v26, "        "

    #@3fb
    const-string/jumbo v27, "Charge"

    #@3fe
    move-object/from16 v0, v33

    #@400
    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    #@402
    move-object/from16 v28, v0

    #@404
    move-object/from16 v24, p0

    #@406
    move-object/from16 v25, p2

    #@408
    move-object/from16 v29, v17

    #@40a
    move-object/from16 v30, v18

    #@40c
    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    #@40f
    .line 5508
    :cond_1d
    const-string/jumbo v6, "    "

    #@412
    move-object/from16 v0, v33

    #@414
    iget-object v10, v0, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    #@416
    move-object/from16 v0, p0

    #@418
    move-object/from16 v1, p2

    #@41a
    invoke-direct {v0, v1, v6, v10}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    #@41d
    goto/16 :goto_a

    #@41f
    .line 5516
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@422
    .line 5518
    .end local v16    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    .end local v18    # "outInt":[I
    .end local v23    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v31    # "curIndex":I
    .end local v33    # "dit":Landroid/os/BatteryStats$DailyItem;
    .end local v45    # "pkgc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    :cond_1f
    if-eqz v34, :cond_20

    #@424
    and-int/lit8 v6, p3, 0x2

    #@426
    if-eqz v6, :cond_21

    #@428
    .line 5519
    :cond_20
    const-string/jumbo v6, "Statistics since last charge:"

    #@42b
    move-object/from16 v0, p2

    #@42d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@430
    .line 5520
    new-instance v6, Ljava/lang/StringBuilder;

    #@432
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@435
    const-string/jumbo v10, "  System starts: "

    #@438
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43b
    move-result-object v6

    #@43c
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    #@43f
    move-result v10

    #@440
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@443
    move-result-object v6

    #@444
    .line 5521
    const-string/jumbo v10, ", currently on battery: "

    #@447
    .line 5520
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44a
    move-result-object v6

    #@44b
    .line 5521
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    #@44e
    move-result v10

    #@44f
    .line 5520
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@452
    move-result-object v6

    #@453
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@456
    move-result-object v6

    #@457
    move-object/from16 v0, p2

    #@459
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@45c
    .line 5522
    const-string/jumbo v27, ""

    #@45f
    .line 5523
    and-int/lit8 v6, p3, 0x40

    #@461
    if-eqz v6, :cond_22

    #@463
    const/16 v30, 0x1

    #@465
    .line 5522
    :goto_b
    const/16 v28, 0x0

    #@467
    move-object/from16 v24, p0

    #@469
    move-object/from16 v25, p1

    #@46b
    move-object/from16 v26, p2

    #@46d
    move/from16 v29, p4

    #@46f
    invoke-virtual/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    #@472
    .line 5524
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@475
    .line 5339
    :cond_21
    return-void

    #@476
    .line 5523
    :cond_22
    const/16 v30, 0x0

    #@478
    goto :goto_b
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "which"    # I
    .param p5, "reqUid"    # I

    #@0
    .prologue
    .line 3432
    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    #@3
    move-result v6

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    #@d
    .line 3431
    return-void
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V
    .locals 243
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "which"    # I
    .param p5, "reqUid"    # I
    .param p6, "wifiOnly"    # Z

    #@0
    .prologue
    .line 3438
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v6

    #@4
    const-wide/16 v12, 0x3e8

    #@6
    mul-long v154, v6, v12

    #@8
    .line 3439
    .local v154, "rawUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b
    move-result-wide v6

    #@c
    const-wide/16 v12, 0x3e8

    #@e
    mul-long v24, v6, v12

    #@10
    .line 3440
    .local v24, "rawRealtime":J
    move-object/from16 v0, p0

    #@12
    move-wide/from16 v1, v154

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    #@17
    move-result-wide v44

    #@18
    .line 3442
    .local v44, "batteryUptime":J
    move-object/from16 v0, p0

    #@1a
    move-wide/from16 v1, v154

    #@1c
    move/from16 v3, p4

    #@1e
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    #@21
    move-result-wide v216

    #@22
    .line 3443
    .local v216, "whichBatteryUptime":J
    move-object/from16 v0, p0

    #@24
    move-wide/from16 v1, v24

    #@26
    move/from16 v3, p4

    #@28
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    #@2b
    move-result-wide v210

    #@2c
    .line 3444
    .local v210, "whichBatteryRealtime":J
    move-object/from16 v0, p0

    #@2e
    move-wide/from16 v1, v24

    #@30
    move/from16 v3, p4

    #@32
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    #@35
    move-result-wide v184

    #@36
    .line 3445
    .local v184, "totalRealtime":J
    move-object/from16 v0, p0

    #@38
    move-wide/from16 v1, v154

    #@3a
    move/from16 v3, p4

    #@3c
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeUptime(JI)J

    #@3f
    move-result-wide v190

    #@40
    .line 3446
    .local v190, "totalUptime":J
    move-object/from16 v0, p0

    #@42
    move-wide/from16 v1, v154

    #@44
    move/from16 v3, p4

    #@46
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    #@49
    move-result-wide v214

    #@4a
    .line 3447
    .local v214, "whichBatteryScreenOffUptime":J
    move-object/from16 v0, p0

    #@4c
    move-wide/from16 v1, v24

    #@4e
    move/from16 v3, p4

    #@50
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    #@53
    move-result-wide v212

    #@54
    .line 3449
    .local v212, "whichBatteryScreenOffRealtime":J
    move-object/from16 v0, p0

    #@56
    move-wide/from16 v1, v24

    #@58
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    #@5b
    move-result-wide v42

    #@5c
    .line 3450
    .local v42, "batteryTimeRemaining":J
    move-object/from16 v0, p0

    #@5e
    move-wide/from16 v1, v24

    #@60
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    #@63
    move-result-wide v56

    #@64
    .line 3452
    .local v56, "chargeTimeRemaining":J
    new-instance v14, Ljava/lang/StringBuilder;

    #@66
    const/16 v6, 0x80

    #@68
    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@6b
    .line 3454
    .local v14, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    #@6e
    move-result-object v197

    #@6f
    .line 3455
    .local v197, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v197 .. v197}, Landroid/util/SparseArray;->size()I

    #@72
    move-result v38

    #@73
    .line 3457
    .local v38, "NU":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    #@76
    move-result v81

    #@77
    .line 3458
    .local v81, "estimatedBatteryCapacity":I
    if-lez v81, :cond_0

    #@79
    .line 3459
    const/4 v6, 0x0

    #@7a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@7d
    .line 3460
    move-object/from16 v0, p3

    #@7f
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    .line 3461
    const-string/jumbo v6, "  Estimated battery capacity: "

    #@85
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    .line 3462
    move/from16 v0, v81

    #@8a
    int-to-double v6, v0

    #@8b
    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@8e
    move-result-object v6

    #@8f
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    .line 3463
    const-string/jumbo v6, " mAh"

    #@95
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    .line 3464
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v6

    #@9c
    move-object/from16 v0, p2

    #@9e
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a1
    .line 3467
    :cond_0
    const/4 v6, 0x0

    #@a2
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@a5
    .line 3468
    move-object/from16 v0, p3

    #@a7
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    .line 3469
    const-string/jumbo v6, "  Time on battery: "

    #@ad
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    .line 3470
    const-wide/16 v6, 0x3e8

    #@b2
    div-long v6, v210, v6

    #@b4
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@b7
    const-string/jumbo v6, "("

    #@ba
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    .line 3471
    move-object/from16 v0, p0

    #@bf
    move-wide/from16 v1, v210

    #@c1
    move-wide/from16 v3, v184

    #@c3
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@c6
    move-result-object v6

    #@c7
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    .line 3472
    const-string/jumbo v6, ") realtime, "

    #@cd
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    .line 3473
    const-wide/16 v6, 0x3e8

    #@d2
    div-long v6, v216, v6

    #@d4
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@d7
    .line 3474
    const-string/jumbo v6, "("

    #@da
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-object/from16 v0, p0

    #@df
    move-wide/from16 v1, v216

    #@e1
    move-wide/from16 v3, v184

    #@e3
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@e6
    move-result-object v6

    #@e7
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    .line 3475
    const-string/jumbo v6, ") uptime"

    #@ed
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    .line 3476
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v6

    #@f4
    move-object/from16 v0, p2

    #@f6
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f9
    .line 3477
    const/4 v6, 0x0

    #@fa
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@fd
    .line 3478
    move-object/from16 v0, p3

    #@ff
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    .line 3479
    const-string/jumbo v6, "  Time on battery screen off: "

    #@105
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    .line 3480
    const-wide/16 v6, 0x3e8

    #@10a
    div-long v6, v212, v6

    #@10c
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@10f
    const-string/jumbo v6, "("

    #@112
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    .line 3481
    move-object/from16 v0, p0

    #@117
    move-wide/from16 v1, v212

    #@119
    move-wide/from16 v3, v184

    #@11b
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@11e
    move-result-object v6

    #@11f
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    .line 3482
    const-string/jumbo v6, ") realtime, "

    #@125
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    .line 3483
    const-wide/16 v6, 0x3e8

    #@12a
    div-long v6, v214, v6

    #@12c
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@12f
    .line 3484
    const-string/jumbo v6, "("

    #@132
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    .line 3485
    move-object/from16 v0, p0

    #@137
    move-wide/from16 v1, v214

    #@139
    move-wide/from16 v3, v184

    #@13b
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@13e
    move-result-object v6

    #@13f
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    .line 3486
    const-string/jumbo v6, ") uptime"

    #@145
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    .line 3487
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14b
    move-result-object v6

    #@14c
    move-object/from16 v0, p2

    #@14e
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@151
    .line 3488
    const/4 v6, 0x0

    #@152
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@155
    .line 3489
    move-object/from16 v0, p3

    #@157
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    .line 3490
    const-string/jumbo v6, "  Total run time: "

    #@15d
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    .line 3491
    const-wide/16 v6, 0x3e8

    #@162
    div-long v6, v184, v6

    #@164
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@167
    .line 3492
    const-string/jumbo v6, "realtime, "

    #@16a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    .line 3493
    const-wide/16 v6, 0x3e8

    #@16f
    div-long v6, v190, v6

    #@171
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@174
    .line 3494
    const-string/jumbo v6, "uptime"

    #@177
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    .line 3495
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17d
    move-result-object v6

    #@17e
    move-object/from16 v0, p2

    #@180
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@183
    .line 3496
    const-wide/16 v6, 0x0

    #@185
    cmp-long v6, v42, v6

    #@187
    if-ltz v6, :cond_1

    #@189
    .line 3497
    const/4 v6, 0x0

    #@18a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@18d
    .line 3498
    move-object/from16 v0, p3

    #@18f
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@192
    .line 3499
    const-string/jumbo v6, "  Battery time remaining: "

    #@195
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@198
    .line 3500
    const-wide/16 v6, 0x3e8

    #@19a
    div-long v6, v42, v6

    #@19c
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@19f
    .line 3501
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a2
    move-result-object v6

    #@1a3
    move-object/from16 v0, p2

    #@1a5
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a8
    .line 3503
    :cond_1
    const-wide/16 v6, 0x0

    #@1aa
    cmp-long v6, v56, v6

    #@1ac
    if-ltz v6, :cond_2

    #@1ae
    .line 3504
    const/4 v6, 0x0

    #@1af
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1b2
    .line 3505
    move-object/from16 v0, p3

    #@1b4
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b7
    .line 3506
    const-string/jumbo v6, "  Charge time remaining: "

    #@1ba
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    .line 3507
    const-wide/16 v6, 0x3e8

    #@1bf
    div-long v6, v56, v6

    #@1c1
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1c4
    .line 3508
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c7
    move-result-object v6

    #@1c8
    move-object/from16 v0, p2

    #@1ca
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1cd
    .line 3511
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCoulombCounter()Landroid/os/BatteryStats$LongCounter;

    #@1d0
    move-result-object v72

    #@1d1
    .line 3512
    .local v72, "dischargeCounter":Landroid/os/BatteryStats$LongCounter;
    move-object/from16 v0, v72

    #@1d3
    move/from16 v1, p4

    #@1d5
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@1d8
    move-result-wide v70

    #@1d9
    .line 3513
    .local v70, "dischargeCount":J
    const-wide/16 v6, 0x0

    #@1db
    cmp-long v6, v70, v6

    #@1dd
    if-ltz v6, :cond_3

    #@1df
    .line 3514
    const/4 v6, 0x0

    #@1e0
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1e3
    .line 3515
    move-object/from16 v0, p3

    #@1e5
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e8
    .line 3516
    const-string/jumbo v6, "  Discharge: "

    #@1eb
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ee
    .line 3517
    move-wide/from16 v0, v70

    #@1f0
    long-to-double v6, v0

    #@1f1
    const-wide v12, 0x408f400000000000L    # 1000.0

    #@1f6
    div-double/2addr v6, v12

    #@1f7
    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@1fa
    move-result-object v6

    #@1fb
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fe
    .line 3518
    const-string/jumbo v6, " mAh"

    #@201
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    .line 3519
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@207
    move-result-object v6

    #@208
    move-object/from16 v0, p2

    #@20a
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@20d
    .line 3522
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeScreenOffCoulombCounter()Landroid/os/BatteryStats$LongCounter;

    #@210
    move-result-object v73

    #@211
    .line 3523
    .local v73, "dischargeScreenOffCounter":Landroid/os/BatteryStats$LongCounter;
    move-object/from16 v0, v73

    #@213
    move/from16 v1, p4

    #@215
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@218
    move-result-wide v74

    #@219
    .line 3524
    .local v74, "dischargeScreenOffCount":J
    const-wide/16 v6, 0x0

    #@21b
    cmp-long v6, v74, v6

    #@21d
    if-ltz v6, :cond_4

    #@21f
    .line 3525
    const/4 v6, 0x0

    #@220
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@223
    .line 3526
    move-object/from16 v0, p3

    #@225
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@228
    .line 3527
    const-string/jumbo v6, "  Screen off discharge: "

    #@22b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22e
    .line 3528
    move-wide/from16 v0, v74

    #@230
    long-to-double v6, v0

    #@231
    const-wide v12, 0x408f400000000000L    # 1000.0

    #@236
    div-double/2addr v6, v12

    #@237
    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@23a
    move-result-object v6

    #@23b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23e
    .line 3529
    const-string/jumbo v6, " mAh"

    #@241
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@244
    .line 3530
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@247
    move-result-object v6

    #@248
    move-object/from16 v0, p2

    #@24a
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24d
    .line 3533
    :cond_4
    sub-long v76, v70, v74

    #@24f
    .line 3534
    .local v76, "dischargeScreenOnCount":J
    const-wide/16 v6, 0x0

    #@251
    cmp-long v6, v76, v6

    #@253
    if-ltz v6, :cond_5

    #@255
    .line 3535
    const/4 v6, 0x0

    #@256
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@259
    .line 3536
    move-object/from16 v0, p3

    #@25b
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25e
    .line 3537
    const-string/jumbo v6, "  Screen on discharge: "

    #@261
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@264
    .line 3538
    move-wide/from16 v0, v76

    #@266
    long-to-double v6, v0

    #@267
    const-wide v12, 0x408f400000000000L    # 1000.0

    #@26c
    div-double/2addr v6, v12

    #@26d
    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@270
    move-result-object v6

    #@271
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@274
    .line 3539
    const-string/jumbo v6, " mAh"

    #@277
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27a
    .line 3540
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27d
    move-result-object v6

    #@27e
    move-object/from16 v0, p2

    #@280
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@283
    .line 3543
    :cond_5
    const-string/jumbo v6, "  Start clock time: "

    #@286
    move-object/from16 v0, p2

    #@288
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28b
    .line 3544
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    #@28e
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    #@291
    move-result-wide v12

    #@292
    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    #@295
    move-result-object v6

    #@296
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@299
    move-result-object v6

    #@29a
    move-object/from16 v0, p2

    #@29c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@29f
    .line 3546
    move-object/from16 v0, p0

    #@2a1
    move-wide/from16 v1, v24

    #@2a3
    move/from16 v3, p4

    #@2a5
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    #@2a8
    move-result-wide v156

    #@2a9
    .line 3547
    .local v156, "screenOnTime":J
    move-object/from16 v0, p0

    #@2ab
    move-wide/from16 v1, v24

    #@2ad
    move/from16 v3, p4

    #@2af
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    #@2b2
    move-result-wide v96

    #@2b3
    .line 3548
    .local v96, "interactiveTime":J
    move-object/from16 v0, p0

    #@2b5
    move-wide/from16 v1, v24

    #@2b7
    move/from16 v3, p4

    #@2b9
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    #@2bc
    move-result-wide v148

    #@2bd
    .line 3549
    .local v148, "powerSaveModeEnabledTime":J
    const/4 v6, 0x1

    #@2be
    move-object/from16 v0, p0

    #@2c0
    move-wide/from16 v1, v24

    #@2c2
    move/from16 v3, p4

    #@2c4
    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    #@2c7
    move-result-wide v64

    #@2c8
    .line 3551
    .local v64, "deviceIdleModeLightTime":J
    const/4 v6, 0x2

    #@2c9
    move-object/from16 v0, p0

    #@2cb
    move-wide/from16 v1, v24

    #@2cd
    move/from16 v3, p4

    #@2cf
    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    #@2d2
    move-result-wide v62

    #@2d3
    .line 3553
    .local v62, "deviceIdleModeFullTime":J
    const/4 v6, 0x1

    #@2d4
    move-object/from16 v0, p0

    #@2d6
    move-wide/from16 v1, v24

    #@2d8
    move/from16 v3, p4

    #@2da
    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    #@2dd
    move-result-wide v68

    #@2de
    .line 3555
    .local v68, "deviceLightIdlingTime":J
    const/4 v6, 0x2

    #@2df
    move-object/from16 v0, p0

    #@2e1
    move-wide/from16 v1, v24

    #@2e3
    move/from16 v3, p4

    #@2e5
    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    #@2e8
    move-result-wide v66

    #@2e9
    .line 3557
    .local v66, "deviceIdlingTime":J
    move-object/from16 v0, p0

    #@2eb
    move-wide/from16 v1, v24

    #@2ed
    move/from16 v3, p4

    #@2ef
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    #@2f2
    move-result-wide v144

    #@2f3
    .line 3558
    .local v144, "phoneOnTime":J
    move-object/from16 v0, p0

    #@2f5
    move-wide/from16 v1, v24

    #@2f7
    move/from16 v3, p4

    #@2f9
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    #@2fc
    move-result-wide v220

    #@2fd
    .line 3559
    .local v220, "wifiRunningTime":J
    move-object/from16 v0, p0

    #@2ff
    move-wide/from16 v1, v24

    #@301
    move/from16 v3, p4

    #@303
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    #@306
    move-result-wide v218

    #@307
    .line 3560
    .local v218, "wifiOnTime":J
    const/4 v6, 0x0

    #@308
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@30b
    .line 3561
    move-object/from16 v0, p3

    #@30d
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@310
    .line 3562
    const-string/jumbo v6, "  Screen on: "

    #@313
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@316
    const-wide/16 v6, 0x3e8

    #@318
    div-long v6, v156, v6

    #@31a
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@31d
    .line 3563
    const-string/jumbo v6, "("

    #@320
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@323
    move-object/from16 v0, p0

    #@325
    move-wide/from16 v1, v156

    #@327
    move-wide/from16 v3, v210

    #@329
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@32c
    move-result-object v6

    #@32d
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@330
    .line 3564
    const-string/jumbo v6, ") "

    #@333
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@336
    move-object/from16 v0, p0

    #@338
    move/from16 v1, p4

    #@33a
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getScreenOnCount(I)I

    #@33d
    move-result v6

    #@33e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@341
    .line 3565
    const-string/jumbo v6, "x, Interactive: "

    #@344
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@347
    const-wide/16 v6, 0x3e8

    #@349
    div-long v6, v96, v6

    #@34b
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@34e
    .line 3566
    const-string/jumbo v6, "("

    #@351
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@354
    move-object/from16 v0, p0

    #@356
    move-wide/from16 v1, v96

    #@358
    move-wide/from16 v3, v210

    #@35a
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@35d
    move-result-object v6

    #@35e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@361
    .line 3567
    const-string/jumbo v6, ")"

    #@364
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@367
    .line 3568
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36a
    move-result-object v6

    #@36b
    move-object/from16 v0, p2

    #@36d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@370
    .line 3569
    const/4 v6, 0x0

    #@371
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@374
    .line 3570
    move-object/from16 v0, p3

    #@376
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@379
    .line 3571
    const-string/jumbo v6, "  Screen brightnesses:"

    #@37c
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37f
    .line 3572
    const/16 v61, 0x0

    #@381
    .line 3573
    .local v61, "didOne":Z
    const/16 v94, 0x0

    #@383
    .local v94, "i":I
    :goto_0
    const/4 v6, 0x5

    #@384
    move/from16 v0, v94

    #@386
    if-ge v0, v6, :cond_7

    #@388
    .line 3574
    move-object/from16 v0, p0

    #@38a
    move/from16 v1, v94

    #@38c
    move-wide/from16 v2, v24

    #@38e
    move/from16 v4, p4

    #@390
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    #@393
    move-result-wide v172

    #@394
    .line 3575
    .local v172, "time":J
    const-wide/16 v6, 0x0

    #@396
    cmp-long v6, v172, v6

    #@398
    if-nez v6, :cond_6

    #@39a
    .line 3573
    :goto_1
    add-int/lit8 v94, v94, 0x1

    #@39c
    goto :goto_0

    #@39d
    .line 3578
    :cond_6
    const-string/jumbo v6, "\n    "

    #@3a0
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a3
    .line 3579
    move-object/from16 v0, p3

    #@3a5
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a8
    .line 3580
    const/16 v61, 0x1

    #@3aa
    .line 3581
    sget-object v6, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    #@3ac
    aget-object v6, v6, v94

    #@3ae
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b1
    .line 3582
    const-string/jumbo v6, " "

    #@3b4
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b7
    .line 3583
    const-wide/16 v6, 0x3e8

    #@3b9
    div-long v6, v172, v6

    #@3bb
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@3be
    .line 3584
    const-string/jumbo v6, "("

    #@3c1
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c4
    .line 3585
    move-object/from16 v0, p0

    #@3c6
    move-wide/from16 v1, v172

    #@3c8
    move-wide/from16 v3, v156

    #@3ca
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@3cd
    move-result-object v6

    #@3ce
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d1
    .line 3586
    const-string/jumbo v6, ")"

    #@3d4
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d7
    goto :goto_1

    #@3d8
    .line 3588
    .end local v172    # "time":J
    :cond_7
    if-nez v61, :cond_8

    #@3da
    const-string/jumbo v6, " (no activity)"

    #@3dd
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e0
    .line 3589
    :cond_8
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e3
    move-result-object v6

    #@3e4
    move-object/from16 v0, p2

    #@3e6
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3e9
    .line 3590
    const-wide/16 v6, 0x0

    #@3eb
    cmp-long v6, v148, v6

    #@3ed
    if-eqz v6, :cond_9

    #@3ef
    .line 3591
    const/4 v6, 0x0

    #@3f0
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@3f3
    .line 3592
    move-object/from16 v0, p3

    #@3f5
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f8
    .line 3593
    const-string/jumbo v6, "  Power save mode enabled: "

    #@3fb
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fe
    .line 3594
    const-wide/16 v6, 0x3e8

    #@400
    div-long v6, v148, v6

    #@402
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@405
    .line 3595
    const-string/jumbo v6, "("

    #@408
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40b
    .line 3596
    move-object/from16 v0, p0

    #@40d
    move-wide/from16 v1, v148

    #@40f
    move-wide/from16 v3, v210

    #@411
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@414
    move-result-object v6

    #@415
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@418
    .line 3597
    const-string/jumbo v6, ")"

    #@41b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41e
    .line 3598
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@421
    move-result-object v6

    #@422
    move-object/from16 v0, p2

    #@424
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@427
    .line 3600
    :cond_9
    const-wide/16 v6, 0x0

    #@429
    cmp-long v6, v68, v6

    #@42b
    if-eqz v6, :cond_a

    #@42d
    .line 3601
    const/4 v6, 0x0

    #@42e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@431
    .line 3602
    move-object/from16 v0, p3

    #@433
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@436
    .line 3603
    const-string/jumbo v6, "  Device light idling: "

    #@439
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43c
    .line 3604
    const-wide/16 v6, 0x3e8

    #@43e
    div-long v6, v68, v6

    #@440
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@443
    .line 3605
    const-string/jumbo v6, "("

    #@446
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@449
    .line 3606
    move-object/from16 v0, p0

    #@44b
    move-wide/from16 v1, v68

    #@44d
    move-wide/from16 v3, v210

    #@44f
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@452
    move-result-object v6

    #@453
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@456
    .line 3607
    const-string/jumbo v6, ") "

    #@459
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45c
    const/4 v6, 0x1

    #@45d
    move-object/from16 v0, p0

    #@45f
    move/from16 v1, p4

    #@461
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    #@464
    move-result v6

    #@465
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@468
    .line 3608
    const-string/jumbo v6, "x"

    #@46b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46e
    .line 3609
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@471
    move-result-object v6

    #@472
    move-object/from16 v0, p2

    #@474
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@477
    .line 3611
    :cond_a
    const-wide/16 v6, 0x0

    #@479
    cmp-long v6, v64, v6

    #@47b
    if-eqz v6, :cond_b

    #@47d
    .line 3612
    const/4 v6, 0x0

    #@47e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@481
    .line 3613
    move-object/from16 v0, p3

    #@483
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@486
    .line 3614
    const-string/jumbo v6, "  Idle mode light time: "

    #@489
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48c
    .line 3615
    const-wide/16 v6, 0x3e8

    #@48e
    div-long v6, v64, v6

    #@490
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@493
    .line 3616
    const-string/jumbo v6, "("

    #@496
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@499
    .line 3617
    move-object/from16 v0, p0

    #@49b
    move-wide/from16 v1, v64

    #@49d
    move-wide/from16 v3, v210

    #@49f
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@4a2
    move-result-object v6

    #@4a3
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a6
    .line 3618
    const-string/jumbo v6, ") "

    #@4a9
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ac
    .line 3619
    const/4 v6, 0x1

    #@4ad
    move-object/from16 v0, p0

    #@4af
    move/from16 v1, p4

    #@4b1
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    #@4b4
    move-result v6

    #@4b5
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b8
    .line 3620
    const-string/jumbo v6, "x"

    #@4bb
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4be
    .line 3621
    const-string/jumbo v6, " -- longest "

    #@4c1
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c4
    .line 3622
    const/4 v6, 0x1

    #@4c5
    move-object/from16 v0, p0

    #@4c7
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    #@4ca
    move-result-wide v6

    #@4cb
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@4ce
    .line 3623
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d1
    move-result-object v6

    #@4d2
    move-object/from16 v0, p2

    #@4d4
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4d7
    .line 3625
    :cond_b
    const-wide/16 v6, 0x0

    #@4d9
    cmp-long v6, v66, v6

    #@4db
    if-eqz v6, :cond_c

    #@4dd
    .line 3626
    const/4 v6, 0x0

    #@4de
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@4e1
    .line 3627
    move-object/from16 v0, p3

    #@4e3
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e6
    .line 3628
    const-string/jumbo v6, "  Device full idling: "

    #@4e9
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ec
    .line 3629
    const-wide/16 v6, 0x3e8

    #@4ee
    div-long v6, v66, v6

    #@4f0
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@4f3
    .line 3630
    const-string/jumbo v6, "("

    #@4f6
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f9
    .line 3631
    move-object/from16 v0, p0

    #@4fb
    move-wide/from16 v1, v66

    #@4fd
    move-wide/from16 v3, v210

    #@4ff
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@502
    move-result-object v6

    #@503
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@506
    .line 3632
    const-string/jumbo v6, ") "

    #@509
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50c
    const/4 v6, 0x2

    #@50d
    move-object/from16 v0, p0

    #@50f
    move/from16 v1, p4

    #@511
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    #@514
    move-result v6

    #@515
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@518
    .line 3633
    const-string/jumbo v6, "x"

    #@51b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51e
    .line 3634
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@521
    move-result-object v6

    #@522
    move-object/from16 v0, p2

    #@524
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@527
    .line 3636
    :cond_c
    const-wide/16 v6, 0x0

    #@529
    cmp-long v6, v62, v6

    #@52b
    if-eqz v6, :cond_d

    #@52d
    .line 3637
    const/4 v6, 0x0

    #@52e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@531
    .line 3638
    move-object/from16 v0, p3

    #@533
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@536
    .line 3639
    const-string/jumbo v6, "  Idle mode full time: "

    #@539
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53c
    .line 3640
    const-wide/16 v6, 0x3e8

    #@53e
    div-long v6, v62, v6

    #@540
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@543
    .line 3641
    const-string/jumbo v6, "("

    #@546
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@549
    .line 3642
    move-object/from16 v0, p0

    #@54b
    move-wide/from16 v1, v62

    #@54d
    move-wide/from16 v3, v210

    #@54f
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@552
    move-result-object v6

    #@553
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@556
    .line 3643
    const-string/jumbo v6, ") "

    #@559
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55c
    .line 3644
    const/4 v6, 0x2

    #@55d
    move-object/from16 v0, p0

    #@55f
    move/from16 v1, p4

    #@561
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    #@564
    move-result v6

    #@565
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@568
    .line 3645
    const-string/jumbo v6, "x"

    #@56b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56e
    .line 3646
    const-string/jumbo v6, " -- longest "

    #@571
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@574
    .line 3647
    const/4 v6, 0x2

    #@575
    move-object/from16 v0, p0

    #@577
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    #@57a
    move-result-wide v6

    #@57b
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@57e
    .line 3648
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@581
    move-result-object v6

    #@582
    move-object/from16 v0, p2

    #@584
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@587
    .line 3650
    :cond_d
    const-wide/16 v6, 0x0

    #@589
    cmp-long v6, v144, v6

    #@58b
    if-eqz v6, :cond_e

    #@58d
    .line 3651
    const/4 v6, 0x0

    #@58e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@591
    .line 3652
    move-object/from16 v0, p3

    #@593
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@596
    .line 3653
    const-string/jumbo v6, "  Active phone call: "

    #@599
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59c
    const-wide/16 v6, 0x3e8

    #@59e
    div-long v6, v144, v6

    #@5a0
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@5a3
    .line 3654
    const-string/jumbo v6, "("

    #@5a6
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a9
    move-object/from16 v0, p0

    #@5ab
    move-wide/from16 v1, v144

    #@5ad
    move-wide/from16 v3, v210

    #@5af
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@5b2
    move-result-object v6

    #@5b3
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b6
    .line 3655
    const-string/jumbo v6, ") "

    #@5b9
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5bc
    move-object/from16 v0, p0

    #@5be
    move/from16 v1, p4

    #@5c0
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getPhoneOnCount(I)I

    #@5c3
    move-result v6

    #@5c4
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c7
    const-string/jumbo v6, "x"

    #@5ca
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5cd
    .line 3657
    :cond_e
    move-object/from16 v0, p0

    #@5cf
    move/from16 v1, p4

    #@5d1
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    #@5d4
    move-result v58

    #@5d5
    .line 3658
    .local v58, "connChanges":I
    if-eqz v58, :cond_f

    #@5d7
    .line 3659
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5da
    .line 3660
    const-string/jumbo v6, "  Connectivity changes: "

    #@5dd
    move-object/from16 v0, p2

    #@5df
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e2
    move-object/from16 v0, p2

    #@5e4
    move/from16 v1, v58

    #@5e6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    #@5e9
    .line 3664
    :cond_f
    const-wide/16 v86, 0x0

    #@5eb
    .line 3665
    .local v86, "fullWakeLockTimeTotalMicros":J
    const-wide/16 v142, 0x0

    #@5ed
    .line 3667
    .local v142, "partialWakeLockTimeTotalMicros":J
    new-instance v176, Ljava/util/ArrayList;

    #@5ef
    invoke-direct/range {v176 .. v176}, Ljava/util/ArrayList;-><init>()V

    #@5f2
    .line 3669
    .local v176, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    const/16 v104, 0x0

    #@5f4
    .local v104, "iu":I
    :goto_2
    move/from16 v0, v104

    #@5f6
    move/from16 v1, v38

    #@5f8
    if-ge v0, v1, :cond_14

    #@5fa
    .line 3670
    move-object/from16 v0, v197

    #@5fc
    move/from16 v1, v104

    #@5fe
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@601
    move-result-object v177

    #@602
    check-cast v177, Landroid/os/BatteryStats$Uid;

    #@604
    .line 3673
    .local v177, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    #@607
    move-result-object v207

    #@608
    .line 3674
    .local v207, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual/range {v207 .. v207}, Landroid/util/ArrayMap;->size()I

    #@60b
    move-result v6

    #@60c
    add-int/lit8 v105, v6, -0x1

    #@60e
    .local v105, "iw":I
    :goto_3
    if-ltz v105, :cond_13

    #@610
    .line 3675
    move-object/from16 v0, v207

    #@612
    move/from16 v1, v105

    #@614
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@617
    move-result-object v242

    #@618
    check-cast v242, Landroid/os/BatteryStats$Uid$Wakelock;

    #@61a
    .line 3677
    .local v242, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v6, 0x1

    #@61b
    move-object/from16 v0, v242

    #@61d
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@620
    move-result-object v83

    #@621
    .line 3678
    .local v83, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v83, :cond_10

    #@623
    .line 3679
    move-object/from16 v0, v83

    #@625
    move-wide/from16 v1, v24

    #@627
    move/from16 v3, p4

    #@629
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@62c
    move-result-wide v6

    #@62d
    add-long v86, v86, v6

    #@62f
    .line 3683
    :cond_10
    const/4 v6, 0x0

    #@630
    move-object/from16 v0, v242

    #@632
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@635
    move-result-object v9

    #@636
    .line 3684
    .local v9, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v9, :cond_12

    #@638
    .line 3685
    move-wide/from16 v0, v24

    #@63a
    move/from16 v2, p4

    #@63c
    invoke-virtual {v9, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@63f
    move-result-wide v10

    #@640
    .line 3687
    .local v10, "totalTimeMicros":J
    const-wide/16 v6, 0x0

    #@642
    cmp-long v6, v10, v6

    #@644
    if-lez v6, :cond_12

    #@646
    .line 3688
    if-gez p5, :cond_11

    #@648
    .line 3692
    new-instance v6, Landroid/os/BatteryStats$TimerEntry;

    #@64a
    move-object/from16 v0, v207

    #@64c
    move/from16 v1, v105

    #@64e
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@651
    move-result-object v7

    #@652
    check-cast v7, Ljava/lang/String;

    #@654
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getUid()I

    #@657
    move-result v8

    #@658
    invoke-direct/range {v6 .. v11}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    #@65b
    move-object/from16 v0, v176

    #@65d
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@660
    .line 3695
    :cond_11
    add-long v142, v142, v10

    #@662
    .line 3674
    .end local v10    # "totalTimeMicros":J
    :cond_12
    add-int/lit8 v105, v105, -0x1

    #@664
    goto :goto_3

    #@665
    .line 3669
    .end local v9    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v83    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v242    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_13
    add-int/lit8 v104, v104, 0x1

    #@667
    goto :goto_2

    #@668
    .line 3701
    .end local v105    # "iw":I
    .end local v177    # "u":Landroid/os/BatteryStats$Uid;
    .end local v207    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_14
    const/4 v6, 0x0

    #@669
    move-object/from16 v0, p0

    #@66b
    move/from16 v1, p4

    #@66d
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@670
    move-result-wide v122

    #@671
    .line 3702
    .local v122, "mobileRxTotalBytes":J
    const/4 v6, 0x1

    #@672
    move-object/from16 v0, p0

    #@674
    move/from16 v1, p4

    #@676
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@679
    move-result-wide v130

    #@67a
    .line 3703
    .local v130, "mobileTxTotalBytes":J
    const/4 v6, 0x2

    #@67b
    move-object/from16 v0, p0

    #@67d
    move/from16 v1, p4

    #@67f
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@682
    move-result-wide v226

    #@683
    .line 3704
    .local v226, "wifiRxTotalBytes":J
    const/4 v6, 0x3

    #@684
    move-object/from16 v0, p0

    #@686
    move/from16 v1, p4

    #@688
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@68b
    move-result-wide v236

    #@68c
    .line 3705
    .local v236, "wifiTxTotalBytes":J
    const/4 v6, 0x0

    #@68d
    move-object/from16 v0, p0

    #@68f
    move/from16 v1, p4

    #@691
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    #@694
    move-result-wide v124

    #@695
    .line 3706
    .local v124, "mobileRxTotalPackets":J
    const/4 v6, 0x1

    #@696
    move-object/from16 v0, p0

    #@698
    move/from16 v1, p4

    #@69a
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    #@69d
    move-result-wide v132

    #@69e
    .line 3707
    .local v132, "mobileTxTotalPackets":J
    const/4 v6, 0x2

    #@69f
    move-object/from16 v0, p0

    #@6a1
    move/from16 v1, p4

    #@6a3
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    #@6a6
    move-result-wide v228

    #@6a7
    .line 3708
    .local v228, "wifiRxTotalPackets":J
    const/4 v6, 0x3

    #@6a8
    move-object/from16 v0, p0

    #@6aa
    move/from16 v1, p4

    #@6ac
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    #@6af
    move-result-wide v238

    #@6b0
    .line 3709
    .local v238, "wifiTxTotalPackets":J
    const/4 v6, 0x4

    #@6b1
    move-object/from16 v0, p0

    #@6b3
    move/from16 v1, p4

    #@6b5
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@6b8
    move-result-wide v50

    #@6b9
    .line 3710
    .local v50, "btRxTotalBytes":J
    const/4 v6, 0x5

    #@6ba
    move-object/from16 v0, p0

    #@6bc
    move/from16 v1, p4

    #@6be
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@6c1
    move-result-wide v54

    #@6c2
    .line 3712
    .local v54, "btTxTotalBytes":J
    const-wide/16 v6, 0x0

    #@6c4
    cmp-long v6, v86, v6

    #@6c6
    if-eqz v6, :cond_15

    #@6c8
    .line 3713
    const/4 v6, 0x0

    #@6c9
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6cc
    .line 3714
    move-object/from16 v0, p3

    #@6ce
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d1
    .line 3715
    const-string/jumbo v6, "  Total full wakelock time: "

    #@6d4
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d7
    .line 3716
    const-wide/16 v6, 0x1f4

    #@6d9
    add-long v6, v6, v86

    #@6db
    const-wide/16 v12, 0x3e8

    #@6dd
    div-long/2addr v6, v12

    #@6de
    .line 3715
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    #@6e1
    .line 3717
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e4
    move-result-object v6

    #@6e5
    move-object/from16 v0, p2

    #@6e7
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6ea
    .line 3720
    :cond_15
    const-wide/16 v6, 0x0

    #@6ec
    cmp-long v6, v142, v6

    #@6ee
    if-eqz v6, :cond_16

    #@6f0
    .line 3721
    const/4 v6, 0x0

    #@6f1
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6f4
    .line 3722
    move-object/from16 v0, p3

    #@6f6
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f9
    .line 3723
    const-string/jumbo v6, "  Total partial wakelock time: "

    #@6fc
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6ff
    .line 3724
    const-wide/16 v6, 0x1f4

    #@701
    add-long v6, v6, v142

    #@703
    const-wide/16 v12, 0x3e8

    #@705
    div-long/2addr v6, v12

    #@706
    .line 3723
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    #@709
    .line 3725
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70c
    move-result-object v6

    #@70d
    move-object/from16 v0, p2

    #@70f
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@712
    .line 3728
    :cond_16
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@715
    .line 3729
    const-string/jumbo v6, "  Mobile total received: "

    #@718
    move-object/from16 v0, p2

    #@71a
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71d
    move-object/from16 v0, p0

    #@71f
    move-wide/from16 v1, v122

    #@721
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@724
    move-result-object v6

    #@725
    move-object/from16 v0, p2

    #@727
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@72a
    .line 3730
    const-string/jumbo v6, ", sent: "

    #@72d
    move-object/from16 v0, p2

    #@72f
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@732
    move-object/from16 v0, p0

    #@734
    move-wide/from16 v1, v130

    #@736
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@739
    move-result-object v6

    #@73a
    move-object/from16 v0, p2

    #@73c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@73f
    .line 3731
    const-string/jumbo v6, " (packets received "

    #@742
    move-object/from16 v0, p2

    #@744
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@747
    move-object/from16 v0, p2

    #@749
    move-wide/from16 v1, v124

    #@74b
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@74e
    .line 3732
    const-string/jumbo v6, ", sent "

    #@751
    move-object/from16 v0, p2

    #@753
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@756
    move-object/from16 v0, p2

    #@758
    move-wide/from16 v1, v132

    #@75a
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@75d
    const-string/jumbo v6, ")"

    #@760
    move-object/from16 v0, p2

    #@762
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@765
    .line 3733
    const/4 v6, 0x0

    #@766
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@769
    .line 3734
    move-object/from16 v0, p3

    #@76b
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76e
    .line 3735
    const-string/jumbo v6, "  Phone signal levels:"

    #@771
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@774
    .line 3736
    const/16 v61, 0x0

    #@776
    .line 3737
    const/16 v94, 0x0

    #@778
    :goto_4
    const/4 v6, 0x5

    #@779
    move/from16 v0, v94

    #@77b
    if-ge v0, v6, :cond_18

    #@77d
    .line 3738
    move-object/from16 v0, p0

    #@77f
    move/from16 v1, v94

    #@781
    move-wide/from16 v2, v24

    #@783
    move/from16 v4, p4

    #@785
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    #@788
    move-result-wide v172

    #@789
    .line 3739
    .restart local v172    # "time":J
    const-wide/16 v6, 0x0

    #@78b
    cmp-long v6, v172, v6

    #@78d
    if-nez v6, :cond_17

    #@78f
    .line 3737
    :goto_5
    add-int/lit8 v94, v94, 0x1

    #@791
    goto :goto_4

    #@792
    .line 3742
    :cond_17
    const-string/jumbo v6, "\n    "

    #@795
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@798
    .line 3743
    move-object/from16 v0, p3

    #@79a
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79d
    .line 3744
    const/16 v61, 0x1

    #@79f
    .line 3745
    sget-object v6, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    #@7a1
    aget-object v6, v6, v94

    #@7a3
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a6
    .line 3746
    const-string/jumbo v6, " "

    #@7a9
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7ac
    .line 3747
    const-wide/16 v6, 0x3e8

    #@7ae
    div-long v6, v172, v6

    #@7b0
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@7b3
    .line 3748
    const-string/jumbo v6, "("

    #@7b6
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b9
    .line 3749
    move-object/from16 v0, p0

    #@7bb
    move-wide/from16 v1, v172

    #@7bd
    move-wide/from16 v3, v210

    #@7bf
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@7c2
    move-result-object v6

    #@7c3
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c6
    .line 3750
    const-string/jumbo v6, ") "

    #@7c9
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7cc
    .line 3751
    move-object/from16 v0, p0

    #@7ce
    move/from16 v1, v94

    #@7d0
    move/from16 v2, p4

    #@7d2
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    #@7d5
    move-result v6

    #@7d6
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d9
    .line 3752
    const-string/jumbo v6, "x"

    #@7dc
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7df
    goto :goto_5

    #@7e0
    .line 3754
    .end local v172    # "time":J
    :cond_18
    if-nez v61, :cond_19

    #@7e2
    const-string/jumbo v6, " (no activity)"

    #@7e5
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e8
    .line 3755
    :cond_19
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7eb
    move-result-object v6

    #@7ec
    move-object/from16 v0, p2

    #@7ee
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7f1
    .line 3757
    const/4 v6, 0x0

    #@7f2
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@7f5
    .line 3758
    move-object/from16 v0, p3

    #@7f7
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7fa
    .line 3759
    const-string/jumbo v6, "  Signal scanning time: "

    #@7fd
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@800
    .line 3760
    move-object/from16 v0, p0

    #@802
    move-wide/from16 v1, v24

    #@804
    move/from16 v3, p4

    #@806
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    #@809
    move-result-wide v6

    #@80a
    const-wide/16 v12, 0x3e8

    #@80c
    div-long/2addr v6, v12

    #@80d
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    #@810
    .line 3761
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@813
    move-result-object v6

    #@814
    move-object/from16 v0, p2

    #@816
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@819
    .line 3763
    const/4 v6, 0x0

    #@81a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@81d
    .line 3764
    move-object/from16 v0, p3

    #@81f
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@822
    .line 3765
    const-string/jumbo v6, "  Radio types:"

    #@825
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@828
    .line 3766
    const/16 v61, 0x0

    #@82a
    .line 3767
    const/16 v94, 0x0

    #@82c
    :goto_6
    const/16 v6, 0x11

    #@82e
    move/from16 v0, v94

    #@830
    if-ge v0, v6, :cond_1b

    #@832
    .line 3768
    move-object/from16 v0, p0

    #@834
    move/from16 v1, v94

    #@836
    move-wide/from16 v2, v24

    #@838
    move/from16 v4, p4

    #@83a
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    #@83d
    move-result-wide v172

    #@83e
    .line 3769
    .restart local v172    # "time":J
    const-wide/16 v6, 0x0

    #@840
    cmp-long v6, v172, v6

    #@842
    if-nez v6, :cond_1a

    #@844
    .line 3767
    :goto_7
    add-int/lit8 v94, v94, 0x1

    #@846
    goto :goto_6

    #@847
    .line 3772
    :cond_1a
    const-string/jumbo v6, "\n    "

    #@84a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84d
    .line 3773
    move-object/from16 v0, p3

    #@84f
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@852
    .line 3774
    const/16 v61, 0x1

    #@854
    .line 3775
    sget-object v6, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    #@856
    aget-object v6, v6, v94

    #@858
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85b
    .line 3776
    const-string/jumbo v6, " "

    #@85e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@861
    .line 3777
    const-wide/16 v6, 0x3e8

    #@863
    div-long v6, v172, v6

    #@865
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@868
    .line 3778
    const-string/jumbo v6, "("

    #@86b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86e
    .line 3779
    move-object/from16 v0, p0

    #@870
    move-wide/from16 v1, v172

    #@872
    move-wide/from16 v3, v210

    #@874
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@877
    move-result-object v6

    #@878
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87b
    .line 3780
    const-string/jumbo v6, ") "

    #@87e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@881
    .line 3781
    move-object/from16 v0, p0

    #@883
    move/from16 v1, v94

    #@885
    move/from16 v2, p4

    #@887
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    #@88a
    move-result v6

    #@88b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@88e
    .line 3782
    const-string/jumbo v6, "x"

    #@891
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@894
    goto :goto_7

    #@895
    .line 3784
    .end local v172    # "time":J
    :cond_1b
    if-nez v61, :cond_1c

    #@897
    const-string/jumbo v6, " (no activity)"

    #@89a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89d
    .line 3785
    :cond_1c
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a0
    move-result-object v6

    #@8a1
    move-object/from16 v0, p2

    #@8a3
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8a6
    .line 3787
    const/4 v6, 0x0

    #@8a7
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@8aa
    .line 3788
    move-object/from16 v0, p3

    #@8ac
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8af
    .line 3789
    const-string/jumbo v6, "  Mobile radio active time: "

    #@8b2
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b5
    .line 3790
    move-object/from16 v0, p0

    #@8b7
    move-wide/from16 v1, v24

    #@8b9
    move/from16 v3, p4

    #@8bb
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    #@8be
    move-result-wide v114

    #@8bf
    .line 3791
    .local v114, "mobileActiveTime":J
    const-wide/16 v6, 0x3e8

    #@8c1
    div-long v6, v114, v6

    #@8c3
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@8c6
    .line 3792
    const-string/jumbo v6, "("

    #@8c9
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8cc
    move-object/from16 v0, p0

    #@8ce
    move-wide/from16 v1, v114

    #@8d0
    move-wide/from16 v3, v210

    #@8d2
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@8d5
    move-result-object v6

    #@8d6
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d9
    .line 3793
    const-string/jumbo v6, ") "

    #@8dc
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8df
    move-object/from16 v0, p0

    #@8e1
    move/from16 v1, p4

    #@8e3
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    #@8e6
    move-result v6

    #@8e7
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8ea
    .line 3794
    const-string/jumbo v6, "x"

    #@8ed
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f0
    .line 3795
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f3
    move-result-object v6

    #@8f4
    move-object/from16 v0, p2

    #@8f6
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8f9
    .line 3797
    move-object/from16 v0, p0

    #@8fb
    move/from16 v1, p4

    #@8fd
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    #@900
    move-result-wide v116

    #@901
    .line 3798
    .local v116, "mobileActiveUnknownTime":J
    const-wide/16 v6, 0x0

    #@903
    cmp-long v6, v116, v6

    #@905
    if-eqz v6, :cond_1d

    #@907
    .line 3799
    const/4 v6, 0x0

    #@908
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@90b
    .line 3800
    move-object/from16 v0, p3

    #@90d
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@910
    .line 3801
    const-string/jumbo v6, "  Mobile radio active unknown time: "

    #@913
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@916
    .line 3802
    const-wide/16 v6, 0x3e8

    #@918
    div-long v6, v116, v6

    #@91a
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@91d
    .line 3803
    const-string/jumbo v6, "("

    #@920
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@923
    .line 3804
    move-object/from16 v0, p0

    #@925
    move-wide/from16 v1, v116

    #@927
    move-wide/from16 v3, v210

    #@929
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@92c
    move-result-object v6

    #@92d
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@930
    .line 3805
    const-string/jumbo v6, ") "

    #@933
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@936
    move-object/from16 v0, p0

    #@938
    move/from16 v1, p4

    #@93a
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownCount(I)I

    #@93d
    move-result v6

    #@93e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@941
    .line 3806
    const-string/jumbo v6, "x"

    #@944
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@947
    .line 3807
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94a
    move-result-object v6

    #@94b
    move-object/from16 v0, p2

    #@94d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@950
    .line 3810
    :cond_1d
    move-object/from16 v0, p0

    #@952
    move/from16 v1, p4

    #@954
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    #@957
    move-result-wide v112

    #@958
    .line 3811
    .local v112, "mobileActiveAdjustedTime":J
    const-wide/16 v6, 0x0

    #@95a
    cmp-long v6, v112, v6

    #@95c
    if-eqz v6, :cond_1e

    #@95e
    .line 3812
    const/4 v6, 0x0

    #@95f
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@962
    .line 3813
    move-object/from16 v0, p3

    #@964
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@967
    .line 3814
    const-string/jumbo v6, "  Mobile radio active adjusted time: "

    #@96a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96d
    .line 3815
    const-wide/16 v6, 0x3e8

    #@96f
    div-long v6, v112, v6

    #@971
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@974
    .line 3816
    const-string/jumbo v6, "("

    #@977
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97a
    .line 3817
    move-object/from16 v0, p0

    #@97c
    move-wide/from16 v1, v112

    #@97e
    move-wide/from16 v3, v210

    #@980
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@983
    move-result-object v6

    #@984
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@987
    .line 3818
    const-string/jumbo v6, ")"

    #@98a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98d
    .line 3819
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@990
    move-result-object v6

    #@991
    move-object/from16 v0, p2

    #@993
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@996
    .line 3822
    :cond_1e
    const-string/jumbo v16, "Radio"

    #@999
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@99c
    move-result-object v17

    #@99d
    move-object/from16 v12, p0

    #@99f
    move-object/from16 v13, p2

    #@9a1
    move-object/from16 v15, p3

    #@9a3
    move/from16 v18, p4

    #@9a5
    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    #@9a8
    .line 3824
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9ab
    .line 3825
    const-string/jumbo v6, "  Wi-Fi total received: "

    #@9ae
    move-object/from16 v0, p2

    #@9b0
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9b3
    move-object/from16 v0, p0

    #@9b5
    move-wide/from16 v1, v226

    #@9b7
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@9ba
    move-result-object v6

    #@9bb
    move-object/from16 v0, p2

    #@9bd
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9c0
    .line 3826
    const-string/jumbo v6, ", sent: "

    #@9c3
    move-object/from16 v0, p2

    #@9c5
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9c8
    move-object/from16 v0, p0

    #@9ca
    move-wide/from16 v1, v236

    #@9cc
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@9cf
    move-result-object v6

    #@9d0
    move-object/from16 v0, p2

    #@9d2
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9d5
    .line 3827
    const-string/jumbo v6, " (packets received "

    #@9d8
    move-object/from16 v0, p2

    #@9da
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9dd
    move-object/from16 v0, p2

    #@9df
    move-wide/from16 v1, v228

    #@9e1
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@9e4
    .line 3828
    const-string/jumbo v6, ", sent "

    #@9e7
    move-object/from16 v0, p2

    #@9e9
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9ec
    move-object/from16 v0, p2

    #@9ee
    move-wide/from16 v1, v238

    #@9f0
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@9f3
    const-string/jumbo v6, ")"

    #@9f6
    move-object/from16 v0, p2

    #@9f8
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9fb
    .line 3829
    const/4 v6, 0x0

    #@9fc
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@9ff
    .line 3830
    move-object/from16 v0, p3

    #@a01
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a04
    .line 3831
    const-string/jumbo v6, "  Wifi on: "

    #@a07
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0a
    const-wide/16 v6, 0x3e8

    #@a0c
    div-long v6, v218, v6

    #@a0e
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@a11
    .line 3832
    const-string/jumbo v6, "("

    #@a14
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a17
    move-object/from16 v0, p0

    #@a19
    move-wide/from16 v1, v218

    #@a1b
    move-wide/from16 v3, v210

    #@a1d
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@a20
    move-result-object v6

    #@a21
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a24
    .line 3833
    const-string/jumbo v6, "), Wifi running: "

    #@a27
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2a
    const-wide/16 v6, 0x3e8

    #@a2c
    div-long v6, v220, v6

    #@a2e
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@a31
    .line 3834
    const-string/jumbo v6, "("

    #@a34
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a37
    move-object/from16 v0, p0

    #@a39
    move-wide/from16 v1, v220

    #@a3b
    move-wide/from16 v3, v210

    #@a3d
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@a40
    move-result-object v6

    #@a41
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a44
    .line 3835
    const-string/jumbo v6, ")"

    #@a47
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4a
    .line 3836
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4d
    move-result-object v6

    #@a4e
    move-object/from16 v0, p2

    #@a50
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a53
    .line 3838
    const/4 v6, 0x0

    #@a54
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@a57
    .line 3839
    move-object/from16 v0, p3

    #@a59
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5c
    .line 3840
    const-string/jumbo v6, "  Wifi states:"

    #@a5f
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a62
    .line 3841
    const/16 v61, 0x0

    #@a64
    .line 3842
    const/16 v94, 0x0

    #@a66
    :goto_8
    const/16 v6, 0x8

    #@a68
    move/from16 v0, v94

    #@a6a
    if-ge v0, v6, :cond_20

    #@a6c
    .line 3843
    move-object/from16 v0, p0

    #@a6e
    move/from16 v1, v94

    #@a70
    move-wide/from16 v2, v24

    #@a72
    move/from16 v4, p4

    #@a74
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    #@a77
    move-result-wide v172

    #@a78
    .line 3844
    .restart local v172    # "time":J
    const-wide/16 v6, 0x0

    #@a7a
    cmp-long v6, v172, v6

    #@a7c
    if-nez v6, :cond_1f

    #@a7e
    .line 3842
    :goto_9
    add-int/lit8 v94, v94, 0x1

    #@a80
    goto :goto_8

    #@a81
    .line 3847
    :cond_1f
    const-string/jumbo v6, "\n    "

    #@a84
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a87
    .line 3848
    const/16 v61, 0x1

    #@a89
    .line 3849
    sget-object v6, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    #@a8b
    aget-object v6, v6, v94

    #@a8d
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a90
    .line 3850
    const-string/jumbo v6, " "

    #@a93
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a96
    .line 3851
    const-wide/16 v6, 0x3e8

    #@a98
    div-long v6, v172, v6

    #@a9a
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@a9d
    .line 3852
    const-string/jumbo v6, "("

    #@aa0
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa3
    .line 3853
    move-object/from16 v0, p0

    #@aa5
    move-wide/from16 v1, v172

    #@aa7
    move-wide/from16 v3, v210

    #@aa9
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@aac
    move-result-object v6

    #@aad
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab0
    .line 3854
    const-string/jumbo v6, ") "

    #@ab3
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab6
    .line 3855
    move-object/from16 v0, p0

    #@ab8
    move/from16 v1, v94

    #@aba
    move/from16 v2, p4

    #@abc
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiStateCount(II)I

    #@abf
    move-result v6

    #@ac0
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ac3
    .line 3856
    const-string/jumbo v6, "x"

    #@ac6
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac9
    goto :goto_9

    #@aca
    .line 3858
    .end local v172    # "time":J
    :cond_20
    if-nez v61, :cond_21

    #@acc
    const-string/jumbo v6, " (no activity)"

    #@acf
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad2
    .line 3859
    :cond_21
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad5
    move-result-object v6

    #@ad6
    move-object/from16 v0, p2

    #@ad8
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@adb
    .line 3861
    const/4 v6, 0x0

    #@adc
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@adf
    .line 3862
    move-object/from16 v0, p3

    #@ae1
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae4
    .line 3863
    const-string/jumbo v6, "  Wifi supplicant states:"

    #@ae7
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aea
    .line 3864
    const/16 v61, 0x0

    #@aec
    .line 3865
    const/16 v94, 0x0

    #@aee
    :goto_a
    const/16 v6, 0xd

    #@af0
    move/from16 v0, v94

    #@af2
    if-ge v0, v6, :cond_23

    #@af4
    .line 3866
    move-object/from16 v0, p0

    #@af6
    move/from16 v1, v94

    #@af8
    move-wide/from16 v2, v24

    #@afa
    move/from16 v4, p4

    #@afc
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    #@aff
    move-result-wide v172

    #@b00
    .line 3867
    .restart local v172    # "time":J
    const-wide/16 v6, 0x0

    #@b02
    cmp-long v6, v172, v6

    #@b04
    if-nez v6, :cond_22

    #@b06
    .line 3865
    :goto_b
    add-int/lit8 v94, v94, 0x1

    #@b08
    goto :goto_a

    #@b09
    .line 3870
    :cond_22
    const-string/jumbo v6, "\n    "

    #@b0c
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0f
    .line 3871
    const/16 v61, 0x1

    #@b11
    .line 3872
    sget-object v6, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    #@b13
    aget-object v6, v6, v94

    #@b15
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b18
    .line 3873
    const-string/jumbo v6, " "

    #@b1b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1e
    .line 3874
    const-wide/16 v6, 0x3e8

    #@b20
    div-long v6, v172, v6

    #@b22
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@b25
    .line 3875
    const-string/jumbo v6, "("

    #@b28
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2b
    .line 3876
    move-object/from16 v0, p0

    #@b2d
    move-wide/from16 v1, v172

    #@b2f
    move-wide/from16 v3, v210

    #@b31
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@b34
    move-result-object v6

    #@b35
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b38
    .line 3877
    const-string/jumbo v6, ") "

    #@b3b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3e
    .line 3878
    move-object/from16 v0, p0

    #@b40
    move/from16 v1, v94

    #@b42
    move/from16 v2, p4

    #@b44
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSupplStateCount(II)I

    #@b47
    move-result v6

    #@b48
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b4b
    .line 3879
    const-string/jumbo v6, "x"

    #@b4e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b51
    goto :goto_b

    #@b52
    .line 3881
    .end local v172    # "time":J
    :cond_23
    if-nez v61, :cond_24

    #@b54
    const-string/jumbo v6, " (no activity)"

    #@b57
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5a
    .line 3882
    :cond_24
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5d
    move-result-object v6

    #@b5e
    move-object/from16 v0, p2

    #@b60
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b63
    .line 3884
    const/4 v6, 0x0

    #@b64
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@b67
    .line 3885
    move-object/from16 v0, p3

    #@b69
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6c
    .line 3886
    const-string/jumbo v6, "  Wifi signal levels:"

    #@b6f
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b72
    .line 3887
    const/16 v61, 0x0

    #@b74
    .line 3888
    const/16 v94, 0x0

    #@b76
    :goto_c
    const/4 v6, 0x5

    #@b77
    move/from16 v0, v94

    #@b79
    if-ge v0, v6, :cond_26

    #@b7b
    .line 3889
    move-object/from16 v0, p0

    #@b7d
    move/from16 v1, v94

    #@b7f
    move-wide/from16 v2, v24

    #@b81
    move/from16 v4, p4

    #@b83
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    #@b86
    move-result-wide v172

    #@b87
    .line 3890
    .restart local v172    # "time":J
    const-wide/16 v6, 0x0

    #@b89
    cmp-long v6, v172, v6

    #@b8b
    if-nez v6, :cond_25

    #@b8d
    .line 3888
    :goto_d
    add-int/lit8 v94, v94, 0x1

    #@b8f
    goto :goto_c

    #@b90
    .line 3893
    :cond_25
    const-string/jumbo v6, "\n    "

    #@b93
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b96
    .line 3894
    move-object/from16 v0, p3

    #@b98
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9b
    .line 3895
    const/16 v61, 0x1

    #@b9d
    .line 3896
    const-string/jumbo v6, "level("

    #@ba0
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba3
    .line 3897
    move/from16 v0, v94

    #@ba5
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ba8
    .line 3898
    const-string/jumbo v6, ") "

    #@bab
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bae
    .line 3899
    const-wide/16 v6, 0x3e8

    #@bb0
    div-long v6, v172, v6

    #@bb2
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@bb5
    .line 3900
    const-string/jumbo v6, "("

    #@bb8
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bbb
    .line 3901
    move-object/from16 v0, p0

    #@bbd
    move-wide/from16 v1, v172

    #@bbf
    move-wide/from16 v3, v210

    #@bc1
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@bc4
    move-result-object v6

    #@bc5
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc8
    .line 3902
    const-string/jumbo v6, ") "

    #@bcb
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bce
    .line 3903
    move-object/from16 v0, p0

    #@bd0
    move/from16 v1, v94

    #@bd2
    move/from16 v2, p4

    #@bd4
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSignalStrengthCount(II)I

    #@bd7
    move-result v6

    #@bd8
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bdb
    .line 3904
    const-string/jumbo v6, "x"

    #@bde
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be1
    goto :goto_d

    #@be2
    .line 3906
    .end local v172    # "time":J
    :cond_26
    if-nez v61, :cond_27

    #@be4
    const-string/jumbo v6, " (no activity)"

    #@be7
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bea
    .line 3907
    :cond_27
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bed
    move-result-object v6

    #@bee
    move-object/from16 v0, p2

    #@bf0
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bf3
    .line 3909
    const-string/jumbo v16, "WiFi"

    #@bf6
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@bf9
    move-result-object v17

    #@bfa
    move-object/from16 v12, p0

    #@bfc
    move-object/from16 v13, p2

    #@bfe
    move-object/from16 v15, p3

    #@c00
    move/from16 v18, p4

    #@c02
    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    #@c05
    .line 3911
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c08
    .line 3912
    const-string/jumbo v6, "  Bluetooth total received: "

    #@c0b
    move-object/from16 v0, p2

    #@c0d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c10
    move-object/from16 v0, p0

    #@c12
    move-wide/from16 v1, v50

    #@c14
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@c17
    move-result-object v6

    #@c18
    move-object/from16 v0, p2

    #@c1a
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c1d
    .line 3913
    const-string/jumbo v6, ", sent: "

    #@c20
    move-object/from16 v0, p2

    #@c22
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c25
    move-object/from16 v0, p0

    #@c27
    move-wide/from16 v1, v54

    #@c29
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@c2c
    move-result-object v6

    #@c2d
    move-object/from16 v0, p2

    #@c2f
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c32
    .line 3915
    move-object/from16 v0, p0

    #@c34
    move-wide/from16 v1, v24

    #@c36
    move/from16 v3, p4

    #@c38
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getBluetoothScanTime(JI)J

    #@c3b
    move-result-wide v6

    #@c3c
    const-wide/16 v12, 0x3e8

    #@c3e
    div-long v46, v6, v12

    #@c40
    .line 3916
    .local v46, "bluetoothScanTimeMs":J
    const/4 v6, 0x0

    #@c41
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@c44
    .line 3917
    move-object/from16 v0, p3

    #@c46
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c49
    .line 3918
    const-string/jumbo v6, "  Bluetooth scan time: "

    #@c4c
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4f
    move-wide/from16 v0, v46

    #@c51
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@c54
    .line 3919
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c57
    move-result-object v6

    #@c58
    move-object/from16 v0, p2

    #@c5a
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c5d
    .line 3921
    const-string/jumbo v16, "Bluetooth"

    #@c60
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@c63
    move-result-object v17

    #@c64
    move-object/from16 v12, p0

    #@c66
    move-object/from16 v13, p2

    #@c68
    move-object/from16 v15, p3

    #@c6a
    move/from16 v18, p4

    #@c6c
    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    #@c6f
    .line 3924
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@c72
    .line 3926
    const/4 v6, 0x2

    #@c73
    move/from16 v0, p4

    #@c75
    if-ne v0, v6, :cond_35

    #@c77
    .line 3927
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    #@c7a
    move-result v6

    #@c7b
    if-eqz v6, :cond_34

    #@c7d
    .line 3928
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c80
    const-string/jumbo v6, "  Device is currently unplugged"

    #@c83
    move-object/from16 v0, p2

    #@c85
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c88
    .line 3929
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c8b
    const-string/jumbo v6, "    Discharge cycle start level: "

    #@c8e
    move-object/from16 v0, p2

    #@c90
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c93
    .line 3930
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    #@c96
    move-result v6

    #@c97
    move-object/from16 v0, p2

    #@c99
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@c9c
    .line 3931
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c9f
    const-string/jumbo v6, "    Discharge cycle current level: "

    #@ca2
    move-object/from16 v0, p2

    #@ca4
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ca7
    .line 3932
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    #@caa
    move-result v6

    #@cab
    move-object/from16 v0, p2

    #@cad
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@cb0
    .line 3940
    :goto_e
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cb3
    const-string/jumbo v6, "    Amount discharged while screen on: "

    #@cb6
    move-object/from16 v0, p2

    #@cb8
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cbb
    .line 3941
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    #@cbe
    move-result v6

    #@cbf
    move-object/from16 v0, p2

    #@cc1
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@cc4
    .line 3942
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cc7
    const-string/jumbo v6, "    Amount discharged while screen off: "

    #@cca
    move-object/from16 v0, p2

    #@ccc
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ccf
    .line 3943
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    #@cd2
    move-result v6

    #@cd3
    move-object/from16 v0, p2

    #@cd5
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@cd8
    .line 3944
    const-string/jumbo v6, " "

    #@cdb
    move-object/from16 v0, p2

    #@cdd
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ce0
    .line 3958
    :goto_f
    new-instance v93, Lcom/android/internal/os/BatteryStatsHelper;

    #@ce2
    const/4 v6, 0x0

    #@ce3
    move-object/from16 v0, v93

    #@ce5
    move-object/from16 v1, p1

    #@ce7
    move/from16 v2, p6

    #@ce9
    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    #@cec
    .line 3959
    .local v93, "helper":Lcom/android/internal/os/BatteryStatsHelper;
    move-object/from16 v0, v93

    #@cee
    move-object/from16 v1, p0

    #@cf0
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    #@cf3
    .line 3960
    const/4 v6, -0x1

    #@cf4
    move-object/from16 v0, v93

    #@cf6
    move/from16 v1, p4

    #@cf8
    invoke-virtual {v0, v1, v6}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    #@cfb
    .line 3961
    invoke-virtual/range {v93 .. v93}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    #@cfe
    move-result-object v162

    #@cff
    .line 3962
    .local v162, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v162, :cond_37

    #@d01
    invoke-interface/range {v162 .. v162}, Ljava/util/List;->size()I

    #@d04
    move-result v6

    #@d05
    if-lez v6, :cond_37

    #@d07
    .line 3963
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d0a
    const-string/jumbo v6, "  Estimated power use (mAh):"

    #@d0d
    move-object/from16 v0, p2

    #@d0f
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d12
    .line 3964
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d15
    const-string/jumbo v6, "    Capacity: "

    #@d18
    move-object/from16 v0, p2

    #@d1a
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d1d
    .line 3965
    invoke-virtual/range {v93 .. v93}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    #@d20
    move-result-object v6

    #@d21
    invoke-virtual {v6}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    #@d24
    move-result-wide v6

    #@d25
    move-object/from16 v0, p0

    #@d27
    move-object/from16 v1, p2

    #@d29
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@d2c
    .line 3966
    const-string/jumbo v6, ", Computed drain: "

    #@d2f
    move-object/from16 v0, p2

    #@d31
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d34
    invoke-virtual/range {v93 .. v93}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    #@d37
    move-result-wide v6

    #@d38
    move-object/from16 v0, p0

    #@d3a
    move-object/from16 v1, p2

    #@d3c
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@d3f
    .line 3967
    const-string/jumbo v6, ", actual drain: "

    #@d42
    move-object/from16 v0, p2

    #@d44
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d47
    invoke-virtual/range {v93 .. v93}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    #@d4a
    move-result-wide v6

    #@d4b
    move-object/from16 v0, p0

    #@d4d
    move-object/from16 v1, p2

    #@d4f
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@d52
    .line 3968
    invoke-virtual/range {v93 .. v93}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    #@d55
    move-result-wide v6

    #@d56
    invoke-virtual/range {v93 .. v93}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    #@d59
    move-result-wide v12

    #@d5a
    cmpl-double v6, v6, v12

    #@d5c
    if-eqz v6, :cond_28

    #@d5e
    .line 3969
    const-string/jumbo v6, "-"

    #@d61
    move-object/from16 v0, p2

    #@d63
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d66
    invoke-virtual/range {v93 .. v93}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    #@d69
    move-result-wide v6

    #@d6a
    move-object/from16 v0, p0

    #@d6c
    move-object/from16 v1, p2

    #@d6e
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@d71
    .line 3971
    :cond_28
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@d74
    .line 3972
    const/16 v94, 0x0

    #@d76
    :goto_10
    invoke-interface/range {v162 .. v162}, Ljava/util/List;->size()I

    #@d79
    move-result v6

    #@d7a
    move/from16 v0, v94

    #@d7c
    if-ge v0, v6, :cond_36

    #@d7e
    .line 3973
    move-object/from16 v0, v162

    #@d80
    move/from16 v1, v94

    #@d82
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@d85
    move-result-object v41

    #@d86
    check-cast v41, Lcom/android/internal/os/BatterySipper;

    #@d88
    .line 3974
    .local v41, "bs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d8b
    .line 3975
    invoke-static {}, Landroid/os/BatteryStats;->-getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I

    #@d8e
    move-result-object v6

    #@d8f
    move-object/from16 v0, v41

    #@d91
    iget-object v7, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    #@d93
    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    #@d96
    move-result v7

    #@d97
    aget v6, v6, v7

    #@d99
    packed-switch v6, :pswitch_data_0

    #@d9c
    .line 4016
    const-string/jumbo v6, "    ???: "

    #@d9f
    move-object/from16 v0, p2

    #@da1
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@da4
    .line 4019
    :goto_11
    move-object/from16 v0, v41

    #@da6
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    #@da8
    move-object/from16 v0, p0

    #@daa
    move-object/from16 v1, p2

    #@dac
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@daf
    .line 4021
    move-object/from16 v0, v41

    #@db1
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    #@db3
    move-object/from16 v0, v41

    #@db5
    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    #@db7
    cmpl-double v6, v6, v12

    #@db9
    if-eqz v6, :cond_33

    #@dbb
    .line 4025
    const-string/jumbo v6, " ("

    #@dbe
    move-object/from16 v0, p2

    #@dc0
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@dc3
    .line 4026
    move-object/from16 v0, v41

    #@dc5
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    #@dc7
    const-wide/16 v12, 0x0

    #@dc9
    cmpl-double v6, v6, v12

    #@dcb
    if-eqz v6, :cond_29

    #@dcd
    .line 4027
    const-string/jumbo v6, " usage="

    #@dd0
    move-object/from16 v0, p2

    #@dd2
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@dd5
    .line 4028
    move-object/from16 v0, v41

    #@dd7
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    #@dd9
    move-object/from16 v0, p0

    #@ddb
    move-object/from16 v1, p2

    #@ddd
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@de0
    .line 4030
    :cond_29
    move-object/from16 v0, v41

    #@de2
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    #@de4
    const-wide/16 v12, 0x0

    #@de6
    cmpl-double v6, v6, v12

    #@de8
    if-eqz v6, :cond_2a

    #@dea
    .line 4031
    const-string/jumbo v6, " cpu="

    #@ded
    move-object/from16 v0, p2

    #@def
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@df2
    .line 4032
    move-object/from16 v0, v41

    #@df4
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    #@df6
    move-object/from16 v0, p0

    #@df8
    move-object/from16 v1, p2

    #@dfa
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@dfd
    .line 4034
    :cond_2a
    move-object/from16 v0, v41

    #@dff
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    #@e01
    const-wide/16 v12, 0x0

    #@e03
    cmpl-double v6, v6, v12

    #@e05
    if-eqz v6, :cond_2b

    #@e07
    .line 4035
    const-string/jumbo v6, " wake="

    #@e0a
    move-object/from16 v0, p2

    #@e0c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e0f
    .line 4036
    move-object/from16 v0, v41

    #@e11
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    #@e13
    move-object/from16 v0, p0

    #@e15
    move-object/from16 v1, p2

    #@e17
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@e1a
    .line 4038
    :cond_2b
    move-object/from16 v0, v41

    #@e1c
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    #@e1e
    const-wide/16 v12, 0x0

    #@e20
    cmpl-double v6, v6, v12

    #@e22
    if-eqz v6, :cond_2c

    #@e24
    .line 4039
    const-string/jumbo v6, " radio="

    #@e27
    move-object/from16 v0, p2

    #@e29
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e2c
    .line 4040
    move-object/from16 v0, v41

    #@e2e
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    #@e30
    move-object/from16 v0, p0

    #@e32
    move-object/from16 v1, p2

    #@e34
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@e37
    .line 4042
    :cond_2c
    move-object/from16 v0, v41

    #@e39
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    #@e3b
    const-wide/16 v12, 0x0

    #@e3d
    cmpl-double v6, v6, v12

    #@e3f
    if-eqz v6, :cond_2d

    #@e41
    .line 4043
    const-string/jumbo v6, " wifi="

    #@e44
    move-object/from16 v0, p2

    #@e46
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e49
    .line 4044
    move-object/from16 v0, v41

    #@e4b
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    #@e4d
    move-object/from16 v0, p0

    #@e4f
    move-object/from16 v1, p2

    #@e51
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@e54
    .line 4046
    :cond_2d
    move-object/from16 v0, v41

    #@e56
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    #@e58
    const-wide/16 v12, 0x0

    #@e5a
    cmpl-double v6, v6, v12

    #@e5c
    if-eqz v6, :cond_2e

    #@e5e
    .line 4047
    const-string/jumbo v6, " bt="

    #@e61
    move-object/from16 v0, p2

    #@e63
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e66
    .line 4048
    move-object/from16 v0, v41

    #@e68
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    #@e6a
    move-object/from16 v0, p0

    #@e6c
    move-object/from16 v1, p2

    #@e6e
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@e71
    .line 4050
    :cond_2e
    move-object/from16 v0, v41

    #@e73
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    #@e75
    const-wide/16 v12, 0x0

    #@e77
    cmpl-double v6, v6, v12

    #@e79
    if-eqz v6, :cond_2f

    #@e7b
    .line 4051
    const-string/jumbo v6, " gps="

    #@e7e
    move-object/from16 v0, p2

    #@e80
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e83
    .line 4052
    move-object/from16 v0, v41

    #@e85
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    #@e87
    move-object/from16 v0, p0

    #@e89
    move-object/from16 v1, p2

    #@e8b
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@e8e
    .line 4054
    :cond_2f
    move-object/from16 v0, v41

    #@e90
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    #@e92
    const-wide/16 v12, 0x0

    #@e94
    cmpl-double v6, v6, v12

    #@e96
    if-eqz v6, :cond_30

    #@e98
    .line 4055
    const-string/jumbo v6, " sensor="

    #@e9b
    move-object/from16 v0, p2

    #@e9d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ea0
    .line 4056
    move-object/from16 v0, v41

    #@ea2
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    #@ea4
    move-object/from16 v0, p0

    #@ea6
    move-object/from16 v1, p2

    #@ea8
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@eab
    .line 4058
    :cond_30
    move-object/from16 v0, v41

    #@ead
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    #@eaf
    const-wide/16 v12, 0x0

    #@eb1
    cmpl-double v6, v6, v12

    #@eb3
    if-eqz v6, :cond_31

    #@eb5
    .line 4059
    const-string/jumbo v6, " camera="

    #@eb8
    move-object/from16 v0, p2

    #@eba
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ebd
    .line 4060
    move-object/from16 v0, v41

    #@ebf
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    #@ec1
    move-object/from16 v0, p0

    #@ec3
    move-object/from16 v1, p2

    #@ec5
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@ec8
    .line 4062
    :cond_31
    move-object/from16 v0, v41

    #@eca
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    #@ecc
    const-wide/16 v12, 0x0

    #@ece
    cmpl-double v6, v6, v12

    #@ed0
    if-eqz v6, :cond_32

    #@ed2
    .line 4063
    const-string/jumbo v6, " flash="

    #@ed5
    move-object/from16 v0, p2

    #@ed7
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@eda
    .line 4064
    move-object/from16 v0, v41

    #@edc
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    #@ede
    move-object/from16 v0, p0

    #@ee0
    move-object/from16 v1, p2

    #@ee2
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@ee5
    .line 4066
    :cond_32
    const-string/jumbo v6, " )"

    #@ee8
    move-object/from16 v0, p2

    #@eea
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@eed
    .line 4068
    :cond_33
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@ef0
    .line 3972
    add-int/lit8 v94, v94, 0x1

    #@ef2
    goto/16 :goto_10

    #@ef4
    .line 3934
    .end local v41    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v93    # "helper":Lcom/android/internal/os/BatteryStatsHelper;
    .end local v162    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_34
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ef7
    const-string/jumbo v6, "  Device is currently plugged into power"

    #@efa
    move-object/from16 v0, p2

    #@efc
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@eff
    .line 3935
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f02
    const-string/jumbo v6, "    Last discharge cycle start level: "

    #@f05
    move-object/from16 v0, p2

    #@f07
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f0a
    .line 3936
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    #@f0d
    move-result v6

    #@f0e
    move-object/from16 v0, p2

    #@f10
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@f13
    .line 3937
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f16
    const-string/jumbo v6, "    Last discharge cycle end level: "

    #@f19
    move-object/from16 v0, p2

    #@f1b
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f1e
    .line 3938
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    #@f21
    move-result v6

    #@f22
    move-object/from16 v0, p2

    #@f24
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@f27
    goto/16 :goto_e

    #@f29
    .line 3946
    :cond_35
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f2c
    const-string/jumbo v6, "  Device battery use since last full charge"

    #@f2f
    move-object/from16 v0, p2

    #@f31
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f34
    .line 3947
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f37
    const-string/jumbo v6, "    Amount discharged (lower bound): "

    #@f3a
    move-object/from16 v0, p2

    #@f3c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f3f
    .line 3948
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    #@f42
    move-result v6

    #@f43
    move-object/from16 v0, p2

    #@f45
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@f48
    .line 3949
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f4b
    const-string/jumbo v6, "    Amount discharged (upper bound): "

    #@f4e
    move-object/from16 v0, p2

    #@f50
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f53
    .line 3950
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    #@f56
    move-result v6

    #@f57
    move-object/from16 v0, p2

    #@f59
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@f5c
    .line 3951
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f5f
    const-string/jumbo v6, "    Amount discharged while screen on: "

    #@f62
    move-object/from16 v0, p2

    #@f64
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f67
    .line 3952
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    #@f6a
    move-result v6

    #@f6b
    move-object/from16 v0, p2

    #@f6d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@f70
    .line 3953
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f73
    const-string/jumbo v6, "    Amount discharged while screen off: "

    #@f76
    move-object/from16 v0, p2

    #@f78
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f7b
    .line 3954
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    #@f7e
    move-result v6

    #@f7f
    move-object/from16 v0, p2

    #@f81
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@f84
    .line 3955
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@f87
    goto/16 :goto_f

    #@f89
    .line 3977
    .restart local v41    # "bs":Lcom/android/internal/os/BatterySipper;
    .restart local v93    # "helper":Lcom/android/internal/os/BatteryStatsHelper;
    .restart local v162    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :pswitch_0
    const-string/jumbo v6, "    Idle: "

    #@f8c
    move-object/from16 v0, p2

    #@f8e
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f91
    goto/16 :goto_11

    #@f93
    .line 3980
    :pswitch_1
    const-string/jumbo v6, "    Cell standby: "

    #@f96
    move-object/from16 v0, p2

    #@f98
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f9b
    goto/16 :goto_11

    #@f9d
    .line 3983
    :pswitch_2
    const-string/jumbo v6, "    Phone calls: "

    #@fa0
    move-object/from16 v0, p2

    #@fa2
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fa5
    goto/16 :goto_11

    #@fa7
    .line 3986
    :pswitch_3
    const-string/jumbo v6, "    Wifi: "

    #@faa
    move-object/from16 v0, p2

    #@fac
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@faf
    goto/16 :goto_11

    #@fb1
    .line 3989
    :pswitch_4
    const-string/jumbo v6, "    Bluetooth: "

    #@fb4
    move-object/from16 v0, p2

    #@fb6
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fb9
    goto/16 :goto_11

    #@fbb
    .line 3992
    :pswitch_5
    const-string/jumbo v6, "    Screen: "

    #@fbe
    move-object/from16 v0, p2

    #@fc0
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fc3
    goto/16 :goto_11

    #@fc5
    .line 3995
    :pswitch_6
    const-string/jumbo v6, "    Flashlight: "

    #@fc8
    move-object/from16 v0, p2

    #@fca
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fcd
    goto/16 :goto_11

    #@fcf
    .line 3998
    :pswitch_7
    const-string/jumbo v6, "    Uid "

    #@fd2
    move-object/from16 v0, p2

    #@fd4
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fd7
    .line 3999
    move-object/from16 v0, v41

    #@fd9
    iget-object v6, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    #@fdb
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    #@fde
    move-result v6

    #@fdf
    move-object/from16 v0, p2

    #@fe1
    invoke-static {v0, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@fe4
    .line 4000
    const-string/jumbo v6, ": "

    #@fe7
    move-object/from16 v0, p2

    #@fe9
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fec
    goto/16 :goto_11

    #@fee
    .line 4003
    :pswitch_8
    const-string/jumbo v6, "    User "

    #@ff1
    move-object/from16 v0, p2

    #@ff3
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ff6
    move-object/from16 v0, v41

    #@ff8
    iget v6, v0, Lcom/android/internal/os/BatterySipper;->userId:I

    #@ffa
    move-object/from16 v0, p2

    #@ffc
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    #@fff
    .line 4004
    const-string/jumbo v6, ": "

    #@1002
    move-object/from16 v0, p2

    #@1004
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1007
    goto/16 :goto_11

    #@1009
    .line 4007
    :pswitch_9
    const-string/jumbo v6, "    Unaccounted: "

    #@100c
    move-object/from16 v0, p2

    #@100e
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1011
    goto/16 :goto_11

    #@1013
    .line 4010
    :pswitch_a
    const-string/jumbo v6, "    Over-counted: "

    #@1016
    move-object/from16 v0, p2

    #@1018
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@101b
    goto/16 :goto_11

    #@101d
    .line 4013
    :pswitch_b
    const-string/jumbo v6, "    Camera: "

    #@1020
    move-object/from16 v0, p2

    #@1022
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1025
    goto/16 :goto_11

    #@1027
    .line 4070
    .end local v41    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_36
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@102a
    .line 4073
    :cond_37
    invoke-virtual/range {v93 .. v93}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilemsppList()Ljava/util/List;

    #@102d
    move-result-object v162

    #@102e
    .line 4074
    if-eqz v162, :cond_39

    #@1030
    invoke-interface/range {v162 .. v162}, Ljava/util/List;->size()I

    #@1033
    move-result v6

    #@1034
    if-lez v6, :cond_39

    #@1036
    .line 4075
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1039
    const-string/jumbo v6, "  Per-app mobile ms per packet:"

    #@103c
    move-object/from16 v0, p2

    #@103e
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1041
    .line 4076
    const-wide/16 v188, 0x0

    #@1043
    .line 4077
    .local v188, "totalTime":J
    const/16 v94, 0x0

    #@1045
    :goto_12
    invoke-interface/range {v162 .. v162}, Ljava/util/List;->size()I

    #@1048
    move-result v6

    #@1049
    move/from16 v0, v94

    #@104b
    if-ge v0, v6, :cond_38

    #@104d
    .line 4078
    move-object/from16 v0, v162

    #@104f
    move/from16 v1, v94

    #@1051
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1054
    move-result-object v41

    #@1055
    check-cast v41, Lcom/android/internal/os/BatterySipper;

    #@1057
    .line 4079
    .restart local v41    # "bs":Lcom/android/internal/os/BatterySipper;
    const/4 v6, 0x0

    #@1058
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@105b
    .line 4080
    move-object/from16 v0, p3

    #@105d
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1060
    const-string/jumbo v6, "    Uid "

    #@1063
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1066
    .line 4081
    move-object/from16 v0, v41

    #@1068
    iget-object v6, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    #@106a
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    #@106d
    move-result v6

    #@106e
    invoke-static {v14, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    #@1071
    .line 4082
    const-string/jumbo v6, ": "

    #@1074
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1077
    move-object/from16 v0, v41

    #@1079
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    #@107b
    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@107e
    move-result-object v6

    #@107f
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1082
    .line 4083
    const-string/jumbo v6, " ("

    #@1085
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1088
    move-object/from16 v0, v41

    #@108a
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    #@108c
    move-object/from16 v0, v41

    #@108e
    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    #@1090
    add-long/2addr v6, v12

    #@1091
    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1094
    .line 4084
    const-string/jumbo v6, " packets over "

    #@1097
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109a
    move-object/from16 v0, v41

    #@109c
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    #@109e
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    #@10a1
    .line 4085
    const-string/jumbo v6, ") "

    #@10a4
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a7
    move-object/from16 v0, v41

    #@10a9
    iget v6, v0, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    #@10ab
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10ae
    const-string/jumbo v6, "x"

    #@10b1
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b4
    .line 4086
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b7
    move-result-object v6

    #@10b8
    move-object/from16 v0, p2

    #@10ba
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10bd
    .line 4087
    move-object/from16 v0, v41

    #@10bf
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    #@10c1
    add-long v188, v188, v6

    #@10c3
    .line 4077
    add-int/lit8 v94, v94, 0x1

    #@10c5
    goto :goto_12

    #@10c6
    .line 4089
    .end local v41    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_38
    const/4 v6, 0x0

    #@10c7
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@10ca
    .line 4090
    move-object/from16 v0, p3

    #@10cc
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10cf
    .line 4091
    const-string/jumbo v6, "    TOTAL TIME: "

    #@10d2
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d5
    .line 4092
    move-wide/from16 v0, v188

    #@10d7
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@10da
    .line 4093
    const-string/jumbo v6, "("

    #@10dd
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e0
    move-object/from16 v0, p0

    #@10e2
    move-wide/from16 v1, v188

    #@10e4
    move-wide/from16 v3, v210

    #@10e6
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@10e9
    move-result-object v6

    #@10ea
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10ed
    .line 4094
    const-string/jumbo v6, ")"

    #@10f0
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f3
    .line 4095
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f6
    move-result-object v6

    #@10f7
    move-object/from16 v0, p2

    #@10f9
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10fc
    .line 4096
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@10ff
    .line 4099
    .end local v188    # "totalTime":J
    :cond_39
    new-instance v175, Landroid/os/BatteryStats$1;

    #@1101
    move-object/from16 v0, v175

    #@1103
    move-object/from16 v1, p0

    #@1105
    invoke-direct {v0, v1}, Landroid/os/BatteryStats$1;-><init>(Landroid/os/BatteryStats;)V

    #@1108
    .line 4114
    .local v175, "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    if-gez p5, :cond_43

    #@110a
    .line 4116
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    #@110d
    move-result-object v108

    #@110e
    .line 4117
    .local v108, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v108 .. v108}, Ljava/util/Map;->size()I

    #@1111
    move-result v6

    #@1112
    if-lez v6, :cond_3e

    #@1114
    .line 4118
    new-instance v109, Ljava/util/ArrayList;

    #@1116
    invoke-direct/range {v109 .. v109}, Ljava/util/ArrayList;-><init>()V

    #@1119
    .line 4120
    .local v109, "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-interface/range {v108 .. v108}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@111c
    move-result-object v6

    #@111d
    .line 4119
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1120
    move-result-object v80

    #@1121
    .local v80, "ent$iterator":Ljava/util/Iterator;
    :cond_3a
    :goto_13
    invoke-interface/range {v80 .. v80}, Ljava/util/Iterator;->hasNext()Z

    #@1124
    move-result v6

    #@1125
    if-eqz v6, :cond_3b

    #@1127
    invoke-interface/range {v80 .. v80}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@112a
    move-result-object v79

    #@112b
    check-cast v79, Ljava/util/Map$Entry;

    #@112d
    .line 4121
    .local v79, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v79 .. v79}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1130
    move-result-object v19

    #@1131
    check-cast v19, Landroid/os/BatteryStats$Timer;

    #@1133
    .line 4122
    .local v19, "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v19

    #@1135
    move-wide/from16 v1, v24

    #@1137
    move/from16 v3, p4

    #@1139
    invoke-static {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    #@113c
    move-result-wide v20

    #@113d
    .line 4123
    .local v20, "totalTimeMillis":J
    const-wide/16 v6, 0x0

    #@113f
    cmp-long v6, v20, v6

    #@1141
    if-lez v6, :cond_3a

    #@1143
    .line 4124
    new-instance v16, Landroid/os/BatteryStats$TimerEntry;

    #@1145
    invoke-interface/range {v79 .. v79}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1148
    move-result-object v17

    #@1149
    check-cast v17, Ljava/lang/String;

    #@114b
    const/16 v18, 0x0

    #@114d
    invoke-direct/range {v16 .. v21}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    #@1150
    move-object/from16 v0, v109

    #@1152
    move-object/from16 v1, v16

    #@1154
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1157
    goto :goto_13

    #@1158
    .line 4127
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v20    # "totalTimeMillis":J
    .end local v79    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_3b
    invoke-virtual/range {v109 .. v109}, Ljava/util/ArrayList;->size()I

    #@115b
    move-result v6

    #@115c
    if-lez v6, :cond_3e

    #@115e
    .line 4128
    move-object/from16 v0, v109

    #@1160
    move-object/from16 v1, v175

    #@1162
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@1165
    .line 4129
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1168
    const-string/jumbo v6, "  All kernel wake locks:"

    #@116b
    move-object/from16 v0, p2

    #@116d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1170
    .line 4130
    const/16 v94, 0x0

    #@1172
    :goto_14
    invoke-virtual/range {v109 .. v109}, Ljava/util/ArrayList;->size()I

    #@1175
    move-result v6

    #@1176
    move/from16 v0, v94

    #@1178
    if-ge v0, v6, :cond_3d

    #@117a
    .line 4131
    move-object/from16 v0, v109

    #@117c
    move/from16 v1, v94

    #@117e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1181
    move-result-object v174

    #@1182
    check-cast v174, Landroid/os/BatteryStats$TimerEntry;

    #@1184
    .line 4132
    .local v174, "timer":Landroid/os/BatteryStats$TimerEntry;
    const-string/jumbo v28, ": "

    #@1187
    .line 4133
    .local v28, "linePrefix":Ljava/lang/String;
    const/4 v6, 0x0

    #@1188
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@118b
    .line 4134
    move-object/from16 v0, p3

    #@118d
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1190
    .line 4135
    const-string/jumbo v6, "  Kernel Wake lock "

    #@1193
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1196
    .line 4136
    move-object/from16 v0, v174

    #@1198
    iget-object v6, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    #@119a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119d
    .line 4137
    move-object/from16 v0, v174

    #@119f
    iget-object v0, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    #@11a1
    move-object/from16 v23, v0

    #@11a3
    const/16 v26, 0x0

    #@11a5
    move-object/from16 v22, v14

    #@11a7
    move/from16 v27, p4

    #@11a9
    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@11ac
    move-result-object v28

    #@11ad
    .line 4139
    const-string/jumbo v6, ": "

    #@11b0
    move-object/from16 v0, v28

    #@11b2
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11b5
    move-result v6

    #@11b6
    if-nez v6, :cond_3c

    #@11b8
    .line 4140
    const-string/jumbo v6, " realtime"

    #@11bb
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11be
    .line 4142
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11c1
    move-result-object v6

    #@11c2
    move-object/from16 v0, p2

    #@11c4
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11c7
    .line 4130
    :cond_3c
    add-int/lit8 v94, v94, 0x1

    #@11c9
    goto :goto_14

    #@11ca
    .line 4145
    .end local v28    # "linePrefix":Ljava/lang/String;
    .end local v174    # "timer":Landroid/os/BatteryStats$TimerEntry;
    :cond_3d
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@11cd
    .line 4149
    .end local v80    # "ent$iterator":Ljava/util/Iterator;
    .end local v109    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    :cond_3e
    invoke-virtual/range {v176 .. v176}, Ljava/util/ArrayList;->size()I

    #@11d0
    move-result v6

    #@11d1
    if-lez v6, :cond_40

    #@11d3
    .line 4150
    move-object/from16 v0, v176

    #@11d5
    move-object/from16 v1, v175

    #@11d7
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@11da
    .line 4151
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11dd
    const-string/jumbo v6, "  All partial wake locks:"

    #@11e0
    move-object/from16 v0, p2

    #@11e2
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11e5
    .line 4152
    const/16 v94, 0x0

    #@11e7
    :goto_15
    invoke-virtual/range {v176 .. v176}, Ljava/util/ArrayList;->size()I

    #@11ea
    move-result v6

    #@11eb
    move/from16 v0, v94

    #@11ed
    if-ge v0, v6, :cond_3f

    #@11ef
    .line 4153
    move-object/from16 v0, v176

    #@11f1
    move/from16 v1, v94

    #@11f3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11f6
    move-result-object v174

    #@11f7
    check-cast v174, Landroid/os/BatteryStats$TimerEntry;

    #@11f9
    .line 4154
    .restart local v174    # "timer":Landroid/os/BatteryStats$TimerEntry;
    const/4 v6, 0x0

    #@11fa
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@11fd
    .line 4155
    const-string/jumbo v6, "  Wake lock "

    #@1200
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1203
    .line 4156
    move-object/from16 v0, v174

    #@1205
    iget v6, v0, Landroid/os/BatteryStats$TimerEntry;->mId:I

    #@1207
    invoke-static {v14, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    #@120a
    .line 4157
    const-string/jumbo v6, " "

    #@120d
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1210
    .line 4158
    move-object/from16 v0, v174

    #@1212
    iget-object v6, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    #@1214
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1217
    .line 4159
    move-object/from16 v0, v174

    #@1219
    iget-object v0, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    #@121b
    move-object/from16 v31, v0

    #@121d
    const-string/jumbo v36, ": "

    #@1220
    const/16 v34, 0x0

    #@1222
    move-object/from16 v30, v14

    #@1224
    move-wide/from16 v32, v24

    #@1226
    move/from16 v35, p4

    #@1228
    invoke-static/range {v30 .. v36}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@122b
    .line 4160
    const-string/jumbo v6, " realtime"

    #@122e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1231
    .line 4161
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1234
    move-result-object v6

    #@1235
    move-object/from16 v0, p2

    #@1237
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@123a
    .line 4152
    add-int/lit8 v94, v94, 0x1

    #@123c
    goto :goto_15

    #@123d
    .line 4163
    .end local v174    # "timer":Landroid/os/BatteryStats$TimerEntry;
    :cond_3f
    invoke-virtual/range {v176 .. v176}, Ljava/util/ArrayList;->clear()V

    #@1240
    .line 4164
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@1243
    .line 4167
    :cond_40
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    #@1246
    move-result-object v208

    #@1247
    .line 4168
    .local v208, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v208 .. v208}, Ljava/util/Map;->size()I

    #@124a
    move-result v6

    #@124b
    if-lez v6, :cond_43

    #@124d
    .line 4169
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1250
    const-string/jumbo v6, "  All wakeup reasons:"

    #@1253
    move-object/from16 v0, p2

    #@1255
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1258
    .line 4170
    new-instance v153, Ljava/util/ArrayList;

    #@125a
    invoke-direct/range {v153 .. v153}, Ljava/util/ArrayList;-><init>()V

    #@125d
    .line 4171
    .local v153, "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-interface/range {v208 .. v208}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1260
    move-result-object v6

    #@1261
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1264
    move-result-object v80

    #@1265
    .restart local v80    # "ent$iterator":Ljava/util/Iterator;
    :goto_16
    invoke-interface/range {v80 .. v80}, Ljava/util/Iterator;->hasNext()Z

    #@1268
    move-result v6

    #@1269
    if-eqz v6, :cond_41

    #@126b
    invoke-interface/range {v80 .. v80}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@126e
    move-result-object v79

    #@126f
    check-cast v79, Ljava/util/Map$Entry;

    #@1271
    .line 4172
    .restart local v79    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v79 .. v79}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1274
    move-result-object v19

    #@1275
    check-cast v19, Landroid/os/BatteryStats$Timer;

    #@1277
    .line 4173
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    new-instance v30, Landroid/os/BatteryStats$TimerEntry;

    #@1279
    invoke-interface/range {v79 .. v79}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@127c
    move-result-object v31

    #@127d
    check-cast v31, Ljava/lang/String;

    #@127f
    .line 4174
    move-object/from16 v0, v19

    #@1281
    move/from16 v1, p4

    #@1283
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@1286
    move-result v6

    #@1287
    int-to-long v0, v6

    #@1288
    move-wide/from16 v34, v0

    #@128a
    .line 4173
    const/16 v32, 0x0

    #@128c
    move-object/from16 v33, v19

    #@128e
    invoke-direct/range {v30 .. v35}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    #@1291
    move-object/from16 v0, v153

    #@1293
    move-object/from16 v1, v30

    #@1295
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1298
    goto :goto_16

    #@1299
    .line 4176
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v79    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_41
    move-object/from16 v0, v153

    #@129b
    move-object/from16 v1, v175

    #@129d
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@12a0
    .line 4177
    const/16 v94, 0x0

    #@12a2
    :goto_17
    invoke-virtual/range {v153 .. v153}, Ljava/util/ArrayList;->size()I

    #@12a5
    move-result v6

    #@12a6
    move/from16 v0, v94

    #@12a8
    if-ge v0, v6, :cond_42

    #@12aa
    .line 4178
    move-object/from16 v0, v153

    #@12ac
    move/from16 v1, v94

    #@12ae
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12b1
    move-result-object v174

    #@12b2
    check-cast v174, Landroid/os/BatteryStats$TimerEntry;

    #@12b4
    .line 4179
    .restart local v174    # "timer":Landroid/os/BatteryStats$TimerEntry;
    const-string/jumbo v28, ": "

    #@12b7
    .line 4180
    .restart local v28    # "linePrefix":Ljava/lang/String;
    const/4 v6, 0x0

    #@12b8
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@12bb
    .line 4181
    move-object/from16 v0, p3

    #@12bd
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c0
    .line 4182
    const-string/jumbo v6, "  Wakeup reason "

    #@12c3
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c6
    .line 4183
    move-object/from16 v0, v174

    #@12c8
    iget-object v6, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    #@12ca
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12cd
    .line 4184
    move-object/from16 v0, v174

    #@12cf
    iget-object v0, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    #@12d1
    move-object/from16 v31, v0

    #@12d3
    const-string/jumbo v36, ": "

    #@12d6
    const/16 v34, 0x0

    #@12d8
    move-object/from16 v30, v14

    #@12da
    move-wide/from16 v32, v24

    #@12dc
    move/from16 v35, p4

    #@12de
    invoke-static/range {v30 .. v36}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@12e1
    .line 4185
    const-string/jumbo v6, " realtime"

    #@12e4
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e7
    .line 4186
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12ea
    move-result-object v6

    #@12eb
    move-object/from16 v0, p2

    #@12ed
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12f0
    .line 4177
    add-int/lit8 v94, v94, 0x1

    #@12f2
    goto :goto_17

    #@12f3
    .line 4188
    .end local v28    # "linePrefix":Ljava/lang/String;
    .end local v174    # "timer":Landroid/os/BatteryStats$TimerEntry;
    :cond_42
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@12f6
    .line 4192
    .end local v80    # "ent$iterator":Ljava/util/Iterator;
    .end local v108    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v153    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v208    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_43
    const/16 v104, 0x0

    #@12f8
    :goto_18
    move/from16 v0, v104

    #@12fa
    move/from16 v1, v38

    #@12fc
    if-ge v0, v1, :cond_89

    #@12fe
    .line 4193
    move-object/from16 v0, v197

    #@1300
    move/from16 v1, v104

    #@1302
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@1305
    move-result v194

    #@1306
    .line 4194
    .local v194, "uid":I
    if-ltz p5, :cond_45

    #@1308
    move/from16 v0, v194

    #@130a
    move/from16 v1, p5

    #@130c
    if-eq v0, v1, :cond_45

    #@130e
    const/16 v6, 0x3e8

    #@1310
    move/from16 v0, v194

    #@1312
    if-eq v0, v6, :cond_45

    #@1314
    .line 4192
    :cond_44
    :goto_19
    add-int/lit8 v104, v104, 0x1

    #@1316
    goto :goto_18

    #@1317
    .line 4198
    :cond_45
    move-object/from16 v0, v197

    #@1319
    move/from16 v1, v104

    #@131b
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@131e
    move-result-object v177

    #@131f
    check-cast v177, Landroid/os/BatteryStats$Uid;

    #@1321
    .line 4200
    .restart local v177    # "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1324
    .line 4201
    const-string/jumbo v6, "  "

    #@1327
    move-object/from16 v0, p2

    #@1329
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@132c
    .line 4202
    move-object/from16 v0, p2

    #@132e
    move/from16 v1, v194

    #@1330
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@1333
    .line 4203
    const-string/jumbo v6, ":"

    #@1336
    move-object/from16 v0, p2

    #@1338
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@133b
    .line 4206
    const/4 v6, 0x0

    #@133c
    move-object/from16 v0, v177

    #@133e
    move/from16 v1, p4

    #@1340
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@1343
    move-result-wide v118

    #@1344
    .line 4207
    .local v118, "mobileRxBytes":J
    const/4 v6, 0x1

    #@1345
    move-object/from16 v0, v177

    #@1347
    move/from16 v1, p4

    #@1349
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@134c
    move-result-wide v126

    #@134d
    .line 4208
    .local v126, "mobileTxBytes":J
    const/4 v6, 0x2

    #@134e
    move-object/from16 v0, v177

    #@1350
    move/from16 v1, p4

    #@1352
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@1355
    move-result-wide v222

    #@1356
    .line 4209
    .local v222, "wifiRxBytes":J
    const/4 v6, 0x3

    #@1357
    move-object/from16 v0, v177

    #@1359
    move/from16 v1, p4

    #@135b
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@135e
    move-result-wide v232

    #@135f
    .line 4210
    .local v232, "wifiTxBytes":J
    const/4 v6, 0x4

    #@1360
    move-object/from16 v0, v177

    #@1362
    move/from16 v1, p4

    #@1364
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@1367
    move-result-wide v48

    #@1368
    .line 4211
    .local v48, "btRxBytes":J
    const/4 v6, 0x5

    #@1369
    move-object/from16 v0, v177

    #@136b
    move/from16 v1, p4

    #@136d
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@1370
    move-result-wide v52

    #@1371
    .line 4213
    .local v52, "btTxBytes":J
    const/4 v6, 0x0

    #@1372
    move-object/from16 v0, v177

    #@1374
    move/from16 v1, p4

    #@1376
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@1379
    move-result-wide v120

    #@137a
    .line 4214
    .local v120, "mobileRxPackets":J
    const/4 v6, 0x1

    #@137b
    move-object/from16 v0, v177

    #@137d
    move/from16 v1, p4

    #@137f
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@1382
    move-result-wide v128

    #@1383
    .line 4215
    .local v128, "mobileTxPackets":J
    const/4 v6, 0x2

    #@1384
    move-object/from16 v0, v177

    #@1386
    move/from16 v1, p4

    #@1388
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@138b
    move-result-wide v224

    #@138c
    .line 4216
    .local v224, "wifiRxPackets":J
    const/4 v6, 0x3

    #@138d
    move-object/from16 v0, v177

    #@138f
    move/from16 v1, p4

    #@1391
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@1394
    move-result-wide v234

    #@1395
    .line 4218
    .local v234, "wifiTxPackets":J
    move-object/from16 v0, v177

    #@1397
    move/from16 v1, p4

    #@1399
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    #@139c
    move-result-wide v198

    #@139d
    .line 4219
    .local v198, "uidMobileActiveTime":J
    move-object/from16 v0, v177

    #@139f
    move/from16 v1, p4

    #@13a1
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    #@13a4
    move-result v196

    #@13a5
    .line 4221
    .local v196, "uidMobileActiveCount":I
    move-object/from16 v0, v177

    #@13a7
    move-wide/from16 v1, v24

    #@13a9
    move/from16 v3, p4

    #@13ab
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    #@13ae
    move-result-wide v88

    #@13af
    .line 4222
    .local v88, "fullWifiLockOnTime":J
    move-object/from16 v0, v177

    #@13b1
    move-wide/from16 v1, v24

    #@13b3
    move/from16 v3, p4

    #@13b5
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    #@13b8
    move-result-wide v230

    #@13b9
    .line 4223
    .local v230, "wifiScanTime":J
    move-object/from16 v0, v177

    #@13bb
    move/from16 v1, p4

    #@13bd
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    #@13c0
    move-result v209

    #@13c1
    .line 4224
    .local v209, "wifiScanCount":I
    move-object/from16 v0, v177

    #@13c3
    move-wide/from16 v1, v24

    #@13c5
    move/from16 v3, p4

    #@13c7
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    #@13ca
    move-result-wide v200

    #@13cb
    .line 4226
    .local v200, "uidWifiRunningTime":J
    move-object/from16 v0, v177

    #@13cd
    move/from16 v1, p4

    #@13cf
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    #@13d2
    move-result-wide v134

    #@13d3
    .line 4227
    .local v134, "mobileWakeup":J
    move-object/from16 v0, v177

    #@13d5
    move/from16 v1, p4

    #@13d7
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    #@13da
    move-result-wide v240

    #@13db
    .line 4229
    .local v240, "wifiWakeup":J
    const-wide/16 v6, 0x0

    #@13dd
    cmp-long v6, v118, v6

    #@13df
    if-gtz v6, :cond_46

    #@13e1
    const-wide/16 v6, 0x0

    #@13e3
    cmp-long v6, v126, v6

    #@13e5
    if-lez v6, :cond_54

    #@13e7
    .line 4231
    :cond_46
    :goto_1a
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13ea
    const-string/jumbo v6, "    Mobile network: "

    #@13ed
    move-object/from16 v0, p2

    #@13ef
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13f2
    .line 4232
    move-object/from16 v0, p0

    #@13f4
    move-wide/from16 v1, v118

    #@13f6
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@13f9
    move-result-object v6

    #@13fa
    move-object/from16 v0, p2

    #@13fc
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13ff
    const-string/jumbo v6, " received, "

    #@1402
    move-object/from16 v0, p2

    #@1404
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1407
    .line 4233
    move-object/from16 v0, p0

    #@1409
    move-wide/from16 v1, v126

    #@140b
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@140e
    move-result-object v6

    #@140f
    move-object/from16 v0, p2

    #@1411
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1414
    .line 4234
    const-string/jumbo v6, " sent (packets "

    #@1417
    move-object/from16 v0, p2

    #@1419
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@141c
    move-object/from16 v0, p2

    #@141e
    move-wide/from16 v1, v120

    #@1420
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@1423
    .line 4235
    const-string/jumbo v6, " received, "

    #@1426
    move-object/from16 v0, p2

    #@1428
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@142b
    move-object/from16 v0, p2

    #@142d
    move-wide/from16 v1, v128

    #@142f
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@1432
    const-string/jumbo v6, " sent)"

    #@1435
    move-object/from16 v0, p2

    #@1437
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@143a
    .line 4237
    :cond_47
    const-wide/16 v6, 0x0

    #@143c
    cmp-long v6, v198, v6

    #@143e
    if-gtz v6, :cond_48

    #@1440
    if-lez v196, :cond_4a

    #@1442
    .line 4238
    :cond_48
    const/4 v6, 0x0

    #@1443
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1446
    .line 4239
    move-object/from16 v0, p3

    #@1448
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144b
    const-string/jumbo v6, "    Mobile radio active: "

    #@144e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1451
    .line 4240
    const-wide/16 v6, 0x3e8

    #@1453
    div-long v6, v198, v6

    #@1455
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1458
    .line 4241
    const-string/jumbo v6, "("

    #@145b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145e
    .line 4242
    move-object/from16 v0, p0

    #@1460
    move-wide/from16 v1, v198

    #@1462
    move-wide/from16 v3, v114

    #@1464
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@1467
    move-result-object v6

    #@1468
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146b
    .line 4243
    const-string/jumbo v6, ") "

    #@146e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1471
    move/from16 v0, v196

    #@1473
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1476
    const-string/jumbo v6, "x"

    #@1479
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147c
    .line 4244
    add-long v140, v120, v128

    #@147e
    .line 4245
    .local v140, "packets":J
    const-wide/16 v6, 0x0

    #@1480
    cmp-long v6, v140, v6

    #@1482
    if-nez v6, :cond_49

    #@1484
    .line 4246
    const-wide/16 v140, 0x1

    #@1486
    .line 4248
    :cond_49
    const-string/jumbo v6, " @ "

    #@1489
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148c
    .line 4249
    const-wide/16 v6, 0x3e8

    #@148e
    div-long v6, v198, v6

    #@1490
    long-to-double v6, v6

    #@1491
    move-wide/from16 v0, v140

    #@1493
    long-to-double v12, v0

    #@1494
    div-double/2addr v6, v12

    #@1495
    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@1498
    move-result-object v6

    #@1499
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149c
    .line 4250
    const-string/jumbo v6, " mspp"

    #@149f
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a2
    .line 4251
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14a5
    move-result-object v6

    #@14a6
    move-object/from16 v0, p2

    #@14a8
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14ab
    .line 4254
    .end local v140    # "packets":J
    :cond_4a
    const-wide/16 v6, 0x0

    #@14ad
    cmp-long v6, v134, v6

    #@14af
    if-lez v6, :cond_4b

    #@14b1
    .line 4255
    const/4 v6, 0x0

    #@14b2
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@14b5
    .line 4256
    move-object/from16 v0, p3

    #@14b7
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14ba
    .line 4257
    const-string/jumbo v6, "    Mobile radio AP wakeups: "

    #@14bd
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c0
    .line 4258
    move-wide/from16 v0, v134

    #@14c2
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@14c5
    .line 4259
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14c8
    move-result-object v6

    #@14c9
    move-object/from16 v0, p2

    #@14cb
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14ce
    .line 4262
    :cond_4b
    new-instance v6, Ljava/lang/StringBuilder;

    #@14d0
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@14d3
    move-object/from16 v0, p3

    #@14d5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d8
    move-result-object v6

    #@14d9
    const-string/jumbo v7, "  "

    #@14dc
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14df
    move-result-object v6

    #@14e0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14e3
    move-result-object v15

    #@14e4
    const-string/jumbo v16, "Modem"

    #@14e7
    .line 4263
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@14ea
    move-result-object v17

    #@14eb
    move-object/from16 v12, p0

    #@14ed
    move-object/from16 v13, p2

    #@14ef
    move/from16 v18, p4

    #@14f1
    .line 4262
    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    #@14f4
    .line 4265
    const-wide/16 v6, 0x0

    #@14f6
    cmp-long v6, v222, v6

    #@14f8
    if-gtz v6, :cond_4c

    #@14fa
    const-wide/16 v6, 0x0

    #@14fc
    cmp-long v6, v232, v6

    #@14fe
    if-lez v6, :cond_55

    #@1500
    .line 4266
    :cond_4c
    :goto_1b
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1503
    const-string/jumbo v6, "    Wi-Fi network: "

    #@1506
    move-object/from16 v0, p2

    #@1508
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@150b
    .line 4267
    move-object/from16 v0, p0

    #@150d
    move-wide/from16 v1, v222

    #@150f
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@1512
    move-result-object v6

    #@1513
    move-object/from16 v0, p2

    #@1515
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1518
    const-string/jumbo v6, " received, "

    #@151b
    move-object/from16 v0, p2

    #@151d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1520
    .line 4268
    move-object/from16 v0, p0

    #@1522
    move-wide/from16 v1, v232

    #@1524
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@1527
    move-result-object v6

    #@1528
    move-object/from16 v0, p2

    #@152a
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@152d
    .line 4269
    const-string/jumbo v6, " sent (packets "

    #@1530
    move-object/from16 v0, p2

    #@1532
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1535
    move-object/from16 v0, p2

    #@1537
    move-wide/from16 v1, v224

    #@1539
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@153c
    .line 4270
    const-string/jumbo v6, " received, "

    #@153f
    move-object/from16 v0, p2

    #@1541
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1544
    move-object/from16 v0, p2

    #@1546
    move-wide/from16 v1, v234

    #@1548
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@154b
    const-string/jumbo v6, " sent)"

    #@154e
    move-object/from16 v0, p2

    #@1550
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1553
    .line 4273
    :cond_4d
    const-wide/16 v6, 0x0

    #@1555
    cmp-long v6, v88, v6

    #@1557
    if-nez v6, :cond_4e

    #@1559
    const-wide/16 v6, 0x0

    #@155b
    cmp-long v6, v230, v6

    #@155d
    if-eqz v6, :cond_56

    #@155f
    .line 4275
    :cond_4e
    :goto_1c
    const/4 v6, 0x0

    #@1560
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1563
    .line 4276
    move-object/from16 v0, p3

    #@1565
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1568
    const-string/jumbo v6, "    Wifi Running: "

    #@156b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156e
    .line 4277
    const-wide/16 v6, 0x3e8

    #@1570
    div-long v6, v200, v6

    #@1572
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1575
    .line 4278
    const-string/jumbo v6, "("

    #@1578
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@157b
    move-object/from16 v0, p0

    #@157d
    move-wide/from16 v1, v200

    #@157f
    move-wide/from16 v3, v210

    #@1581
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@1584
    move-result-object v6

    #@1585
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1588
    .line 4279
    const-string/jumbo v6, ")\n"

    #@158b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158e
    .line 4280
    move-object/from16 v0, p3

    #@1590
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1593
    const-string/jumbo v6, "    Full Wifi Lock: "

    #@1596
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1599
    .line 4281
    const-wide/16 v6, 0x3e8

    #@159b
    div-long v6, v88, v6

    #@159d
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@15a0
    .line 4282
    const-string/jumbo v6, "("

    #@15a3
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a6
    move-object/from16 v0, p0

    #@15a8
    move-wide/from16 v1, v88

    #@15aa
    move-wide/from16 v3, v210

    #@15ac
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@15af
    move-result-object v6

    #@15b0
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b3
    .line 4283
    const-string/jumbo v6, ")\n"

    #@15b6
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b9
    .line 4284
    move-object/from16 v0, p3

    #@15bb
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15be
    const-string/jumbo v6, "    Wifi Scan: "

    #@15c1
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15c4
    .line 4285
    const-wide/16 v6, 0x3e8

    #@15c6
    div-long v6, v230, v6

    #@15c8
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@15cb
    .line 4286
    const-string/jumbo v6, "("

    #@15ce
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d1
    move-object/from16 v0, p0

    #@15d3
    move-wide/from16 v1, v230

    #@15d5
    move-wide/from16 v3, v210

    #@15d7
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@15da
    move-result-object v6

    #@15db
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15de
    .line 4287
    const-string/jumbo v6, ") "

    #@15e1
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15e4
    .line 4288
    move/from16 v0, v209

    #@15e6
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15e9
    .line 4289
    const-string/jumbo v6, "x"

    #@15ec
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15ef
    .line 4290
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15f2
    move-result-object v6

    #@15f3
    move-object/from16 v0, p2

    #@15f5
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15f8
    .line 4293
    :cond_4f
    const-wide/16 v6, 0x0

    #@15fa
    cmp-long v6, v240, v6

    #@15fc
    if-lez v6, :cond_50

    #@15fe
    .line 4294
    const/4 v6, 0x0

    #@15ff
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1602
    .line 4295
    move-object/from16 v0, p3

    #@1604
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1607
    .line 4296
    const-string/jumbo v6, "    WiFi AP wakeups: "

    #@160a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160d
    .line 4297
    move-wide/from16 v0, v240

    #@160f
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1612
    .line 4298
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1615
    move-result-object v6

    #@1616
    move-object/from16 v0, p2

    #@1618
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@161b
    .line 4301
    :cond_50
    new-instance v6, Ljava/lang/StringBuilder;

    #@161d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1620
    move-object/from16 v0, p3

    #@1622
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1625
    move-result-object v6

    #@1626
    const-string/jumbo v7, "  "

    #@1629
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162c
    move-result-object v6

    #@162d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1630
    move-result-object v15

    #@1631
    const-string/jumbo v16, "WiFi"

    #@1634
    .line 4302
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@1637
    move-result-object v17

    #@1638
    move-object/from16 v12, p0

    #@163a
    move-object/from16 v13, p2

    #@163c
    move/from16 v18, p4

    #@163e
    .line 4301
    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    #@1641
    .line 4304
    const-wide/16 v6, 0x0

    #@1643
    cmp-long v6, v48, v6

    #@1645
    if-gtz v6, :cond_51

    #@1647
    const-wide/16 v6, 0x0

    #@1649
    cmp-long v6, v52, v6

    #@164b
    if-lez v6, :cond_52

    #@164d
    .line 4305
    :cond_51
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1650
    const-string/jumbo v6, "    Bluetooth network: "

    #@1653
    move-object/from16 v0, p2

    #@1655
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1658
    .line 4306
    move-object/from16 v0, p0

    #@165a
    move-wide/from16 v1, v48

    #@165c
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@165f
    move-result-object v6

    #@1660
    move-object/from16 v0, p2

    #@1662
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1665
    const-string/jumbo v6, " received, "

    #@1668
    move-object/from16 v0, p2

    #@166a
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@166d
    .line 4307
    move-object/from16 v0, p0

    #@166f
    move-wide/from16 v1, v52

    #@1671
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@1674
    move-result-object v6

    #@1675
    move-object/from16 v0, p2

    #@1677
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@167a
    .line 4308
    const-string/jumbo v6, " sent"

    #@167d
    move-object/from16 v0, p2

    #@167f
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1682
    .line 4311
    :cond_52
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    #@1685
    move-result-object v31

    #@1686
    .line 4312
    const-string/jumbo v36, "Bluetooth Scan"

    #@1689
    move-object/from16 v29, p2

    #@168b
    move-object/from16 v30, v14

    #@168d
    move-wide/from16 v32, v24

    #@168f
    move/from16 v34, p4

    #@1691
    move-object/from16 v35, p3

    #@1693
    .line 4311
    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    #@1696
    move-result v195

    #@1697
    .line 4314
    .local v195, "uidActivity":Z
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    #@169a
    move-result v6

    #@169b
    if-eqz v6, :cond_59

    #@169d
    .line 4315
    const/16 v91, 0x0

    #@169f
    .line 4316
    .local v91, "hasData":Z
    const/16 v94, 0x0

    #@16a1
    :goto_1d
    const/4 v6, 0x4

    #@16a2
    move/from16 v0, v94

    #@16a4
    if-ge v0, v6, :cond_58

    #@16a6
    .line 4317
    move-object/from16 v0, v177

    #@16a8
    move/from16 v1, v94

    #@16aa
    move/from16 v2, p4

    #@16ac
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    #@16af
    move-result v206

    #@16b0
    .line 4318
    .local v206, "val":I
    if-eqz v206, :cond_53

    #@16b2
    .line 4319
    if-nez v91, :cond_57

    #@16b4
    .line 4320
    const/4 v6, 0x0

    #@16b5
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@16b8
    .line 4321
    const-string/jumbo v6, "    User activity: "

    #@16bb
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16be
    .line 4322
    const/16 v91, 0x1

    #@16c0
    .line 4326
    :goto_1e
    move/from16 v0, v206

    #@16c2
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16c5
    .line 4327
    const-string/jumbo v6, " "

    #@16c8
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16cb
    .line 4328
    sget-object v6, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    #@16cd
    aget-object v6, v6, v94

    #@16cf
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d2
    .line 4316
    :cond_53
    add-int/lit8 v94, v94, 0x1

    #@16d4
    goto :goto_1d

    #@16d5
    .line 4230
    .end local v91    # "hasData":Z
    .end local v195    # "uidActivity":Z
    .end local v206    # "val":I
    :cond_54
    const-wide/16 v6, 0x0

    #@16d7
    cmp-long v6, v120, v6

    #@16d9
    if-gtz v6, :cond_46

    #@16db
    const-wide/16 v6, 0x0

    #@16dd
    cmp-long v6, v128, v6

    #@16df
    if-lez v6, :cond_47

    #@16e1
    goto/16 :goto_1a

    #@16e3
    .line 4265
    :cond_55
    const-wide/16 v6, 0x0

    #@16e5
    cmp-long v6, v224, v6

    #@16e7
    if-gtz v6, :cond_4c

    #@16e9
    const-wide/16 v6, 0x0

    #@16eb
    cmp-long v6, v234, v6

    #@16ed
    if-lez v6, :cond_4d

    #@16ef
    goto/16 :goto_1b

    #@16f1
    .line 4273
    :cond_56
    if-nez v209, :cond_4e

    #@16f3
    .line 4274
    const-wide/16 v6, 0x0

    #@16f5
    cmp-long v6, v200, v6

    #@16f7
    if-eqz v6, :cond_4f

    #@16f9
    goto/16 :goto_1c

    #@16fb
    .line 4324
    .restart local v91    # "hasData":Z
    .restart local v195    # "uidActivity":Z
    .restart local v206    # "val":I
    :cond_57
    const-string/jumbo v6, ", "

    #@16fe
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1701
    goto :goto_1e

    #@1702
    .line 4331
    .end local v206    # "val":I
    :cond_58
    if-eqz v91, :cond_59

    #@1704
    .line 4332
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1707
    move-result-object v6

    #@1708
    move-object/from16 v0, p2

    #@170a
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@170d
    .line 4337
    .end local v91    # "hasData":Z
    :cond_59
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    #@1710
    move-result-object v207

    #@1711
    .line 4338
    .restart local v207    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    const-wide/16 v180, 0x0

    #@1713
    .local v180, "totalFullWakelock":J
    const-wide/16 v182, 0x0

    #@1715
    .local v182, "totalPartialWakelock":J
    const-wide/16 v192, 0x0

    #@1717
    .line 4339
    .local v192, "totalWindowWakelock":J
    const-wide/16 v178, 0x0

    #@1719
    .line 4340
    .local v178, "totalDrawWakelock":J
    const/16 v60, 0x0

    #@171b
    .line 4341
    .local v60, "countWakelock":I
    invoke-virtual/range {v207 .. v207}, Landroid/util/ArrayMap;->size()I

    #@171e
    move-result v6

    #@171f
    add-int/lit8 v105, v6, -0x1

    #@1721
    .end local v195    # "uidActivity":Z
    .restart local v105    # "iw":I
    :goto_1f
    if-ltz v105, :cond_5a

    #@1723
    .line 4342
    move-object/from16 v0, v207

    #@1725
    move/from16 v1, v105

    #@1727
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@172a
    move-result-object v242

    #@172b
    check-cast v242, Landroid/os/BatteryStats$Uid$Wakelock;

    #@172d
    .line 4343
    .restart local v242    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const-string/jumbo v28, ": "

    #@1730
    .line 4344
    .restart local v28    # "linePrefix":Ljava/lang/String;
    const/4 v6, 0x0

    #@1731
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1734
    .line 4345
    move-object/from16 v0, p3

    #@1736
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1739
    .line 4346
    const-string/jumbo v6, "    Wake lock "

    #@173c
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173f
    .line 4347
    move-object/from16 v0, v207

    #@1741
    move/from16 v1, v105

    #@1743
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1746
    move-result-object v6

    #@1747
    check-cast v6, Ljava/lang/String;

    #@1749
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174c
    .line 4348
    const/4 v6, 0x1

    #@174d
    move-object/from16 v0, v242

    #@174f
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@1752
    move-result-object v23

    #@1753
    .line 4349
    const-string/jumbo v26, "full"

    #@1756
    move-object/from16 v22, v14

    #@1758
    move/from16 v27, p4

    #@175a
    .line 4348
    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@175d
    move-result-object v28

    #@175e
    .line 4350
    const/4 v6, 0x0

    #@175f
    move-object/from16 v0, v242

    #@1761
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@1764
    move-result-object v23

    #@1765
    .line 4351
    const-string/jumbo v26, "partial"

    #@1768
    move-object/from16 v22, v14

    #@176a
    move/from16 v27, p4

    #@176c
    .line 4350
    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@176f
    move-result-object v28

    #@1770
    .line 4352
    const/4 v6, 0x2

    #@1771
    move-object/from16 v0, v242

    #@1773
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@1776
    move-result-object v23

    #@1777
    .line 4353
    const-string/jumbo v26, "window"

    #@177a
    move-object/from16 v22, v14

    #@177c
    move/from16 v27, p4

    #@177e
    .line 4352
    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@1781
    move-result-object v28

    #@1782
    .line 4354
    const/16 v6, 0x12

    #@1784
    move-object/from16 v0, v242

    #@1786
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@1789
    move-result-object v23

    #@178a
    .line 4355
    const-string/jumbo v26, "draw"

    #@178d
    move-object/from16 v22, v14

    #@178f
    move/from16 v27, p4

    #@1791
    .line 4354
    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@1794
    move-result-object v28

    #@1795
    .line 4356
    const-string/jumbo v6, " realtime"

    #@1798
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@179b
    .line 4357
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@179e
    move-result-object v6

    #@179f
    move-object/from16 v0, p2

    #@17a1
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17a4
    .line 4358
    const/16 v195, 0x1

    #@17a6
    .line 4359
    .local v195, "uidActivity":Z
    add-int/lit8 v60, v60, 0x1

    #@17a8
    .line 4361
    const/4 v6, 0x1

    #@17a9
    move-object/from16 v0, v242

    #@17ab
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@17ae
    move-result-object v6

    #@17af
    move-wide/from16 v0, v24

    #@17b1
    move/from16 v2, p4

    #@17b3
    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    #@17b6
    move-result-wide v6

    #@17b7
    add-long v180, v180, v6

    #@17b9
    .line 4363
    const/4 v6, 0x0

    #@17ba
    move-object/from16 v0, v242

    #@17bc
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@17bf
    move-result-object v6

    #@17c0
    move-wide/from16 v0, v24

    #@17c2
    move/from16 v2, p4

    #@17c4
    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    #@17c7
    move-result-wide v6

    #@17c8
    add-long v182, v182, v6

    #@17ca
    .line 4365
    const/4 v6, 0x2

    #@17cb
    move-object/from16 v0, v242

    #@17cd
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@17d0
    move-result-object v6

    #@17d1
    move-wide/from16 v0, v24

    #@17d3
    move/from16 v2, p4

    #@17d5
    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    #@17d8
    move-result-wide v6

    #@17d9
    add-long v192, v192, v6

    #@17db
    .line 4367
    const/16 v6, 0x12

    #@17dd
    move-object/from16 v0, v242

    #@17df
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@17e2
    move-result-object v6

    #@17e3
    move-wide/from16 v0, v24

    #@17e5
    move/from16 v2, p4

    #@17e7
    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    #@17ea
    move-result-wide v6

    #@17eb
    add-long v178, v178, v6

    #@17ed
    .line 4341
    add-int/lit8 v105, v105, -0x1

    #@17ef
    goto/16 :goto_1f

    #@17f1
    .line 4370
    .end local v28    # "linePrefix":Ljava/lang/String;
    .end local v195    # "uidActivity":Z
    .end local v242    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_5a
    const/4 v6, 0x1

    #@17f2
    move/from16 v0, v60

    #@17f4
    if-le v0, v6, :cond_63

    #@17f6
    .line 4371
    const-wide/16 v6, 0x0

    #@17f8
    cmp-long v6, v180, v6

    #@17fa
    if-nez v6, :cond_5b

    #@17fc
    const-wide/16 v6, 0x0

    #@17fe
    cmp-long v6, v182, v6

    #@1800
    if-eqz v6, :cond_64

    #@1802
    .line 4373
    :cond_5b
    :goto_20
    const/4 v6, 0x0

    #@1803
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1806
    .line 4374
    move-object/from16 v0, p3

    #@1808
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180b
    .line 4375
    const-string/jumbo v6, "    TOTAL wake: "

    #@180e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1811
    .line 4376
    const/16 v111, 0x0

    #@1813
    .line 4377
    .local v111, "needComma":Z
    const-wide/16 v6, 0x0

    #@1815
    cmp-long v6, v180, v6

    #@1817
    if-eqz v6, :cond_5c

    #@1819
    .line 4378
    const/16 v111, 0x1

    #@181b
    .line 4379
    move-wide/from16 v0, v180

    #@181d
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1820
    .line 4380
    const-string/jumbo v6, "full"

    #@1823
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1826
    .line 4382
    :cond_5c
    const-wide/16 v6, 0x0

    #@1828
    cmp-long v6, v182, v6

    #@182a
    if-eqz v6, :cond_5e

    #@182c
    .line 4383
    if-eqz v111, :cond_5d

    #@182e
    .line 4384
    const-string/jumbo v6, ", "

    #@1831
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1834
    .line 4386
    :cond_5d
    const/16 v111, 0x1

    #@1836
    .line 4387
    move-wide/from16 v0, v182

    #@1838
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@183b
    .line 4388
    const-string/jumbo v6, "partial"

    #@183e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1841
    .line 4390
    :cond_5e
    const-wide/16 v6, 0x0

    #@1843
    cmp-long v6, v192, v6

    #@1845
    if-eqz v6, :cond_60

    #@1847
    .line 4391
    if-eqz v111, :cond_5f

    #@1849
    .line 4392
    const-string/jumbo v6, ", "

    #@184c
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@184f
    .line 4394
    :cond_5f
    const/16 v111, 0x1

    #@1851
    .line 4395
    move-wide/from16 v0, v192

    #@1853
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1856
    .line 4396
    const-string/jumbo v6, "window"

    #@1859
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185c
    .line 4398
    :cond_60
    const-wide/16 v6, 0x0

    #@185e
    cmp-long v6, v178, v6

    #@1860
    if-eqz v6, :cond_62

    #@1862
    .line 4399
    if-eqz v111, :cond_61

    #@1864
    .line 4400
    const-string/jumbo v6, ","

    #@1867
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186a
    .line 4402
    :cond_61
    const/16 v111, 0x1

    #@186c
    .line 4403
    move-wide/from16 v0, v178

    #@186e
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1871
    .line 4404
    const-string/jumbo v6, "draw"

    #@1874
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1877
    .line 4406
    :cond_62
    const-string/jumbo v6, " realtime"

    #@187a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187d
    .line 4407
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1880
    move-result-object v6

    #@1881
    move-object/from16 v0, p2

    #@1883
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1886
    .line 4411
    .end local v111    # "needComma":Z
    :cond_63
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    #@1889
    move-result-object v167

    #@188a
    .line 4412
    .local v167, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v167 .. v167}, Landroid/util/ArrayMap;->size()I

    #@188d
    move-result v6

    #@188e
    add-int/lit8 v103, v6, -0x1

    #@1890
    .local v103, "isy":I
    :goto_21
    if-ltz v103, :cond_66

    #@1892
    .line 4413
    move-object/from16 v0, v167

    #@1894
    move/from16 v1, v103

    #@1896
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1899
    move-result-object v19

    #@189a
    check-cast v19, Landroid/os/BatteryStats$Timer;

    #@189c
    .line 4415
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v19

    #@189e
    move-wide/from16 v1, v24

    #@18a0
    move/from16 v3, p4

    #@18a2
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@18a5
    move-result-wide v6

    #@18a6
    const-wide/16 v12, 0x1f4

    #@18a8
    add-long/2addr v6, v12

    #@18a9
    const-wide/16 v12, 0x3e8

    #@18ab
    div-long v188, v6, v12

    #@18ad
    .line 4416
    .restart local v188    # "totalTime":J
    move-object/from16 v0, v19

    #@18af
    move/from16 v1, p4

    #@18b1
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@18b4
    move-result v59

    #@18b5
    .line 4417
    .local v59, "count":I
    const/4 v6, 0x0

    #@18b6
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@18b9
    .line 4418
    move-object/from16 v0, p3

    #@18bb
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18be
    .line 4419
    const-string/jumbo v6, "    Sync "

    #@18c1
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c4
    .line 4420
    move-object/from16 v0, v167

    #@18c6
    move/from16 v1, v103

    #@18c8
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@18cb
    move-result-object v6

    #@18cc
    check-cast v6, Ljava/lang/String;

    #@18ce
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d1
    .line 4421
    const-string/jumbo v6, ": "

    #@18d4
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d7
    .line 4422
    const-wide/16 v6, 0x0

    #@18d9
    cmp-long v6, v188, v6

    #@18db
    if-eqz v6, :cond_65

    #@18dd
    .line 4423
    move-wide/from16 v0, v188

    #@18df
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@18e2
    .line 4424
    const-string/jumbo v6, "realtime ("

    #@18e5
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e8
    .line 4425
    move/from16 v0, v59

    #@18ea
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18ed
    .line 4426
    const-string/jumbo v6, " times)"

    #@18f0
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18f3
    .line 4430
    :goto_22
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18f6
    move-result-object v6

    #@18f7
    move-object/from16 v0, p2

    #@18f9
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18fc
    .line 4431
    const/16 v195, 0x1

    #@18fe
    .line 4412
    .restart local v195    # "uidActivity":Z
    add-int/lit8 v103, v103, -0x1

    #@1900
    goto :goto_21

    #@1901
    .line 4372
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v59    # "count":I
    .end local v103    # "isy":I
    .end local v167    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v188    # "totalTime":J
    .end local v195    # "uidActivity":Z
    :cond_64
    const-wide/16 v6, 0x0

    #@1903
    cmp-long v6, v192, v6

    #@1905
    if-eqz v6, :cond_63

    #@1907
    goto/16 :goto_20

    #@1909
    .line 4428
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v59    # "count":I
    .restart local v103    # "isy":I
    .restart local v167    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v188    # "totalTime":J
    :cond_65
    const-string/jumbo v6, "(not used)"

    #@190c
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@190f
    goto :goto_22

    #@1910
    .line 4434
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v59    # "count":I
    .end local v188    # "totalTime":J
    :cond_66
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    #@1913
    move-result-object v107

    #@1914
    .line 4435
    .local v107, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v107 .. v107}, Landroid/util/ArrayMap;->size()I

    #@1917
    move-result v6

    #@1918
    add-int/lit8 v95, v6, -0x1

    #@191a
    .local v95, "ij":I
    :goto_23
    if-ltz v95, :cond_68

    #@191c
    .line 4436
    move-object/from16 v0, v107

    #@191e
    move/from16 v1, v95

    #@1920
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1923
    move-result-object v19

    #@1924
    check-cast v19, Landroid/os/BatteryStats$Timer;

    #@1926
    .line 4438
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v19

    #@1928
    move-wide/from16 v1, v24

    #@192a
    move/from16 v3, p4

    #@192c
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@192f
    move-result-wide v6

    #@1930
    const-wide/16 v12, 0x1f4

    #@1932
    add-long/2addr v6, v12

    #@1933
    const-wide/16 v12, 0x3e8

    #@1935
    div-long v188, v6, v12

    #@1937
    .line 4439
    .restart local v188    # "totalTime":J
    move-object/from16 v0, v19

    #@1939
    move/from16 v1, p4

    #@193b
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@193e
    move-result v59

    #@193f
    .line 4440
    .restart local v59    # "count":I
    const/4 v6, 0x0

    #@1940
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1943
    .line 4441
    move-object/from16 v0, p3

    #@1945
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1948
    .line 4442
    const-string/jumbo v6, "    Job "

    #@194b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194e
    .line 4443
    move-object/from16 v0, v107

    #@1950
    move/from16 v1, v95

    #@1952
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1955
    move-result-object v6

    #@1956
    check-cast v6, Ljava/lang/String;

    #@1958
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195b
    .line 4444
    const-string/jumbo v6, ": "

    #@195e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1961
    .line 4445
    const-wide/16 v6, 0x0

    #@1963
    cmp-long v6, v188, v6

    #@1965
    if-eqz v6, :cond_67

    #@1967
    .line 4446
    move-wide/from16 v0, v188

    #@1969
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@196c
    .line 4447
    const-string/jumbo v6, "realtime ("

    #@196f
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1972
    .line 4448
    move/from16 v0, v59

    #@1974
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1977
    .line 4449
    const-string/jumbo v6, " times)"

    #@197a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@197d
    .line 4453
    :goto_24
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1980
    move-result-object v6

    #@1981
    move-object/from16 v0, p2

    #@1983
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1986
    .line 4454
    const/16 v195, 0x1

    #@1988
    .line 4435
    .restart local v195    # "uidActivity":Z
    add-int/lit8 v95, v95, -0x1

    #@198a
    goto :goto_23

    #@198b
    .line 4451
    .end local v195    # "uidActivity":Z
    :cond_67
    const-string/jumbo v6, "(not used)"

    #@198e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1991
    goto :goto_24

    #@1992
    .line 4457
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v59    # "count":I
    .end local v188    # "totalTime":J
    :cond_68
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@1995
    move-result-object v31

    #@1996
    .line 4458
    const-string/jumbo v36, "Flashlight"

    #@1999
    move-object/from16 v29, p2

    #@199b
    move-object/from16 v30, v14

    #@199d
    move-wide/from16 v32, v24

    #@199f
    move/from16 v34, p4

    #@19a1
    move-object/from16 v35, p3

    #@19a3
    .line 4457
    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    #@19a6
    move-result v6

    #@19a7
    or-int v195, v195, v6

    #@19a9
    .line 4459
    .local v195, "uidActivity":Z
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@19ac
    move-result-object v31

    #@19ad
    .line 4460
    const-string/jumbo v36, "Camera"

    #@19b0
    move-object/from16 v29, p2

    #@19b2
    move-object/from16 v30, v14

    #@19b4
    move-wide/from16 v32, v24

    #@19b6
    move/from16 v34, p4

    #@19b8
    move-object/from16 v35, p3

    #@19ba
    .line 4459
    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    #@19bd
    move-result v6

    #@19be
    or-int v195, v195, v6

    #@19c0
    .line 4461
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@19c3
    move-result-object v31

    #@19c4
    .line 4462
    const-string/jumbo v36, "Video"

    #@19c7
    move-object/from16 v29, p2

    #@19c9
    move-object/from16 v30, v14

    #@19cb
    move-wide/from16 v32, v24

    #@19cd
    move/from16 v34, p4

    #@19cf
    move-object/from16 v35, p3

    #@19d1
    .line 4461
    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    #@19d4
    move-result v6

    #@19d5
    or-int v195, v195, v6

    #@19d7
    .line 4463
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@19da
    move-result-object v31

    #@19db
    .line 4464
    const-string/jumbo v36, "Audio"

    #@19de
    move-object/from16 v29, p2

    #@19e0
    move-object/from16 v30, v14

    #@19e2
    move-wide/from16 v32, v24

    #@19e4
    move/from16 v34, p4

    #@19e6
    move-object/from16 v35, p3

    #@19e8
    .line 4463
    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    #@19eb
    move-result v6

    #@19ec
    or-int v195, v195, v6

    #@19ee
    .line 4466
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    #@19f1
    move-result-object v160

    #@19f2
    .line 4467
    .local v160, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v160 .. v160}, Landroid/util/SparseArray;->size()I

    #@19f5
    move-result v37

    #@19f6
    .line 4468
    .local v37, "NSE":I
    const/16 v101, 0x0

    #@19f8
    .end local v195    # "uidActivity":Z
    .local v101, "ise":I
    :goto_25
    move/from16 v0, v101

    #@19fa
    move/from16 v1, v37

    #@19fc
    if-ge v0, v1, :cond_6c

    #@19fe
    .line 4469
    move-object/from16 v0, v160

    #@1a00
    move/from16 v1, v101

    #@1a02
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1a05
    move-result-object v158

    #@1a06
    check-cast v158, Landroid/os/BatteryStats$Uid$Sensor;

    #@1a08
    .line 4470
    .local v158, "se":Landroid/os/BatteryStats$Uid$Sensor;
    move-object/from16 v0, v160

    #@1a0a
    move/from16 v1, v101

    #@1a0c
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@1a0f
    move-result v159

    #@1a10
    .line 4471
    .local v159, "sensorNumber":I
    const/4 v6, 0x0

    #@1a11
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1a14
    .line 4472
    move-object/from16 v0, p3

    #@1a16
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a19
    .line 4473
    const-string/jumbo v6, "    Sensor "

    #@1a1c
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1f
    .line 4474
    invoke-virtual/range {v158 .. v158}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    #@1a22
    move-result v90

    #@1a23
    .line 4475
    .local v90, "handle":I
    const/16 v6, -0x2710

    #@1a25
    move/from16 v0, v90

    #@1a27
    if-ne v0, v6, :cond_69

    #@1a29
    .line 4476
    const-string/jumbo v6, "GPS"

    #@1a2c
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2f
    .line 4480
    :goto_26
    const-string/jumbo v6, ": "

    #@1a32
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a35
    .line 4482
    invoke-virtual/range {v158 .. v158}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    #@1a38
    move-result-object v19

    #@1a39
    .line 4483
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v19, :cond_6b

    #@1a3b
    .line 4485
    move-object/from16 v0, v19

    #@1a3d
    move-wide/from16 v1, v24

    #@1a3f
    move/from16 v3, p4

    #@1a41
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@1a44
    move-result-wide v6

    #@1a45
    .line 4486
    const-wide/16 v12, 0x1f4

    #@1a47
    .line 4485
    add-long/2addr v6, v12

    #@1a48
    .line 4486
    const-wide/16 v12, 0x3e8

    #@1a4a
    .line 4485
    div-long v188, v6, v12

    #@1a4c
    .line 4487
    .restart local v188    # "totalTime":J
    move-object/from16 v0, v19

    #@1a4e
    move/from16 v1, p4

    #@1a50
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@1a53
    move-result v59

    #@1a54
    .line 4489
    .restart local v59    # "count":I
    const-wide/16 v6, 0x0

    #@1a56
    cmp-long v6, v188, v6

    #@1a58
    if-eqz v6, :cond_6a

    #@1a5a
    .line 4490
    move-wide/from16 v0, v188

    #@1a5c
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1a5f
    .line 4491
    const-string/jumbo v6, "realtime ("

    #@1a62
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a65
    .line 4492
    move/from16 v0, v59

    #@1a67
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a6a
    .line 4493
    const-string/jumbo v6, " times)"

    #@1a6d
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a70
    .line 4501
    .end local v59    # "count":I
    .end local v188    # "totalTime":J
    :goto_27
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a73
    move-result-object v6

    #@1a74
    move-object/from16 v0, p2

    #@1a76
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a79
    .line 4502
    const/16 v195, 0x1

    #@1a7b
    .line 4468
    .local v195, "uidActivity":Z
    add-int/lit8 v101, v101, 0x1

    #@1a7d
    goto/16 :goto_25

    #@1a7f
    .line 4478
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v195    # "uidActivity":Z
    :cond_69
    move/from16 v0, v90

    #@1a81
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a84
    goto :goto_26

    #@1a85
    .line 4495
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v59    # "count":I
    .restart local v188    # "totalTime":J
    :cond_6a
    const-string/jumbo v6, "(not used)"

    #@1a88
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8b
    goto :goto_27

    #@1a8c
    .line 4498
    .end local v59    # "count":I
    .end local v188    # "totalTime":J
    :cond_6b
    const-string/jumbo v6, "(not used)"

    #@1a8f
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a92
    goto :goto_27

    #@1a93
    .line 4505
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v90    # "handle":I
    .end local v158    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v159    # "sensorNumber":I
    :cond_6c
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    #@1a96
    move-result-object v31

    #@1a97
    .line 4506
    const-string/jumbo v36, "Vibrator"

    #@1a9a
    move-object/from16 v29, p2

    #@1a9c
    move-object/from16 v30, v14

    #@1a9e
    move-wide/from16 v32, v24

    #@1aa0
    move/from16 v34, p4

    #@1aa2
    move-object/from16 v35, p3

    #@1aa4
    .line 4505
    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    #@1aa7
    move-result v6

    #@1aa8
    or-int v195, v195, v6

    #@1aaa
    .line 4507
    .local v195, "uidActivity":Z
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    #@1aad
    move-result-object v31

    #@1aae
    .line 4508
    const-string/jumbo v36, "Foreground activities"

    #@1ab1
    move-object/from16 v29, p2

    #@1ab3
    move-object/from16 v30, v14

    #@1ab5
    move-wide/from16 v32, v24

    #@1ab7
    move/from16 v34, p4

    #@1ab9
    move-object/from16 v35, p3

    #@1abb
    .line 4507
    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    #@1abe
    move-result v6

    #@1abf
    or-int v195, v195, v6

    #@1ac1
    .line 4510
    const-wide/16 v186, 0x0

    #@1ac3
    .line 4511
    .local v186, "totalStateTime":J
    const/16 v100, 0x0

    #@1ac5
    .end local v195    # "uidActivity":Z
    .local v100, "ips":I
    :goto_28
    const/4 v6, 0x6

    #@1ac6
    move/from16 v0, v100

    #@1ac8
    if-ge v0, v6, :cond_6e

    #@1aca
    .line 4512
    move-object/from16 v0, v177

    #@1acc
    move/from16 v1, v100

    #@1ace
    move-wide/from16 v2, v24

    #@1ad0
    move/from16 v4, p4

    #@1ad2
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    #@1ad5
    move-result-wide v172

    #@1ad6
    .line 4513
    .restart local v172    # "time":J
    const-wide/16 v6, 0x0

    #@1ad8
    cmp-long v6, v172, v6

    #@1ada
    if-lez v6, :cond_6d

    #@1adc
    .line 4514
    add-long v186, v186, v172

    #@1ade
    .line 4515
    const/4 v6, 0x0

    #@1adf
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1ae2
    .line 4516
    move-object/from16 v0, p3

    #@1ae4
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae7
    .line 4517
    const-string/jumbo v6, "    "

    #@1aea
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1aed
    .line 4518
    sget-object v6, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    #@1aef
    aget-object v6, v6, v100

    #@1af1
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af4
    .line 4519
    const-string/jumbo v6, " for: "

    #@1af7
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1afa
    .line 4520
    const-wide/16 v6, 0x1f4

    #@1afc
    add-long v6, v6, v172

    #@1afe
    const-wide/16 v12, 0x3e8

    #@1b00
    div-long/2addr v6, v12

    #@1b01
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1b04
    .line 4521
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b07
    move-result-object v6

    #@1b08
    move-object/from16 v0, p2

    #@1b0a
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b0d
    .line 4522
    const/16 v195, 0x1

    #@1b0f
    .line 4511
    :cond_6d
    add-int/lit8 v100, v100, 0x1

    #@1b11
    goto :goto_28

    #@1b12
    .line 4525
    .end local v172    # "time":J
    :cond_6e
    const-wide/16 v6, 0x0

    #@1b14
    cmp-long v6, v186, v6

    #@1b16
    if-lez v6, :cond_6f

    #@1b18
    .line 4526
    const/4 v6, 0x0

    #@1b19
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1b1c
    .line 4527
    move-object/from16 v0, p3

    #@1b1e
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b21
    .line 4528
    const-string/jumbo v6, "    Total running: "

    #@1b24
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b27
    .line 4529
    const-wide/16 v6, 0x1f4

    #@1b29
    add-long v6, v6, v186

    #@1b2b
    const-wide/16 v12, 0x3e8

    #@1b2d
    div-long/2addr v6, v12

    #@1b2e
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1b31
    .line 4530
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b34
    move-result-object v6

    #@1b35
    move-object/from16 v0, p2

    #@1b37
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b3a
    .line 4533
    :cond_6f
    move-object/from16 v0, v177

    #@1b3c
    move/from16 v1, p4

    #@1b3e
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    #@1b41
    move-result-wide v202

    #@1b42
    .line 4534
    .local v202, "userCpuTimeUs":J
    move-object/from16 v0, v177

    #@1b44
    move/from16 v1, p4

    #@1b46
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    #@1b49
    move-result-wide v168

    #@1b4a
    .line 4535
    .local v168, "systemCpuTimeUs":J
    move-object/from16 v0, v177

    #@1b4c
    move/from16 v1, p4

    #@1b4e
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getCpuPowerMaUs(I)J

    #@1b51
    move-result-wide v146

    #@1b52
    .line 4536
    .local v146, "powerCpuMaUs":J
    const-wide/16 v6, 0x0

    #@1b54
    cmp-long v6, v202, v6

    #@1b56
    if-gtz v6, :cond_70

    #@1b58
    const-wide/16 v6, 0x0

    #@1b5a
    cmp-long v6, v168, v6

    #@1b5c
    if-lez v6, :cond_7a

    #@1b5e
    .line 4537
    :cond_70
    :goto_29
    const/4 v6, 0x0

    #@1b5f
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1b62
    .line 4538
    move-object/from16 v0, p3

    #@1b64
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b67
    .line 4539
    const-string/jumbo v6, "    Total cpu time: u="

    #@1b6a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b6d
    .line 4540
    const-wide/16 v6, 0x3e8

    #@1b6f
    div-long v6, v202, v6

    #@1b71
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1b74
    .line 4541
    const-string/jumbo v6, "s="

    #@1b77
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b7a
    .line 4542
    const-wide/16 v6, 0x3e8

    #@1b7c
    div-long v6, v168, v6

    #@1b7e
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1b81
    .line 4543
    const-string/jumbo v6, "p="

    #@1b84
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b87
    .line 4544
    move-wide/from16 v0, v146

    #@1b89
    long-to-double v6, v0

    #@1b8a
    const-wide v12, 0x41ead27480000000L    # 3.6E9

    #@1b8f
    div-double/2addr v6, v12

    #@1b90
    move-object/from16 v0, p0

    #@1b92
    invoke-direct {v0, v14, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/lang/StringBuilder;D)V

    #@1b95
    .line 4545
    const-string/jumbo v6, "mAh"

    #@1b98
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9b
    .line 4546
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b9e
    move-result-object v6

    #@1b9f
    move-object/from16 v0, p2

    #@1ba1
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ba4
    .line 4550
    :cond_71
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    #@1ba7
    move-result-object v150

    #@1ba8
    .line 4551
    .local v150, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual/range {v150 .. v150}, Landroid/util/ArrayMap;->size()I

    #@1bab
    move-result v6

    #@1bac
    add-int/lit8 v99, v6, -0x1

    #@1bae
    .local v99, "ipr":I
    :goto_2a
    if-ltz v99, :cond_81

    #@1bb0
    .line 4552
    move-object/from16 v0, v150

    #@1bb2
    move/from16 v1, v99

    #@1bb4
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1bb7
    move-result-object v152

    #@1bb8
    check-cast v152, Landroid/os/BatteryStats$Uid$Proc;

    #@1bba
    .line 4559
    .local v152, "ps":Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v152

    #@1bbc
    move/from16 v1, p4

    #@1bbe
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    #@1bc1
    move-result-wide v204

    #@1bc2
    .line 4560
    .local v204, "userTime":J
    move-object/from16 v0, v152

    #@1bc4
    move/from16 v1, p4

    #@1bc6
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    #@1bc9
    move-result-wide v170

    #@1bca
    .line 4561
    .local v170, "systemTime":J
    move-object/from16 v0, v152

    #@1bcc
    move/from16 v1, p4

    #@1bce
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    #@1bd1
    move-result-wide v84

    #@1bd2
    .line 4562
    .local v84, "foregroundTime":J
    move-object/from16 v0, v152

    #@1bd4
    move/from16 v1, p4

    #@1bd6
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    #@1bd9
    move-result v166

    #@1bda
    .line 4563
    .local v166, "starts":I
    move-object/from16 v0, v152

    #@1bdc
    move/from16 v1, p4

    #@1bde
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    #@1be1
    move-result v137

    #@1be2
    .line 4564
    .local v137, "numCrashes":I
    move-object/from16 v0, v152

    #@1be4
    move/from16 v1, p4

    #@1be6
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    #@1be9
    move-result v136

    #@1bea
    .line 4565
    .local v136, "numAnrs":I
    if-nez p4, :cond_7b

    #@1bec
    .line 4566
    invoke-virtual/range {v152 .. v152}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    #@1bef
    move-result v138

    #@1bf0
    .line 4568
    .local v138, "numExcessive":I
    :goto_2b
    const-wide/16 v6, 0x0

    #@1bf2
    cmp-long v6, v204, v6

    #@1bf4
    if-nez v6, :cond_72

    #@1bf6
    const-wide/16 v6, 0x0

    #@1bf8
    cmp-long v6, v170, v6

    #@1bfa
    if-eqz v6, :cond_7c

    #@1bfc
    .line 4570
    :cond_72
    const/4 v6, 0x0

    #@1bfd
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1c00
    .line 4571
    move-object/from16 v0, p3

    #@1c02
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c05
    const-string/jumbo v6, "    Proc "

    #@1c08
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0b
    .line 4572
    move-object/from16 v0, v150

    #@1c0d
    move/from16 v1, v99

    #@1c0f
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1c12
    move-result-object v6

    #@1c13
    check-cast v6, Ljava/lang/String;

    #@1c15
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c18
    const-string/jumbo v6, ":\n"

    #@1c1b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c1e
    .line 4573
    move-object/from16 v0, p3

    #@1c20
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c23
    const-string/jumbo v6, "      CPU: "

    #@1c26
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c29
    .line 4574
    move-wide/from16 v0, v204

    #@1c2b
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1c2e
    const-string/jumbo v6, "usr + "

    #@1c31
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c34
    .line 4575
    move-wide/from16 v0, v170

    #@1c36
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1c39
    const-string/jumbo v6, "krn ; "

    #@1c3c
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c3f
    .line 4576
    move-wide/from16 v0, v84

    #@1c41
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1c44
    const-string/jumbo v6, "fg"

    #@1c47
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c4a
    .line 4577
    if-nez v166, :cond_73

    #@1c4c
    if-eqz v137, :cond_7d

    #@1c4e
    .line 4578
    :cond_73
    :goto_2c
    const-string/jumbo v6, "\n"

    #@1c51
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c54
    move-object/from16 v0, p3

    #@1c56
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c59
    const-string/jumbo v6, "      "

    #@1c5c
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c5f
    .line 4579
    const/16 v92, 0x0

    #@1c61
    .line 4580
    .local v92, "hasOne":Z
    if-eqz v166, :cond_74

    #@1c63
    .line 4581
    const/16 v92, 0x1

    #@1c65
    .line 4582
    move/from16 v0, v166

    #@1c67
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c6a
    const-string/jumbo v6, " starts"

    #@1c6d
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c70
    .line 4584
    :cond_74
    if-eqz v137, :cond_76

    #@1c72
    .line 4585
    if-eqz v92, :cond_75

    #@1c74
    .line 4586
    const-string/jumbo v6, ", "

    #@1c77
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c7a
    .line 4588
    :cond_75
    const/16 v92, 0x1

    #@1c7c
    .line 4589
    move/from16 v0, v137

    #@1c7e
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c81
    const-string/jumbo v6, " crashes"

    #@1c84
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c87
    .line 4591
    :cond_76
    if-eqz v136, :cond_78

    #@1c89
    .line 4592
    if-eqz v92, :cond_77

    #@1c8b
    .line 4593
    const-string/jumbo v6, ", "

    #@1c8e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c91
    .line 4595
    :cond_77
    move/from16 v0, v136

    #@1c93
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c96
    const-string/jumbo v6, " anrs"

    #@1c99
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c9c
    .line 4598
    .end local v92    # "hasOne":Z
    :cond_78
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c9f
    move-result-object v6

    #@1ca0
    move-object/from16 v0, p2

    #@1ca2
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ca5
    .line 4599
    const/16 v78, 0x0

    #@1ca7
    .local v78, "e":I
    :goto_2d
    move/from16 v0, v78

    #@1ca9
    move/from16 v1, v138

    #@1cab
    if-ge v0, v1, :cond_80

    #@1cad
    .line 4600
    move-object/from16 v0, v152

    #@1caf
    move/from16 v1, v78

    #@1cb1
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    #@1cb4
    move-result-object v82

    #@1cb5
    .line 4601
    .local v82, "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    if-eqz v82, :cond_79

    #@1cb7
    .line 4602
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1cba
    const-string/jumbo v6, "      * Killed for "

    #@1cbd
    move-object/from16 v0, p2

    #@1cbf
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1cc2
    .line 4603
    move-object/from16 v0, v82

    #@1cc4
    iget v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    #@1cc6
    const/4 v7, 0x1

    #@1cc7
    if-ne v6, v7, :cond_7e

    #@1cc9
    .line 4604
    const-string/jumbo v6, "wake lock"

    #@1ccc
    move-object/from16 v0, p2

    #@1cce
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1cd1
    .line 4610
    :goto_2e
    const-string/jumbo v6, " use: "

    #@1cd4
    move-object/from16 v0, p2

    #@1cd6
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1cd9
    .line 4611
    move-object/from16 v0, v82

    #@1cdb
    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    #@1cdd
    move-object/from16 v0, p2

    #@1cdf
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@1ce2
    .line 4612
    const-string/jumbo v6, " over "

    #@1ce5
    move-object/from16 v0, p2

    #@1ce7
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1cea
    .line 4613
    move-object/from16 v0, v82

    #@1cec
    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    #@1cee
    move-object/from16 v0, p2

    #@1cf0
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@1cf3
    .line 4614
    move-object/from16 v0, v82

    #@1cf5
    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    #@1cf7
    const-wide/16 v12, 0x0

    #@1cf9
    cmp-long v6, v6, v12

    #@1cfb
    if-eqz v6, :cond_79

    #@1cfd
    .line 4615
    const-string/jumbo v6, " ("

    #@1d00
    move-object/from16 v0, p2

    #@1d02
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d05
    .line 4616
    move-object/from16 v0, v82

    #@1d07
    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    #@1d09
    const-wide/16 v12, 0x64

    #@1d0b
    mul-long/2addr v6, v12

    #@1d0c
    move-object/from16 v0, v82

    #@1d0e
    iget-wide v12, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    #@1d10
    div-long/2addr v6, v12

    #@1d11
    move-object/from16 v0, p2

    #@1d13
    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    #@1d16
    .line 4617
    const-string/jumbo v6, "%)"

    #@1d19
    move-object/from16 v0, p2

    #@1d1b
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d1e
    .line 4599
    :cond_79
    add-int/lit8 v78, v78, 0x1

    #@1d20
    goto :goto_2d

    #@1d21
    .line 4536
    .end local v78    # "e":I
    .end local v82    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .end local v84    # "foregroundTime":J
    .end local v99    # "ipr":I
    .end local v136    # "numAnrs":I
    .end local v137    # "numCrashes":I
    .end local v138    # "numExcessive":I
    .end local v150    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v152    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v166    # "starts":I
    .end local v170    # "systemTime":J
    .end local v204    # "userTime":J
    :cond_7a
    const-wide/16 v6, 0x0

    #@1d23
    cmp-long v6, v146, v6

    #@1d25
    if-lez v6, :cond_71

    #@1d27
    goto/16 :goto_29

    #@1d29
    .line 4566
    .restart local v84    # "foregroundTime":J
    .restart local v99    # "ipr":I
    .restart local v136    # "numAnrs":I
    .restart local v137    # "numCrashes":I
    .restart local v150    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v152    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .restart local v166    # "starts":I
    .restart local v170    # "systemTime":J
    .restart local v204    # "userTime":J
    :cond_7b
    const/16 v138, 0x0

    #@1d2b
    .restart local v138    # "numExcessive":I
    goto/16 :goto_2b

    #@1d2d
    .line 4568
    :cond_7c
    const-wide/16 v6, 0x0

    #@1d2f
    cmp-long v6, v84, v6

    #@1d31
    if-nez v6, :cond_72

    #@1d33
    if-nez v166, :cond_72

    #@1d35
    .line 4569
    if-nez v138, :cond_72

    #@1d37
    if-nez v137, :cond_72

    #@1d39
    if-nez v136, :cond_72

    #@1d3b
    .line 4551
    :goto_2f
    add-int/lit8 v99, v99, -0x1

    #@1d3d
    goto/16 :goto_2a

    #@1d3f
    .line 4577
    :cond_7d
    if-eqz v136, :cond_78

    #@1d41
    goto/16 :goto_2c

    #@1d43
    .line 4605
    .restart local v78    # "e":I
    .restart local v82    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    :cond_7e
    move-object/from16 v0, v82

    #@1d45
    iget v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    #@1d47
    const/4 v7, 0x2

    #@1d48
    if-ne v6, v7, :cond_7f

    #@1d4a
    .line 4606
    const-string/jumbo v6, "cpu"

    #@1d4d
    move-object/from16 v0, p2

    #@1d4f
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d52
    goto/16 :goto_2e

    #@1d54
    .line 4608
    :cond_7f
    const-string/jumbo v6, "unknown"

    #@1d57
    move-object/from16 v0, p2

    #@1d59
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d5c
    goto/16 :goto_2e

    #@1d5e
    .line 4621
    .end local v82    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    :cond_80
    const/16 v195, 0x1

    #@1d60
    .local v195, "uidActivity":Z
    goto :goto_2f

    #@1d61
    .line 4626
    .end local v78    # "e":I
    .end local v84    # "foregroundTime":J
    .end local v136    # "numAnrs":I
    .end local v137    # "numCrashes":I
    .end local v138    # "numExcessive":I
    .end local v152    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v166    # "starts":I
    .end local v170    # "systemTime":J
    .end local v195    # "uidActivity":Z
    .end local v204    # "userTime":J
    :cond_81
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    #@1d64
    move-result-object v139

    #@1d65
    .line 4627
    .local v139, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual/range {v139 .. v139}, Landroid/util/ArrayMap;->size()I

    #@1d68
    move-result v6

    #@1d69
    add-int/lit8 v98, v6, -0x1

    #@1d6b
    .local v98, "ipkg":I
    :goto_30
    if-ltz v98, :cond_88

    #@1d6d
    .line 4628
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d70
    const-string/jumbo v6, "    Apk "

    #@1d73
    move-object/from16 v0, p2

    #@1d75
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d78
    move-object/from16 v0, v139

    #@1d7a
    move/from16 v1, v98

    #@1d7c
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1d7f
    move-result-object v6

    #@1d80
    check-cast v6, Ljava/lang/String;

    #@1d82
    move-object/from16 v0, p2

    #@1d84
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d87
    .line 4629
    const-string/jumbo v6, ":"

    #@1d8a
    move-object/from16 v0, p2

    #@1d8c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d8f
    .line 4630
    const/16 v40, 0x0

    #@1d91
    .line 4631
    .local v40, "apkActivity":Z
    move-object/from16 v0, v139

    #@1d93
    move/from16 v1, v98

    #@1d95
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1d98
    move-result-object v151

    #@1d99
    check-cast v151, Landroid/os/BatteryStats$Uid$Pkg;

    #@1d9b
    .line 4632
    .local v151, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    invoke-virtual/range {v151 .. v151}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    #@1d9e
    move-result-object v39

    #@1d9f
    .line 4633
    .local v39, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual/range {v39 .. v39}, Landroid/util/ArrayMap;->size()I

    #@1da2
    move-result v6

    #@1da3
    add-int/lit8 v106, v6, -0x1

    #@1da5
    .local v106, "iwa":I
    :goto_31
    if-ltz v106, :cond_82

    #@1da7
    .line 4634
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1daa
    const-string/jumbo v6, "      Wakeup alarm "

    #@1dad
    move-object/from16 v0, p2

    #@1daf
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1db2
    .line 4635
    move-object/from16 v0, v39

    #@1db4
    move/from16 v1, v106

    #@1db6
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1db9
    move-result-object v6

    #@1dba
    check-cast v6, Ljava/lang/String;

    #@1dbc
    move-object/from16 v0, p2

    #@1dbe
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1dc1
    const-string/jumbo v6, ": "

    #@1dc4
    move-object/from16 v0, p2

    #@1dc6
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1dc9
    .line 4636
    move-object/from16 v0, v39

    #@1dcb
    move/from16 v1, v106

    #@1dcd
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1dd0
    move-result-object v6

    #@1dd1
    check-cast v6, Landroid/os/BatteryStats$Counter;

    #@1dd3
    move/from16 v0, p4

    #@1dd5
    invoke-virtual {v6, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    #@1dd8
    move-result v6

    #@1dd9
    move-object/from16 v0, p2

    #@1ddb
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    #@1dde
    .line 4637
    const-string/jumbo v6, " times"

    #@1de1
    move-object/from16 v0, p2

    #@1de3
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1de6
    .line 4638
    const/16 v40, 0x1

    #@1de8
    .line 4633
    add-int/lit8 v106, v106, -0x1

    #@1dea
    goto :goto_31

    #@1deb
    .line 4640
    :cond_82
    invoke-virtual/range {v151 .. v151}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    #@1dee
    move-result-object v161

    #@1def
    .line 4641
    .local v161, "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual/range {v161 .. v161}, Landroid/util/ArrayMap;->size()I

    #@1df2
    move-result v6

    #@1df3
    add-int/lit8 v102, v6, -0x1

    #@1df5
    .local v102, "isvc":I
    :goto_32
    if-ltz v102, :cond_86

    #@1df7
    .line 4642
    move-object/from16 v0, v161

    #@1df9
    move/from16 v1, v102

    #@1dfb
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1dfe
    move-result-object v163

    #@1dff
    check-cast v163, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    #@1e01
    .line 4643
    .local v163, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move-object/from16 v0, v163

    #@1e03
    move-wide/from16 v1, v44

    #@1e05
    move/from16 v3, p4

    #@1e07
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    #@1e0a
    move-result-wide v164

    #@1e0b
    .line 4644
    .local v164, "startTime":J
    move-object/from16 v0, v163

    #@1e0d
    move/from16 v1, p4

    #@1e0f
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    #@1e12
    move-result v166

    #@1e13
    .line 4645
    .restart local v166    # "starts":I
    move-object/from16 v0, v163

    #@1e15
    move/from16 v1, p4

    #@1e17
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    #@1e1a
    move-result v110

    #@1e1b
    .line 4646
    .local v110, "launches":I
    const-wide/16 v6, 0x0

    #@1e1d
    cmp-long v6, v164, v6

    #@1e1f
    if-nez v6, :cond_83

    #@1e21
    if-eqz v166, :cond_85

    #@1e23
    .line 4647
    :cond_83
    :goto_33
    const/4 v6, 0x0

    #@1e24
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1e27
    .line 4648
    move-object/from16 v0, p3

    #@1e29
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e2c
    const-string/jumbo v6, "      Service "

    #@1e2f
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e32
    .line 4649
    move-object/from16 v0, v161

    #@1e34
    move/from16 v1, v102

    #@1e36
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1e39
    move-result-object v6

    #@1e3a
    check-cast v6, Ljava/lang/String;

    #@1e3c
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e3f
    const-string/jumbo v6, ":\n"

    #@1e42
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e45
    .line 4650
    move-object/from16 v0, p3

    #@1e47
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e4a
    const-string/jumbo v6, "        Created for: "

    #@1e4d
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e50
    .line 4651
    const-wide/16 v6, 0x3e8

    #@1e52
    div-long v6, v164, v6

    #@1e54
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1e57
    .line 4652
    const-string/jumbo v6, "uptime\n"

    #@1e5a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e5d
    .line 4653
    move-object/from16 v0, p3

    #@1e5f
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e62
    const-string/jumbo v6, "        Starts: "

    #@1e65
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e68
    .line 4654
    move/from16 v0, v166

    #@1e6a
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e6d
    .line 4655
    const-string/jumbo v6, ", launches: "

    #@1e70
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e73
    move/from16 v0, v110

    #@1e75
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e78
    .line 4656
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e7b
    move-result-object v6

    #@1e7c
    move-object/from16 v0, p2

    #@1e7e
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e81
    .line 4657
    const/16 v40, 0x1

    #@1e83
    .line 4641
    :cond_84
    add-int/lit8 v102, v102, -0x1

    #@1e85
    goto/16 :goto_32

    #@1e87
    .line 4646
    :cond_85
    if-eqz v110, :cond_84

    #@1e89
    goto :goto_33

    #@1e8a
    .line 4660
    .end local v110    # "launches":I
    .end local v163    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v164    # "startTime":J
    .end local v166    # "starts":I
    :cond_86
    if-nez v40, :cond_87

    #@1e8c
    .line 4661
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e8f
    const-string/jumbo v6, "      (nothing executed)"

    #@1e92
    move-object/from16 v0, p2

    #@1e94
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e97
    .line 4663
    :cond_87
    const/16 v195, 0x1

    #@1e99
    .line 4627
    .restart local v195    # "uidActivity":Z
    add-int/lit8 v98, v98, -0x1

    #@1e9b
    goto/16 :goto_30

    #@1e9d
    .line 4665
    .end local v39    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v40    # "apkActivity":Z
    .end local v102    # "isvc":I
    .end local v106    # "iwa":I
    .end local v151    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v161    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v195    # "uidActivity":Z
    :cond_88
    if-nez v195, :cond_44

    #@1e9f
    .line 4666
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ea2
    const-string/jumbo v6, "    (nothing executed)"

    #@1ea5
    move-object/from16 v0, p2

    #@1ea7
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1eaa
    goto/16 :goto_19

    #@1eac
    .line 3437
    .end local v37    # "NSE":I
    .end local v48    # "btRxBytes":J
    .end local v52    # "btTxBytes":J
    .end local v60    # "countWakelock":I
    .end local v88    # "fullWifiLockOnTime":J
    .end local v95    # "ij":I
    .end local v98    # "ipkg":I
    .end local v99    # "ipr":I
    .end local v100    # "ips":I
    .end local v101    # "ise":I
    .end local v103    # "isy":I
    .end local v105    # "iw":I
    .end local v107    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v118    # "mobileRxBytes":J
    .end local v120    # "mobileRxPackets":J
    .end local v126    # "mobileTxBytes":J
    .end local v128    # "mobileTxPackets":J
    .end local v134    # "mobileWakeup":J
    .end local v139    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v146    # "powerCpuMaUs":J
    .end local v150    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v160    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v167    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v168    # "systemCpuTimeUs":J
    .end local v177    # "u":Landroid/os/BatteryStats$Uid;
    .end local v178    # "totalDrawWakelock":J
    .end local v180    # "totalFullWakelock":J
    .end local v182    # "totalPartialWakelock":J
    .end local v186    # "totalStateTime":J
    .end local v192    # "totalWindowWakelock":J
    .end local v194    # "uid":I
    .end local v196    # "uidMobileActiveCount":I
    .end local v198    # "uidMobileActiveTime":J
    .end local v200    # "uidWifiRunningTime":J
    .end local v202    # "userCpuTimeUs":J
    .end local v207    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v209    # "wifiScanCount":I
    .end local v222    # "wifiRxBytes":J
    .end local v224    # "wifiRxPackets":J
    .end local v230    # "wifiScanTime":J
    .end local v232    # "wifiTxBytes":J
    .end local v234    # "wifiTxPackets":J
    .end local v240    # "wifiWakeup":J
    :cond_89
    return-void

    #@1ead
    .line 3975
    nop

    #@1eae
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_b
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_2
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_3
    .end packed-switch
.end method

.method public abstract finishIteratingHistoryLocked()V
.end method

.method public abstract finishIteratingOldHistoryLocked()V
.end method

.method final formatBytesLocked(J)Ljava/lang/String;
    .locals 9
    .param p1, "bytes"    # J

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 2540
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@4
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    #@7
    .line 2542
    const-wide/16 v0, 0x400

    #@9
    cmp-long v0, p1, v0

    #@b
    if-gez v0, :cond_0

    #@d
    .line 2543
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, "B"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0

    #@22
    .line 2544
    :cond_0
    const-wide/32 v0, 0x100000

    #@25
    cmp-long v0, p1, v0

    #@27
    if-gez v0, :cond_1

    #@29
    .line 2545
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    #@2b
    const-string/jumbo v1, "%.2fKB"

    #@2e
    new-array v2, v2, [Ljava/lang/Object;

    #@30
    long-to-double v4, p1

    #@31
    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    #@33
    div-double/2addr v4, v6

    #@34
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@37
    move-result-object v3

    #@38
    aput-object v3, v2, v8

    #@3a
    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@3d
    .line 2546
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    return-object v0

    #@44
    .line 2547
    :cond_1
    const-wide/32 v0, 0x40000000

    #@47
    cmp-long v0, p1, v0

    #@49
    if-gez v0, :cond_2

    #@4b
    .line 2548
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    #@4d
    const-string/jumbo v1, "%.2fMB"

    #@50
    new-array v2, v2, [Ljava/lang/Object;

    #@52
    long-to-double v4, p1

    #@53
    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    #@55
    div-double/2addr v4, v6

    #@56
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@59
    move-result-object v3

    #@5a
    aput-object v3, v2, v8

    #@5c
    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@5f
    .line 2549
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v0

    #@65
    return-object v0

    #@66
    .line 2551
    :cond_2
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    #@68
    const-string/jumbo v1, "%.2fGB"

    #@6b
    new-array v2, v2, [Ljava/lang/Object;

    #@6d
    long-to-double v4, p1

    #@6e
    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    #@70
    div-double/2addr v4, v6

    #@71
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@74
    move-result-object v3

    #@75
    aput-object v3, v2, v8

    #@77
    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@7a
    .line 2552
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@7c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v0

    #@80
    return-object v0
.end method

.method public final formatRatioLocked(JJ)Ljava/lang/String;
    .locals 7
    .param p1, "num"    # J
    .param p3, "den"    # J

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2530
    const-wide/16 v2, 0x0

    #@3
    cmp-long v1, p3, v2

    #@5
    if-nez v1, :cond_0

    #@7
    .line 2531
    const-string/jumbo v1, "--%"

    #@a
    return-object v1

    #@b
    .line 2533
    :cond_0
    long-to-float v1, p1

    #@c
    long-to-float v2, p3

    #@d
    div-float/2addr v1, v2

    #@e
    const/high16 v2, 0x42c80000    # 100.0f

    #@10
    mul-float v0, v1, v2

    #@12
    .line 2534
    .local v0, "perc":F
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@14
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    #@17
    .line 2535
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    #@19
    const-string/jumbo v2, "%.1f%%"

    #@1c
    const/4 v3, 0x1

    #@1d
    new-array v3, v3, [Ljava/lang/Object;

    #@1f
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@22
    move-result-object v4

    #@23
    aput-object v4, v3, v5

    #@25
    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@28
    .line 2536
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    return-object v1
.end method

.method public abstract getBatteryRealtime(J)J
.end method

.method public abstract getBatteryUptime(J)J
.end method

.method public abstract getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getBluetoothScanTime(JI)J
.end method

.method public abstract getCameraOnTime(JI)J
.end method

.method public abstract getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getCurrentDailyStartTime()J
.end method

.method public abstract getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;
.end method

.method public abstract getDailyPackageChanges()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceIdleModeCount(II)I
.end method

.method public abstract getDeviceIdleModeTime(IJI)J
.end method

.method public abstract getDeviceIdlingCount(II)I
.end method

.method public abstract getDeviceIdlingTime(IJI)J
.end method

.method public abstract getDischargeAmount(I)I
.end method

.method public abstract getDischargeAmountScreenOff()I
.end method

.method public abstract getDischargeAmountScreenOffSinceCharge()I
.end method

.method public abstract getDischargeAmountScreenOn()I
.end method

.method public abstract getDischargeAmountScreenOnSinceCharge()I
.end method

.method public abstract getDischargeCoulombCounter()Landroid/os/BatteryStats$LongCounter;
.end method

.method public abstract getDischargeCurrentLevel()I
.end method

.method public abstract getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDischargeScreenOffCoulombCounter()Landroid/os/BatteryStats$LongCounter;
.end method

.method public abstract getDischargeStartLevel()I
.end method

.method public abstract getEndPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getEstimatedBatteryCapacity()I
.end method

.method public abstract getFlashlightOnCount(I)J
.end method

.method public abstract getFlashlightOnTime(JI)J
.end method

.method public abstract getGlobalWifiRunningTime(JI)J
.end method

.method public abstract getHighDischargeAmountSinceCharge()I
.end method

.method public abstract getHistoryBaseTime()J
.end method

.method public abstract getHistoryStringPoolBytes()I
.end method

.method public abstract getHistoryStringPoolSize()I
.end method

.method public abstract getHistoryTagPoolString(I)Ljava/lang/String;
.end method

.method public abstract getHistoryTagPoolUid(I)I
.end method

.method public abstract getHistoryTotalSize()I
.end method

.method public abstract getHistoryUsedSize()I
.end method

.method public abstract getInteractiveTime(JI)J
.end method

.method public abstract getIsOnBattery()Z
.end method

.method public abstract getKernelWakelockStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLongestDeviceIdleModeTime(I)J
.end method

.method public abstract getLowDischargeAmountSinceCharge()I
.end method

.method public abstract getMobileRadioActiveAdjustedTime(I)J
.end method

.method public abstract getMobileRadioActiveCount(I)I
.end method

.method public abstract getMobileRadioActiveTime(JI)J
.end method

.method public abstract getMobileRadioActiveUnknownCount(I)I
.end method

.method public abstract getMobileRadioActiveUnknownTime(I)J
.end method

.method public abstract getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getNetworkActivityBytes(II)J
.end method

.method public abstract getNetworkActivityPackets(II)J
.end method

.method public abstract getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getNextMaxDailyDeadline()J
.end method

.method public abstract getNextMinDailyDeadline()J
.end method

.method public abstract getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getNumConnectivityChange(I)I
.end method

.method public abstract getParcelVersion()I
.end method

.method public abstract getPhoneDataConnectionCount(II)I
.end method

.method public abstract getPhoneDataConnectionTime(IJI)J
.end method

.method public abstract getPhoneOnCount(I)I
.end method

.method public abstract getPhoneOnTime(JI)J
.end method

.method public abstract getPhoneSignalScanningTime(JI)J
.end method

.method public abstract getPhoneSignalStrengthCount(II)I
.end method

.method public abstract getPhoneSignalStrengthTime(IJI)J
.end method

.method public abstract getPowerSaveModeEnabledCount(I)I
.end method

.method public abstract getPowerSaveModeEnabledTime(JI)J
.end method

.method public abstract getScreenBrightnessTime(IJI)J
.end method

.method public abstract getScreenOnCount(I)I
.end method

.method public abstract getScreenOnTime(JI)J
.end method

.method public abstract getStartClockTime()J
.end method

.method public abstract getStartCount()I
.end method

.method public abstract getStartPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getUidStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWakeupReasonStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getWifiOnTime(JI)J
.end method

.method public abstract getWifiSignalStrengthCount(II)I
.end method

.method public abstract getWifiSignalStrengthTime(IJI)J
.end method

.method public abstract getWifiStateCount(II)I
.end method

.method public abstract getWifiStateTime(IJI)J
.end method

.method public abstract getWifiSupplStateCount(II)I
.end method

.method public abstract getWifiSupplStateTime(IJI)J
.end method

.method public abstract hasBluetoothActivityReporting()Z
.end method

.method public abstract hasModemActivityReporting()Z
.end method

.method public abstract hasWifiActivityReporting()Z
.end method

.method public prepareForDumpLocked()V
    .locals 0

    #@0
    .prologue
    .line 4720
    return-void
.end method

.method public abstract startIteratingHistoryLocked()Z
.end method

.method public abstract startIteratingOldHistoryLocked()Z
.end method

.method public abstract writeToParcelWithoutUids(Landroid/os/Parcel;I)V
.end method
