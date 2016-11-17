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

.field static final CHECKIN_VERSION:Ljava/lang/String; = "18"

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
    .line 174
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
    .line 1678
    const/4 v0, 0x5

    #@19
    new-array v0, v0, [Ljava/lang/String;

    #@1b
    .line 1679
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
    .line 1678
    sput-object v0, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    #@36
    .line 1682
    const/4 v0, 0x5

    #@37
    new-array v0, v0, [Ljava/lang/String;

    #@39
    .line 1683
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
    .line 1682
    sput-object v0, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    #@54
    .line 1870
    const/16 v0, 0x11

    #@56
    new-array v0, v0, [Ljava/lang/String;

    #@58
    .line 1871
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
    .line 1872
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
    .line 1873
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
    .line 1870
    sput-object v0, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    #@c4
    .line 1911
    const/16 v0, 0xd

    #@c6
    new-array v0, v0, [Ljava/lang/String;

    #@c8
    .line 1912
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
    .line 1913
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
    .line 1914
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
    .line 1911
    sput-object v0, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    #@118
    .line 1917
    const/16 v0, 0xd

    #@11a
    new-array v0, v0, [Ljava/lang/String;

    #@11c
    .line 1918
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
    .line 1919
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
    .line 1920
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
    .line 1917
    sput-object v0, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    #@16c
    .line 1924
    const/16 v0, 0x11

    #@16e
    new-array v7, v0, [Landroid/os/BatteryStats$BitDescription;

    #@170
    .line 1925
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
    .line 1926
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
    .line 1927
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
    .line 1928
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
    .line 1929
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
    .line 1930
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
    .line 1931
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
    .line 1932
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
    .line 1933
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
    .line 1934
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
    .line 1935
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
    .line 1936
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
    .line 1937
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
    .line 1938
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@242
    .line 1939
    const-string/jumbo v3, "data_conn"

    #@245
    const-string/jumbo v4, "Pcn"

    #@248
    .line 1940
    sget-object v5, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    #@24a
    sget-object v6, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    #@24c
    .line 1938
    const/16 v1, 0x3e00

    #@24e
    .line 1939
    const/16 v2, 0x9

    #@250
    .line 1938
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@253
    const/16 v1, 0xd

    #@255
    aput-object v0, v7, v1

    #@257
    .line 1941
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@259
    .line 1942
    const-string/jumbo v3, "phone_state"

    #@25c
    const-string/jumbo v4, "Pst"

    #@25f
    .line 1943
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
    .line 1944
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
    .line 1941
    const/16 v1, 0x1c0

    #@28d
    .line 1942
    const/4 v2, 0x6

    #@28e
    .line 1941
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@291
    const/16 v1, 0xe

    #@293
    aput-object v0, v7, v1

    #@295
    .line 1945
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@297
    .line 1946
    const-string/jumbo v3, "phone_signal_strength"

    #@29a
    const-string/jumbo v4, "Pss"

    #@29d
    .line 1947
    sget-object v5, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    #@29f
    .line 1948
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
    .line 1945
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
    .line 1949
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@2c7
    .line 1950
    const-string/jumbo v3, "brightness"

    #@2ca
    const-string/jumbo v4, "Sb"

    #@2cd
    .line 1951
    sget-object v5, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    #@2cf
    sget-object v6, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    #@2d1
    .line 1949
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
    .line 1923
    sput-object v7, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    #@2dc
    .line 1955
    const/16 v0, 0xd

    #@2de
    new-array v7, v0, [Landroid/os/BatteryStats$BitDescription;

    #@2e0
    .line 1956
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
    .line 1957
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
    .line 1958
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
    .line 1959
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
    .line 1960
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
    .line 1961
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@32d
    .line 1962
    const-string/jumbo v3, "device_idle"

    #@330
    const-string/jumbo v4, "di"

    #@333
    .line 1963
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
    .line 1964
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
    .line 1961
    const/high16 v1, 0x6000000

    #@361
    .line 1962
    const/16 v2, 0x19

    #@363
    .line 1961
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@366
    const/4 v1, 0x5

    #@367
    aput-object v0, v7, v1

    #@369
    .line 1965
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
    .line 1966
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
    .line 1967
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
    .line 1968
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@39c
    .line 1969
    const-string/jumbo v3, "wifi_signal_strength"

    #@39f
    const-string/jumbo v4, "Wss"

    #@3a2
    .line 1970
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
    .line 1971
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
    .line 1968
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
    .line 1972
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@3e6
    .line 1973
    const-string/jumbo v3, "wifi_suppl"

    #@3e9
    const-string/jumbo v4, "Wsp"

    #@3ec
    .line 1974
    sget-object v5, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    #@3ee
    sget-object v6, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    #@3f0
    .line 1972
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
    .line 1975
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
    .line 1976
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
    .line 1954
    sput-object v7, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    #@41e
    .line 1979
    const/16 v0, 0x13

    #@420
    new-array v0, v0, [Ljava/lang/String;

    #@422
    .line 1980
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
    .line 1981
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
    .line 1982
    const-string/jumbo v1, "screenwake"

    #@496
    const/16 v2, 0x12

    #@498
    aput-object v1, v0, v2

    #@49a
    .line 1979
    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    #@49c
    .line 1985
    const/16 v0, 0x13

    #@49e
    new-array v0, v0, [Ljava/lang/String;

    #@4a0
    .line 1986
    const-string/jumbo v1, "Enl"

    #@4a3
    aput-object v1, v0, v8

    #@4a5
    const-string/jumbo v1, "Epr"

    #@4a8
    aput-object v1, v0, v10

    #@4aa
    const-string/jumbo v1, "Efg"

    #@4ad
    aput-object v1, v0, v11

    #@4af
    const-string/jumbo v1, "Etp"

    #@4b2
    aput-object v1, v0, v9

    #@4b4
    const-string/jumbo v1, "Esy"

    #@4b7
    aput-object v1, v0, v12

    #@4b9
    const-string/jumbo v1, "Ewl"

    #@4bc
    const/4 v2, 0x5

    #@4bd
    aput-object v1, v0, v2

    #@4bf
    const-string/jumbo v1, "Ejb"

    #@4c2
    const/4 v2, 0x6

    #@4c3
    aput-object v1, v0, v2

    #@4c5
    const-string/jumbo v1, "Eur"

    #@4c8
    const/4 v2, 0x7

    #@4c9
    aput-object v1, v0, v2

    #@4cb
    const-string/jumbo v1, "Euf"

    #@4ce
    const/16 v2, 0x8

    #@4d0
    aput-object v1, v0, v2

    #@4d2
    const-string/jumbo v1, "Ecn"

    #@4d5
    const/16 v2, 0x9

    #@4d7
    aput-object v1, v0, v2

    #@4d9
    .line 1987
    const-string/jumbo v1, "Eac"

    #@4dc
    const/16 v2, 0xa

    #@4de
    aput-object v1, v0, v2

    #@4e0
    const-string/jumbo v1, "Epi"

    #@4e3
    const/16 v2, 0xb

    #@4e5
    aput-object v1, v0, v2

    #@4e7
    const-string/jumbo v1, "Epu"

    #@4ea
    const/16 v2, 0xc

    #@4ec
    aput-object v1, v0, v2

    #@4ee
    const-string/jumbo v1, "Eal"

    #@4f1
    const/16 v2, 0xd

    #@4f3
    aput-object v1, v0, v2

    #@4f5
    const-string/jumbo v1, "Est"

    #@4f8
    const/16 v2, 0xe

    #@4fa
    aput-object v1, v0, v2

    #@4fc
    const-string/jumbo v1, "Eai"

    #@4ff
    const/16 v2, 0xf

    #@501
    aput-object v1, v0, v2

    #@503
    const-string/jumbo v1, "Eaa"

    #@506
    const/16 v2, 0x10

    #@508
    aput-object v1, v0, v2

    #@50a
    const-string/jumbo v1, "Etw"

    #@50d
    const/16 v2, 0x11

    #@50f
    aput-object v1, v0, v2

    #@511
    .line 1988
    const-string/jumbo v1, "Esw"

    #@514
    const/16 v2, 0x12

    #@516
    aput-object v1, v0, v2

    #@518
    .line 1985
    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    #@51a
    .line 2016
    const/16 v0, 0x8

    #@51c
    new-array v0, v0, [Ljava/lang/String;

    #@51e
    .line 2017
    const-string/jumbo v1, "off"

    #@521
    aput-object v1, v0, v8

    #@523
    const-string/jumbo v1, "scanning"

    #@526
    aput-object v1, v0, v10

    #@528
    const-string/jumbo v1, "no_net"

    #@52b
    aput-object v1, v0, v11

    #@52d
    const-string/jumbo v1, "disconn"

    #@530
    aput-object v1, v0, v9

    #@532
    .line 2018
    const-string/jumbo v1, "sta"

    #@535
    aput-object v1, v0, v12

    #@537
    const-string/jumbo v1, "p2p"

    #@53a
    const/4 v2, 0x5

    #@53b
    aput-object v1, v0, v2

    #@53d
    const-string/jumbo v1, "sta_p2p"

    #@540
    const/4 v2, 0x6

    #@541
    aput-object v1, v0, v2

    #@543
    const-string/jumbo v1, "soft_ap"

    #@546
    const/4 v2, 0x7

    #@547
    aput-object v1, v0, v2

    #@549
    .line 2016
    sput-object v0, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    #@54b
    .line 2336
    const/16 v0, 0xa

    #@54d
    new-array v0, v0, [I

    #@54f
    fill-array-data v0, :array_0

    #@552
    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    #@554
    .line 2348
    const/16 v0, 0xa

    #@556
    new-array v0, v0, [I

    #@558
    fill-array-data v0, :array_1

    #@55b
    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    #@55d
    .line 2360
    const/16 v0, 0xa

    #@55f
    new-array v0, v0, [Ljava/lang/String;

    #@561
    .line 2361
    const-string/jumbo v1, "screen off"

    #@564
    aput-object v1, v0, v8

    #@566
    .line 2362
    const-string/jumbo v1, "screen off power save"

    #@569
    aput-object v1, v0, v10

    #@56b
    .line 2363
    const-string/jumbo v1, "screen off device idle"

    #@56e
    aput-object v1, v0, v11

    #@570
    .line 2364
    const-string/jumbo v1, "screen on"

    #@573
    aput-object v1, v0, v9

    #@575
    .line 2365
    const-string/jumbo v1, "screen on power save"

    #@578
    aput-object v1, v0, v12

    #@57a
    .line 2366
    const-string/jumbo v1, "screen doze"

    #@57d
    const/4 v2, 0x5

    #@57e
    aput-object v1, v0, v2

    #@580
    .line 2367
    const-string/jumbo v1, "screen doze power save"

    #@583
    const/4 v2, 0x6

    #@584
    aput-object v1, v0, v2

    #@586
    .line 2368
    const-string/jumbo v1, "screen doze-suspend"

    #@589
    const/4 v2, 0x7

    #@58a
    aput-object v1, v0, v2

    #@58c
    .line 2369
    const-string/jumbo v1, "screen doze-suspend power save"

    #@58f
    const/16 v2, 0x8

    #@591
    aput-object v1, v0, v2

    #@593
    .line 2370
    const-string/jumbo v1, "screen doze-suspend device idle"

    #@596
    const/16 v2, 0x9

    #@598
    aput-object v1, v0, v2

    #@59a
    .line 2360
    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    #@59c
    .line 49
    return-void

    #@59d
    .line 2336
    nop

    #@59e
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

    #@5b6
    .line 2348
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
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    const/16 v1, 0x20

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@a
    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@c
    .line 249
    new-instance v0, Ljava/util/Formatter;

    #@e
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    #@13
    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    #@15
    .line 49
    return-void
.end method

.method private static computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .locals 9
    .param p0, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 2502
    if-eqz p0, :cond_0

    #@2
    .line 2504
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@5
    move-result-wide v0

    #@6
    .line 2505
    .local v0, "totalTimeMicros":J
    const-wide/16 v4, 0x1f4

    #@8
    add-long/2addr v4, v0

    #@9
    const-wide/16 v6, 0x3e8

    #@b
    div-long v2, v4, v6

    #@d
    .line 2506
    .local v2, "totalTimeMillis":J
    return-wide v2

    #@e
    .line 2508
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
    .line 2662
    if-nez p0, :cond_0

    #@6
    .line 2663
    return v2

    #@7
    .line 2666
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
    .line 2667
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
    .line 2669
    :cond_1
    return v10

    #@20
    .line 2668
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
    .line 2672
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
    .line 2673
    .local v0, "c":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@39
    move-result-wide v6

    #@3a
    cmp-long v5, v6, v8

    #@3c
    if-eqz v5, :cond_3

    #@3e
    .line 2674
    return v10

    #@3f
    .line 2672
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@41
    goto :goto_0

    #@42
    .line 2677
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
    .line 2692
    invoke-static {p4, p5}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 2693
    return-void

    #@7
    .line 2696
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    #@a
    .line 2697
    const-string/jumbo v1, ","

    #@d
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10
    .line 2698
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
    .line 2699
    const-string/jumbo v1, ","

    #@1e
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21
    .line 2700
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
    .line 2701
    const-string/jumbo v1, ","

    #@2f
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32
    .line 2702
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
    .line 2703
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
    .line 2704
    .local v0, "c":Landroid/os/BatteryStats$LongCounter;
    const-string/jumbo v4, ","

    #@4e
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51
    .line 2705
    invoke-virtual {v0, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@54
    move-result-wide v4

    #@55
    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@58
    .line 2703
    add-int/lit8 v1, v1, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 2707
    .end local v0    # "c":Landroid/os/BatteryStats$LongCounter;
    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    #@5e
    .line 2691
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
    .line 5169
    if-nez p4, :cond_0

    #@2
    .line 5170
    return-void

    #@3
    .line 5172
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
    .line 5173
    .local v12, "timeRemaining":J
    const-wide/16 v4, 0x0

    #@11
    cmp-long v3, v12, v4

    #@13
    if-ltz v3, :cond_1

    #@15
    .line 5174
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
    .line 5175
    const/4 v3, 0x0

    #@24
    move-object/from16 v0, p5

    #@26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    #@29
    .line 5176
    move-object/from16 v0, p5

    #@2b
    invoke-static {v0, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@2e
    .line 5177
    move-object/from16 v0, p5

    #@30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@33
    .line 5178
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
    .line 5179
    const-string/jumbo v3, " steps)"

    #@42
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@45
    .line 5181
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
    .line 5182
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    #@4d
    aget v3, v3, v2

    #@4f
    int-to-long v4, v3

    #@50
    .line 5183
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
    .line 5182
    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    #@5c
    move-result-wide v10

    #@5d
    .line 5184
    .local v10, "estimatedTime":J
    const-wide/16 v4, 0x0

    #@5f
    cmp-long v3, v10, v4

    #@61
    if-lez v3, :cond_2

    #@63
    .line 5185
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
    .line 5186
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    #@73
    aget-object v3, v3, v2

    #@75
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@78
    .line 5187
    const-string/jumbo v3, " time: "

    #@7b
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7e
    .line 5188
    const/4 v3, 0x0

    #@7f
    move-object/from16 v0, p5

    #@81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    #@84
    .line 5189
    move-object/from16 v0, p5

    #@86
    invoke-static {v0, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@89
    .line 5190
    move-object/from16 v0, p5

    #@8b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@8e
    .line 5191
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
    .line 5192
    const-string/jumbo v3, " steps)"

    #@9d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a0
    .line 5181
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@a2
    goto :goto_0

    #@a3
    .line 5168
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
    .line 5199
    .local p3, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    if-nez p3, :cond_0

    #@2
    .line 5200
    return-void

    #@3
    .line 5202
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    const-string/jumbo v2, "Package changes:"

    #@9
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 5203
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
    .line 5204
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/os/BatteryStats$PackageChange;

    #@19
    .line 5205
    .local v1, "pc":Landroid/os/BatteryStats$PackageChange;
    iget-boolean v2, v1, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 5206
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
    .line 5207
    const-string/jumbo v2, " vers="

    #@2e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    iget v2, v1, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    #@33
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    #@36
    .line 5203
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_0

    #@39
    .line 5209
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
    .line 5198
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
    .line 4997
    if-nez p3, :cond_0

    #@2
    .line 4998
    const/4 v11, 0x0

    #@3
    return v11

    #@4
    .line 5000
    :cond_0
    move-object/from16 v0, p3

    #@6
    iget v2, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    #@8
    .line 5001
    .local v2, "count":I
    if-gtz v2, :cond_1

    #@a
    .line 5002
    const/4 v11, 0x0

    #@b
    return v11

    #@c
    .line 5004
    :cond_1
    if-nez p4, :cond_2

    #@e
    .line 5005
    move-object/from16 v0, p0

    #@10
    move-object/from16 v1, p2

    #@12
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15
    .line 5007
    :cond_2
    const/4 v11, 0x5

    #@16
    new-array v10, v11, [Ljava/lang/String;

    #@18
    .line 5008
    .local v10, "lineArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    #@19
    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_11

    #@1b
    .line 5009
    move-object/from16 v0, p3

    #@1d
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    #@20
    move-result-wide v4

    #@21
    .line 5010
    .local v4, "duration":J
    move-object/from16 v0, p3

    #@23
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    #@26
    move-result v7

    #@27
    .line 5011
    .local v7, "level":I
    move-object/from16 v0, p3

    #@29
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    #@2c
    move-result v11

    #@2d
    int-to-long v8, v11

    #@2e
    .line 5012
    .local v8, "initMode":J
    move-object/from16 v0, p3

    #@30
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    #@33
    move-result v11

    #@34
    int-to-long v12, v11

    #@35
    .line 5013
    .local v12, "modMode":J
    if-eqz p4, :cond_8

    #@37
    .line 5014
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3a
    move-result-object v11

    #@3b
    const/4 v14, 0x0

    #@3c
    aput-object v11, v10, v14

    #@3e
    .line 5015
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@41
    move-result-object v11

    #@42
    const/4 v14, 0x1

    #@43
    aput-object v11, v10, v14

    #@45
    .line 5016
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
    .line 5017
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
    .line 5022
    const-string/jumbo v11, "?"

    #@5a
    const/4 v14, 0x2

    #@5b
    aput-object v11, v10, v14

    #@5d
    .line 5027
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
    .line 5028
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
    .line 5032
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
    .line 5033
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
    .line 5037
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
    .line 5008
    :goto_6
    add-int/lit8 v6, v6, 0x1

    #@9a
    goto/16 :goto_0

    #@9c
    .line 5018
    :pswitch_0
    const-string/jumbo v11, "s-"

    #@9f
    const/4 v14, 0x2

    #@a0
    aput-object v11, v10, v14

    #@a2
    goto :goto_1

    #@a3
    .line 5019
    :pswitch_1
    const-string/jumbo v11, "s+"

    #@a6
    const/4 v14, 0x2

    #@a7
    aput-object v11, v10, v14

    #@a9
    goto :goto_1

    #@aa
    .line 5020
    :pswitch_2
    const-string/jumbo v11, "sd"

    #@ad
    const/4 v14, 0x2

    #@ae
    aput-object v11, v10, v14

    #@b0
    goto :goto_1

    #@b1
    .line 5021
    :pswitch_3
    const-string/jumbo v11, "sds"

    #@b4
    const/4 v14, 0x2

    #@b5
    aput-object v11, v10, v14

    #@b7
    goto :goto_1

    #@b8
    .line 5025
    :cond_3
    const-string/jumbo v11, ""

    #@bb
    const/4 v14, 0x2

    #@bc
    aput-object v11, v10, v14

    #@be
    goto :goto_1

    #@bf
    .line 5028
    :cond_4
    const-string/jumbo v11, "p-"

    #@c2
    goto :goto_2

    #@c3
    .line 5030
    :cond_5
    const-string/jumbo v11, ""

    #@c6
    const/4 v14, 0x3

    #@c7
    aput-object v11, v10, v14

    #@c9
    goto :goto_3

    #@ca
    .line 5033
    :cond_6
    const-string/jumbo v11, "i-"

    #@cd
    goto :goto_4

    #@ce
    .line 5035
    :cond_7
    const-string/jumbo v11, ""

    #@d1
    const/4 v14, 0x4

    #@d2
    aput-object v11, v10, v14

    #@d4
    goto :goto_5

    #@d5
    .line 5039
    :cond_8
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d8
    .line 5040
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
    .line 5041
    move-object/from16 v0, p0

    #@ef
    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@f2
    .line 5042
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
    .line 5043
    const/4 v3, 0x0

    #@100
    .line 5044
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
    .line 5045
    const-string/jumbo v11, " ("

    #@10c
    move-object/from16 v0, p0

    #@10e
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@111
    .line 5046
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
    .line 5051
    const-string/jumbo v11, "screen-?"

    #@11d
    move-object/from16 v0, p0

    #@11f
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@122
    .line 5053
    :goto_7
    const/4 v3, 0x1

    #@123
    .line 5055
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
    .line 5056
    if-eqz v3, :cond_d

    #@12e
    const-string/jumbo v11, ", "

    #@131
    :goto_8
    move-object/from16 v0, p0

    #@133
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@136
    .line 5057
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
    .line 5058
    const-string/jumbo v11, "power-save-on"

    #@142
    .line 5057
    :goto_9
    move-object/from16 v0, p0

    #@144
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@147
    .line 5059
    const/4 v3, 0x1

    #@148
    .line 5061
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
    .line 5062
    if-eqz v3, :cond_f

    #@153
    const-string/jumbo v11, ", "

    #@156
    :goto_a
    move-object/from16 v0, p0

    #@158
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15b
    .line 5063
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
    .line 5064
    const-string/jumbo v11, "device-idle-on"

    #@167
    .line 5063
    :goto_b
    move-object/from16 v0, p0

    #@169
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16c
    .line 5065
    const/4 v3, 0x1

    #@16d
    .line 5067
    :cond_b
    if-eqz v3, :cond_c

    #@16f
    .line 5068
    const-string/jumbo v11, ")"

    #@172
    move-object/from16 v0, p0

    #@174
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@177
    .line 5070
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    #@17a
    goto/16 :goto_6

    #@17c
    .line 5047
    :pswitch_4
    const-string/jumbo v11, "screen-off"

    #@17f
    move-object/from16 v0, p0

    #@181
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@184
    goto :goto_7

    #@185
    .line 5048
    :pswitch_5
    const-string/jumbo v11, "screen-on"

    #@188
    move-object/from16 v0, p0

    #@18a
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18d
    goto :goto_7

    #@18e
    .line 5049
    :pswitch_6
    const-string/jumbo v11, "screen-doze"

    #@191
    move-object/from16 v0, p0

    #@193
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@196
    goto :goto_7

    #@197
    .line 5050
    :pswitch_7
    const-string/jumbo v11, "screen-doze-suspend"

    #@19a
    move-object/from16 v0, p0

    #@19c
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19f
    goto :goto_7

    #@1a0
    .line 5056
    :cond_d
    const-string/jumbo v11, " ("

    #@1a3
    goto :goto_8

    #@1a4
    .line 5058
    :cond_e
    const-string/jumbo v11, "power-save-off"

    #@1a7
    goto :goto_9

    #@1a8
    .line 5062
    :cond_f
    const-string/jumbo v11, " ("

    #@1ab
    goto :goto_a

    #@1ac
    .line 5064
    :cond_10
    const-string/jumbo v11, "device-idle-off"

    #@1af
    goto :goto_b

    #@1b0
    .line 5073
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
    .line 5017
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    #@1be
    .line 5046
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
    .line 5084
    new-instance v3, Landroid/os/BatteryStats$HistoryPrinter;

    #@2
    invoke-direct {v3}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    #@5
    .line 5085
    .local v3, "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    new-instance v5, Landroid/os/BatteryStats$HistoryItem;

    #@7
    invoke-direct {v5}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    #@a
    .line 5086
    .local v5, "rec":Landroid/os/BatteryStats$HistoryItem;
    const-wide/16 v16, -0x1

    #@c
    .line 5087
    .local v16, "lastTime":J
    const-wide/16 v6, -0x1

    #@e
    .line 5088
    .local v6, "baseTime":J
    const/16 v19, 0x0

    #@10
    .line 5089
    .local v19, "printed":Z
    const/16 v20, 0x0

    #@12
    .line 5090
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
    .line 5091
    iget-wide v0, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@1c
    move-wide/from16 v16, v0

    #@1e
    .line 5092
    const-wide/16 v8, 0x0

    #@20
    cmp-long v4, v6, v8

    #@22
    if-gez v4, :cond_1

    #@24
    .line 5093
    move-wide/from16 v6, v16

    #@26
    .line 5095
    :cond_1
    iget-wide v8, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@28
    cmp-long v4, v8, p3

    #@2a
    if-ltz v4, :cond_0

    #@2c
    .line 5096
    const-wide/16 v8, 0x0

    #@2e
    cmp-long v4, p3, v8

    #@30
    if-ltz v4, :cond_2

    #@32
    if-eqz v19, :cond_3

    #@34
    .line 5149
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
    .line 5148
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    #@40
    goto :goto_0

    #@41
    .line 5097
    :cond_3
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@43
    const/4 v8, 0x5

    #@44
    if-eq v4, v8, :cond_4

    #@46
    .line 5098
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@48
    const/4 v8, 0x7

    #@49
    if-ne v4, v8, :cond_8

    #@4b
    .line 5101
    :cond_4
    const/16 v19, 0x1

    #@4d
    .line 5103
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
    .line 5102
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    #@59
    .line 5104
    const/4 v4, 0x0

    #@5a
    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@5c
    .line 5113
    :cond_5
    :goto_4
    const/4 v4, 0x0

    #@5d
    if-eqz v4, :cond_2

    #@5f
    .line 5114
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@61
    if-eqz v4, :cond_6

    #@63
    .line 5116
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
    .line 5115
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    #@6f
    .line 5117
    const/4 v4, 0x0

    #@70
    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@72
    .line 5119
    :cond_6
    iget v15, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@74
    .line 5120
    .local v15, "oldEventCode":I
    iget-object v0, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@76
    move-object/from16 v18, v0

    #@78
    .line 5121
    .local v18, "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    new-instance v4, Landroid/os/BatteryStats$HistoryTag;

    #@7a
    invoke-direct {v4}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    #@7d
    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@7f
    .line 5122
    const/4 v13, 0x0

    #@80
    .local v13, "i":I
    :goto_6
    const/16 v4, 0x13

    #@82
    if-ge v13, v4, :cond_f

    #@84
    .line 5124
    move-object/from16 v0, v20

    #@86
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    #@89
    move-result-object v2

    #@8a
    .line 5125
    .local v2, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v2, :cond_c

    #@8c
    .line 5122
    :cond_7
    add-int/lit8 v13, v13, 0x1

    #@8e
    goto :goto_6

    #@8f
    .line 5099
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
    .line 5100
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@96
    const/16 v8, 0x8

    #@98
    if-eq v4, v8, :cond_4

    #@9a
    .line 5105
    iget-wide v8, v5, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@9c
    const-wide/16 v22, 0x0

    #@9e
    cmp-long v4, v8, v22

    #@a0
    if-eqz v4, :cond_5

    #@a2
    .line 5106
    const/16 v19, 0x1

    #@a4
    .line 5107
    iget-byte v10, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@a6
    .line 5108
    .local v10, "cmd":B
    const/4 v4, 0x5

    #@a7
    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@a9
    .line 5110
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
    .line 5109
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    #@b5
    .line 5111
    iput-byte v10, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@b7
    goto :goto_4

    #@b8
    .line 5103
    .end local v10    # "cmd":B
    :cond_9
    const/4 v9, 0x0

    #@b9
    goto :goto_3

    #@ba
    .line 5110
    .restart local v10    # "cmd":B
    :cond_a
    const/4 v9, 0x0

    #@bb
    goto :goto_7

    #@bc
    .line 5116
    .end local v10    # "cmd":B
    :cond_b
    const/4 v9, 0x0

    #@bd
    goto :goto_5

    #@be
    .line 5129
    .restart local v2    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v13    # "i":I
    .restart local v15    # "oldEventCode":I
    .restart local v18    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :cond_c
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@c1
    move-result-object v4

    #@c2
    .line 5128
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
    .line 5130
    .local v11, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@d5
    move-result-object v21

    #@d6
    check-cast v21, Landroid/util/SparseIntArray;

    #@d8
    .line 5131
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
    .line 5132
    iput v13, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@e1
    .line 5133
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
    .line 5134
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
    .line 5135
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
    .line 5137
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
    .line 5136
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    #@10b
    .line 5138
    const/4 v4, 0x0

    #@10c
    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@10e
    .line 5139
    const/4 v4, 0x0

    #@10f
    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@111
    .line 5131
    add-int/lit8 v14, v14, 0x1

    #@113
    goto :goto_8

    #@114
    .line 5137
    :cond_e
    const/4 v9, 0x0

    #@115
    goto :goto_9

    #@116
    .line 5143
    .end local v2    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v11    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v12    # "ent$iterator":Ljava/util/Iterator;
    .end local v14    # "j":I
    .end local v21    # "uids":Landroid/util/SparseIntArray;
    :cond_f
    iput v15, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@118
    .line 5144
    move-object/from16 v0, v18

    #@11a
    iput-object v0, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@11c
    .line 5145
    const/16 v20, 0x0

    #@11e
    goto/16 :goto_1

    #@120
    .line 5149
    .end local v13    # "i":I
    .end local v15    # "oldEventCode":I
    .end local v18    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :cond_10
    const/4 v9, 0x0

    #@121
    goto/16 :goto_2

    #@123
    .line 5161
    :cond_11
    const-wide/16 v8, 0x0

    #@125
    cmp-long v4, p3, v8

    #@127
    if-ltz v4, :cond_12

    #@129
    .line 5162
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    #@12c
    .line 5163
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
    .line 5083
    :cond_12
    return-void

    #@140
    .line 5163
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
    .line 2626
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    #@3
    .line 2627
    const/4 v1, 0x0

    #@4
    array-length v2, p4

    #@5
    :goto_0
    if-ge v1, v2, :cond_0

    #@7
    aget-object v0, p4, v1

    #@9
    .line 2628
    .local v0, "arg":Ljava/lang/Object;
    const/16 v3, 0x2c

    #@b
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    #@e
    .line 2629
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@11
    .line 2627
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 2631
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    #@17
    .line 2625
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
    .line 2607
    const/16 v0, 0x9

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    #@7
    .line 2608
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@a
    .line 2609
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    #@d
    .line 2610
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@10
    .line 2611
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13
    .line 2612
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@16
    .line 2613
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19
    .line 2606
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
    .line 4982
    const-wide/16 v2, 0x0

    #@2
    cmp-long v1, p4, v2

    #@4
    if-gez v1, :cond_0

    #@6
    .line 4983
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 4985
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    .line 4986
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e
    .line 4987
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    .line 4988
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    const/16 v1, 0x40

    #@15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@18
    .line 4989
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {v0, p4, p5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1b
    .line 4990
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@1e
    .line 4991
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    #@21
    .line 4992
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
    .line 2647
    if-eqz p4, :cond_0

    #@2
    .line 2649
    invoke-virtual/range {p4 .. p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@5
    move-result-wide v6

    #@6
    const-wide/16 v8, 0x1f4

    #@8
    add-long/2addr v6, v8

    #@9
    .line 2650
    const-wide/16 v8, 0x3e8

    #@b
    .line 2649
    div-long v4, v6, v8

    #@d
    .line 2651
    .local v4, "totalTime":J
    move/from16 v0, p7

    #@f
    invoke-virtual {p4, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@12
    move-result v2

    #@13
    .line 2652
    .local v2, "count":I
    const-wide/16 v6, 0x0

    #@15
    cmp-long v3, v4, v6

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 2653
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
    .line 2646
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
    .line 2461
    div-long v0, p1, v2

    #@4
    .line 2462
    .local v0, "sec":J
    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    #@7
    .line 2463
    mul-long/2addr v2, v0

    #@8
    sub-long v2, p1, v2

    #@a
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@d
    .line 2464
    const-string/jumbo v2, "ms "

    #@10
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 2460
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
    .line 2468
    div-long v0, p1, v2

    #@4
    .line 2469
    .local v0, "sec":J
    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    #@7
    .line 2470
    mul-long/2addr v2, v0

    #@8
    sub-long v2, p1, v2

    #@a
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@d
    .line 2471
    const-string/jumbo v2, "ms"

    #@10
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 2467
    return-void
.end method

.method private static final formatTimeRaw(Ljava/lang/StringBuilder;J)V
    .locals 13
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "seconds"    # J

    #@0
    .prologue
    .line 2433
    const-wide/32 v8, 0x15180

    #@3
    div-long v0, p1, v8

    #@5
    .line 2434
    .local v0, "days":J
    const-wide/16 v8, 0x0

    #@7
    cmp-long v8, v0, v8

    #@9
    if-eqz v8, :cond_0

    #@b
    .line 2435
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@e
    .line 2436
    const-string/jumbo v8, "d "

    #@11
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 2438
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
    .line 2440
    .local v6, "used":J
    sub-long v8, p1, v6

    #@20
    const-wide/16 v10, 0xe10

    #@22
    div-long v2, v8, v10

    #@24
    .line 2441
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
    .line 2442
    :cond_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@33
    .line 2443
    const-string/jumbo v8, "h "

    #@36
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 2445
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
    .line 2447
    sub-long v8, p1, v6

    #@42
    const-wide/16 v10, 0x3c

    #@44
    div-long v4, v8, v10

    #@46
    .line 2448
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
    .line 2449
    :cond_3
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@55
    .line 2450
    const-string/jumbo v8, "m "

    #@58
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    .line 2452
    :cond_4
    const-wide/16 v8, 0x3c

    #@5d
    mul-long/2addr v8, v4

    #@5e
    add-long/2addr v6, v8

    #@5f
    .line 2454
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
    .line 2455
    :cond_5
    sub-long v8, p1, v6

    #@6d
    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@70
    .line 2456
    const-string/jumbo v8, "s "

    #@73
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    .line 2432
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
    .line 4556
    xor-int v2, p1, p2

    #@2
    .line 4557
    .local v2, "diff":I
    if-nez v2, :cond_0

    #@4
    return-void

    #@5
    .line 4558
    :cond_0
    const/4 v1, 0x0

    #@6
    .line 4559
    .local v1, "didWake":Z
    const/4 v3, 0x0

    #@7
    .local v3, "i":I
    :goto_0
    array-length v5, p4

    #@8
    if-ge v3, v5, :cond_a

    #@a
    .line 4560
    aget-object v0, p4, v3

    #@c
    .line 4561
    .local v0, "bd":Landroid/os/BatteryStats$BitDescription;
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    #@e
    and-int/2addr v5, v2

    #@f
    if-eqz v5, :cond_1

    #@11
    .line 4562
    if-eqz p5, :cond_2

    #@13
    const-string/jumbo v5, " "

    #@16
    :goto_1
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19
    .line 4563
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->shift:I

    #@1b
    if-gez v5, :cond_6

    #@1d
    .line 4564
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
    .line 4565
    if-eqz p5, :cond_4

    #@2a
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    #@2c
    :goto_3
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    .line 4566
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    #@31
    const/high16 v6, 0x40000000    # 2.0f

    #@33
    if-ne v5, v6, :cond_1

    #@35
    if-eqz p3, :cond_1

    #@37
    .line 4567
    const/4 v1, 0x1

    #@38
    .line 4568
    const-string/jumbo v5, "="

    #@3b
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e
    .line 4569
    if-eqz p5, :cond_5

    #@40
    .line 4570
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@42
    invoke-static {p0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@45
    .line 4571
    const-string/jumbo v5, ":\""

    #@48
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b
    .line 4572
    iget-object v5, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@4d
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50
    .line 4573
    const-string/jumbo v5, "\""

    #@53
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    .line 4559
    :cond_1
    :goto_4
    add-int/lit8 v3, v3, 0x1

    #@58
    goto :goto_0

    #@59
    .line 4562
    :cond_2
    const-string/jumbo v5, ","

    #@5c
    goto :goto_1

    #@5d
    .line 4564
    :cond_3
    const-string/jumbo v5, "-"

    #@60
    goto :goto_2

    #@61
    .line 4565
    :cond_4
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    #@63
    goto :goto_3

    #@64
    .line 4575
    :cond_5
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    #@66
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@69
    goto :goto_4

    #@6a
    .line 4579
    :cond_6
    if-eqz p5, :cond_7

    #@6c
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    #@6e
    :goto_5
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    .line 4580
    const-string/jumbo v5, "="

    #@74
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@77
    .line 4581
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    #@79
    and-int/2addr v5, p2

    #@7a
    iget v6, v0, Landroid/os/BatteryStats$BitDescription;->shift:I

    #@7c
    shr-int v4, v5, v6

    #@7e
    .line 4582
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
    .line 4583
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
    .line 4579
    .end local v4    # "val":I
    :cond_7
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    #@95
    goto :goto_5

    #@96
    .line 4583
    .restart local v4    # "val":I
    :cond_8
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    #@98
    aget-object v5, v5, v4

    #@9a
    goto :goto_6

    #@9b
    .line 4585
    :cond_9
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@9e
    goto :goto_4

    #@9f
    .line 4590
    .end local v0    # "bd":Landroid/os/BatteryStats$BitDescription;
    .end local v4    # "val":I
    :cond_a
    if-nez v1, :cond_b

    #@a1
    if-eqz p3, :cond_b

    #@a3
    .line 4591
    if-eqz p5, :cond_c

    #@a5
    const-string/jumbo v5, " wake_lock="

    #@a8
    :goto_7
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ab
    .line 4592
    if-eqz p5, :cond_d

    #@ad
    .line 4593
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@af
    invoke-static {p0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@b2
    .line 4594
    const-string/jumbo v5, ":\""

    #@b5
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b8
    .line 4595
    iget-object v5, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@ba
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bd
    .line 4596
    const-string/jumbo v5, "\""

    #@c0
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c3
    .line 4555
    :cond_b
    :goto_8
    return-void

    #@c4
    .line 4591
    :cond_c
    const-string/jumbo v5, ",w="

    #@c7
    goto :goto_7

    #@c8
    .line 4598
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
    .line 2722
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
    .line 2723
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
    .line 2724
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
    .line 2725
    .local v6, "powerDrainMaMs":J
    const-wide/16 v12, 0x0

    #@26
    .line 2726
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
    .line 2727
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
    .line 2726
    add-int/lit8 v17, v17, 0x1

    #@45
    goto :goto_0

    #@46
    .line 2730
    .end local v16    # "txState":Landroid/os/BatteryStats$LongCounter;
    :cond_0
    add-long v18, v2, v8

    #@48
    add-long v10, v18, v12

    #@4a
    .line 2732
    .local v10, "totalTimeMs":J
    const/16 v17, 0x0

    #@4c
    move-object/from16 v0, p2

    #@4e
    move/from16 v1, v17

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@53
    .line 2733
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 2734
    const-string/jumbo v17, "  "

    #@59
    move-object/from16 v0, p2

    #@5b
    move-object/from16 v1, v17

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    .line 2735
    move-object/from16 v0, p2

    #@62
    move-object/from16 v1, p4

    #@64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    .line 2736
    const-string/jumbo v17, " Idle time:   "

    #@6a
    move-object/from16 v0, p2

    #@6c
    move-object/from16 v1, v17

    #@6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    .line 2737
    move-object/from16 v0, p2

    #@73
    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@76
    .line 2738
    const-string/jumbo v17, "("

    #@79
    move-object/from16 v0, p2

    #@7b
    move-object/from16 v1, v17

    #@7d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    .line 2739
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
    .line 2740
    const-string/jumbo v17, ")"

    #@90
    move-object/from16 v0, p2

    #@92
    move-object/from16 v1, v17

    #@94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    .line 2741
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
    .line 2743
    const/16 v17, 0x0

    #@a4
    move-object/from16 v0, p2

    #@a6
    move/from16 v1, v17

    #@a8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@ab
    .line 2744
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    .line 2745
    const-string/jumbo v17, "  "

    #@b1
    move-object/from16 v0, p2

    #@b3
    move-object/from16 v1, v17

    #@b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    .line 2746
    move-object/from16 v0, p2

    #@ba
    move-object/from16 v1, p4

    #@bc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    .line 2747
    const-string/jumbo v17, " Rx time:     "

    #@c2
    move-object/from16 v0, p2

    #@c4
    move-object/from16 v1, v17

    #@c6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    .line 2748
    move-object/from16 v0, p2

    #@cb
    invoke-static {v0, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@ce
    .line 2749
    const-string/jumbo v17, "("

    #@d1
    move-object/from16 v0, p2

    #@d3
    move-object/from16 v1, v17

    #@d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    .line 2750
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
    .line 2751
    const-string/jumbo v17, ")"

    #@e8
    move-object/from16 v0, p2

    #@ea
    move-object/from16 v1, v17

    #@ec
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    .line 2752
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
    .line 2754
    const/16 v17, 0x0

    #@fc
    move-object/from16 v0, p2

    #@fe
    move/from16 v1, v17

    #@100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@103
    .line 2755
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    .line 2756
    const-string/jumbo v17, "  "

    #@109
    move-object/from16 v0, p2

    #@10b
    move-object/from16 v1, v17

    #@10d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    .line 2757
    move-object/from16 v0, p2

    #@112
    move-object/from16 v1, p4

    #@114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    .line 2758
    const-string/jumbo v17, " Tx time:     "

    #@11a
    move-object/from16 v0, p2

    #@11c
    move-object/from16 v1, v17

    #@11e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    .line 2759
    move-object/from16 v0, p2

    #@123
    invoke-static {v0, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@126
    .line 2760
    const-string/jumbo v17, "("

    #@129
    move-object/from16 v0, p2

    #@12b
    move-object/from16 v1, v17

    #@12d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    .line 2761
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
    .line 2762
    const-string/jumbo v17, ")"

    #@140
    move-object/from16 v0, p2

    #@142
    move-object/from16 v1, v17

    #@144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    .line 2763
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
    .line 2765
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    #@155
    move-result-object v17

    #@156
    move-object/from16 v0, v17

    #@158
    array-length v5, v0

    #@159
    .line 2766
    .local v5, "numTxLvls":I
    const/16 v17, 0x1

    #@15b
    move/from16 v0, v17

    #@15d
    if-le v5, v0, :cond_1

    #@15f
    .line 2767
    const/4 v4, 0x0

    #@160
    .local v4, "lvl":I
    :goto_1
    if-ge v4, v5, :cond_1

    #@162
    .line 2768
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
    .line 2769
    .local v14, "txLvlTimeMs":J
    const/16 v17, 0x0

    #@172
    move-object/from16 v0, p2

    #@174
    move/from16 v1, v17

    #@176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@179
    .line 2770
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17c
    .line 2771
    const-string/jumbo v17, "    ["

    #@17f
    move-object/from16 v0, p2

    #@181
    move-object/from16 v1, v17

    #@183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    .line 2772
    move-object/from16 v0, p2

    #@188
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18b
    .line 2773
    const-string/jumbo v17, "] "

    #@18e
    move-object/from16 v0, p2

    #@190
    move-object/from16 v1, v17

    #@192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    .line 2774
    move-object/from16 v0, p2

    #@197
    invoke-static {v0, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@19a
    .line 2775
    const-string/jumbo v17, "("

    #@19d
    move-object/from16 v0, p2

    #@19f
    move-object/from16 v1, v17

    #@1a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    .line 2776
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
    .line 2777
    const-string/jumbo v17, ")"

    #@1b4
    move-object/from16 v0, p2

    #@1b6
    move-object/from16 v1, v17

    #@1b8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    .line 2778
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
    .line 2767
    add-int/lit8 v4, v4, 0x1

    #@1c8
    goto :goto_1

    #@1c9
    .line 2782
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
    .line 2783
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d5
    .line 2784
    const-string/jumbo v17, "  "

    #@1d8
    move-object/from16 v0, p2

    #@1da
    move-object/from16 v1, v17

    #@1dc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1df
    .line 2785
    move-object/from16 v0, p2

    #@1e1
    move-object/from16 v1, p4

    #@1e3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e6
    .line 2786
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
    .line 2787
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
    .line 2786
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@202
    .line 2788
    const-string/jumbo v17, "mAh"

    #@205
    move-object/from16 v0, p2

    #@207
    move-object/from16 v1, v17

    #@209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20c
    .line 2789
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
    .line 2721
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
    .line 2714
    invoke-static {p5, p6}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2715
    invoke-direct/range {p0 .. p6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    #@9
    .line 2713
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
    .line 4954
    long-to-float v0, p2

    #@5
    .line 4955
    .local v0, "result":F
    const-string/jumbo v1, ""

    #@8
    .line 4956
    .local v1, "suffix":Ljava/lang/String;
    cmpl-float v2, v0, v4

    #@a
    if-ltz v2, :cond_0

    #@c
    .line 4957
    const-string/jumbo v1, "KB"

    #@f
    .line 4958
    div-float/2addr v0, v3

    #@10
    .line 4960
    :cond_0
    cmpl-float v2, v0, v4

    #@12
    if-ltz v2, :cond_1

    #@14
    .line 4961
    const-string/jumbo v1, "MB"

    #@17
    .line 4962
    div-float/2addr v0, v3

    #@18
    .line 4964
    :cond_1
    cmpl-float v2, v0, v4

    #@1a
    if-ltz v2, :cond_2

    #@1c
    .line 4965
    const-string/jumbo v1, "GB"

    #@1f
    .line 4966
    div-float/2addr v0, v3

    #@20
    .line 4968
    :cond_2
    cmpl-float v2, v0, v4

    #@22
    if-ltz v2, :cond_3

    #@24
    .line 4969
    const-string/jumbo v1, "TB"

    #@27
    .line 4970
    div-float/2addr v0, v3

    #@28
    .line 4972
    :cond_3
    cmpl-float v2, v0, v4

    #@2a
    if-ltz v2, :cond_4

    #@2c
    .line 4973
    const-string/jumbo v1, "PB"

    #@2f
    .line 4974
    div-float/2addr v0, v3

    #@30
    .line 4976
    :cond_4
    float-to-int v2, v0

    #@31
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@34
    .line 4977
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37
    .line 4953
    return-void
.end method

.method private static final printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p3, "rawRealtime"    # J
    .param p5, "which"    # I
    .param p6, "prefix"    # Ljava/lang/String;
    .param p7, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2556
    if-eqz p2, :cond_0

    #@2
    .line 2558
    invoke-virtual/range {p2 .. p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@5
    move-result-wide v6

    #@6
    .line 2559
    const-wide/16 v8, 0x1f4

    #@8
    .line 2558
    add-long/2addr v6, v8

    #@9
    .line 2559
    const-wide/16 v8, 0x3e8

    #@b
    .line 2558
    div-long v4, v6, v8

    #@d
    .line 2560
    .local v4, "totalTime":J
    move/from16 v0, p5

    #@f
    invoke-virtual {p2, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@12
    move-result v2

    #@13
    .line 2561
    .local v2, "count":I
    const-wide/16 v6, 0x0

    #@15
    cmp-long v3, v4, v6

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 2562
    const/4 v3, 0x0

    #@1a
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1d
    .line 2563
    move-object/from16 v0, p6

    #@1f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 2564
    const-string/jumbo v3, "    "

    #@25
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 2565
    move-object/from16 v0, p7

    #@2a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 2566
    const-string/jumbo v3, ": "

    #@30
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 2567
    invoke-static {p1, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@36
    .line 2568
    const-string/jumbo v3, "realtime ("

    #@39
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 2569
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    .line 2570
    const-string/jumbo v3, " times)"

    #@42
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 2571
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4c
    .line 2572
    const/4 v3, 0x1

    #@4d
    return v3

    #@4e
    .line 2575
    .end local v2    # "count":I
    .end local v4    # "totalTime":J
    :cond_0
    const/4 v3, 0x0

    #@4f
    return v3
.end method

.method private static final printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "which"    # I
    .param p6, "linePrefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2524
    if-eqz p1, :cond_1

    #@2
    .line 2525
    invoke-static {p1, p2, p3, p5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    #@5
    move-result-wide v2

    #@6
    .line 2527
    .local v2, "totalTimeMillis":J
    invoke-virtual {p1, p5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@9
    move-result v0

    #@a
    .line 2528
    .local v0, "count":I
    const-wide/16 v4, 0x0

    #@c
    cmp-long v1, v2, v4

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 2529
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 2530
    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@16
    .line 2531
    if-eqz p4, :cond_0

    #@18
    .line 2532
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 2533
    const/16 v1, 0x20

    #@1d
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    .line 2535
    :cond_0
    const/16 v1, 0x28

    #@22
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 2536
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    .line 2537
    const-string/jumbo v1, " times)"

    #@2b
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 2538
    const-string/jumbo v1, ", "

    #@31
    return-object v1

    #@32
    .line 2541
    .end local v0    # "count":I
    .end local v2    # "totalTimeMillis":J
    :cond_1
    return-object p6
.end method

.method private static final printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "which"    # I
    .param p6, "linePrefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2591
    const-wide/16 v2, 0x0

    #@2
    .line 2592
    .local v2, "totalTimeMicros":J
    const/4 v0, 0x0

    #@3
    .line 2593
    .local v0, "count":I
    if-eqz p1, :cond_0

    #@5
    .line 2594
    invoke-virtual {p1, p2, p3, p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@8
    move-result-wide v2

    #@9
    .line 2595
    invoke-virtual {p1, p5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@c
    move-result v0

    #@d
    .line 2597
    :cond_0
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 2598
    const-wide/16 v4, 0x1f4

    #@12
    add-long/2addr v4, v2

    #@13
    const-wide/16 v6, 0x3e8

    #@15
    div-long/2addr v4, v6

    #@16
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@19
    .line 2599
    const/16 v1, 0x2c

    #@1b
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    .line 2600
    if-eqz p4, :cond_1

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string/jumbo v4, ","

    #@2c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 2601
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    .line 2602
    const-string/jumbo v1, ","

    #@3d
    return-object v1

    #@3e
    .line 2600
    :cond_1
    const-string/jumbo v1, ""

    #@41
    goto :goto_0
.end method

.method private printmAh(Ljava/io/PrintWriter;D)V
    .locals 2
    .param p1, "printer"    # Ljava/io/PrintWriter;
    .param p2, "power"    # D

    #@0
    .prologue
    .line 3322
    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7
    .line 3321
    return-void
.end method

.method private printmAh(Ljava/lang/StringBuilder;D)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "power"    # D

    #@0
    .prologue
    .line 3326
    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    .line 3325
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
    .line 2796
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
    .line 2795
    return-void
.end method

.method public final dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V
    .locals 192
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "which"    # I
    .param p4, "reqUid"    # I
    .param p5, "wifiOnly"    # Z

    #@0
    .prologue
    .line 2806
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v8

    #@4
    const-wide/16 v12, 0x3e8

    #@6
    mul-long v116, v8, v12

    #@8
    .line 2807
    .local v116, "rawUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b
    move-result-wide v8

    #@c
    const-wide/16 v12, 0x3e8

    #@e
    mul-long v10, v8, v12

    #@10
    .line 2808
    .local v10, "rawRealtime":J
    move-object/from16 v0, p0

    #@12
    move-wide/from16 v1, v116

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    #@17
    move-result-wide v28

    #@18
    .line 2809
    .local v28, "batteryUptime":J
    move-object/from16 v0, p0

    #@1a
    move-wide/from16 v1, v116

    #@1c
    move/from16 v3, p3

    #@1e
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    #@21
    move-result-wide v166

    #@22
    .line 2810
    .local v166, "whichBatteryUptime":J
    move-object/from16 v0, p0

    #@24
    move/from16 v1, p3

    #@26
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    #@29
    move-result-wide v160

    #@2a
    .line 2811
    .local v160, "whichBatteryRealtime":J
    move-object/from16 v0, p0

    #@2c
    move-wide/from16 v1, v116

    #@2e
    move/from16 v3, p3

    #@30
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    #@33
    move-result-wide v164

    #@34
    .line 2812
    .local v164, "whichBatteryScreenOffUptime":J
    move-object/from16 v0, p0

    #@36
    move/from16 v1, p3

    #@38
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    #@3b
    move-result-wide v162

    #@3c
    .line 2814
    .local v162, "whichBatteryScreenOffRealtime":J
    move-object/from16 v0, p0

    #@3e
    move/from16 v1, p3

    #@40
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    #@43
    move-result-wide v138

    #@44
    .line 2815
    .local v138, "totalRealtime":J
    move-object/from16 v0, p0

    #@46
    move-wide/from16 v1, v116

    #@48
    move/from16 v3, p3

    #@4a
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeUptime(JI)J

    #@4d
    move-result-wide v146

    #@4e
    .line 2816
    .local v146, "totalUptime":J
    move-object/from16 v0, p0

    #@50
    move/from16 v1, p3

    #@52
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    #@55
    move-result-wide v118

    #@56
    .line 2817
    .local v118, "screenOnTime":J
    move-object/from16 v0, p0

    #@58
    move/from16 v1, p3

    #@5a
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    #@5d
    move-result-wide v66

    #@5e
    .line 2818
    .local v66, "interactiveTime":J
    move-object/from16 v0, p0

    #@60
    move/from16 v1, p3

    #@62
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    #@65
    move-result-wide v110

    #@66
    .line 2819
    .local v110, "powerSaveModeEnabledTime":J
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
    .line 2821
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
    .line 2823
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
    .line 2825
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
    .line 2827
    .local v44, "deviceIdlingTime":J
    move-object/from16 v0, p0

    #@8c
    move/from16 v1, p3

    #@8e
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    #@91
    move-result v38

    #@92
    .line 2828
    .local v38, "connChanges":I
    move-object/from16 v0, p0

    #@94
    move/from16 v1, p3

    #@96
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    #@99
    move-result-wide v106

    #@9a
    .line 2829
    .local v106, "phoneOnTime":J
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
    .line 2830
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
    .line 2833
    .local v50, "dischargeScreenOffCount":J
    new-instance v115, Ljava/lang/StringBuilder;

    #@b0
    const/16 v4, 0x80

    #@b2
    move-object/from16 v0, v115

    #@b4
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@b7
    .line 2835
    .local v115, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    #@ba
    move-result-object v149

    #@bb
    .line 2836
    .local v149, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v149 .. v149}, Landroid/util/SparseArray;->size()I

    #@be
    move-result v24

    #@bf
    .line 2838
    .local v24, "NU":I
    sget-object v4, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    #@c1
    aget-object v6, v4, p3

    #@c3
    .line 2841
    .local v6, "category":Ljava/lang/String;
    const-string/jumbo v7, "bt"

    #@c6
    const/16 v4, 0x9

    #@c8
    new-array v8, v4, [Ljava/lang/Object;

    #@ca
    .line 2842
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
    .line 2843
    const-wide/16 v12, 0x3e8

    #@d9
    div-long v12, v160, v12

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
    div-long v12, v166, v12

    #@e6
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@e9
    move-result-object v4

    #@ea
    const/4 v9, 0x2

    #@eb
    aput-object v4, v8, v9

    #@ed
    .line 2844
    const-wide/16 v12, 0x3e8

    #@ef
    div-long v12, v138, v12

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
    div-long v12, v146, v12

    #@fc
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@ff
    move-result-object v4

    #@100
    const/4 v9, 0x4

    #@101
    aput-object v4, v8, v9

    #@103
    .line 2845
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
    .line 2846
    const-wide/16 v12, 0x3e8

    #@110
    div-long v12, v162, v12

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
    div-long v12, v164, v12

    #@11d
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@120
    move-result-object v4

    #@121
    const/4 v9, 0x7

    #@122
    aput-object v4, v8, v9

    #@124
    .line 2847
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
    .line 2841
    const/4 v4, 0x0

    #@131
    move-object/from16 v0, p2

    #@133
    invoke-static {v0, v4, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@136
    .line 2851
    const-wide/16 v56, 0x0

    #@138
    .line 2852
    .local v56, "fullWakeLockTimeTotal":J
    const-wide/16 v104, 0x0

    #@13a
    .line 2854
    .local v104, "partialWakeLockTimeTotal":J
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
    .line 2855
    move-object/from16 v0, v149

    #@144
    move/from16 v1, v73

    #@146
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@149
    move-result-object v148

    #@14a
    check-cast v148, Landroid/os/BatteryStats$Uid;

    #@14c
    .line 2858
    .local v148, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    #@14f
    move-result-object v157

    #@150
    .line 2859
    .local v157, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual/range {v157 .. v157}, Landroid/util/ArrayMap;->size()I

    #@153
    move-result v4

    #@154
    add-int/lit8 v74, v4, -0x1

    #@156
    .local v74, "iw":I
    :goto_2
    if-ltz v74, :cond_3

    #@158
    .line 2860
    move-object/from16 v0, v157

    #@15a
    move/from16 v1, v74

    #@15c
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@15f
    move-result-object v185

    #@160
    check-cast v185, Landroid/os/BatteryStats$Uid$Wakelock;

    #@162
    .line 2862
    .local v185, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v4, 0x1

    #@163
    move-object/from16 v0, v185

    #@165
    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@168
    move-result-object v58

    #@169
    .line 2863
    .local v58, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v58, :cond_0

    #@16b
    .line 2864
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
    .line 2868
    :cond_0
    const/4 v4, 0x0

    #@176
    move-object/from16 v0, v185

    #@178
    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@17b
    move-result-object v103

    #@17c
    .line 2869
    .local v103, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v103, :cond_1

    #@17e
    .line 2870
    move-object/from16 v0, v103

    #@180
    move/from16 v1, p3

    #@182
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@185
    move-result-wide v8

    #@186
    add-long v104, v104, v8

    #@188
    .line 2859
    :cond_1
    add-int/lit8 v74, v74, -0x1

    #@18a
    goto :goto_2

    #@18b
    .line 2842
    .end local v56    # "fullWakeLockTimeTotal":J
    .end local v58    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v73    # "iu":I
    .end local v74    # "iw":I
    .end local v103    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v104    # "partialWakeLockTimeTotal":J
    .end local v148    # "u":Landroid/os/BatteryStats$Uid;
    .end local v157    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v185    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_2
    const-string/jumbo v4, "N/A"

    #@18e
    goto/16 :goto_0

    #@190
    .line 2854
    .restart local v56    # "fullWakeLockTimeTotal":J
    .restart local v73    # "iu":I
    .restart local v74    # "iw":I
    .restart local v104    # "partialWakeLockTimeTotal":J
    .restart local v148    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v157    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_3
    add-int/lit8 v73, v73, 0x1

    #@192
    goto :goto_1

    #@193
    .line 2877
    .end local v74    # "iw":I
    .end local v148    # "u":Landroid/os/BatteryStats$Uid;
    .end local v157    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
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
    .line 2878
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
    .line 2879
    .local v96, "mobileTxTotalBytes":J
    const/4 v4, 0x2

    #@1a6
    move-object/from16 v0, p0

    #@1a8
    move/from16 v1, p3

    #@1aa
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@1ad
    move-result-wide v180

    #@1ae
    .line 2880
    .local v180, "wifiRxTotalBytes":J
    const/4 v4, 0x3

    #@1af
    move-object/from16 v0, p0

    #@1b1
    move/from16 v1, p3

    #@1b3
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@1b6
    move-result-wide v188

    #@1b7
    .line 2881
    .local v188, "wifiTxTotalBytes":J
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
    .line 2882
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
    .line 2883
    .local v98, "mobileTxTotalPackets":J
    const/4 v4, 0x2

    #@1ca
    move-object/from16 v0, p0

    #@1cc
    move/from16 v1, p3

    #@1ce
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    #@1d1
    move-result-wide v182

    #@1d2
    .line 2884
    .local v182, "wifiRxTotalPackets":J
    const/4 v4, 0x3

    #@1d3
    move-object/from16 v0, p0

    #@1d5
    move/from16 v1, p3

    #@1d7
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    #@1da
    move-result-wide v190

    #@1db
    .line 2885
    .local v190, "wifiTxTotalPackets":J
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
    .line 2886
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
    .line 2887
    .local v36, "btTxTotalBytes":J
    const-string/jumbo v4, "gn"

    #@1f0
    const/16 v7, 0xa

    #@1f2
    new-array v7, v7, [Ljava/lang/Object;

    #@1f4
    .line 2888
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
    invoke-static/range {v180 .. v181}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@205
    move-result-object v8

    #@206
    const/4 v9, 0x2

    #@207
    aput-object v8, v7, v9

    #@209
    invoke-static/range {v188 .. v189}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@20c
    move-result-object v8

    #@20d
    const/4 v9, 0x3

    #@20e
    aput-object v8, v7, v9

    #@210
    .line 2889
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
    invoke-static/range {v182 .. v183}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@221
    move-result-object v8

    #@222
    const/4 v9, 0x6

    #@223
    aput-object v8, v7, v9

    #@225
    invoke-static/range {v190 .. v191}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@228
    move-result-object v8

    #@229
    const/4 v9, 0x7

    #@22a
    aput-object v8, v7, v9

    #@22c
    .line 2890
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
    .line 2887
    const/4 v8, 0x0

    #@23d
    move-object/from16 v0, p2

    #@23f
    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@242
    .line 2893
    const-string/jumbo v7, "gmcd"

    #@245
    .line 2894
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@248
    move-result-object v8

    #@249
    .line 2893
    const/4 v5, 0x0

    #@24a
    move-object/from16 v4, p2

    #@24c
    move/from16 v9, p3

    #@24e
    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    #@251
    .line 2897
    move-object/from16 v0, p0

    #@253
    move/from16 v1, p3

    #@255
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    #@258
    move-result-wide v172

    #@259
    .line 2898
    .local v172, "wifiOnTime":J
    move-object/from16 v0, p0

    #@25b
    move/from16 v1, p3

    #@25d
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    #@260
    move-result-wide v178

    #@261
    .line 2899
    .local v178, "wifiRunningTime":J
    const-string/jumbo v4, "gwfl"

    #@264
    const/4 v7, 0x5

    #@265
    new-array v7, v7, [Ljava/lang/Object;

    #@267
    const-wide/16 v8, 0x3e8

    #@269
    div-long v8, v172, v8

    #@26b
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@26e
    move-result-object v8

    #@26f
    const/4 v9, 0x0

    #@270
    aput-object v8, v7, v9

    #@272
    .line 2900
    const-wide/16 v8, 0x3e8

    #@274
    div-long v8, v178, v8

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
    .line 2899
    const/4 v8, 0x0

    #@296
    move-object/from16 v0, p2

    #@298
    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@29b
    .line 2902
    const-string/jumbo v7, "gwfcd"

    #@29e
    .line 2903
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@2a1
    move-result-object v8

    #@2a2
    .line 2902
    const/4 v5, 0x0

    #@2a3
    move-object/from16 v4, p2

    #@2a5
    move/from16 v9, p3

    #@2a7
    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    #@2aa
    .line 2906
    const-string/jumbo v7, "gble"

    #@2ad
    .line 2907
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@2b0
    move-result-object v8

    #@2b1
    .line 2906
    const/4 v5, 0x0

    #@2b2
    move-object/from16 v4, p2

    #@2b4
    move/from16 v9, p3

    #@2b6
    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    #@2b9
    .line 2910
    const-string/jumbo v4, "m"

    #@2bc
    const/16 v7, 0x15

    #@2be
    new-array v7, v7, [Ljava/lang/Object;

    #@2c0
    .line 2911
    const-wide/16 v8, 0x3e8

    #@2c2
    div-long v8, v118, v8

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
    div-long v8, v106, v8

    #@2cf
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2d2
    move-result-object v8

    #@2d3
    const/4 v9, 0x1

    #@2d4
    aput-object v8, v7, v9

    #@2d6
    .line 2912
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
    div-long v8, v104, v8

    #@2e5
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2e8
    move-result-object v8

    #@2e9
    const/4 v9, 0x3

    #@2ea
    aput-object v8, v7, v9

    #@2ec
    .line 2913
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
    .line 2914
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
    .line 2915
    const-wide/16 v8, 0x3e8

    #@31d
    div-long v8, v110, v8

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
    .line 2916
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
    .line 2917
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
    .line 2918
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
    .line 2919
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
    .line 2920
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
    .line 2921
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
    .line 2922
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
    .line 2923
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
    .line 2910
    const/4 v8, 0x0

    #@3e4
    move-object/from16 v0, p2

    #@3e6
    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@3e9
    .line 2926
    const/4 v4, 0x5

    #@3ea
    new-array v0, v4, [Ljava/lang/Object;

    #@3ec
    move-object/from16 v26, v0

    #@3ee
    .line 2927
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
    .line 2928
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
    .line 2927
    add-int/lit8 v63, v63, 0x1

    #@40a
    goto :goto_3

    #@40b
    .line 2930
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
    .line 2933
    const/4 v4, 0x5

    #@417
    new-array v0, v4, [Ljava/lang/Object;

    #@419
    move-object/from16 v26, v0

    #@41b
    .line 2934
    const/16 v63, 0x0

    #@41d
    :goto_4
    const/4 v4, 0x5

    #@41e
    move/from16 v0, v63

    #@420
    if-ge v0, v4, :cond_6

    #@422
    .line 2935
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
    .line 2934
    add-int/lit8 v63, v63, 0x1

    #@437
    goto :goto_4

    #@438
    .line 2937
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
    .line 2938
    const-string/jumbo v4, "sst"

    #@446
    const/4 v7, 0x1

    #@447
    new-array v7, v7, [Ljava/lang/Object;

    #@449
    .line 2939
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
    .line 2938
    const/4 v8, 0x0

    #@45c
    move-object/from16 v0, p2

    #@45e
    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@461
    .line 2940
    const/16 v63, 0x0

    #@463
    :goto_5
    const/4 v4, 0x5

    #@464
    move/from16 v0, v63

    #@466
    if-ge v0, v4, :cond_7

    #@468
    .line 2941
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
    .line 2940
    add-int/lit8 v63, v63, 0x1

    #@47a
    goto :goto_5

    #@47b
    .line 2943
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
    .line 2946
    const/16 v4, 0x11

    #@488
    new-array v0, v4, [Ljava/lang/Object;

    #@48a
    move-object/from16 v26, v0

    #@48c
    .line 2947
    const/16 v63, 0x0

    #@48e
    :goto_6
    const/16 v4, 0x11

    #@490
    move/from16 v0, v63

    #@492
    if-ge v0, v4, :cond_8

    #@494
    .line 2948
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
    .line 2947
    add-int/lit8 v63, v63, 0x1

    #@4a9
    goto :goto_6

    #@4aa
    .line 2950
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
    .line 2951
    const/16 v63, 0x0

    #@4b7
    :goto_7
    const/16 v4, 0x11

    #@4b9
    move/from16 v0, v63

    #@4bb
    if-ge v0, v4, :cond_9

    #@4bd
    .line 2952
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
    .line 2951
    add-int/lit8 v63, v63, 0x1

    #@4cf
    goto :goto_7

    #@4d0
    .line 2954
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
    .line 2957
    const/16 v4, 0x8

    #@4dd
    new-array v0, v4, [Ljava/lang/Object;

    #@4df
    move-object/from16 v26, v0

    #@4e1
    .line 2958
    const/16 v63, 0x0

    #@4e3
    :goto_8
    const/16 v4, 0x8

    #@4e5
    move/from16 v0, v63

    #@4e7
    if-ge v0, v4, :cond_a

    #@4e9
    .line 2959
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
    .line 2958
    add-int/lit8 v63, v63, 0x1

    #@4fe
    goto :goto_8

    #@4ff
    .line 2961
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
    .line 2962
    const/16 v63, 0x0

    #@50c
    :goto_9
    const/16 v4, 0x8

    #@50e
    move/from16 v0, v63

    #@510
    if-ge v0, v4, :cond_b

    #@512
    .line 2963
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
    .line 2962
    add-int/lit8 v63, v63, 0x1

    #@524
    goto :goto_9

    #@525
    .line 2965
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
    .line 2968
    const/16 v4, 0xd

    #@532
    new-array v0, v4, [Ljava/lang/Object;

    #@534
    move-object/from16 v26, v0

    #@536
    .line 2969
    const/16 v63, 0x0

    #@538
    :goto_a
    const/16 v4, 0xd

    #@53a
    move/from16 v0, v63

    #@53c
    if-ge v0, v4, :cond_c

    #@53e
    .line 2970
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
    .line 2969
    add-int/lit8 v63, v63, 0x1

    #@553
    goto :goto_a

    #@554
    .line 2972
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
    .line 2973
    const/16 v63, 0x0

    #@561
    :goto_b
    const/16 v4, 0xd

    #@563
    move/from16 v0, v63

    #@565
    if-ge v0, v4, :cond_d

    #@567
    .line 2974
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
    .line 2973
    add-int/lit8 v63, v63, 0x1

    #@579
    goto :goto_b

    #@57a
    .line 2976
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
    .line 2979
    const/4 v4, 0x5

    #@586
    new-array v0, v4, [Ljava/lang/Object;

    #@588
    move-object/from16 v26, v0

    #@58a
    .line 2980
    const/16 v63, 0x0

    #@58c
    :goto_c
    const/4 v4, 0x5

    #@58d
    move/from16 v0, v63

    #@58f
    if-ge v0, v4, :cond_e

    #@591
    .line 2981
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
    .line 2980
    add-int/lit8 v63, v63, 0x1

    #@5a6
    goto :goto_c

    #@5a7
    .line 2983
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
    .line 2984
    const/16 v63, 0x0

    #@5b4
    :goto_d
    const/4 v4, 0x5

    #@5b5
    move/from16 v0, v63

    #@5b7
    if-ge v0, v4, :cond_f

    #@5b9
    .line 2985
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
    .line 2984
    add-int/lit8 v63, v63, 0x1

    #@5cb
    goto :goto_d

    #@5cc
    .line 2987
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
    .line 2989
    const/4 v4, 0x2

    #@5d8
    move/from16 v0, p3

    #@5da
    if-ne v0, v4, :cond_10

    #@5dc
    .line 2990
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
    .line 2991
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
    .line 2990
    const/4 v8, 0x0

    #@5f9
    move-object/from16 v0, p2

    #@5fb
    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@5fe
    .line 2994
    :cond_10
    const/4 v4, 0x2

    #@5ff
    move/from16 v0, p3

    #@601
    if-ne v0, v4, :cond_11

    #@603
    .line 2995
    const-string/jumbo v4, "dc"

    #@606
    const/4 v7, 0x6

    #@607
    new-array v7, v7, [Ljava/lang/Object;

    #@609
    .line 2996
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
    .line 2997
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
    .line 2998
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
    .line 2999
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
    .line 2995
    const/4 v8, 0x0

    #@656
    move-object/from16 v0, p2

    #@658
    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@65b
    .line 3008
    :goto_e
    if-gez p4, :cond_13

    #@65d
    .line 3009
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    #@660
    move-result-object v77

    #@661
    .line 3010
    .local v77, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v77 .. v77}, Ljava/util/Map;->size()I

    #@664
    move-result v4

    #@665
    if-lez v4, :cond_12

    #@667
    .line 3011
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
    .line 3012
    .local v52, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const/4 v4, 0x0

    #@67c
    move-object/from16 v0, v115

    #@67e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    #@681
    .line 3013
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
    move-object/from16 v8, v115

    #@68d
    move/from16 v13, p3

    #@68f
    invoke-static/range {v8 .. v14}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@692
    .line 3014
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
    .line 3015
    invoke-virtual/range {v115 .. v115}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a2
    move-result-object v8

    #@6a3
    const/4 v9, 0x1

    #@6a4
    aput-object v8, v7, v9

    #@6a6
    .line 3014
    const/4 v8, 0x0

    #@6a7
    move-object/from16 v0, p2

    #@6a9
    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@6ac
    goto :goto_f

    #@6ad
    .line 3001
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
    .line 3002
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
    .line 3003
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
    .line 3004
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
    .line 3005
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
    .line 3001
    const/4 v8, 0x0

    #@6f6
    move-object/from16 v0, p2

    #@6f8
    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@6fb
    goto/16 :goto_e

    #@6fd
    .line 3018
    .restart local v77    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    #@700
    move-result-object v158

    #@701
    .line 3019
    .local v158, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v158 .. v158}, Ljava/util/Map;->size()I

    #@704
    move-result v4

    #@705
    if-lez v4, :cond_13

    #@707
    .line 3020
    invoke-interface/range {v158 .. v158}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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
    .line 3023
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
    move-result-wide v144

    #@727
    .line 3024
    .local v144, "totalTimeMicros":J
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
    .line 3025
    .local v39, "count":I
    const-string/jumbo v7, "wr"

    #@736
    const/4 v4, 0x3

    #@737
    new-array v8, v4, [Ljava/lang/Object;

    #@739
    .line 3026
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
    add-long v12, v12, v144

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
    .line 3025
    const/4 v4, 0x0

    #@774
    move-object/from16 v0, p2

    #@776
    invoke-static {v0, v4, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@779
    goto :goto_10

    #@77a
    .line 3031
    .end local v39    # "count":I
    .end local v52    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v53    # "ent$iterator":Ljava/util/Iterator;
    .end local v77    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v144    # "totalTimeMicros":J
    .end local v158    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
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
    .line 3032
    .local v62, "helper":Lcom/android/internal/os/BatteryStatsHelper;
    move-object/from16 v0, v62

    #@788
    move-object/from16 v1, p0

    #@78a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    #@78d
    .line 3033
    const/4 v4, -0x1

    #@78e
    move-object/from16 v0, v62

    #@790
    move/from16 v1, p3

    #@792
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    #@795
    .line 3034
    invoke-virtual/range {v62 .. v62}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    #@798
    move-result-object v124

    #@799
    .line 3035
    .local v124, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v124, :cond_14

    #@79b
    invoke-interface/range {v124 .. v124}, Ljava/util/List;->size()I

    #@79e
    move-result v4

    #@79f
    if-lez v4, :cond_14

    #@7a1
    .line 3036
    const-string/jumbo v4, "pws"

    #@7a4
    const/4 v7, 0x4

    #@7a5
    new-array v7, v7, [Ljava/lang/Object;

    #@7a7
    .line 3037
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
    .line 3038
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
    .line 3039
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
    .line 3040
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
    .line 3036
    const/4 v8, 0x0

    #@7d8
    move-object/from16 v0, p2

    #@7da
    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@7dd
    .line 3041
    const/16 v63, 0x0

    #@7df
    :goto_11
    invoke-interface/range {v124 .. v124}, Ljava/util/List;->size()I

    #@7e2
    move-result v4

    #@7e3
    move/from16 v0, v63

    #@7e5
    if-ge v0, v4, :cond_14

    #@7e7
    .line 3042
    move-object/from16 v0, v124

    #@7e9
    move/from16 v1, v63

    #@7eb
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7ee
    move-result-object v27

    #@7ef
    check-cast v27, Lcom/android/internal/os/BatterySipper;

    #@7f1
    .line 3043
    .local v27, "bs":Lcom/android/internal/os/BatterySipper;
    const/4 v5, 0x0

    #@7f2
    .line 3045
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
    .line 3085
    const-string/jumbo v78, "???"

    #@806
    .line 3087
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
    .line 3088
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
    .line 3087
    move-object/from16 v0, p2

    #@81c
    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@81f
    .line 3041
    add-int/lit8 v63, v63, 0x1

    #@821
    goto :goto_11

    #@822
    .line 3047
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v78, "idle"

    #@825
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@826
    .line 3050
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v78, "cell"

    #@829
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@82a
    .line 3053
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v78, "phone"

    #@82d
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@82e
    .line 3056
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v78, "wifi"

    #@831
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@832
    .line 3059
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v78, "blue"

    #@835
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@836
    .line 3062
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v78, "scrn"

    #@839
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@83a
    .line 3065
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v78, "flashlight"

    #@83d
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@83e
    .line 3068
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
    .line 3069
    const-string/jumbo v78, "uid"

    #@849
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@84a
    .line 3072
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
    .line 3073
    const-string/jumbo v78, "user"

    #@856
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@857
    .line 3076
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v78, "unacc"

    #@85a
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@85b
    .line 3079
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v78, "over"

    #@85e
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@85f
    .line 3082
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v78, "camera"

    #@862
    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    #@863
    .line 3092
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
    .line 3093
    move-object/from16 v0, v149

    #@86d
    move/from16 v1, v73

    #@86f
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@872
    move-result v5

    #@873
    .line 3094
    .restart local v5    # "uid":I
    if-ltz p4, :cond_16

    #@875
    move/from16 v0, p4

    #@877
    if-eq v5, v0, :cond_16

    #@879
    .line 3092
    :cond_15
    add-int/lit8 v73, v73, 0x1

    #@87b
    goto :goto_13

    #@87c
    .line 3097
    :cond_16
    move-object/from16 v0, v149

    #@87e
    move/from16 v1, v73

    #@880
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@883
    move-result-object v148

    #@884
    check-cast v148, Landroid/os/BatteryStats$Uid;

    #@886
    .line 3100
    .restart local v148    # "u":Landroid/os/BatteryStats$Uid;
    const/4 v4, 0x0

    #@887
    move-object/from16 v0, v148

    #@889
    move/from16 v1, p3

    #@88b
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@88e
    move-result-wide v84

    #@88f
    .line 3101
    .local v84, "mobileBytesRx":J
    const/4 v4, 0x1

    #@890
    move-object/from16 v0, v148

    #@892
    move/from16 v1, p3

    #@894
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@897
    move-result-wide v86

    #@898
    .line 3102
    .local v86, "mobileBytesTx":J
    const/4 v4, 0x2

    #@899
    move-object/from16 v0, v148

    #@89b
    move/from16 v1, p3

    #@89d
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@8a0
    move-result-wide v168

    #@8a1
    .line 3103
    .local v168, "wifiBytesRx":J
    const/4 v4, 0x3

    #@8a2
    move-object/from16 v0, v148

    #@8a4
    move/from16 v1, p3

    #@8a6
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@8a9
    move-result-wide v170

    #@8aa
    .line 3104
    .local v170, "wifiBytesTx":J
    const/4 v4, 0x0

    #@8ab
    move-object/from16 v0, v148

    #@8ad
    move/from16 v1, p3

    #@8af
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@8b2
    move-result-wide v88

    #@8b3
    .line 3105
    .local v88, "mobilePacketsRx":J
    const/4 v4, 0x1

    #@8b4
    move-object/from16 v0, v148

    #@8b6
    move/from16 v1, p3

    #@8b8
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@8bb
    move-result-wide v90

    #@8bc
    .line 3106
    .local v90, "mobilePacketsTx":J
    move-object/from16 v0, v148

    #@8be
    move/from16 v1, p3

    #@8c0
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    #@8c3
    move-result-wide v82

    #@8c4
    .line 3107
    .local v82, "mobileActiveTime":J
    move-object/from16 v0, v148

    #@8c6
    move/from16 v1, p3

    #@8c8
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    #@8cb
    move-result v80

    #@8cc
    .line 3108
    .local v80, "mobileActiveCount":I
    const/4 v4, 0x2

    #@8cd
    move-object/from16 v0, v148

    #@8cf
    move/from16 v1, p3

    #@8d1
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@8d4
    move-result-wide v174

    #@8d5
    .line 3109
    .local v174, "wifiPacketsRx":J
    const/4 v4, 0x3

    #@8d6
    move-object/from16 v0, v148

    #@8d8
    move/from16 v1, p3

    #@8da
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@8dd
    move-result-wide v176

    #@8de
    .line 3110
    .local v176, "wifiPacketsTx":J
    const/4 v4, 0x4

    #@8df
    move-object/from16 v0, v148

    #@8e1
    move/from16 v1, p3

    #@8e3
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@8e6
    move-result-wide v30

    #@8e7
    .line 3111
    .local v30, "btBytesRx":J
    const/4 v4, 0x5

    #@8e8
    move-object/from16 v0, v148

    #@8ea
    move/from16 v1, p3

    #@8ec
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@8ef
    move-result-wide v32

    #@8f0
    .line 3112
    .local v32, "btBytesTx":J
    const-wide/16 v8, 0x0

    #@8f2
    cmp-long v4, v84, v8

    #@8f4
    if-gtz v4, :cond_17

    #@8f6
    const-wide/16 v8, 0x0

    #@8f8
    cmp-long v4, v86, v8

    #@8fa
    if-lez v4, :cond_1c

    #@8fc
    .line 3116
    :cond_17
    :goto_14
    const-string/jumbo v4, "nt"

    #@8ff
    const/16 v7, 0xc

    #@901
    new-array v7, v7, [Ljava/lang/Object;

    #@903
    invoke-static/range {v84 .. v85}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@906
    move-result-object v8

    #@907
    const/4 v9, 0x0

    #@908
    aput-object v8, v7, v9

    #@90a
    invoke-static/range {v86 .. v87}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@90d
    move-result-object v8

    #@90e
    const/4 v9, 0x1

    #@90f
    aput-object v8, v7, v9

    #@911
    .line 3117
    invoke-static/range {v168 .. v169}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@914
    move-result-object v8

    #@915
    const/4 v9, 0x2

    #@916
    aput-object v8, v7, v9

    #@918
    invoke-static/range {v170 .. v171}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@91b
    move-result-object v8

    #@91c
    const/4 v9, 0x3

    #@91d
    aput-object v8, v7, v9

    #@91f
    .line 3118
    invoke-static/range {v88 .. v89}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@922
    move-result-object v8

    #@923
    const/4 v9, 0x4

    #@924
    aput-object v8, v7, v9

    #@926
    invoke-static/range {v90 .. v91}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@929
    move-result-object v8

    #@92a
    const/4 v9, 0x5

    #@92b
    aput-object v8, v7, v9

    #@92d
    .line 3119
    invoke-static/range {v174 .. v175}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@930
    move-result-object v8

    #@931
    const/4 v9, 0x6

    #@932
    aput-object v8, v7, v9

    #@934
    invoke-static/range {v176 .. v177}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@937
    move-result-object v8

    #@938
    const/4 v9, 0x7

    #@939
    aput-object v8, v7, v9

    #@93b
    .line 3120
    invoke-static/range {v82 .. v83}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@93e
    move-result-object v8

    #@93f
    const/16 v9, 0x8

    #@941
    aput-object v8, v7, v9

    #@943
    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@946
    move-result-object v8

    #@947
    const/16 v9, 0x9

    #@949
    aput-object v8, v7, v9

    #@94b
    .line 3121
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@94e
    move-result-object v8

    #@94f
    const/16 v9, 0xa

    #@951
    aput-object v8, v7, v9

    #@953
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@956
    move-result-object v8

    #@957
    const/16 v9, 0xb

    #@959
    aput-object v8, v7, v9

    #@95b
    .line 3116
    move-object/from16 v0, p2

    #@95d
    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@960
    .line 3125
    :cond_18
    const-string/jumbo v7, "mcd"

    #@963
    .line 3126
    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@966
    move-result-object v8

    #@967
    move-object/from16 v4, p2

    #@969
    move/from16 v9, p3

    #@96b
    .line 3125
    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    #@96e
    .line 3129
    move-object/from16 v0, v148

    #@970
    move/from16 v1, p3

    #@972
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    #@975
    move-result-wide v60

    #@976
    .line 3130
    .local v60, "fullWifiLockOnTime":J
    move-object/from16 v0, v148

    #@978
    move/from16 v1, p3

    #@97a
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    #@97d
    move-result-wide v186

    #@97e
    .line 3131
    .local v186, "wifiScanTime":J
    move-object/from16 v0, v148

    #@980
    move/from16 v1, p3

    #@982
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    #@985
    move-result v184

    #@986
    .line 3132
    .local v184, "wifiScanCount":I
    move-object/from16 v0, v148

    #@988
    move/from16 v1, p3

    #@98a
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    #@98d
    move-result-wide v150

    #@98e
    .line 3133
    .local v150, "uidWifiRunningTime":J
    const-wide/16 v8, 0x0

    #@990
    cmp-long v4, v60, v8

    #@992
    if-nez v4, :cond_19

    #@994
    const-wide/16 v8, 0x0

    #@996
    cmp-long v4, v186, v8

    #@998
    if-eqz v4, :cond_1d

    #@99a
    .line 3135
    :cond_19
    :goto_15
    const-string/jumbo v4, "wfl"

    #@99d
    const/4 v7, 0x7

    #@99e
    new-array v7, v7, [Ljava/lang/Object;

    #@9a0
    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9a3
    move-result-object v8

    #@9a4
    const/4 v9, 0x0

    #@9a5
    aput-object v8, v7, v9

    #@9a7
    invoke-static/range {v186 .. v187}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9aa
    move-result-object v8

    #@9ab
    const/4 v9, 0x1

    #@9ac
    aput-object v8, v7, v9

    #@9ae
    .line 3136
    invoke-static/range {v150 .. v151}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9b1
    move-result-object v8

    #@9b2
    const/4 v9, 0x2

    #@9b3
    aput-object v8, v7, v9

    #@9b5
    invoke-static/range {v184 .. v184}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9b8
    move-result-object v8

    #@9b9
    const/4 v9, 0x3

    #@9ba
    aput-object v8, v7, v9

    #@9bc
    .line 3137
    const/4 v8, 0x0

    #@9bd
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9c0
    move-result-object v8

    #@9c1
    const/4 v9, 0x4

    #@9c2
    aput-object v8, v7, v9

    #@9c4
    const/4 v8, 0x0

    #@9c5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9c8
    move-result-object v8

    #@9c9
    const/4 v9, 0x5

    #@9ca
    aput-object v8, v7, v9

    #@9cc
    const/4 v8, 0x0

    #@9cd
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9d0
    move-result-object v8

    #@9d1
    const/4 v9, 0x6

    #@9d2
    aput-object v8, v7, v9

    #@9d4
    .line 3135
    move-object/from16 v0, p2

    #@9d6
    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@9d9
    .line 3140
    :cond_1a
    const-string/jumbo v7, "wfcd"

    #@9dc
    .line 3141
    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@9df
    move-result-object v8

    #@9e0
    move-object/from16 v4, p2

    #@9e2
    move/from16 v9, p3

    #@9e4
    .line 3140
    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    #@9e7
    .line 3143
    const-string/jumbo v16, "blem"

    #@9ea
    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    #@9ed
    move-result-object v17

    #@9ee
    move-object/from16 v13, p2

    #@9f0
    move v14, v5

    #@9f1
    move-object v15, v6

    #@9f2
    move-wide/from16 v18, v10

    #@9f4
    move/from16 v20, p3

    #@9f6
    invoke-static/range {v13 .. v20}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    #@9f9
    .line 3146
    const-string/jumbo v7, "ble"

    #@9fc
    .line 3147
    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@9ff
    move-result-object v8

    #@a00
    move-object/from16 v4, p2

    #@a02
    move/from16 v9, p3

    #@a04
    .line 3146
    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    #@a07
    .line 3149
    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    #@a0a
    move-result v4

    #@a0b
    if-eqz v4, :cond_1f

    #@a0d
    .line 3150
    const/4 v4, 0x4

    #@a0e
    new-array v0, v4, [Ljava/lang/Object;

    #@a10
    move-object/from16 v26, v0

    #@a12
    .line 3151
    const/16 v59, 0x0

    #@a14
    .line 3152
    .local v59, "hasData":Z
    const/16 v63, 0x0

    #@a16
    :goto_16
    const/4 v4, 0x4

    #@a17
    move/from16 v0, v63

    #@a19
    if-ge v0, v4, :cond_1e

    #@a1b
    .line 3153
    move-object/from16 v0, v148

    #@a1d
    move/from16 v1, v63

    #@a1f
    move/from16 v2, p3

    #@a21
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    #@a24
    move-result v156

    #@a25
    .line 3154
    .local v156, "val":I
    invoke-static/range {v156 .. v156}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a28
    move-result-object v4

    #@a29
    aput-object v4, v26, v63

    #@a2b
    .line 3155
    if-eqz v156, :cond_1b

    #@a2d
    const/16 v59, 0x1

    #@a2f
    .line 3152
    :cond_1b
    add-int/lit8 v63, v63, 0x1

    #@a31
    goto :goto_16

    #@a32
    .line 3112
    .end local v59    # "hasData":Z
    .end local v60    # "fullWifiLockOnTime":J
    .end local v150    # "uidWifiRunningTime":J
    .end local v156    # "val":I
    .end local v184    # "wifiScanCount":I
    .end local v186    # "wifiScanTime":J
    :cond_1c
    const-wide/16 v8, 0x0

    #@a34
    cmp-long v4, v168, v8

    #@a36
    if-gtz v4, :cond_17

    #@a38
    const-wide/16 v8, 0x0

    #@a3a
    cmp-long v4, v170, v8

    #@a3c
    if-gtz v4, :cond_17

    #@a3e
    .line 3113
    const-wide/16 v8, 0x0

    #@a40
    cmp-long v4, v88, v8

    #@a42
    if-gtz v4, :cond_17

    #@a44
    const-wide/16 v8, 0x0

    #@a46
    cmp-long v4, v90, v8

    #@a48
    if-gtz v4, :cond_17

    #@a4a
    const-wide/16 v8, 0x0

    #@a4c
    cmp-long v4, v174, v8

    #@a4e
    if-gtz v4, :cond_17

    #@a50
    .line 3114
    const-wide/16 v8, 0x0

    #@a52
    cmp-long v4, v176, v8

    #@a54
    if-gtz v4, :cond_17

    #@a56
    const-wide/16 v8, 0x0

    #@a58
    cmp-long v4, v82, v8

    #@a5a
    if-gtz v4, :cond_17

    #@a5c
    if-gtz v80, :cond_17

    #@a5e
    .line 3115
    const-wide/16 v8, 0x0

    #@a60
    cmp-long v4, v30, v8

    #@a62
    if-gtz v4, :cond_17

    #@a64
    const-wide/16 v8, 0x0

    #@a66
    cmp-long v4, v32, v8

    #@a68
    if-lez v4, :cond_18

    #@a6a
    goto/16 :goto_14

    #@a6c
    .line 3133
    .restart local v60    # "fullWifiLockOnTime":J
    .restart local v150    # "uidWifiRunningTime":J
    .restart local v184    # "wifiScanCount":I
    .restart local v186    # "wifiScanTime":J
    :cond_1d
    if-nez v184, :cond_19

    #@a6e
    .line 3134
    const-wide/16 v8, 0x0

    #@a70
    cmp-long v4, v150, v8

    #@a72
    if-eqz v4, :cond_1a

    #@a74
    goto/16 :goto_15

    #@a76
    .line 3157
    .restart local v59    # "hasData":Z
    :cond_1e
    if-eqz v59, :cond_1f

    #@a78
    .line 3158
    const-string/jumbo v4, "ua"

    #@a7b
    move-object/from16 v0, p2

    #@a7d
    move-object/from16 v1, v26

    #@a7f
    invoke-static {v0, v5, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@a82
    .line 3162
    .end local v59    # "hasData":Z
    :cond_1f
    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    #@a85
    move-result-object v157

    #@a86
    .line 3163
    .restart local v157    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual/range {v157 .. v157}, Landroid/util/ArrayMap;->size()I

    #@a89
    move-result v4

    #@a8a
    add-int/lit8 v74, v4, -0x1

    #@a8c
    .restart local v74    # "iw":I
    :goto_17
    if-ltz v74, :cond_22

    #@a8e
    .line 3164
    move-object/from16 v0, v157

    #@a90
    move/from16 v1, v74

    #@a92
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@a95
    move-result-object v185

    #@a96
    check-cast v185, Landroid/os/BatteryStats$Uid$Wakelock;

    #@a98
    .line 3165
    .restart local v185    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const-string/jumbo v14, ""

    #@a9b
    .line 3166
    .local v14, "linePrefix":Ljava/lang/String;
    const/4 v4, 0x0

    #@a9c
    move-object/from16 v0, v115

    #@a9e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    #@aa1
    .line 3167
    const/4 v4, 0x1

    #@aa2
    move-object/from16 v0, v185

    #@aa4
    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@aa7
    move-result-object v9

    #@aa8
    .line 3168
    const-string/jumbo v12, "f"

    #@aab
    move-object/from16 v8, v115

    #@aad
    move/from16 v13, p3

    #@aaf
    .line 3167
    invoke-static/range {v8 .. v14}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@ab2
    move-result-object v14

    #@ab3
    .line 3169
    const/4 v4, 0x0

    #@ab4
    move-object/from16 v0, v185

    #@ab6
    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@ab9
    move-result-object v9

    #@aba
    .line 3170
    const-string/jumbo v12, "p"

    #@abd
    move-object/from16 v8, v115

    #@abf
    move/from16 v13, p3

    #@ac1
    .line 3169
    invoke-static/range {v8 .. v14}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@ac4
    move-result-object v14

    #@ac5
    .line 3171
    const/4 v4, 0x2

    #@ac6
    move-object/from16 v0, v185

    #@ac8
    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@acb
    move-result-object v9

    #@acc
    .line 3172
    const-string/jumbo v12, "w"

    #@acf
    move-object/from16 v8, v115

    #@ad1
    move/from16 v13, p3

    #@ad3
    .line 3171
    invoke-static/range {v8 .. v14}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@ad6
    move-result-object v14

    #@ad7
    .line 3175
    invoke-virtual/range {v115 .. v115}, Ljava/lang/StringBuilder;->length()I

    #@ada
    move-result v4

    #@adb
    if-lez v4, :cond_21

    #@add
    .line 3176
    move-object/from16 v0, v157

    #@adf
    move/from16 v1, v74

    #@ae1
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@ae4
    move-result-object v81

    #@ae5
    check-cast v81, Ljava/lang/String;

    #@ae7
    .line 3177
    .local v81, "name":Ljava/lang/String;
    const/16 v4, 0x2c

    #@ae9
    move-object/from16 v0, v81

    #@aeb
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    #@aee
    move-result v4

    #@aef
    if-ltz v4, :cond_20

    #@af1
    .line 3178
    const/16 v4, 0x2c

    #@af3
    const/16 v7, 0x5f

    #@af5
    move-object/from16 v0, v81

    #@af7
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@afa
    move-result-object v81

    #@afb
    .line 3180
    :cond_20
    const-string/jumbo v4, "wl"

    #@afe
    const/4 v7, 0x2

    #@aff
    new-array v7, v7, [Ljava/lang/Object;

    #@b01
    const/4 v8, 0x0

    #@b02
    aput-object v81, v7, v8

    #@b04
    invoke-virtual/range {v115 .. v115}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b07
    move-result-object v8

    #@b08
    const/4 v9, 0x1

    #@b09
    aput-object v8, v7, v9

    #@b0b
    move-object/from16 v0, p2

    #@b0d
    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@b10
    .line 3163
    .end local v81    # "name":Ljava/lang/String;
    :cond_21
    add-int/lit8 v74, v74, -0x1

    #@b12
    goto/16 :goto_17

    #@b14
    .line 3184
    .end local v14    # "linePrefix":Ljava/lang/String;
    .end local v185    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_22
    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    #@b17
    move-result-object v130

    #@b18
    .line 3185
    .local v130, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v130 .. v130}, Landroid/util/ArrayMap;->size()I

    #@b1b
    move-result v4

    #@b1c
    add-int/lit8 v72, v4, -0x1

    #@b1e
    .local v72, "isy":I
    :goto_18
    if-ltz v72, :cond_24

    #@b20
    .line 3186
    move-object/from16 v0, v130

    #@b22
    move/from16 v1, v72

    #@b24
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@b27
    move-result-object v131

    #@b28
    check-cast v131, Landroid/os/BatteryStats$Timer;

    #@b2a
    .line 3188
    .local v131, "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v131

    #@b2c
    move/from16 v1, p3

    #@b2e
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@b31
    move-result-wide v8

    #@b32
    const-wide/16 v12, 0x1f4

    #@b34
    add-long/2addr v8, v12

    #@b35
    const-wide/16 v12, 0x3e8

    #@b37
    div-long v142, v8, v12

    #@b39
    .line 3189
    .local v142, "totalTime":J
    move-object/from16 v0, v131

    #@b3b
    move/from16 v1, p3

    #@b3d
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@b40
    move-result v39

    #@b41
    .line 3190
    .restart local v39    # "count":I
    const-wide/16 v8, 0x0

    #@b43
    cmp-long v4, v142, v8

    #@b45
    if-eqz v4, :cond_23

    #@b47
    .line 3191
    const-string/jumbo v4, "sy"

    #@b4a
    const/4 v7, 0x3

    #@b4b
    new-array v7, v7, [Ljava/lang/Object;

    #@b4d
    move-object/from16 v0, v130

    #@b4f
    move/from16 v1, v72

    #@b51
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@b54
    move-result-object v8

    #@b55
    const/4 v9, 0x0

    #@b56
    aput-object v8, v7, v9

    #@b58
    invoke-static/range {v142 .. v143}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b5b
    move-result-object v8

    #@b5c
    const/4 v9, 0x1

    #@b5d
    aput-object v8, v7, v9

    #@b5f
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b62
    move-result-object v8

    #@b63
    const/4 v9, 0x2

    #@b64
    aput-object v8, v7, v9

    #@b66
    move-object/from16 v0, p2

    #@b68
    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@b6b
    .line 3185
    :cond_23
    add-int/lit8 v72, v72, -0x1

    #@b6d
    goto :goto_18

    #@b6e
    .line 3195
    .end local v39    # "count":I
    .end local v131    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v142    # "totalTime":J
    :cond_24
    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    #@b71
    move-result-object v76

    #@b72
    .line 3196
    .local v76, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v76 .. v76}, Landroid/util/ArrayMap;->size()I

    #@b75
    move-result v4

    #@b76
    add-int/lit8 v64, v4, -0x1

    #@b78
    .local v64, "ij":I
    :goto_19
    if-ltz v64, :cond_26

    #@b7a
    .line 3197
    move-object/from16 v0, v76

    #@b7c
    move/from16 v1, v64

    #@b7e
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@b81
    move-result-object v131

    #@b82
    check-cast v131, Landroid/os/BatteryStats$Timer;

    #@b84
    .line 3199
    .restart local v131    # "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v131

    #@b86
    move/from16 v1, p3

    #@b88
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@b8b
    move-result-wide v8

    #@b8c
    const-wide/16 v12, 0x1f4

    #@b8e
    add-long/2addr v8, v12

    #@b8f
    const-wide/16 v12, 0x3e8

    #@b91
    div-long v142, v8, v12

    #@b93
    .line 3200
    .restart local v142    # "totalTime":J
    move-object/from16 v0, v131

    #@b95
    move/from16 v1, p3

    #@b97
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@b9a
    move-result v39

    #@b9b
    .line 3201
    .restart local v39    # "count":I
    const-wide/16 v8, 0x0

    #@b9d
    cmp-long v4, v142, v8

    #@b9f
    if-eqz v4, :cond_25

    #@ba1
    .line 3202
    const-string/jumbo v4, "jb"

    #@ba4
    const/4 v7, 0x3

    #@ba5
    new-array v7, v7, [Ljava/lang/Object;

    #@ba7
    move-object/from16 v0, v76

    #@ba9
    move/from16 v1, v64

    #@bab
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@bae
    move-result-object v8

    #@baf
    const/4 v9, 0x0

    #@bb0
    aput-object v8, v7, v9

    #@bb2
    invoke-static/range {v142 .. v143}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@bb5
    move-result-object v8

    #@bb6
    const/4 v9, 0x1

    #@bb7
    aput-object v8, v7, v9

    #@bb9
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bbc
    move-result-object v8

    #@bbd
    const/4 v9, 0x2

    #@bbe
    aput-object v8, v7, v9

    #@bc0
    move-object/from16 v0, p2

    #@bc2
    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@bc5
    .line 3196
    :cond_25
    add-int/lit8 v64, v64, -0x1

    #@bc7
    goto :goto_19

    #@bc8
    .line 3206
    .end local v39    # "count":I
    .end local v131    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v142    # "totalTime":J
    :cond_26
    const-string/jumbo v18, "fla"

    #@bcb
    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@bce
    move-result-object v19

    #@bcf
    move-object/from16 v15, p2

    #@bd1
    move/from16 v16, v5

    #@bd3
    move-object/from16 v17, v6

    #@bd5
    move-wide/from16 v20, v10

    #@bd7
    move/from16 v22, p3

    #@bd9
    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    #@bdc
    .line 3208
    const-string/jumbo v18, "cam"

    #@bdf
    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@be2
    move-result-object v19

    #@be3
    move-object/from16 v15, p2

    #@be5
    move/from16 v16, v5

    #@be7
    move-object/from16 v17, v6

    #@be9
    move-wide/from16 v20, v10

    #@beb
    move/from16 v22, p3

    #@bed
    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    #@bf0
    .line 3210
    const-string/jumbo v18, "vid"

    #@bf3
    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@bf6
    move-result-object v19

    #@bf7
    move-object/from16 v15, p2

    #@bf9
    move/from16 v16, v5

    #@bfb
    move-object/from16 v17, v6

    #@bfd
    move-wide/from16 v20, v10

    #@bff
    move/from16 v22, p3

    #@c01
    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    #@c04
    .line 3212
    const-string/jumbo v18, "aud"

    #@c07
    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@c0a
    move-result-object v19

    #@c0b
    move-object/from16 v15, p2

    #@c0d
    move/from16 v16, v5

    #@c0f
    move-object/from16 v17, v6

    #@c11
    move-wide/from16 v20, v10

    #@c13
    move/from16 v22, p3

    #@c15
    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    #@c18
    .line 3215
    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    #@c1b
    move-result-object v122

    #@c1c
    .line 3216
    .local v122, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v122 .. v122}, Landroid/util/SparseArray;->size()I

    #@c1f
    move-result v23

    #@c20
    .line 3217
    .local v23, "NSE":I
    const/16 v70, 0x0

    #@c22
    .local v70, "ise":I
    :goto_1a
    move/from16 v0, v70

    #@c24
    move/from16 v1, v23

    #@c26
    if-ge v0, v1, :cond_28

    #@c28
    .line 3218
    move-object/from16 v0, v122

    #@c2a
    move/from16 v1, v70

    #@c2c
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@c2f
    move-result-object v120

    #@c30
    check-cast v120, Landroid/os/BatteryStats$Uid$Sensor;

    #@c32
    .line 3219
    .local v120, "se":Landroid/os/BatteryStats$Uid$Sensor;
    move-object/from16 v0, v122

    #@c34
    move/from16 v1, v70

    #@c36
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@c39
    move-result v121

    #@c3a
    .line 3220
    .local v121, "sensorNumber":I
    invoke-virtual/range {v120 .. v120}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    #@c3d
    move-result-object v131

    #@c3e
    .line 3221
    .restart local v131    # "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v131, :cond_27

    #@c40
    .line 3223
    move-object/from16 v0, v131

    #@c42
    move/from16 v1, p3

    #@c44
    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@c47
    move-result-wide v8

    #@c48
    const-wide/16 v12, 0x1f4

    #@c4a
    add-long/2addr v8, v12

    #@c4b
    .line 3224
    const-wide/16 v12, 0x3e8

    #@c4d
    .line 3223
    div-long v142, v8, v12

    #@c4f
    .line 3225
    .restart local v142    # "totalTime":J
    move-object/from16 v0, v131

    #@c51
    move/from16 v1, p3

    #@c53
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@c56
    move-result v39

    #@c57
    .line 3226
    .restart local v39    # "count":I
    const-wide/16 v8, 0x0

    #@c59
    cmp-long v4, v142, v8

    #@c5b
    if-eqz v4, :cond_27

    #@c5d
    .line 3227
    const-string/jumbo v4, "sr"

    #@c60
    const/4 v7, 0x3

    #@c61
    new-array v7, v7, [Ljava/lang/Object;

    #@c63
    invoke-static/range {v121 .. v121}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c66
    move-result-object v8

    #@c67
    const/4 v9, 0x0

    #@c68
    aput-object v8, v7, v9

    #@c6a
    invoke-static/range {v142 .. v143}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@c6d
    move-result-object v8

    #@c6e
    const/4 v9, 0x1

    #@c6f
    aput-object v8, v7, v9

    #@c71
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c74
    move-result-object v8

    #@c75
    const/4 v9, 0x2

    #@c76
    aput-object v8, v7, v9

    #@c78
    move-object/from16 v0, p2

    #@c7a
    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c7d
    .line 3217
    .end local v39    # "count":I
    .end local v142    # "totalTime":J
    :cond_27
    add-int/lit8 v70, v70, 0x1

    #@c7f
    goto :goto_1a

    #@c80
    .line 3232
    .end local v120    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v121    # "sensorNumber":I
    .end local v131    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_28
    const-string/jumbo v18, "vib"

    #@c83
    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    #@c86
    move-result-object v19

    #@c87
    move-object/from16 v15, p2

    #@c89
    move/from16 v16, v5

    #@c8b
    move-object/from16 v17, v6

    #@c8d
    move-wide/from16 v20, v10

    #@c8f
    move/from16 v22, p3

    #@c91
    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    #@c94
    .line 3235
    const-string/jumbo v18, "fg"

    #@c97
    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    #@c9a
    move-result-object v19

    #@c9b
    move-object/from16 v15, p2

    #@c9d
    move/from16 v16, v5

    #@c9f
    move-object/from16 v17, v6

    #@ca1
    move-wide/from16 v20, v10

    #@ca3
    move/from16 v22, p3

    #@ca5
    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    #@ca8
    .line 3238
    const/4 v4, 0x6

    #@ca9
    new-array v0, v4, [Ljava/lang/Object;

    #@cab
    move-object/from16 v129, v0

    #@cad
    .line 3239
    .local v129, "stateTimes":[Ljava/lang/Object;
    const-wide/16 v140, 0x0

    #@caf
    .line 3240
    .local v140, "totalStateTime":J
    const/16 v69, 0x0

    #@cb1
    .local v69, "ips":I
    :goto_1b
    const/4 v4, 0x6

    #@cb2
    move/from16 v0, v69

    #@cb4
    if-ge v0, v4, :cond_29

    #@cb6
    .line 3241
    move-object/from16 v0, v148

    #@cb8
    move/from16 v1, v69

    #@cba
    move/from16 v2, p3

    #@cbc
    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    #@cbf
    move-result-wide v136

    #@cc0
    .line 3242
    .local v136, "time":J
    add-long v140, v140, v136

    #@cc2
    .line 3243
    const-wide/16 v8, 0x1f4

    #@cc4
    add-long v8, v8, v136

    #@cc6
    const-wide/16 v12, 0x3e8

    #@cc8
    div-long/2addr v8, v12

    #@cc9
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@ccc
    move-result-object v4

    #@ccd
    aput-object v4, v129, v69

    #@ccf
    .line 3240
    add-int/lit8 v69, v69, 0x1

    #@cd1
    goto :goto_1b

    #@cd2
    .line 3245
    .end local v136    # "time":J
    :cond_29
    const-wide/16 v8, 0x0

    #@cd4
    cmp-long v4, v140, v8

    #@cd6
    if-lez v4, :cond_2a

    #@cd8
    .line 3246
    const-string/jumbo v4, "st"

    #@cdb
    move-object/from16 v0, p2

    #@cdd
    move-object/from16 v1, v129

    #@cdf
    invoke-static {v0, v5, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@ce2
    .line 3249
    :cond_2a
    move-object/from16 v0, v148

    #@ce4
    move/from16 v1, p3

    #@ce6
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    #@ce9
    move-result-wide v152

    #@cea
    .line 3250
    .local v152, "userCpuTimeUs":J
    move-object/from16 v0, v148

    #@cec
    move/from16 v1, p3

    #@cee
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    #@cf1
    move-result-wide v132

    #@cf2
    .line 3251
    .local v132, "systemCpuTimeUs":J
    move-object/from16 v0, v148

    #@cf4
    move/from16 v1, p3

    #@cf6
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getCpuPowerMaUs(I)J

    #@cf9
    move-result-wide v108

    #@cfa
    .line 3252
    .local v108, "powerCpuMaUs":J
    const-wide/16 v8, 0x0

    #@cfc
    cmp-long v4, v152, v8

    #@cfe
    if-gtz v4, :cond_2b

    #@d00
    const-wide/16 v8, 0x0

    #@d02
    cmp-long v4, v132, v8

    #@d04
    if-lez v4, :cond_2f

    #@d06
    .line 3253
    :cond_2b
    :goto_1c
    const-string/jumbo v4, "cpu"

    #@d09
    const/4 v7, 0x3

    #@d0a
    new-array v7, v7, [Ljava/lang/Object;

    #@d0c
    const-wide/16 v8, 0x3e8

    #@d0e
    div-long v8, v152, v8

    #@d10
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d13
    move-result-object v8

    #@d14
    const/4 v9, 0x0

    #@d15
    aput-object v8, v7, v9

    #@d17
    const-wide/16 v8, 0x3e8

    #@d19
    div-long v8, v132, v8

    #@d1b
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d1e
    move-result-object v8

    #@d1f
    const/4 v9, 0x1

    #@d20
    aput-object v8, v7, v9

    #@d22
    .line 3254
    const-wide/16 v8, 0x3e8

    #@d24
    div-long v8, v108, v8

    #@d26
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d29
    move-result-object v8

    #@d2a
    const/4 v9, 0x2

    #@d2b
    aput-object v8, v7, v9

    #@d2d
    .line 3253
    move-object/from16 v0, p2

    #@d2f
    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@d32
    .line 3258
    :cond_2c
    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    #@d35
    move-result-object v112

    #@d36
    .line 3259
    .local v112, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual/range {v112 .. v112}, Landroid/util/ArrayMap;->size()I

    #@d39
    move-result v4

    #@d3a
    add-int/lit8 v68, v4, -0x1

    #@d3c
    .local v68, "ipr":I
    :goto_1d
    if-ltz v68, :cond_31

    #@d3e
    .line 3260
    move-object/from16 v0, v112

    #@d40
    move/from16 v1, v68

    #@d42
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@d45
    move-result-object v114

    #@d46
    check-cast v114, Landroid/os/BatteryStats$Uid$Proc;

    #@d48
    .line 3262
    .local v114, "ps":Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v114

    #@d4a
    move/from16 v1, p3

    #@d4c
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    #@d4f
    move-result-wide v154

    #@d50
    .line 3263
    .local v154, "userMillis":J
    move-object/from16 v0, v114

    #@d52
    move/from16 v1, p3

    #@d54
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    #@d57
    move-result-wide v134

    #@d58
    .line 3264
    .local v134, "systemMillis":J
    move-object/from16 v0, v114

    #@d5a
    move/from16 v1, p3

    #@d5c
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    #@d5f
    move-result-wide v54

    #@d60
    .line 3265
    .local v54, "foregroundMillis":J
    move-object/from16 v0, v114

    #@d62
    move/from16 v1, p3

    #@d64
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    #@d67
    move-result v128

    #@d68
    .line 3266
    .local v128, "starts":I
    move-object/from16 v0, v114

    #@d6a
    move/from16 v1, p3

    #@d6c
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    #@d6f
    move-result v101

    #@d70
    .line 3267
    .local v101, "numCrashes":I
    move-object/from16 v0, v114

    #@d72
    move/from16 v1, p3

    #@d74
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    #@d77
    move-result v100

    #@d78
    .line 3269
    .local v100, "numAnrs":I
    const-wide/16 v8, 0x0

    #@d7a
    cmp-long v4, v154, v8

    #@d7c
    if-nez v4, :cond_2d

    #@d7e
    const-wide/16 v8, 0x0

    #@d80
    cmp-long v4, v134, v8

    #@d82
    if-eqz v4, :cond_30

    #@d84
    .line 3271
    :cond_2d
    :goto_1e
    const-string/jumbo v4, "pr"

    #@d87
    const/4 v7, 0x7

    #@d88
    new-array v7, v7, [Ljava/lang/Object;

    #@d8a
    move-object/from16 v0, v112

    #@d8c
    move/from16 v1, v68

    #@d8e
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@d91
    move-result-object v8

    #@d92
    const/4 v9, 0x0

    #@d93
    aput-object v8, v7, v9

    #@d95
    invoke-static/range {v154 .. v155}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d98
    move-result-object v8

    #@d99
    const/4 v9, 0x1

    #@d9a
    aput-object v8, v7, v9

    #@d9c
    .line 3272
    invoke-static/range {v134 .. v135}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d9f
    move-result-object v8

    #@da0
    const/4 v9, 0x2

    #@da1
    aput-object v8, v7, v9

    #@da3
    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@da6
    move-result-object v8

    #@da7
    const/4 v9, 0x3

    #@da8
    aput-object v8, v7, v9

    #@daa
    invoke-static/range {v128 .. v128}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@dad
    move-result-object v8

    #@dae
    const/4 v9, 0x4

    #@daf
    aput-object v8, v7, v9

    #@db1
    invoke-static/range {v100 .. v100}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@db4
    move-result-object v8

    #@db5
    const/4 v9, 0x5

    #@db6
    aput-object v8, v7, v9

    #@db8
    invoke-static/range {v101 .. v101}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@dbb
    move-result-object v8

    #@dbc
    const/4 v9, 0x6

    #@dbd
    aput-object v8, v7, v9

    #@dbf
    .line 3271
    move-object/from16 v0, p2

    #@dc1
    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@dc4
    .line 3259
    :cond_2e
    add-int/lit8 v68, v68, -0x1

    #@dc6
    goto/16 :goto_1d

    #@dc8
    .line 3252
    .end local v54    # "foregroundMillis":J
    .end local v68    # "ipr":I
    .end local v100    # "numAnrs":I
    .end local v101    # "numCrashes":I
    .end local v112    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v114    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v128    # "starts":I
    .end local v134    # "systemMillis":J
    .end local v154    # "userMillis":J
    :cond_2f
    const-wide/16 v8, 0x0

    #@dca
    cmp-long v4, v108, v8

    #@dcc
    if-lez v4, :cond_2c

    #@dce
    goto/16 :goto_1c

    #@dd0
    .line 3269
    .restart local v54    # "foregroundMillis":J
    .restart local v68    # "ipr":I
    .restart local v100    # "numAnrs":I
    .restart local v101    # "numCrashes":I
    .restart local v112    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v114    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .restart local v128    # "starts":I
    .restart local v134    # "systemMillis":J
    .restart local v154    # "userMillis":J
    :cond_30
    const-wide/16 v8, 0x0

    #@dd2
    cmp-long v4, v54, v8

    #@dd4
    if-nez v4, :cond_2d

    #@dd6
    .line 3270
    if-nez v128, :cond_2d

    #@dd8
    if-nez v100, :cond_2d

    #@dda
    if-eqz v101, :cond_2e

    #@ddc
    goto :goto_1e

    #@ddd
    .line 3277
    .end local v54    # "foregroundMillis":J
    .end local v100    # "numAnrs":I
    .end local v101    # "numCrashes":I
    .end local v114    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v128    # "starts":I
    .end local v134    # "systemMillis":J
    .end local v154    # "userMillis":J
    :cond_31
    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    #@de0
    move-result-object v102

    #@de1
    .line 3278
    .local v102, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual/range {v102 .. v102}, Landroid/util/ArrayMap;->size()I

    #@de4
    move-result v4

    #@de5
    add-int/lit8 v65, v4, -0x1

    #@de7
    .local v65, "ipkg":I
    :goto_1f
    if-ltz v65, :cond_15

    #@de9
    .line 3279
    move-object/from16 v0, v102

    #@deb
    move/from16 v1, v65

    #@ded
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@df0
    move-result-object v113

    #@df1
    check-cast v113, Landroid/os/BatteryStats$Uid$Pkg;

    #@df3
    .line 3280
    .local v113, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    const/16 v159, 0x0

    #@df5
    .line 3281
    .local v159, "wakeups":I
    invoke-virtual/range {v113 .. v113}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    #@df8
    move-result-object v25

    #@df9
    .line 3282
    .local v25, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    #@dfc
    move-result v4

    #@dfd
    add-int/lit8 v75, v4, -0x1

    #@dff
    .local v75, "iwa":I
    :goto_20
    if-ltz v75, :cond_32

    #@e01
    .line 3283
    move-object/from16 v0, v25

    #@e03
    move/from16 v1, v75

    #@e05
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@e08
    move-result-object v4

    #@e09
    check-cast v4, Landroid/os/BatteryStats$Counter;

    #@e0b
    move/from16 v0, p3

    #@e0d
    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    #@e10
    move-result v39

    #@e11
    .line 3284
    .restart local v39    # "count":I
    add-int v159, v159, v39

    #@e13
    .line 3285
    move-object/from16 v0, v25

    #@e15
    move/from16 v1, v75

    #@e17
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@e1a
    move-result-object v4

    #@e1b
    check-cast v4, Ljava/lang/String;

    #@e1d
    const/16 v7, 0x2c

    #@e1f
    const/16 v8, 0x5f

    #@e21
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@e24
    move-result-object v81

    #@e25
    .line 3286
    .restart local v81    # "name":Ljava/lang/String;
    const-string/jumbo v4, "wua"

    #@e28
    const/4 v7, 0x2

    #@e29
    new-array v7, v7, [Ljava/lang/Object;

    #@e2b
    const/4 v8, 0x0

    #@e2c
    aput-object v81, v7, v8

    #@e2e
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e31
    move-result-object v8

    #@e32
    const/4 v9, 0x1

    #@e33
    aput-object v8, v7, v9

    #@e35
    move-object/from16 v0, p2

    #@e37
    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@e3a
    .line 3282
    add-int/lit8 v75, v75, -0x1

    #@e3c
    goto :goto_20

    #@e3d
    .line 3288
    .end local v39    # "count":I
    .end local v81    # "name":Ljava/lang/String;
    :cond_32
    invoke-virtual/range {v113 .. v113}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    #@e40
    move-result-object v123

    #@e41
    .line 3289
    .local v123, "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual/range {v123 .. v123}, Landroid/util/ArrayMap;->size()I

    #@e44
    move-result v4

    #@e45
    add-int/lit8 v71, v4, -0x1

    #@e47
    .local v71, "isvc":I
    :goto_21
    if-ltz v71, :cond_36

    #@e49
    .line 3290
    move-object/from16 v0, v123

    #@e4b
    move/from16 v1, v71

    #@e4d
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@e50
    move-result-object v125

    #@e51
    check-cast v125, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    #@e53
    .line 3291
    .local v125, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move-object/from16 v0, v125

    #@e55
    move-wide/from16 v1, v28

    #@e57
    move/from16 v3, p3

    #@e59
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    #@e5c
    move-result-wide v126

    #@e5d
    .line 3292
    .local v126, "startTime":J
    move-object/from16 v0, v125

    #@e5f
    move/from16 v1, p3

    #@e61
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    #@e64
    move-result v128

    #@e65
    .line 3293
    .restart local v128    # "starts":I
    move-object/from16 v0, v125

    #@e67
    move/from16 v1, p3

    #@e69
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    #@e6c
    move-result v79

    #@e6d
    .line 3294
    .local v79, "launches":I
    const-wide/16 v8, 0x0

    #@e6f
    cmp-long v4, v126, v8

    #@e71
    if-nez v4, :cond_33

    #@e73
    if-eqz v128, :cond_35

    #@e75
    .line 3295
    :cond_33
    :goto_22
    const-string/jumbo v4, "apk"

    #@e78
    const/4 v7, 0x6

    #@e79
    new-array v7, v7, [Ljava/lang/Object;

    #@e7b
    .line 3296
    invoke-static/range {v159 .. v159}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e7e
    move-result-object v8

    #@e7f
    const/4 v9, 0x0

    #@e80
    aput-object v8, v7, v9

    #@e82
    .line 3297
    move-object/from16 v0, v102

    #@e84
    move/from16 v1, v65

    #@e86
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@e89
    move-result-object v8

    #@e8a
    const/4 v9, 0x1

    #@e8b
    aput-object v8, v7, v9

    #@e8d
    .line 3298
    move-object/from16 v0, v123

    #@e8f
    move/from16 v1, v71

    #@e91
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@e94
    move-result-object v8

    #@e95
    const/4 v9, 0x2

    #@e96
    aput-object v8, v7, v9

    #@e98
    .line 3299
    const-wide/16 v8, 0x3e8

    #@e9a
    div-long v8, v126, v8

    #@e9c
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@e9f
    move-result-object v8

    #@ea0
    const/4 v9, 0x3

    #@ea1
    aput-object v8, v7, v9

    #@ea3
    .line 3300
    invoke-static/range {v128 .. v128}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ea6
    move-result-object v8

    #@ea7
    const/4 v9, 0x4

    #@ea8
    aput-object v8, v7, v9

    #@eaa
    .line 3301
    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ead
    move-result-object v8

    #@eae
    const/4 v9, 0x5

    #@eaf
    aput-object v8, v7, v9

    #@eb1
    .line 3295
    move-object/from16 v0, p2

    #@eb3
    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@eb6
    .line 3289
    :cond_34
    add-int/lit8 v71, v71, -0x1

    #@eb8
    goto :goto_21

    #@eb9
    .line 3294
    :cond_35
    if-eqz v79, :cond_34

    #@ebb
    goto :goto_22

    #@ebc
    .line 3278
    .end local v79    # "launches":I
    .end local v125    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v126    # "startTime":J
    .end local v128    # "starts":I
    :cond_36
    add-int/lit8 v65, v65, -0x1

    #@ebe
    goto/16 :goto_1f

    #@ec0
    .line 2805
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
    .end local v102    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v108    # "powerCpuMaUs":J
    .end local v112    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v113    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v122    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v123    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v129    # "stateTimes":[Ljava/lang/Object;
    .end local v130    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v132    # "systemCpuTimeUs":J
    .end local v140    # "totalStateTime":J
    .end local v148    # "u":Landroid/os/BatteryStats$Uid;
    .end local v150    # "uidWifiRunningTime":J
    .end local v152    # "userCpuTimeUs":J
    .end local v157    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v159    # "wakeups":I
    .end local v168    # "wifiBytesRx":J
    .end local v170    # "wifiBytesTx":J
    .end local v174    # "wifiPacketsRx":J
    .end local v176    # "wifiPacketsTx":J
    .end local v184    # "wifiScanCount":I
    .end local v186    # "wifiScanTime":J
    :cond_37
    return-void

    #@ec1
    .line 3045
    nop

    #@ec2
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
    .line 5412
    .local p3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    #@3
    .line 5414
    const-string/jumbo v2, "i"

    #@6
    const-string/jumbo v3, "vers"

    #@9
    const/4 v4, 0x4

    #@a
    new-array v4, v4, [Ljava/lang/Object;

    #@c
    .line 5415
    const-string/jumbo v5, "18"

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
    .line 5416
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    const/4 v6, 0x3

    #@29
    aput-object v5, v4, v6

    #@2b
    .line 5414
    const/4 v5, 0x0

    #@2c
    move-object/from16 v0, p2

    #@2e
    invoke-static {v0, v5, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@31
    .line 5418
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
    .line 5420
    .local v16, "now":J
    and-int/lit8 v2, p4, 0xe

    #@3d
    if-eqz v2, :cond_1

    #@3f
    const/4 v11, 0x1

    #@40
    .line 5423
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
    .line 5424
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    #@4b
    move-result v2

    #@4c
    if-eqz v2, :cond_3

    #@4e
    .line 5426
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
    .line 5427
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
    .line 5428
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
    .line 5429
    move-object/from16 v0, p2

    #@74
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    #@77
    .line 5430
    const-string/jumbo v2, ","

    #@7a
    move-object/from16 v0, p2

    #@7c
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7f
    .line 5431
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
    .line 5432
    const-string/jumbo v2, ",\""

    #@8d
    move-object/from16 v0, p2

    #@8f
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@92
    .line 5433
    move-object/from16 v0, p0

    #@94
    invoke-virtual {v0, v12}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    #@97
    move-result-object v18

    #@98
    .line 5434
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
    .line 5435
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
    .line 5436
    move-object/from16 v0, p2

    #@b2
    move-object/from16 v1, v18

    #@b4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b7
    .line 5437
    const-string/jumbo v2, "\""

    #@ba
    move-object/from16 v0, p2

    #@bc
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bf
    .line 5438
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@c2
    .line 5426
    add-int/lit8 v12, v12, 0x1

    #@c4
    goto :goto_1

    #@c5
    .line 5420
    .end local v11    # "filtering":Z
    .end local v12    # "i":I
    .end local v18    # "str":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    #@c6
    .restart local v11    # "filtering":Z
    goto/16 :goto_0

    #@c8
    .line 5440
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
    .line 5442
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    #@d7
    .line 5447
    .end local v12    # "i":I
    :cond_3
    if-eqz v11, :cond_4

    #@d9
    and-int/lit8 v2, p4, 0x6

    #@db
    if-nez v2, :cond_4

    #@dd
    .line 5448
    return-void

    #@de
    .line 5441
    .restart local v12    # "i":I
    :catchall_0
    move-exception v2

    #@df
    .line 5442
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    #@e2
    .line 5441
    throw v2

    #@e3
    .line 5451
    .end local v12    # "i":I
    :cond_4
    if-eqz p3, :cond_9

    #@e5
    .line 5452
    new-instance v23, Landroid/util/SparseArray;

    #@e7
    invoke-direct/range {v23 .. v23}, Landroid/util/SparseArray;-><init>()V

    #@ea
    .line 5453
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
    .line 5454
    move-object/from16 v0, p3

    #@f3
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f6
    move-result-object v10

    #@f7
    check-cast v10, Landroid/content/pm/ApplicationInfo;

    #@f9
    .line 5456
    .local v10, "ai":Landroid/content/pm/ApplicationInfo;
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    #@fb
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    #@fe
    move-result v2

    #@ff
    .line 5455
    move-object/from16 v0, v23

    #@101
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@104
    move-result-object v15

    #@105
    check-cast v15, Landroid/util/Pair;

    #@107
    .line 5457
    .local v15, "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    if-nez v15, :cond_5

    #@109
    .line 5458
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
    .line 5459
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
    .line 5461
    :cond_5
    iget-object v2, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@126
    check-cast v2, Ljava/util/ArrayList;

    #@128
    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@12a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12d
    .line 5453
    add-int/lit8 v12, v12, 0x1

    #@12f
    goto :goto_2

    #@130
    .line 5463
    .end local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    #@133
    move-result-object v22

    #@134
    .line 5464
    .local v22, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    #@137
    move-result v9

    #@138
    .line 5465
    .local v9, "NU":I
    const/4 v2, 0x2

    #@139
    new-array v14, v2, [Ljava/lang/String;

    #@13b
    .line 5466
    .local v14, "lineArgs":[Ljava/lang/String;
    const/4 v12, 0x0

    #@13c
    :goto_3
    if-ge v12, v9, :cond_9

    #@13e
    .line 5467
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
    .line 5468
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
    .line 5469
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
    .line 5466
    :cond_7
    add-int/lit8 v12, v12, 0x1

    #@15e
    goto :goto_3

    #@15f
    .line 5470
    :cond_8
    iget-object v2, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@161
    check-cast v2, Landroid/util/MutableBoolean;

    #@163
    const/4 v3, 0x1

    #@164
    iput-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z

    #@166
    .line 5471
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
    .line 5472
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@174
    move-result-object v2

    #@175
    const/4 v3, 0x0

    #@176
    aput-object v2, v14, v3

    #@178
    .line 5473
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
    .line 5474
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
    .line 5471
    add-int/lit8 v13, v13, 0x1

    #@193
    goto :goto_4

    #@194
    .line 5480
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
    .line 5481
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
    .line 5482
    const/4 v2, 0x1

    #@1ab
    new-array v14, v2, [Ljava/lang/String;

    #@1ad
    .line 5483
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
    .line 5484
    .local v20, "timeRemaining":J
    const-wide/16 v2, 0x0

    #@1b9
    cmp-long v2, v20, v2

    #@1bb
    if-ltz v2, :cond_b

    #@1bd
    .line 5485
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@1c0
    move-result-object v2

    #@1c1
    const/4 v3, 0x0

    #@1c2
    aput-object v2, v14, v3

    #@1c4
    .line 5486
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
    .line 5489
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
    .line 5490
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
    .line 5491
    const-wide/16 v2, 0x0

    #@1ec
    cmp-long v2, v20, v2

    #@1ee
    if-ltz v2, :cond_c

    #@1f0
    .line 5492
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@1f3
    move-result-object v2

    #@1f4
    const/4 v3, 0x0

    #@1f5
    aput-object v2, v14, v3

    #@1f7
    .line 5493
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
    .line 5497
    :cond_c
    and-int/lit8 v2, p4, 0x40

    #@205
    if-eqz v2, :cond_e

    #@207
    const/4 v7, 0x1

    #@208
    .line 5496
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
    .line 5411
    .end local v14    # "lineArgs":[Ljava/lang/String;
    .end local v20    # "timeRemaining":J
    :cond_d
    return-void

    #@214
    .line 5497
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
    .line 5221
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    #@3
    .line 5223
    and-int/lit8 v6, p3, 0xe

    #@5
    if-eqz v6, :cond_1

    #@7
    const/16 v34, 0x1

    #@9
    .line 5226
    .local v34, "filtering":Z
    :goto_0
    and-int/lit8 v6, p3, 0x8

    #@b
    if-nez v6, :cond_2

    #@d
    if-eqz v34, :cond_2

    #@f
    .line 5268
    :cond_0
    :goto_1
    if-eqz v34, :cond_7

    #@11
    and-int/lit8 v6, p3, 0x6

    #@13
    if-nez v6, :cond_7

    #@15
    .line 5269
    return-void

    #@16
    .line 5223
    .end local v34    # "filtering":Z
    :cond_1
    const/16 v34, 0x0

    #@18
    .restart local v34    # "filtering":Z
    goto :goto_0

    #@19
    .line 5227
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryTotalSize()I

    #@1c
    move-result v6

    #@1d
    int-to-long v0, v6

    #@1e
    move-wide/from16 v36, v0

    #@20
    .line 5228
    .local v36, "historyTotalSize":J
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryUsedSize()I

    #@23
    move-result v6

    #@24
    int-to-long v0, v6

    #@25
    move-wide/from16 v38, v0

    #@27
    .line 5229
    .local v38, "historyUsedSize":J
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    #@2a
    move-result v6

    #@2b
    if-eqz v6, :cond_3

    #@2d
    .line 5231
    :try_start_0
    const-string/jumbo v6, "Battery History ("

    #@30
    move-object/from16 v0, p2

    #@32
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@35
    .line 5232
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
    .line 5233
    const-string/jumbo v6, "% used, "

    #@43
    move-object/from16 v0, p2

    #@45
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    .line 5234
    move-object/from16 v0, p0

    #@4a
    move-object/from16 v1, p2

    #@4c
    move-wide/from16 v2, v38

    #@4e
    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@51
    .line 5235
    const-string/jumbo v6, " used of "

    #@54
    move-object/from16 v0, p2

    #@56
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@59
    .line 5236
    move-object/from16 v0, p0

    #@5b
    move-object/from16 v1, p2

    #@5d
    move-wide/from16 v2, v36

    #@5f
    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@62
    .line 5237
    const-string/jumbo v6, ", "

    #@65
    move-object/from16 v0, p2

    #@67
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6a
    .line 5238
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    #@6d
    move-result v6

    #@6e
    move-object/from16 v0, p2

    #@70
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    #@73
    .line 5239
    const-string/jumbo v6, " strings using "

    #@76
    move-object/from16 v0, p2

    #@78
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7b
    .line 5240
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
    .line 5241
    const-string/jumbo v6, "):"

    #@8a
    move-object/from16 v0, p2

    #@8c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8f
    .line 5242
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
    .line 5243
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9e
    .line 5245
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    #@a1
    .line 5249
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingOldHistoryLocked()Z

    #@a4
    move-result v6

    #@a5
    if-eqz v6, :cond_0

    #@a7
    .line 5251
    :try_start_1
    new-instance v7, Landroid/os/BatteryStats$HistoryItem;

    #@a9
    invoke-direct {v7}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    #@ac
    .line 5252
    .local v7, "rec":Landroid/os/BatteryStats$HistoryItem;
    const-string/jumbo v6, "Old battery History:"

    #@af
    move-object/from16 v0, p2

    #@b1
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b4
    .line 5253
    new-instance v5, Landroid/os/BatteryStats$HistoryPrinter;

    #@b6
    invoke-direct {v5}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    #@b9
    .line 5254
    .local v5, "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    const-wide/16 v8, -0x1

    #@bb
    .line 5255
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
    .line 5256
    const-wide/16 v12, 0x0

    #@c5
    cmp-long v6, v8, v12

    #@c7
    if-gez v6, :cond_4

    #@c9
    .line 5257
    iget-wide v8, v7, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@cb
    .line 5259
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
    .line 5262
    .end local v5    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .end local v7    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v8    # "baseTime":J
    :catchall_0
    move-exception v6

    #@d8
    .line 5263
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    #@db
    .line 5262
    throw v6

    #@dc
    .line 5244
    :catchall_1
    move-exception v6

    #@dd
    .line 5245
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    #@e0
    .line 5244
    throw v6

    #@e1
    .line 5259
    .restart local v5    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .restart local v7    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v8    # "baseTime":J
    :cond_5
    const/4 v11, 0x0

    #@e2
    goto :goto_3

    #@e3
    .line 5261
    :cond_6
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@e6
    .line 5263
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    #@e9
    goto/16 :goto_1

    #@eb
    .line 5272
    .end local v5    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .end local v7    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v8    # "baseTime":J
    .end local v36    # "historyTotalSize":J
    .end local v38    # "historyUsedSize":J
    :cond_7
    if-nez v34, :cond_c

    #@ed
    .line 5273
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    #@f0
    move-result-object v51

    #@f1
    .line 5274
    .local v51, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v51 .. v51}, Landroid/util/SparseArray;->size()I

    #@f4
    move-result v4

    #@f5
    .line 5275
    .local v4, "NU":I
    const/16 v32, 0x0

    #@f7
    .line 5276
    .local v32, "didPid":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@fa
    move-result-wide v42

    #@fb
    .line 5277
    .local v42, "nowRealtime":J
    const/16 v35, 0x0

    #@fd
    .local v35, "i":I
    :goto_4
    move/from16 v0, v35

    #@ff
    if-ge v0, v4, :cond_b

    #@101
    .line 5278
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
    .line 5279
    .local v50, "uid":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v50 .. v50}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    #@10e
    move-result-object v44

    #@10f
    .line 5280
    .local v44, "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    if-eqz v44, :cond_a

    #@111
    .line 5281
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
    .line 5282
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
    .line 5283
    .local v41, "pid":Landroid/os/BatteryStats$Uid$Pid;
    if-nez v32, :cond_8

    #@127
    .line 5284
    const-string/jumbo v6, "Per-PID Stats:"

    #@12a
    move-object/from16 v0, p2

    #@12c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12f
    .line 5285
    const/16 v32, 0x1

    #@131
    .line 5287
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
    .line 5288
    move-object/from16 v0, v41

    #@13d
    iget-wide v12, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    #@13f
    sub-long v12, v42, v12

    #@141
    .line 5287
    :goto_6
    add-long v46, v14, v12

    #@143
    .line 5289
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
    .line 5290
    const-string/jumbo v6, " wake time: "

    #@15b
    move-object/from16 v0, p2

    #@15d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@160
    .line 5291
    move-wide/from16 v0, v46

    #@162
    move-object/from16 v2, p2

    #@164
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@167
    .line 5292
    const-string/jumbo v6, ""

    #@16a
    move-object/from16 v0, p2

    #@16c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16f
    .line 5281
    add-int/lit8 v40, v40, 0x1

    #@171
    goto :goto_5

    #@172
    .line 5288
    .end local v46    # "time":J
    :cond_9
    const-wide/16 v12, 0x0

    #@174
    goto :goto_6

    #@175
    .line 5277
    .end local v40    # "j":I
    .end local v41    # "pid":Landroid/os/BatteryStats$Uid$Pid;
    :cond_a
    add-int/lit8 v35, v35, 0x1

    #@177
    goto :goto_4

    #@178
    .line 5296
    .end local v44    # "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    .end local v50    # "uid":Landroid/os/BatteryStats$Uid;
    :cond_b
    if-eqz v32, :cond_c

    #@17a
    .line 5297
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@17d
    .line 5301
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
    .line 5302
    :cond_d
    const-string/jumbo v6, "  "

    #@186
    const-string/jumbo v10, "Discharge step durations:"

    #@189
    .line 5303
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    #@18c
    move-result-object v12

    #@18d
    const/4 v13, 0x0

    #@18e
    .line 5302
    move-object/from16 v0, p2

    #@190
    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    #@193
    move-result v6

    #@194
    if-eqz v6, :cond_10

    #@196
    .line 5304
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
    .line 5305
    .local v48, "timeRemaining":J
    const-wide/16 v12, 0x0

    #@1a2
    cmp-long v6, v48, v12

    #@1a4
    if-ltz v6, :cond_e

    #@1a6
    .line 5306
    const-string/jumbo v6, "  Estimated discharge time remaining: "

    #@1a9
    move-object/from16 v0, p2

    #@1ab
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ae
    .line 5307
    const-wide/16 v12, 0x3e8

    #@1b0
    div-long v12, v48, v12

    #@1b2
    move-object/from16 v0, p2

    #@1b4
    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@1b7
    .line 5308
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@1ba
    .line 5310
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    #@1bd
    move-result-object v11

    #@1be
    .line 5311
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
    .line 5312
    const-string/jumbo v6, "  Estimated "

    #@1ca
    sget-object v10, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    #@1cc
    aget-object v10, v10, v35

    #@1ce
    const-string/jumbo v19, " time: "

    #@1d1
    .line 5313
    sget-object v12, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    #@1d3
    aget v12, v12, v35

    #@1d5
    int-to-long v12, v12

    #@1d6
    .line 5314
    sget-object v14, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    #@1d8
    aget v14, v14, v35

    #@1da
    int-to-long v14, v14

    #@1db
    const/16 v16, 0x0

    #@1dd
    .line 5313
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
    .line 5312
    invoke-static/range {v12 .. v17}, Landroid/os/BatteryStats;->dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    #@1ea
    .line 5311
    add-int/lit8 v35, v35, 0x1

    #@1ec
    goto :goto_7

    #@1ed
    .line 5316
    :cond_f
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@1f0
    .line 5318
    .end local v11    # "steps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v35    # "i":I
    .end local v48    # "timeRemaining":J
    :cond_10
    const-string/jumbo v6, "  "

    #@1f3
    const-string/jumbo v10, "Charge step durations:"

    #@1f6
    .line 5319
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    #@1f9
    move-result-object v12

    #@1fa
    const/4 v13, 0x0

    #@1fb
    .line 5318
    move-object/from16 v0, p2

    #@1fd
    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    #@200
    move-result v6

    #@201
    if-eqz v6, :cond_12

    #@203
    .line 5320
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
    .line 5321
    .restart local v48    # "timeRemaining":J
    const-wide/16 v12, 0x0

    #@20f
    cmp-long v6, v48, v12

    #@211
    if-ltz v6, :cond_11

    #@213
    .line 5322
    const-string/jumbo v6, "  Estimated charge time remaining: "

    #@216
    move-object/from16 v0, p2

    #@218
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21b
    .line 5323
    const-wide/16 v12, 0x3e8

    #@21d
    div-long v12, v48, v12

    #@21f
    move-object/from16 v0, p2

    #@221
    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@224
    .line 5324
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@227
    .line 5326
    :cond_11
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@22a
    .line 5329
    .end local v48    # "timeRemaining":J
    :cond_12
    if-eqz v34, :cond_13

    #@22c
    and-int/lit8 v6, p3, 0x6

    #@22e
    if-eqz v6, :cond_1f

    #@230
    .line 5330
    :cond_13
    const-string/jumbo v6, "Daily stats:"

    #@233
    move-object/from16 v0, p2

    #@235
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@238
    .line 5331
    const-string/jumbo v6, "  Current start time: "

    #@23b
    move-object/from16 v0, p2

    #@23d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@240
    .line 5332
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    #@243
    .line 5333
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCurrentDailyStartTime()J

    #@246
    move-result-wide v12

    #@247
    .line 5332
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
    .line 5334
    const-string/jumbo v6, "  Next min deadline: "

    #@257
    move-object/from16 v0, p2

    #@259
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25c
    .line 5335
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    #@25f
    .line 5336
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMinDailyDeadline()J

    #@262
    move-result-wide v12

    #@263
    .line 5335
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
    .line 5337
    const-string/jumbo v6, "  Next max deadline: "

    #@273
    move-object/from16 v0, p2

    #@275
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@278
    .line 5338
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    #@27b
    .line 5339
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMaxDailyDeadline()J

    #@27e
    move-result-wide v12

    #@27f
    .line 5338
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
    .line 5340
    new-instance v17, Ljava/lang/StringBuilder;

    #@28e
    const/16 v6, 0x40

    #@290
    move-object/from16 v0, v17

    #@292
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@295
    .line 5341
    .local v17, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x1

    #@296
    new-array v0, v6, [I

    #@298
    move-object/from16 v18, v0

    #@29a
    .line 5342
    .local v18, "outInt":[I
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    #@29d
    move-result-object v16

    #@29e
    .line 5343
    .local v16, "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    #@2a1
    move-result-object v23

    #@2a2
    .line 5344
    .local v23, "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyPackageChanges()Ljava/util/ArrayList;

    #@2a5
    move-result-object v45

    #@2a6
    .line 5345
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
    .line 5346
    :cond_14
    :goto_8
    and-int/lit8 v6, p3, 0x4

    #@2b4
    if-nez v6, :cond_18

    #@2b6
    if-eqz v34, :cond_18

    #@2b8
    .line 5359
    const-string/jumbo v6, "  Current daily steps:"

    #@2bb
    move-object/from16 v0, p2

    #@2bd
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c0
    .line 5360
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
    .line 5362
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
    .line 5367
    :cond_15
    :goto_9
    const/16 v31, 0x0

    #@2e0
    .line 5368
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
    .line 5369
    add-int/lit8 v31, v31, 0x1

    #@2ec
    .line 5370
    and-int/lit8 v6, p3, 0x4

    #@2ee
    if-eqz v6, :cond_16

    #@2f0
    .line 5371
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@2f3
    .line 5373
    :cond_16
    const-string/jumbo v6, "  Daily from "

    #@2f6
    move-object/from16 v0, p2

    #@2f8
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2fb
    .line 5374
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
    .line 5375
    const-string/jumbo v6, " to "

    #@312
    move-object/from16 v0, p2

    #@314
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@317
    .line 5376
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
    .line 5377
    const-string/jumbo v6, ":"

    #@32e
    move-object/from16 v0, p2

    #@330
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@333
    .line 5378
    and-int/lit8 v6, p3, 0x4

    #@335
    if-nez v6, :cond_1b

    #@337
    if-eqz v34, :cond_1b

    #@339
    .line 5391
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
    .line 5393
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
    .line 5345
    .end local v31    # "curIndex":I
    .end local v33    # "dit":Landroid/os/BatteryStats$DailyItem;
    :cond_17
    if-eqz v45, :cond_15

    #@36b
    goto/16 :goto_8

    #@36d
    .line 5347
    :cond_18
    const-string/jumbo v6, "    "

    #@370
    const-string/jumbo v10, "  Current daily discharge step durations:"

    #@373
    .line 5348
    const/4 v12, 0x0

    #@374
    .line 5347
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
    .line 5349
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
    .line 5352
    :cond_19
    const-string/jumbo v6, "    "

    #@38e
    const-string/jumbo v10, "  Current daily charge step durations:"

    #@391
    .line 5353
    const/4 v12, 0x0

    #@392
    .line 5352
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
    .line 5354
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
    .line 5357
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
    .line 5379
    .restart local v31    # "curIndex":I
    .restart local v33    # "dit":Landroid/os/BatteryStats$DailyItem;
    :cond_1b
    const-string/jumbo v6, "      "

    #@3be
    .line 5380
    const-string/jumbo v10, "    Discharge step durations:"

    #@3c1
    move-object/from16 v0, v33

    #@3c3
    iget-object v12, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    #@3c5
    const/4 v13, 0x0

    #@3c6
    .line 5379
    move-object/from16 v0, p2

    #@3c8
    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    #@3cb
    move-result v6

    #@3cc
    if-eqz v6, :cond_1c

    #@3ce
    .line 5381
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
    .line 5384
    :cond_1c
    const-string/jumbo v6, "      "

    #@3e8
    .line 5385
    const-string/jumbo v10, "    Charge step durations:"

    #@3eb
    move-object/from16 v0, v33

    #@3ed
    iget-object v12, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    #@3ef
    const/4 v13, 0x0

    #@3f0
    .line 5384
    move-object/from16 v0, p2

    #@3f2
    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    #@3f5
    move-result v6

    #@3f6
    if-eqz v6, :cond_1d

    #@3f8
    .line 5386
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
    .line 5389
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
    .line 5397
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@422
    .line 5399
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
    .line 5400
    :cond_20
    const-string/jumbo v6, "Statistics since last charge:"

    #@42b
    move-object/from16 v0, p2

    #@42d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@430
    .line 5401
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
    .line 5402
    const-string/jumbo v10, ", currently on battery: "

    #@447
    .line 5401
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44a
    move-result-object v6

    #@44b
    .line 5402
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    #@44e
    move-result v10

    #@44f
    .line 5401
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
    .line 5403
    const-string/jumbo v27, ""

    #@45f
    .line 5404
    and-int/lit8 v6, p3, 0x40

    #@461
    if-eqz v6, :cond_22

    #@463
    const/16 v30, 0x1

    #@465
    .line 5403
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
    .line 5405
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@475
    .line 5220
    :cond_21
    return-void

    #@476
    .line 5404
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
    .line 3334
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
    .line 3333
    return-void
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V
    .locals 239
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "which"    # I
    .param p5, "reqUid"    # I
    .param p6, "wifiOnly"    # Z

    #@0
    .prologue
    .line 3340
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v6

    #@4
    const-wide/16 v12, 0x3e8

    #@6
    mul-long v152, v6, v12

    #@8
    .line 3341
    .local v152, "rawUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b
    move-result-wide v6

    #@c
    const-wide/16 v12, 0x3e8

    #@e
    mul-long v24, v6, v12

    #@10
    .line 3342
    .local v24, "rawRealtime":J
    move-object/from16 v0, p0

    #@12
    move-wide/from16 v1, v152

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    #@17
    move-result-wide v44

    #@18
    .line 3344
    .local v44, "batteryUptime":J
    move-object/from16 v0, p0

    #@1a
    move-wide/from16 v1, v152

    #@1c
    move/from16 v3, p4

    #@1e
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    #@21
    move-result-wide v214

    #@22
    .line 3345
    .local v214, "whichBatteryUptime":J
    move-object/from16 v0, p0

    #@24
    move-wide/from16 v1, v24

    #@26
    move/from16 v3, p4

    #@28
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    #@2b
    move-result-wide v208

    #@2c
    .line 3346
    .local v208, "whichBatteryRealtime":J
    move-object/from16 v0, p0

    #@2e
    move-wide/from16 v1, v24

    #@30
    move/from16 v3, p4

    #@32
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    #@35
    move-result-wide v182

    #@36
    .line 3347
    .local v182, "totalRealtime":J
    move-object/from16 v0, p0

    #@38
    move-wide/from16 v1, v152

    #@3a
    move/from16 v3, p4

    #@3c
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeUptime(JI)J

    #@3f
    move-result-wide v188

    #@40
    .line 3348
    .local v188, "totalUptime":J
    move-object/from16 v0, p0

    #@42
    move-wide/from16 v1, v152

    #@44
    move/from16 v3, p4

    #@46
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    #@49
    move-result-wide v212

    #@4a
    .line 3349
    .local v212, "whichBatteryScreenOffUptime":J
    move-object/from16 v0, p0

    #@4c
    move-wide/from16 v1, v24

    #@4e
    move/from16 v3, p4

    #@50
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    #@53
    move-result-wide v210

    #@54
    .line 3351
    .local v210, "whichBatteryScreenOffRealtime":J
    move-object/from16 v0, p0

    #@56
    move-wide/from16 v1, v24

    #@58
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    #@5b
    move-result-wide v42

    #@5c
    .line 3352
    .local v42, "batteryTimeRemaining":J
    move-object/from16 v0, p0

    #@5e
    move-wide/from16 v1, v24

    #@60
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    #@63
    move-result-wide v56

    #@64
    .line 3354
    .local v56, "chargeTimeRemaining":J
    new-instance v14, Ljava/lang/StringBuilder;

    #@66
    const/16 v6, 0x80

    #@68
    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@6b
    .line 3356
    .local v14, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    #@6e
    move-result-object v195

    #@6f
    .line 3357
    .local v195, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v195 .. v195}, Landroid/util/SparseArray;->size()I

    #@72
    move-result v38

    #@73
    .line 3359
    .local v38, "NU":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    #@76
    move-result v81

    #@77
    .line 3360
    .local v81, "estimatedBatteryCapacity":I
    if-lez v81, :cond_0

    #@79
    .line 3361
    const/4 v6, 0x0

    #@7a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@7d
    .line 3362
    move-object/from16 v0, p3

    #@7f
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    .line 3363
    const-string/jumbo v6, "  Estimated battery capacity: "

    #@85
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    .line 3364
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
    .line 3365
    const-string/jumbo v6, " mAh"

    #@95
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    .line 3366
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v6

    #@9c
    move-object/from16 v0, p2

    #@9e
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a1
    .line 3369
    :cond_0
    const/4 v6, 0x0

    #@a2
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@a5
    .line 3370
    move-object/from16 v0, p3

    #@a7
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    .line 3371
    const-string/jumbo v6, "  Time on battery: "

    #@ad
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    .line 3372
    const-wide/16 v6, 0x3e8

    #@b2
    div-long v6, v208, v6

    #@b4
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@b7
    const-string/jumbo v6, "("

    #@ba
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    .line 3373
    move-object/from16 v0, p0

    #@bf
    move-wide/from16 v1, v208

    #@c1
    move-wide/from16 v3, v182

    #@c3
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@c6
    move-result-object v6

    #@c7
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    .line 3374
    const-string/jumbo v6, ") realtime, "

    #@cd
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    .line 3375
    const-wide/16 v6, 0x3e8

    #@d2
    div-long v6, v214, v6

    #@d4
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@d7
    .line 3376
    const-string/jumbo v6, "("

    #@da
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-object/from16 v0, p0

    #@df
    move-wide/from16 v1, v214

    #@e1
    move-wide/from16 v3, v182

    #@e3
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@e6
    move-result-object v6

    #@e7
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    .line 3377
    const-string/jumbo v6, ") uptime"

    #@ed
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    .line 3378
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v6

    #@f4
    move-object/from16 v0, p2

    #@f6
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f9
    .line 3379
    const/4 v6, 0x0

    #@fa
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@fd
    .line 3380
    move-object/from16 v0, p3

    #@ff
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    .line 3381
    const-string/jumbo v6, "  Time on battery screen off: "

    #@105
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    .line 3382
    const-wide/16 v6, 0x3e8

    #@10a
    div-long v6, v210, v6

    #@10c
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@10f
    const-string/jumbo v6, "("

    #@112
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    .line 3383
    move-object/from16 v0, p0

    #@117
    move-wide/from16 v1, v210

    #@119
    move-wide/from16 v3, v182

    #@11b
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@11e
    move-result-object v6

    #@11f
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    .line 3384
    const-string/jumbo v6, ") realtime, "

    #@125
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    .line 3385
    const-wide/16 v6, 0x3e8

    #@12a
    div-long v6, v212, v6

    #@12c
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@12f
    .line 3386
    const-string/jumbo v6, "("

    #@132
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    .line 3387
    move-object/from16 v0, p0

    #@137
    move-wide/from16 v1, v212

    #@139
    move-wide/from16 v3, v182

    #@13b
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@13e
    move-result-object v6

    #@13f
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    .line 3388
    const-string/jumbo v6, ") uptime"

    #@145
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    .line 3389
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14b
    move-result-object v6

    #@14c
    move-object/from16 v0, p2

    #@14e
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@151
    .line 3390
    const/4 v6, 0x0

    #@152
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@155
    .line 3391
    move-object/from16 v0, p3

    #@157
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    .line 3392
    const-string/jumbo v6, "  Total run time: "

    #@15d
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    .line 3393
    const-wide/16 v6, 0x3e8

    #@162
    div-long v6, v182, v6

    #@164
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@167
    .line 3394
    const-string/jumbo v6, "realtime, "

    #@16a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    .line 3395
    const-wide/16 v6, 0x3e8

    #@16f
    div-long v6, v188, v6

    #@171
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@174
    .line 3396
    const-string/jumbo v6, "uptime"

    #@177
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    .line 3397
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17d
    move-result-object v6

    #@17e
    move-object/from16 v0, p2

    #@180
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@183
    .line 3398
    const-wide/16 v6, 0x0

    #@185
    cmp-long v6, v42, v6

    #@187
    if-ltz v6, :cond_1

    #@189
    .line 3399
    const/4 v6, 0x0

    #@18a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@18d
    .line 3400
    move-object/from16 v0, p3

    #@18f
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@192
    .line 3401
    const-string/jumbo v6, "  Battery time remaining: "

    #@195
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@198
    .line 3402
    const-wide/16 v6, 0x3e8

    #@19a
    div-long v6, v42, v6

    #@19c
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@19f
    .line 3403
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a2
    move-result-object v6

    #@1a3
    move-object/from16 v0, p2

    #@1a5
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a8
    .line 3405
    :cond_1
    const-wide/16 v6, 0x0

    #@1aa
    cmp-long v6, v56, v6

    #@1ac
    if-ltz v6, :cond_2

    #@1ae
    .line 3406
    const/4 v6, 0x0

    #@1af
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1b2
    .line 3407
    move-object/from16 v0, p3

    #@1b4
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b7
    .line 3408
    const-string/jumbo v6, "  Charge time remaining: "

    #@1ba
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    .line 3409
    const-wide/16 v6, 0x3e8

    #@1bf
    div-long v6, v56, v6

    #@1c1
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1c4
    .line 3410
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c7
    move-result-object v6

    #@1c8
    move-object/from16 v0, p2

    #@1ca
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1cd
    .line 3413
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCoulombCounter()Landroid/os/BatteryStats$LongCounter;

    #@1d0
    move-result-object v72

    #@1d1
    .line 3414
    .local v72, "dischargeCounter":Landroid/os/BatteryStats$LongCounter;
    move-object/from16 v0, v72

    #@1d3
    move/from16 v1, p4

    #@1d5
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@1d8
    move-result-wide v70

    #@1d9
    .line 3415
    .local v70, "dischargeCount":J
    const-wide/16 v6, 0x0

    #@1db
    cmp-long v6, v70, v6

    #@1dd
    if-ltz v6, :cond_3

    #@1df
    .line 3416
    const/4 v6, 0x0

    #@1e0
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1e3
    .line 3417
    move-object/from16 v0, p3

    #@1e5
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e8
    .line 3418
    const-string/jumbo v6, "  Discharge: "

    #@1eb
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ee
    .line 3419
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
    .line 3420
    const-string/jumbo v6, " mAh"

    #@201
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    .line 3421
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@207
    move-result-object v6

    #@208
    move-object/from16 v0, p2

    #@20a
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@20d
    .line 3424
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeScreenOffCoulombCounter()Landroid/os/BatteryStats$LongCounter;

    #@210
    move-result-object v73

    #@211
    .line 3425
    .local v73, "dischargeScreenOffCounter":Landroid/os/BatteryStats$LongCounter;
    move-object/from16 v0, v73

    #@213
    move/from16 v1, p4

    #@215
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@218
    move-result-wide v74

    #@219
    .line 3426
    .local v74, "dischargeScreenOffCount":J
    const-wide/16 v6, 0x0

    #@21b
    cmp-long v6, v74, v6

    #@21d
    if-ltz v6, :cond_4

    #@21f
    .line 3427
    const/4 v6, 0x0

    #@220
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@223
    .line 3428
    move-object/from16 v0, p3

    #@225
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@228
    .line 3429
    const-string/jumbo v6, "  Screen off discharge: "

    #@22b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22e
    .line 3430
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
    .line 3431
    const-string/jumbo v6, " mAh"

    #@241
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@244
    .line 3432
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@247
    move-result-object v6

    #@248
    move-object/from16 v0, p2

    #@24a
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24d
    .line 3435
    :cond_4
    sub-long v76, v70, v74

    #@24f
    .line 3436
    .local v76, "dischargeScreenOnCount":J
    const-wide/16 v6, 0x0

    #@251
    cmp-long v6, v76, v6

    #@253
    if-ltz v6, :cond_5

    #@255
    .line 3437
    const/4 v6, 0x0

    #@256
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@259
    .line 3438
    move-object/from16 v0, p3

    #@25b
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25e
    .line 3439
    const-string/jumbo v6, "  Screen on discharge: "

    #@261
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@264
    .line 3440
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
    .line 3441
    const-string/jumbo v6, " mAh"

    #@277
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27a
    .line 3442
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27d
    move-result-object v6

    #@27e
    move-object/from16 v0, p2

    #@280
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@283
    .line 3445
    :cond_5
    const-string/jumbo v6, "  Start clock time: "

    #@286
    move-object/from16 v0, p2

    #@288
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28b
    .line 3446
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
    .line 3448
    move-object/from16 v0, p0

    #@2a1
    move-wide/from16 v1, v24

    #@2a3
    move/from16 v3, p4

    #@2a5
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    #@2a8
    move-result-wide v154

    #@2a9
    .line 3449
    .local v154, "screenOnTime":J
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
    .line 3450
    .local v96, "interactiveTime":J
    move-object/from16 v0, p0

    #@2b5
    move-wide/from16 v1, v24

    #@2b7
    move/from16 v3, p4

    #@2b9
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    #@2bc
    move-result-wide v146

    #@2bd
    .line 3451
    .local v146, "powerSaveModeEnabledTime":J
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
    .line 3453
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
    .line 3455
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
    .line 3457
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
    .line 3459
    .local v66, "deviceIdlingTime":J
    move-object/from16 v0, p0

    #@2eb
    move-wide/from16 v1, v24

    #@2ed
    move/from16 v3, p4

    #@2ef
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    #@2f2
    move-result-wide v142

    #@2f3
    .line 3460
    .local v142, "phoneOnTime":J
    move-object/from16 v0, p0

    #@2f5
    move-wide/from16 v1, v24

    #@2f7
    move/from16 v3, p4

    #@2f9
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    #@2fc
    move-result-wide v218

    #@2fd
    .line 3461
    .local v218, "wifiRunningTime":J
    move-object/from16 v0, p0

    #@2ff
    move-wide/from16 v1, v24

    #@301
    move/from16 v3, p4

    #@303
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    #@306
    move-result-wide v216

    #@307
    .line 3462
    .local v216, "wifiOnTime":J
    const/4 v6, 0x0

    #@308
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@30b
    .line 3463
    move-object/from16 v0, p3

    #@30d
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@310
    .line 3464
    const-string/jumbo v6, "  Screen on: "

    #@313
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@316
    const-wide/16 v6, 0x3e8

    #@318
    div-long v6, v154, v6

    #@31a
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@31d
    .line 3465
    const-string/jumbo v6, "("

    #@320
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@323
    move-object/from16 v0, p0

    #@325
    move-wide/from16 v1, v154

    #@327
    move-wide/from16 v3, v208

    #@329
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@32c
    move-result-object v6

    #@32d
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@330
    .line 3466
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
    .line 3467
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
    .line 3468
    const-string/jumbo v6, "("

    #@351
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@354
    move-object/from16 v0, p0

    #@356
    move-wide/from16 v1, v96

    #@358
    move-wide/from16 v3, v208

    #@35a
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@35d
    move-result-object v6

    #@35e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@361
    .line 3469
    const-string/jumbo v6, ")"

    #@364
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@367
    .line 3470
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36a
    move-result-object v6

    #@36b
    move-object/from16 v0, p2

    #@36d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@370
    .line 3471
    const/4 v6, 0x0

    #@371
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@374
    .line 3472
    move-object/from16 v0, p3

    #@376
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@379
    .line 3473
    const-string/jumbo v6, "  Screen brightnesses:"

    #@37c
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37f
    .line 3474
    const/16 v61, 0x0

    #@381
    .line 3475
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
    .line 3476
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
    move-result-wide v170

    #@394
    .line 3477
    .local v170, "time":J
    const-wide/16 v6, 0x0

    #@396
    cmp-long v6, v170, v6

    #@398
    if-nez v6, :cond_6

    #@39a
    .line 3475
    :goto_1
    add-int/lit8 v94, v94, 0x1

    #@39c
    goto :goto_0

    #@39d
    .line 3480
    :cond_6
    const-string/jumbo v6, "\n    "

    #@3a0
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a3
    .line 3481
    move-object/from16 v0, p3

    #@3a5
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a8
    .line 3482
    const/16 v61, 0x1

    #@3aa
    .line 3483
    sget-object v6, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    #@3ac
    aget-object v6, v6, v94

    #@3ae
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b1
    .line 3484
    const-string/jumbo v6, " "

    #@3b4
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b7
    .line 3485
    const-wide/16 v6, 0x3e8

    #@3b9
    div-long v6, v170, v6

    #@3bb
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@3be
    .line 3486
    const-string/jumbo v6, "("

    #@3c1
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c4
    .line 3487
    move-object/from16 v0, p0

    #@3c6
    move-wide/from16 v1, v170

    #@3c8
    move-wide/from16 v3, v154

    #@3ca
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@3cd
    move-result-object v6

    #@3ce
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d1
    .line 3488
    const-string/jumbo v6, ")"

    #@3d4
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d7
    goto :goto_1

    #@3d8
    .line 3490
    .end local v170    # "time":J
    :cond_7
    if-nez v61, :cond_8

    #@3da
    const-string/jumbo v6, " (no activity)"

    #@3dd
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e0
    .line 3491
    :cond_8
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e3
    move-result-object v6

    #@3e4
    move-object/from16 v0, p2

    #@3e6
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3e9
    .line 3492
    const-wide/16 v6, 0x0

    #@3eb
    cmp-long v6, v146, v6

    #@3ed
    if-eqz v6, :cond_9

    #@3ef
    .line 3493
    const/4 v6, 0x0

    #@3f0
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@3f3
    .line 3494
    move-object/from16 v0, p3

    #@3f5
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f8
    .line 3495
    const-string/jumbo v6, "  Power save mode enabled: "

    #@3fb
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fe
    .line 3496
    const-wide/16 v6, 0x3e8

    #@400
    div-long v6, v146, v6

    #@402
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@405
    .line 3497
    const-string/jumbo v6, "("

    #@408
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40b
    .line 3498
    move-object/from16 v0, p0

    #@40d
    move-wide/from16 v1, v146

    #@40f
    move-wide/from16 v3, v208

    #@411
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@414
    move-result-object v6

    #@415
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@418
    .line 3499
    const-string/jumbo v6, ")"

    #@41b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41e
    .line 3500
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@421
    move-result-object v6

    #@422
    move-object/from16 v0, p2

    #@424
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@427
    .line 3502
    :cond_9
    const-wide/16 v6, 0x0

    #@429
    cmp-long v6, v68, v6

    #@42b
    if-eqz v6, :cond_a

    #@42d
    .line 3503
    const/4 v6, 0x0

    #@42e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@431
    .line 3504
    move-object/from16 v0, p3

    #@433
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@436
    .line 3505
    const-string/jumbo v6, "  Device light idling: "

    #@439
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43c
    .line 3506
    const-wide/16 v6, 0x3e8

    #@43e
    div-long v6, v68, v6

    #@440
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@443
    .line 3507
    const-string/jumbo v6, "("

    #@446
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@449
    .line 3508
    move-object/from16 v0, p0

    #@44b
    move-wide/from16 v1, v68

    #@44d
    move-wide/from16 v3, v208

    #@44f
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@452
    move-result-object v6

    #@453
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@456
    .line 3509
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
    .line 3510
    const-string/jumbo v6, "x"

    #@46b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46e
    .line 3511
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@471
    move-result-object v6

    #@472
    move-object/from16 v0, p2

    #@474
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@477
    .line 3513
    :cond_a
    const-wide/16 v6, 0x0

    #@479
    cmp-long v6, v64, v6

    #@47b
    if-eqz v6, :cond_b

    #@47d
    .line 3514
    const/4 v6, 0x0

    #@47e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@481
    .line 3515
    move-object/from16 v0, p3

    #@483
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@486
    .line 3516
    const-string/jumbo v6, "  Idle mode light time: "

    #@489
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48c
    .line 3517
    const-wide/16 v6, 0x3e8

    #@48e
    div-long v6, v64, v6

    #@490
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@493
    .line 3518
    const-string/jumbo v6, "("

    #@496
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@499
    .line 3519
    move-object/from16 v0, p0

    #@49b
    move-wide/from16 v1, v64

    #@49d
    move-wide/from16 v3, v208

    #@49f
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@4a2
    move-result-object v6

    #@4a3
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a6
    .line 3520
    const-string/jumbo v6, ") "

    #@4a9
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ac
    .line 3521
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
    .line 3522
    const-string/jumbo v6, "x"

    #@4bb
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4be
    .line 3523
    const-string/jumbo v6, " -- longest "

    #@4c1
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c4
    .line 3524
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
    .line 3525
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d1
    move-result-object v6

    #@4d2
    move-object/from16 v0, p2

    #@4d4
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4d7
    .line 3527
    :cond_b
    const-wide/16 v6, 0x0

    #@4d9
    cmp-long v6, v66, v6

    #@4db
    if-eqz v6, :cond_c

    #@4dd
    .line 3528
    const/4 v6, 0x0

    #@4de
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@4e1
    .line 3529
    move-object/from16 v0, p3

    #@4e3
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e6
    .line 3530
    const-string/jumbo v6, "  Device full idling: "

    #@4e9
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ec
    .line 3531
    const-wide/16 v6, 0x3e8

    #@4ee
    div-long v6, v66, v6

    #@4f0
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@4f3
    .line 3532
    const-string/jumbo v6, "("

    #@4f6
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f9
    .line 3533
    move-object/from16 v0, p0

    #@4fb
    move-wide/from16 v1, v66

    #@4fd
    move-wide/from16 v3, v208

    #@4ff
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@502
    move-result-object v6

    #@503
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@506
    .line 3534
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
    .line 3535
    const-string/jumbo v6, "x"

    #@51b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51e
    .line 3536
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@521
    move-result-object v6

    #@522
    move-object/from16 v0, p2

    #@524
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@527
    .line 3538
    :cond_c
    const-wide/16 v6, 0x0

    #@529
    cmp-long v6, v62, v6

    #@52b
    if-eqz v6, :cond_d

    #@52d
    .line 3539
    const/4 v6, 0x0

    #@52e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@531
    .line 3540
    move-object/from16 v0, p3

    #@533
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@536
    .line 3541
    const-string/jumbo v6, "  Idle mode full time: "

    #@539
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53c
    .line 3542
    const-wide/16 v6, 0x3e8

    #@53e
    div-long v6, v62, v6

    #@540
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@543
    .line 3543
    const-string/jumbo v6, "("

    #@546
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@549
    .line 3544
    move-object/from16 v0, p0

    #@54b
    move-wide/from16 v1, v62

    #@54d
    move-wide/from16 v3, v208

    #@54f
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@552
    move-result-object v6

    #@553
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@556
    .line 3545
    const-string/jumbo v6, ") "

    #@559
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55c
    .line 3546
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
    .line 3547
    const-string/jumbo v6, "x"

    #@56b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56e
    .line 3548
    const-string/jumbo v6, " -- longest "

    #@571
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@574
    .line 3549
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
    .line 3550
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@581
    move-result-object v6

    #@582
    move-object/from16 v0, p2

    #@584
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@587
    .line 3552
    :cond_d
    const-wide/16 v6, 0x0

    #@589
    cmp-long v6, v142, v6

    #@58b
    if-eqz v6, :cond_e

    #@58d
    .line 3553
    const/4 v6, 0x0

    #@58e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@591
    .line 3554
    move-object/from16 v0, p3

    #@593
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@596
    .line 3555
    const-string/jumbo v6, "  Active phone call: "

    #@599
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59c
    const-wide/16 v6, 0x3e8

    #@59e
    div-long v6, v142, v6

    #@5a0
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@5a3
    .line 3556
    const-string/jumbo v6, "("

    #@5a6
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a9
    move-object/from16 v0, p0

    #@5ab
    move-wide/from16 v1, v142

    #@5ad
    move-wide/from16 v3, v208

    #@5af
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@5b2
    move-result-object v6

    #@5b3
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b6
    .line 3557
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
    .line 3559
    :cond_e
    move-object/from16 v0, p0

    #@5cf
    move/from16 v1, p4

    #@5d1
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    #@5d4
    move-result v58

    #@5d5
    .line 3560
    .local v58, "connChanges":I
    if-eqz v58, :cond_f

    #@5d7
    .line 3561
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5da
    .line 3562
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
    .line 3566
    :cond_f
    const-wide/16 v86, 0x0

    #@5eb
    .line 3567
    .local v86, "fullWakeLockTimeTotalMicros":J
    const-wide/16 v140, 0x0

    #@5ed
    .line 3569
    .local v140, "partialWakeLockTimeTotalMicros":J
    new-instance v174, Ljava/util/ArrayList;

    #@5ef
    invoke-direct/range {v174 .. v174}, Ljava/util/ArrayList;-><init>()V

    #@5f2
    .line 3571
    .local v174, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
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
    .line 3572
    move-object/from16 v0, v195

    #@5fc
    move/from16 v1, v104

    #@5fe
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@601
    move-result-object v175

    #@602
    check-cast v175, Landroid/os/BatteryStats$Uid;

    #@604
    .line 3575
    .local v175, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v175 .. v175}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    #@607
    move-result-object v205

    #@608
    .line 3576
    .local v205, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual/range {v205 .. v205}, Landroid/util/ArrayMap;->size()I

    #@60b
    move-result v6

    #@60c
    add-int/lit8 v105, v6, -0x1

    #@60e
    .local v105, "iw":I
    :goto_3
    if-ltz v105, :cond_13

    #@610
    .line 3577
    move-object/from16 v0, v205

    #@612
    move/from16 v1, v105

    #@614
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@617
    move-result-object v238

    #@618
    check-cast v238, Landroid/os/BatteryStats$Uid$Wakelock;

    #@61a
    .line 3579
    .local v238, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v6, 0x1

    #@61b
    move-object/from16 v0, v238

    #@61d
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@620
    move-result-object v83

    #@621
    .line 3580
    .local v83, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v83, :cond_10

    #@623
    .line 3581
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
    .line 3585
    :cond_10
    const/4 v6, 0x0

    #@630
    move-object/from16 v0, v238

    #@632
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@635
    move-result-object v9

    #@636
    .line 3586
    .local v9, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v9, :cond_12

    #@638
    .line 3587
    move-wide/from16 v0, v24

    #@63a
    move/from16 v2, p4

    #@63c
    invoke-virtual {v9, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@63f
    move-result-wide v10

    #@640
    .line 3589
    .local v10, "totalTimeMicros":J
    const-wide/16 v6, 0x0

    #@642
    cmp-long v6, v10, v6

    #@644
    if-lez v6, :cond_12

    #@646
    .line 3590
    if-gez p5, :cond_11

    #@648
    .line 3594
    new-instance v6, Landroid/os/BatteryStats$TimerEntry;

    #@64a
    move-object/from16 v0, v205

    #@64c
    move/from16 v1, v105

    #@64e
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@651
    move-result-object v7

    #@652
    check-cast v7, Ljava/lang/String;

    #@654
    invoke-virtual/range {v175 .. v175}, Landroid/os/BatteryStats$Uid;->getUid()I

    #@657
    move-result v8

    #@658
    invoke-direct/range {v6 .. v11}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    #@65b
    move-object/from16 v0, v174

    #@65d
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@660
    .line 3597
    :cond_11
    add-long v140, v140, v10

    #@662
    .line 3576
    .end local v10    # "totalTimeMicros":J
    :cond_12
    add-int/lit8 v105, v105, -0x1

    #@664
    goto :goto_3

    #@665
    .line 3571
    .end local v9    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v83    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v238    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_13
    add-int/lit8 v104, v104, 0x1

    #@667
    goto :goto_2

    #@668
    .line 3603
    .end local v105    # "iw":I
    .end local v175    # "u":Landroid/os/BatteryStats$Uid;
    .end local v205    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
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
    .line 3604
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
    .line 3605
    .local v130, "mobileTxTotalBytes":J
    const/4 v6, 0x2

    #@67b
    move-object/from16 v0, p0

    #@67d
    move/from16 v1, p4

    #@67f
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@682
    move-result-wide v224

    #@683
    .line 3606
    .local v224, "wifiRxTotalBytes":J
    const/4 v6, 0x3

    #@684
    move-object/from16 v0, p0

    #@686
    move/from16 v1, p4

    #@688
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@68b
    move-result-wide v234

    #@68c
    .line 3607
    .local v234, "wifiTxTotalBytes":J
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
    .line 3608
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
    .line 3609
    .local v132, "mobileTxTotalPackets":J
    const/4 v6, 0x2

    #@69f
    move-object/from16 v0, p0

    #@6a1
    move/from16 v1, p4

    #@6a3
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    #@6a6
    move-result-wide v226

    #@6a7
    .line 3610
    .local v226, "wifiRxTotalPackets":J
    const/4 v6, 0x3

    #@6a8
    move-object/from16 v0, p0

    #@6aa
    move/from16 v1, p4

    #@6ac
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    #@6af
    move-result-wide v236

    #@6b0
    .line 3611
    .local v236, "wifiTxTotalPackets":J
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
    .line 3612
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
    .line 3614
    .local v54, "btTxTotalBytes":J
    const-wide/16 v6, 0x0

    #@6c4
    cmp-long v6, v86, v6

    #@6c6
    if-eqz v6, :cond_15

    #@6c8
    .line 3615
    const/4 v6, 0x0

    #@6c9
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6cc
    .line 3616
    move-object/from16 v0, p3

    #@6ce
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d1
    .line 3617
    const-string/jumbo v6, "  Total full wakelock time: "

    #@6d4
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d7
    .line 3618
    const-wide/16 v6, 0x1f4

    #@6d9
    add-long v6, v6, v86

    #@6db
    const-wide/16 v12, 0x3e8

    #@6dd
    div-long/2addr v6, v12

    #@6de
    .line 3617
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    #@6e1
    .line 3619
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e4
    move-result-object v6

    #@6e5
    move-object/from16 v0, p2

    #@6e7
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6ea
    .line 3622
    :cond_15
    const-wide/16 v6, 0x0

    #@6ec
    cmp-long v6, v140, v6

    #@6ee
    if-eqz v6, :cond_16

    #@6f0
    .line 3623
    const/4 v6, 0x0

    #@6f1
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6f4
    .line 3624
    move-object/from16 v0, p3

    #@6f6
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f9
    .line 3625
    const-string/jumbo v6, "  Total partial wakelock time: "

    #@6fc
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6ff
    .line 3626
    const-wide/16 v6, 0x1f4

    #@701
    add-long v6, v6, v140

    #@703
    const-wide/16 v12, 0x3e8

    #@705
    div-long/2addr v6, v12

    #@706
    .line 3625
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    #@709
    .line 3627
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70c
    move-result-object v6

    #@70d
    move-object/from16 v0, p2

    #@70f
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@712
    .line 3630
    :cond_16
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@715
    .line 3631
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
    .line 3632
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
    .line 3633
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
    .line 3634
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
    .line 3635
    const/4 v6, 0x0

    #@766
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@769
    .line 3636
    move-object/from16 v0, p3

    #@76b
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76e
    .line 3637
    const-string/jumbo v6, "  Phone signal levels:"

    #@771
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@774
    .line 3638
    const/16 v61, 0x0

    #@776
    .line 3639
    const/16 v94, 0x0

    #@778
    :goto_4
    const/4 v6, 0x5

    #@779
    move/from16 v0, v94

    #@77b
    if-ge v0, v6, :cond_18

    #@77d
    .line 3640
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
    move-result-wide v170

    #@789
    .line 3641
    .restart local v170    # "time":J
    const-wide/16 v6, 0x0

    #@78b
    cmp-long v6, v170, v6

    #@78d
    if-nez v6, :cond_17

    #@78f
    .line 3639
    :goto_5
    add-int/lit8 v94, v94, 0x1

    #@791
    goto :goto_4

    #@792
    .line 3644
    :cond_17
    const-string/jumbo v6, "\n    "

    #@795
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@798
    .line 3645
    move-object/from16 v0, p3

    #@79a
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79d
    .line 3646
    const/16 v61, 0x1

    #@79f
    .line 3647
    sget-object v6, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    #@7a1
    aget-object v6, v6, v94

    #@7a3
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a6
    .line 3648
    const-string/jumbo v6, " "

    #@7a9
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7ac
    .line 3649
    const-wide/16 v6, 0x3e8

    #@7ae
    div-long v6, v170, v6

    #@7b0
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@7b3
    .line 3650
    const-string/jumbo v6, "("

    #@7b6
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b9
    .line 3651
    move-object/from16 v0, p0

    #@7bb
    move-wide/from16 v1, v170

    #@7bd
    move-wide/from16 v3, v208

    #@7bf
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@7c2
    move-result-object v6

    #@7c3
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c6
    .line 3652
    const-string/jumbo v6, ") "

    #@7c9
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7cc
    .line 3653
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
    .line 3654
    const-string/jumbo v6, "x"

    #@7dc
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7df
    goto :goto_5

    #@7e0
    .line 3656
    .end local v170    # "time":J
    :cond_18
    if-nez v61, :cond_19

    #@7e2
    const-string/jumbo v6, " (no activity)"

    #@7e5
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e8
    .line 3657
    :cond_19
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7eb
    move-result-object v6

    #@7ec
    move-object/from16 v0, p2

    #@7ee
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7f1
    .line 3659
    const/4 v6, 0x0

    #@7f2
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@7f5
    .line 3660
    move-object/from16 v0, p3

    #@7f7
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7fa
    .line 3661
    const-string/jumbo v6, "  Signal scanning time: "

    #@7fd
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@800
    .line 3662
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
    .line 3663
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@813
    move-result-object v6

    #@814
    move-object/from16 v0, p2

    #@816
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@819
    .line 3665
    const/4 v6, 0x0

    #@81a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@81d
    .line 3666
    move-object/from16 v0, p3

    #@81f
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@822
    .line 3667
    const-string/jumbo v6, "  Radio types:"

    #@825
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@828
    .line 3668
    const/16 v61, 0x0

    #@82a
    .line 3669
    const/16 v94, 0x0

    #@82c
    :goto_6
    const/16 v6, 0x11

    #@82e
    move/from16 v0, v94

    #@830
    if-ge v0, v6, :cond_1b

    #@832
    .line 3670
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
    move-result-wide v170

    #@83e
    .line 3671
    .restart local v170    # "time":J
    const-wide/16 v6, 0x0

    #@840
    cmp-long v6, v170, v6

    #@842
    if-nez v6, :cond_1a

    #@844
    .line 3669
    :goto_7
    add-int/lit8 v94, v94, 0x1

    #@846
    goto :goto_6

    #@847
    .line 3674
    :cond_1a
    const-string/jumbo v6, "\n    "

    #@84a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84d
    .line 3675
    move-object/from16 v0, p3

    #@84f
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@852
    .line 3676
    const/16 v61, 0x1

    #@854
    .line 3677
    sget-object v6, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    #@856
    aget-object v6, v6, v94

    #@858
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85b
    .line 3678
    const-string/jumbo v6, " "

    #@85e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@861
    .line 3679
    const-wide/16 v6, 0x3e8

    #@863
    div-long v6, v170, v6

    #@865
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@868
    .line 3680
    const-string/jumbo v6, "("

    #@86b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86e
    .line 3681
    move-object/from16 v0, p0

    #@870
    move-wide/from16 v1, v170

    #@872
    move-wide/from16 v3, v208

    #@874
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@877
    move-result-object v6

    #@878
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87b
    .line 3682
    const-string/jumbo v6, ") "

    #@87e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@881
    .line 3683
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
    .line 3684
    const-string/jumbo v6, "x"

    #@891
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@894
    goto :goto_7

    #@895
    .line 3686
    .end local v170    # "time":J
    :cond_1b
    if-nez v61, :cond_1c

    #@897
    const-string/jumbo v6, " (no activity)"

    #@89a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89d
    .line 3687
    :cond_1c
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a0
    move-result-object v6

    #@8a1
    move-object/from16 v0, p2

    #@8a3
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8a6
    .line 3689
    const/4 v6, 0x0

    #@8a7
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@8aa
    .line 3690
    move-object/from16 v0, p3

    #@8ac
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8af
    .line 3691
    const-string/jumbo v6, "  Mobile radio active time: "

    #@8b2
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b5
    .line 3692
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
    .line 3693
    .local v114, "mobileActiveTime":J
    const-wide/16 v6, 0x3e8

    #@8c1
    div-long v6, v114, v6

    #@8c3
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@8c6
    .line 3694
    const-string/jumbo v6, "("

    #@8c9
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8cc
    move-object/from16 v0, p0

    #@8ce
    move-wide/from16 v1, v114

    #@8d0
    move-wide/from16 v3, v208

    #@8d2
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@8d5
    move-result-object v6

    #@8d6
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d9
    .line 3695
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
    .line 3696
    const-string/jumbo v6, "x"

    #@8ed
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f0
    .line 3697
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f3
    move-result-object v6

    #@8f4
    move-object/from16 v0, p2

    #@8f6
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8f9
    .line 3699
    move-object/from16 v0, p0

    #@8fb
    move/from16 v1, p4

    #@8fd
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    #@900
    move-result-wide v116

    #@901
    .line 3700
    .local v116, "mobileActiveUnknownTime":J
    const-wide/16 v6, 0x0

    #@903
    cmp-long v6, v116, v6

    #@905
    if-eqz v6, :cond_1d

    #@907
    .line 3701
    const/4 v6, 0x0

    #@908
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@90b
    .line 3702
    move-object/from16 v0, p3

    #@90d
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@910
    .line 3703
    const-string/jumbo v6, "  Mobile radio active unknown time: "

    #@913
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@916
    .line 3704
    const-wide/16 v6, 0x3e8

    #@918
    div-long v6, v116, v6

    #@91a
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@91d
    .line 3705
    const-string/jumbo v6, "("

    #@920
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@923
    .line 3706
    move-object/from16 v0, p0

    #@925
    move-wide/from16 v1, v116

    #@927
    move-wide/from16 v3, v208

    #@929
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@92c
    move-result-object v6

    #@92d
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@930
    .line 3707
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
    .line 3708
    const-string/jumbo v6, "x"

    #@944
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@947
    .line 3709
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94a
    move-result-object v6

    #@94b
    move-object/from16 v0, p2

    #@94d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@950
    .line 3712
    :cond_1d
    move-object/from16 v0, p0

    #@952
    move/from16 v1, p4

    #@954
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    #@957
    move-result-wide v112

    #@958
    .line 3713
    .local v112, "mobileActiveAdjustedTime":J
    const-wide/16 v6, 0x0

    #@95a
    cmp-long v6, v112, v6

    #@95c
    if-eqz v6, :cond_1e

    #@95e
    .line 3714
    const/4 v6, 0x0

    #@95f
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@962
    .line 3715
    move-object/from16 v0, p3

    #@964
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@967
    .line 3716
    const-string/jumbo v6, "  Mobile radio active adjusted time: "

    #@96a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96d
    .line 3717
    const-wide/16 v6, 0x3e8

    #@96f
    div-long v6, v112, v6

    #@971
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@974
    .line 3718
    const-string/jumbo v6, "("

    #@977
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97a
    .line 3719
    move-object/from16 v0, p0

    #@97c
    move-wide/from16 v1, v112

    #@97e
    move-wide/from16 v3, v208

    #@980
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@983
    move-result-object v6

    #@984
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@987
    .line 3720
    const-string/jumbo v6, ")"

    #@98a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98d
    .line 3721
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@990
    move-result-object v6

    #@991
    move-object/from16 v0, p2

    #@993
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@996
    .line 3724
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
    .line 3726
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9ab
    .line 3727
    const-string/jumbo v6, "  Wi-Fi total received: "

    #@9ae
    move-object/from16 v0, p2

    #@9b0
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9b3
    move-object/from16 v0, p0

    #@9b5
    move-wide/from16 v1, v224

    #@9b7
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@9ba
    move-result-object v6

    #@9bb
    move-object/from16 v0, p2

    #@9bd
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9c0
    .line 3728
    const-string/jumbo v6, ", sent: "

    #@9c3
    move-object/from16 v0, p2

    #@9c5
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9c8
    move-object/from16 v0, p0

    #@9ca
    move-wide/from16 v1, v234

    #@9cc
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@9cf
    move-result-object v6

    #@9d0
    move-object/from16 v0, p2

    #@9d2
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9d5
    .line 3729
    const-string/jumbo v6, " (packets received "

    #@9d8
    move-object/from16 v0, p2

    #@9da
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9dd
    move-object/from16 v0, p2

    #@9df
    move-wide/from16 v1, v226

    #@9e1
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@9e4
    .line 3730
    const-string/jumbo v6, ", sent "

    #@9e7
    move-object/from16 v0, p2

    #@9e9
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9ec
    move-object/from16 v0, p2

    #@9ee
    move-wide/from16 v1, v236

    #@9f0
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@9f3
    const-string/jumbo v6, ")"

    #@9f6
    move-object/from16 v0, p2

    #@9f8
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9fb
    .line 3731
    const/4 v6, 0x0

    #@9fc
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@9ff
    .line 3732
    move-object/from16 v0, p3

    #@a01
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a04
    .line 3733
    const-string/jumbo v6, "  Wifi on: "

    #@a07
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0a
    const-wide/16 v6, 0x3e8

    #@a0c
    div-long v6, v216, v6

    #@a0e
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@a11
    .line 3734
    const-string/jumbo v6, "("

    #@a14
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a17
    move-object/from16 v0, p0

    #@a19
    move-wide/from16 v1, v216

    #@a1b
    move-wide/from16 v3, v208

    #@a1d
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@a20
    move-result-object v6

    #@a21
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a24
    .line 3735
    const-string/jumbo v6, "), Wifi running: "

    #@a27
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2a
    const-wide/16 v6, 0x3e8

    #@a2c
    div-long v6, v218, v6

    #@a2e
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@a31
    .line 3736
    const-string/jumbo v6, "("

    #@a34
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a37
    move-object/from16 v0, p0

    #@a39
    move-wide/from16 v1, v218

    #@a3b
    move-wide/from16 v3, v208

    #@a3d
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@a40
    move-result-object v6

    #@a41
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a44
    .line 3737
    const-string/jumbo v6, ")"

    #@a47
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4a
    .line 3738
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4d
    move-result-object v6

    #@a4e
    move-object/from16 v0, p2

    #@a50
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a53
    .line 3740
    const/4 v6, 0x0

    #@a54
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@a57
    .line 3741
    move-object/from16 v0, p3

    #@a59
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5c
    .line 3742
    const-string/jumbo v6, "  Wifi states:"

    #@a5f
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a62
    .line 3743
    const/16 v61, 0x0

    #@a64
    .line 3744
    const/16 v94, 0x0

    #@a66
    :goto_8
    const/16 v6, 0x8

    #@a68
    move/from16 v0, v94

    #@a6a
    if-ge v0, v6, :cond_20

    #@a6c
    .line 3745
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
    move-result-wide v170

    #@a78
    .line 3746
    .restart local v170    # "time":J
    const-wide/16 v6, 0x0

    #@a7a
    cmp-long v6, v170, v6

    #@a7c
    if-nez v6, :cond_1f

    #@a7e
    .line 3744
    :goto_9
    add-int/lit8 v94, v94, 0x1

    #@a80
    goto :goto_8

    #@a81
    .line 3749
    :cond_1f
    const-string/jumbo v6, "\n    "

    #@a84
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a87
    .line 3750
    const/16 v61, 0x1

    #@a89
    .line 3751
    sget-object v6, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    #@a8b
    aget-object v6, v6, v94

    #@a8d
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a90
    .line 3752
    const-string/jumbo v6, " "

    #@a93
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a96
    .line 3753
    const-wide/16 v6, 0x3e8

    #@a98
    div-long v6, v170, v6

    #@a9a
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@a9d
    .line 3754
    const-string/jumbo v6, "("

    #@aa0
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa3
    .line 3755
    move-object/from16 v0, p0

    #@aa5
    move-wide/from16 v1, v170

    #@aa7
    move-wide/from16 v3, v208

    #@aa9
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@aac
    move-result-object v6

    #@aad
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab0
    .line 3756
    const-string/jumbo v6, ") "

    #@ab3
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab6
    .line 3757
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
    .line 3758
    const-string/jumbo v6, "x"

    #@ac6
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac9
    goto :goto_9

    #@aca
    .line 3760
    .end local v170    # "time":J
    :cond_20
    if-nez v61, :cond_21

    #@acc
    const-string/jumbo v6, " (no activity)"

    #@acf
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad2
    .line 3761
    :cond_21
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad5
    move-result-object v6

    #@ad6
    move-object/from16 v0, p2

    #@ad8
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@adb
    .line 3763
    const/4 v6, 0x0

    #@adc
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@adf
    .line 3764
    move-object/from16 v0, p3

    #@ae1
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae4
    .line 3765
    const-string/jumbo v6, "  Wifi supplicant states:"

    #@ae7
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aea
    .line 3766
    const/16 v61, 0x0

    #@aec
    .line 3767
    const/16 v94, 0x0

    #@aee
    :goto_a
    const/16 v6, 0xd

    #@af0
    move/from16 v0, v94

    #@af2
    if-ge v0, v6, :cond_23

    #@af4
    .line 3768
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
    move-result-wide v170

    #@b00
    .line 3769
    .restart local v170    # "time":J
    const-wide/16 v6, 0x0

    #@b02
    cmp-long v6, v170, v6

    #@b04
    if-nez v6, :cond_22

    #@b06
    .line 3767
    :goto_b
    add-int/lit8 v94, v94, 0x1

    #@b08
    goto :goto_a

    #@b09
    .line 3772
    :cond_22
    const-string/jumbo v6, "\n    "

    #@b0c
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0f
    .line 3773
    const/16 v61, 0x1

    #@b11
    .line 3774
    sget-object v6, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    #@b13
    aget-object v6, v6, v94

    #@b15
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b18
    .line 3775
    const-string/jumbo v6, " "

    #@b1b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1e
    .line 3776
    const-wide/16 v6, 0x3e8

    #@b20
    div-long v6, v170, v6

    #@b22
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@b25
    .line 3777
    const-string/jumbo v6, "("

    #@b28
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2b
    .line 3778
    move-object/from16 v0, p0

    #@b2d
    move-wide/from16 v1, v170

    #@b2f
    move-wide/from16 v3, v208

    #@b31
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@b34
    move-result-object v6

    #@b35
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b38
    .line 3779
    const-string/jumbo v6, ") "

    #@b3b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3e
    .line 3780
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
    .line 3781
    const-string/jumbo v6, "x"

    #@b4e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b51
    goto :goto_b

    #@b52
    .line 3783
    .end local v170    # "time":J
    :cond_23
    if-nez v61, :cond_24

    #@b54
    const-string/jumbo v6, " (no activity)"

    #@b57
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5a
    .line 3784
    :cond_24
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5d
    move-result-object v6

    #@b5e
    move-object/from16 v0, p2

    #@b60
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b63
    .line 3786
    const/4 v6, 0x0

    #@b64
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@b67
    .line 3787
    move-object/from16 v0, p3

    #@b69
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6c
    .line 3788
    const-string/jumbo v6, "  Wifi signal levels:"

    #@b6f
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b72
    .line 3789
    const/16 v61, 0x0

    #@b74
    .line 3790
    const/16 v94, 0x0

    #@b76
    :goto_c
    const/4 v6, 0x5

    #@b77
    move/from16 v0, v94

    #@b79
    if-ge v0, v6, :cond_26

    #@b7b
    .line 3791
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
    move-result-wide v170

    #@b87
    .line 3792
    .restart local v170    # "time":J
    const-wide/16 v6, 0x0

    #@b89
    cmp-long v6, v170, v6

    #@b8b
    if-nez v6, :cond_25

    #@b8d
    .line 3790
    :goto_d
    add-int/lit8 v94, v94, 0x1

    #@b8f
    goto :goto_c

    #@b90
    .line 3795
    :cond_25
    const-string/jumbo v6, "\n    "

    #@b93
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b96
    .line 3796
    move-object/from16 v0, p3

    #@b98
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9b
    .line 3797
    const/16 v61, 0x1

    #@b9d
    .line 3798
    const-string/jumbo v6, "level("

    #@ba0
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba3
    .line 3799
    move/from16 v0, v94

    #@ba5
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ba8
    .line 3800
    const-string/jumbo v6, ") "

    #@bab
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bae
    .line 3801
    const-wide/16 v6, 0x3e8

    #@bb0
    div-long v6, v170, v6

    #@bb2
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@bb5
    .line 3802
    const-string/jumbo v6, "("

    #@bb8
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bbb
    .line 3803
    move-object/from16 v0, p0

    #@bbd
    move-wide/from16 v1, v170

    #@bbf
    move-wide/from16 v3, v208

    #@bc1
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@bc4
    move-result-object v6

    #@bc5
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc8
    .line 3804
    const-string/jumbo v6, ") "

    #@bcb
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bce
    .line 3805
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
    .line 3806
    const-string/jumbo v6, "x"

    #@bde
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be1
    goto :goto_d

    #@be2
    .line 3808
    .end local v170    # "time":J
    :cond_26
    if-nez v61, :cond_27

    #@be4
    const-string/jumbo v6, " (no activity)"

    #@be7
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bea
    .line 3809
    :cond_27
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bed
    move-result-object v6

    #@bee
    move-object/from16 v0, p2

    #@bf0
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bf3
    .line 3811
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
    .line 3813
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c08
    .line 3814
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
    .line 3815
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
    .line 3817
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
    .line 3818
    .local v46, "bluetoothScanTimeMs":J
    const/4 v6, 0x0

    #@c41
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@c44
    .line 3819
    move-object/from16 v0, p3

    #@c46
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c49
    .line 3820
    const-string/jumbo v6, "  Bluetooth scan time: "

    #@c4c
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4f
    move-wide/from16 v0, v46

    #@c51
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@c54
    .line 3821
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c57
    move-result-object v6

    #@c58
    move-object/from16 v0, p2

    #@c5a
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c5d
    .line 3823
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
    .line 3826
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@c72
    .line 3828
    const/4 v6, 0x2

    #@c73
    move/from16 v0, p4

    #@c75
    if-ne v0, v6, :cond_35

    #@c77
    .line 3829
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    #@c7a
    move-result v6

    #@c7b
    if-eqz v6, :cond_34

    #@c7d
    .line 3830
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c80
    const-string/jumbo v6, "  Device is currently unplugged"

    #@c83
    move-object/from16 v0, p2

    #@c85
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c88
    .line 3831
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c8b
    const-string/jumbo v6, "    Discharge cycle start level: "

    #@c8e
    move-object/from16 v0, p2

    #@c90
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c93
    .line 3832
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    #@c96
    move-result v6

    #@c97
    move-object/from16 v0, p2

    #@c99
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@c9c
    .line 3833
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c9f
    const-string/jumbo v6, "    Discharge cycle current level: "

    #@ca2
    move-object/from16 v0, p2

    #@ca4
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ca7
    .line 3834
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    #@caa
    move-result v6

    #@cab
    move-object/from16 v0, p2

    #@cad
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@cb0
    .line 3842
    :goto_e
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cb3
    const-string/jumbo v6, "    Amount discharged while screen on: "

    #@cb6
    move-object/from16 v0, p2

    #@cb8
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cbb
    .line 3843
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    #@cbe
    move-result v6

    #@cbf
    move-object/from16 v0, p2

    #@cc1
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@cc4
    .line 3844
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cc7
    const-string/jumbo v6, "    Amount discharged while screen off: "

    #@cca
    move-object/from16 v0, p2

    #@ccc
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ccf
    .line 3845
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    #@cd2
    move-result v6

    #@cd3
    move-object/from16 v0, p2

    #@cd5
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@cd8
    .line 3846
    const-string/jumbo v6, " "

    #@cdb
    move-object/from16 v0, p2

    #@cdd
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ce0
    .line 3860
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
    .line 3861
    .local v93, "helper":Lcom/android/internal/os/BatteryStatsHelper;
    move-object/from16 v0, v93

    #@cee
    move-object/from16 v1, p0

    #@cf0
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    #@cf3
    .line 3862
    const/4 v6, -0x1

    #@cf4
    move-object/from16 v0, v93

    #@cf6
    move/from16 v1, p4

    #@cf8
    invoke-virtual {v0, v1, v6}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    #@cfb
    .line 3863
    invoke-virtual/range {v93 .. v93}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    #@cfe
    move-result-object v160

    #@cff
    .line 3864
    .local v160, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v160, :cond_37

    #@d01
    invoke-interface/range {v160 .. v160}, Ljava/util/List;->size()I

    #@d04
    move-result v6

    #@d05
    if-lez v6, :cond_37

    #@d07
    .line 3865
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d0a
    const-string/jumbo v6, "  Estimated power use (mAh):"

    #@d0d
    move-object/from16 v0, p2

    #@d0f
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d12
    .line 3866
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d15
    const-string/jumbo v6, "    Capacity: "

    #@d18
    move-object/from16 v0, p2

    #@d1a
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d1d
    .line 3867
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
    .line 3868
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
    .line 3869
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
    .line 3870
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
    .line 3871
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
    .line 3873
    :cond_28
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@d74
    .line 3874
    const/16 v94, 0x0

    #@d76
    :goto_10
    invoke-interface/range {v160 .. v160}, Ljava/util/List;->size()I

    #@d79
    move-result v6

    #@d7a
    move/from16 v0, v94

    #@d7c
    if-ge v0, v6, :cond_36

    #@d7e
    .line 3875
    move-object/from16 v0, v160

    #@d80
    move/from16 v1, v94

    #@d82
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@d85
    move-result-object v41

    #@d86
    check-cast v41, Lcom/android/internal/os/BatterySipper;

    #@d88
    .line 3876
    .local v41, "bs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d8b
    .line 3877
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
    .line 3918
    const-string/jumbo v6, "    ???: "

    #@d9f
    move-object/from16 v0, p2

    #@da1
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@da4
    .line 3921
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
    .line 3923
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
    .line 3927
    const-string/jumbo v6, " ("

    #@dbe
    move-object/from16 v0, p2

    #@dc0
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@dc3
    .line 3928
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
    .line 3929
    const-string/jumbo v6, " usage="

    #@dd0
    move-object/from16 v0, p2

    #@dd2
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@dd5
    .line 3930
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
    .line 3932
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
    .line 3933
    const-string/jumbo v6, " cpu="

    #@ded
    move-object/from16 v0, p2

    #@def
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@df2
    .line 3934
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
    .line 3936
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
    .line 3937
    const-string/jumbo v6, " wake="

    #@e0a
    move-object/from16 v0, p2

    #@e0c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e0f
    .line 3938
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
    .line 3940
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
    .line 3941
    const-string/jumbo v6, " radio="

    #@e27
    move-object/from16 v0, p2

    #@e29
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e2c
    .line 3942
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
    .line 3944
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
    .line 3945
    const-string/jumbo v6, " wifi="

    #@e44
    move-object/from16 v0, p2

    #@e46
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e49
    .line 3946
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
    .line 3948
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
    .line 3949
    const-string/jumbo v6, " bt="

    #@e61
    move-object/from16 v0, p2

    #@e63
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e66
    .line 3950
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
    .line 3952
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
    .line 3953
    const-string/jumbo v6, " gps="

    #@e7e
    move-object/from16 v0, p2

    #@e80
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e83
    .line 3954
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
    .line 3956
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
    .line 3957
    const-string/jumbo v6, " sensor="

    #@e9b
    move-object/from16 v0, p2

    #@e9d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ea0
    .line 3958
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
    .line 3960
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
    .line 3961
    const-string/jumbo v6, " camera="

    #@eb8
    move-object/from16 v0, p2

    #@eba
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ebd
    .line 3962
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
    .line 3964
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
    .line 3965
    const-string/jumbo v6, " flash="

    #@ed5
    move-object/from16 v0, p2

    #@ed7
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@eda
    .line 3966
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
    .line 3968
    :cond_32
    const-string/jumbo v6, " )"

    #@ee8
    move-object/from16 v0, p2

    #@eea
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@eed
    .line 3970
    :cond_33
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@ef0
    .line 3874
    add-int/lit8 v94, v94, 0x1

    #@ef2
    goto/16 :goto_10

    #@ef4
    .line 3836
    .end local v41    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v93    # "helper":Lcom/android/internal/os/BatteryStatsHelper;
    .end local v160    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_34
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ef7
    const-string/jumbo v6, "  Device is currently plugged into power"

    #@efa
    move-object/from16 v0, p2

    #@efc
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@eff
    .line 3837
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f02
    const-string/jumbo v6, "    Last discharge cycle start level: "

    #@f05
    move-object/from16 v0, p2

    #@f07
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f0a
    .line 3838
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    #@f0d
    move-result v6

    #@f0e
    move-object/from16 v0, p2

    #@f10
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@f13
    .line 3839
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f16
    const-string/jumbo v6, "    Last discharge cycle end level: "

    #@f19
    move-object/from16 v0, p2

    #@f1b
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f1e
    .line 3840
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
    .line 3848
    :cond_35
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f2c
    const-string/jumbo v6, "  Device battery use since last full charge"

    #@f2f
    move-object/from16 v0, p2

    #@f31
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f34
    .line 3849
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f37
    const-string/jumbo v6, "    Amount discharged (lower bound): "

    #@f3a
    move-object/from16 v0, p2

    #@f3c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f3f
    .line 3850
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    #@f42
    move-result v6

    #@f43
    move-object/from16 v0, p2

    #@f45
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@f48
    .line 3851
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f4b
    const-string/jumbo v6, "    Amount discharged (upper bound): "

    #@f4e
    move-object/from16 v0, p2

    #@f50
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f53
    .line 3852
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    #@f56
    move-result v6

    #@f57
    move-object/from16 v0, p2

    #@f59
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@f5c
    .line 3853
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f5f
    const-string/jumbo v6, "    Amount discharged while screen on: "

    #@f62
    move-object/from16 v0, p2

    #@f64
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f67
    .line 3854
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    #@f6a
    move-result v6

    #@f6b
    move-object/from16 v0, p2

    #@f6d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@f70
    .line 3855
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f73
    const-string/jumbo v6, "    Amount discharged while screen off: "

    #@f76
    move-object/from16 v0, p2

    #@f78
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f7b
    .line 3856
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    #@f7e
    move-result v6

    #@f7f
    move-object/from16 v0, p2

    #@f81
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@f84
    .line 3857
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@f87
    goto/16 :goto_f

    #@f89
    .line 3879
    .restart local v41    # "bs":Lcom/android/internal/os/BatterySipper;
    .restart local v93    # "helper":Lcom/android/internal/os/BatteryStatsHelper;
    .restart local v160    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :pswitch_0
    const-string/jumbo v6, "    Idle: "

    #@f8c
    move-object/from16 v0, p2

    #@f8e
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f91
    goto/16 :goto_11

    #@f93
    .line 3882
    :pswitch_1
    const-string/jumbo v6, "    Cell standby: "

    #@f96
    move-object/from16 v0, p2

    #@f98
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f9b
    goto/16 :goto_11

    #@f9d
    .line 3885
    :pswitch_2
    const-string/jumbo v6, "    Phone calls: "

    #@fa0
    move-object/from16 v0, p2

    #@fa2
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fa5
    goto/16 :goto_11

    #@fa7
    .line 3888
    :pswitch_3
    const-string/jumbo v6, "    Wifi: "

    #@faa
    move-object/from16 v0, p2

    #@fac
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@faf
    goto/16 :goto_11

    #@fb1
    .line 3891
    :pswitch_4
    const-string/jumbo v6, "    Bluetooth: "

    #@fb4
    move-object/from16 v0, p2

    #@fb6
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fb9
    goto/16 :goto_11

    #@fbb
    .line 3894
    :pswitch_5
    const-string/jumbo v6, "    Screen: "

    #@fbe
    move-object/from16 v0, p2

    #@fc0
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fc3
    goto/16 :goto_11

    #@fc5
    .line 3897
    :pswitch_6
    const-string/jumbo v6, "    Flashlight: "

    #@fc8
    move-object/from16 v0, p2

    #@fca
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fcd
    goto/16 :goto_11

    #@fcf
    .line 3900
    :pswitch_7
    const-string/jumbo v6, "    Uid "

    #@fd2
    move-object/from16 v0, p2

    #@fd4
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fd7
    .line 3901
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
    .line 3902
    const-string/jumbo v6, ": "

    #@fe7
    move-object/from16 v0, p2

    #@fe9
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fec
    goto/16 :goto_11

    #@fee
    .line 3905
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
    .line 3906
    const-string/jumbo v6, ": "

    #@1002
    move-object/from16 v0, p2

    #@1004
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1007
    goto/16 :goto_11

    #@1009
    .line 3909
    :pswitch_9
    const-string/jumbo v6, "    Unaccounted: "

    #@100c
    move-object/from16 v0, p2

    #@100e
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1011
    goto/16 :goto_11

    #@1013
    .line 3912
    :pswitch_a
    const-string/jumbo v6, "    Over-counted: "

    #@1016
    move-object/from16 v0, p2

    #@1018
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@101b
    goto/16 :goto_11

    #@101d
    .line 3915
    :pswitch_b
    const-string/jumbo v6, "    Camera: "

    #@1020
    move-object/from16 v0, p2

    #@1022
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1025
    goto/16 :goto_11

    #@1027
    .line 3972
    .end local v41    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_36
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@102a
    .line 3975
    :cond_37
    invoke-virtual/range {v93 .. v93}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilemsppList()Ljava/util/List;

    #@102d
    move-result-object v160

    #@102e
    .line 3976
    if-eqz v160, :cond_39

    #@1030
    invoke-interface/range {v160 .. v160}, Ljava/util/List;->size()I

    #@1033
    move-result v6

    #@1034
    if-lez v6, :cond_39

    #@1036
    .line 3977
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1039
    const-string/jumbo v6, "  Per-app mobile ms per packet:"

    #@103c
    move-object/from16 v0, p2

    #@103e
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1041
    .line 3978
    const-wide/16 v186, 0x0

    #@1043
    .line 3979
    .local v186, "totalTime":J
    const/16 v94, 0x0

    #@1045
    :goto_12
    invoke-interface/range {v160 .. v160}, Ljava/util/List;->size()I

    #@1048
    move-result v6

    #@1049
    move/from16 v0, v94

    #@104b
    if-ge v0, v6, :cond_38

    #@104d
    .line 3980
    move-object/from16 v0, v160

    #@104f
    move/from16 v1, v94

    #@1051
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1054
    move-result-object v41

    #@1055
    check-cast v41, Lcom/android/internal/os/BatterySipper;

    #@1057
    .line 3981
    .restart local v41    # "bs":Lcom/android/internal/os/BatterySipper;
    const/4 v6, 0x0

    #@1058
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@105b
    .line 3982
    move-object/from16 v0, p3

    #@105d
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1060
    const-string/jumbo v6, "    Uid "

    #@1063
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1066
    .line 3983
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
    .line 3984
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
    .line 3985
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
    .line 3986
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
    .line 3987
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
    .line 3988
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b7
    move-result-object v6

    #@10b8
    move-object/from16 v0, p2

    #@10ba
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10bd
    .line 3989
    move-object/from16 v0, v41

    #@10bf
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    #@10c1
    add-long v186, v186, v6

    #@10c3
    .line 3979
    add-int/lit8 v94, v94, 0x1

    #@10c5
    goto :goto_12

    #@10c6
    .line 3991
    .end local v41    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_38
    const/4 v6, 0x0

    #@10c7
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@10ca
    .line 3992
    move-object/from16 v0, p3

    #@10cc
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10cf
    .line 3993
    const-string/jumbo v6, "    TOTAL TIME: "

    #@10d2
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d5
    .line 3994
    move-wide/from16 v0, v186

    #@10d7
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@10da
    .line 3995
    const-string/jumbo v6, "("

    #@10dd
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e0
    move-object/from16 v0, p0

    #@10e2
    move-wide/from16 v1, v186

    #@10e4
    move-wide/from16 v3, v208

    #@10e6
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@10e9
    move-result-object v6

    #@10ea
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10ed
    .line 3996
    const-string/jumbo v6, ")"

    #@10f0
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f3
    .line 3997
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f6
    move-result-object v6

    #@10f7
    move-object/from16 v0, p2

    #@10f9
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10fc
    .line 3998
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@10ff
    .line 4001
    .end local v186    # "totalTime":J
    :cond_39
    new-instance v173, Landroid/os/BatteryStats$1;

    #@1101
    move-object/from16 v0, v173

    #@1103
    move-object/from16 v1, p0

    #@1105
    invoke-direct {v0, v1}, Landroid/os/BatteryStats$1;-><init>(Landroid/os/BatteryStats;)V

    #@1108
    .line 4016
    .local v173, "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    if-gez p5, :cond_43

    #@110a
    .line 4018
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    #@110d
    move-result-object v108

    #@110e
    .line 4019
    .local v108, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v108 .. v108}, Ljava/util/Map;->size()I

    #@1111
    move-result v6

    #@1112
    if-lez v6, :cond_3e

    #@1114
    .line 4020
    new-instance v109, Ljava/util/ArrayList;

    #@1116
    invoke-direct/range {v109 .. v109}, Ljava/util/ArrayList;-><init>()V

    #@1119
    .line 4022
    .local v109, "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-interface/range {v108 .. v108}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@111c
    move-result-object v6

    #@111d
    .line 4021
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
    .line 4023
    .local v79, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v79 .. v79}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1130
    move-result-object v19

    #@1131
    check-cast v19, Landroid/os/BatteryStats$Timer;

    #@1133
    .line 4024
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
    .line 4025
    .local v20, "totalTimeMillis":J
    const-wide/16 v6, 0x0

    #@113f
    cmp-long v6, v20, v6

    #@1141
    if-lez v6, :cond_3a

    #@1143
    .line 4026
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
    .line 4029
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
    .line 4030
    move-object/from16 v0, v109

    #@1160
    move-object/from16 v1, v173

    #@1162
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@1165
    .line 4031
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1168
    const-string/jumbo v6, "  All kernel wake locks:"

    #@116b
    move-object/from16 v0, p2

    #@116d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1170
    .line 4032
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
    .line 4033
    move-object/from16 v0, v109

    #@117c
    move/from16 v1, v94

    #@117e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1181
    move-result-object v172

    #@1182
    check-cast v172, Landroid/os/BatteryStats$TimerEntry;

    #@1184
    .line 4034
    .local v172, "timer":Landroid/os/BatteryStats$TimerEntry;
    const-string/jumbo v28, ": "

    #@1187
    .line 4035
    .local v28, "linePrefix":Ljava/lang/String;
    const/4 v6, 0x0

    #@1188
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@118b
    .line 4036
    move-object/from16 v0, p3

    #@118d
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1190
    .line 4037
    const-string/jumbo v6, "  Kernel Wake lock "

    #@1193
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1196
    .line 4038
    move-object/from16 v0, v172

    #@1198
    iget-object v6, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    #@119a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119d
    .line 4039
    move-object/from16 v0, v172

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
    .line 4041
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
    .line 4042
    const-string/jumbo v6, " realtime"

    #@11bb
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11be
    .line 4044
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11c1
    move-result-object v6

    #@11c2
    move-object/from16 v0, p2

    #@11c4
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11c7
    .line 4032
    :cond_3c
    add-int/lit8 v94, v94, 0x1

    #@11c9
    goto :goto_14

    #@11ca
    .line 4047
    .end local v28    # "linePrefix":Ljava/lang/String;
    .end local v172    # "timer":Landroid/os/BatteryStats$TimerEntry;
    :cond_3d
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@11cd
    .line 4051
    .end local v80    # "ent$iterator":Ljava/util/Iterator;
    .end local v109    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    :cond_3e
    invoke-virtual/range {v174 .. v174}, Ljava/util/ArrayList;->size()I

    #@11d0
    move-result v6

    #@11d1
    if-lez v6, :cond_40

    #@11d3
    .line 4052
    move-object/from16 v0, v174

    #@11d5
    move-object/from16 v1, v173

    #@11d7
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@11da
    .line 4053
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11dd
    const-string/jumbo v6, "  All partial wake locks:"

    #@11e0
    move-object/from16 v0, p2

    #@11e2
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11e5
    .line 4054
    const/16 v94, 0x0

    #@11e7
    :goto_15
    invoke-virtual/range {v174 .. v174}, Ljava/util/ArrayList;->size()I

    #@11ea
    move-result v6

    #@11eb
    move/from16 v0, v94

    #@11ed
    if-ge v0, v6, :cond_3f

    #@11ef
    .line 4055
    move-object/from16 v0, v174

    #@11f1
    move/from16 v1, v94

    #@11f3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11f6
    move-result-object v172

    #@11f7
    check-cast v172, Landroid/os/BatteryStats$TimerEntry;

    #@11f9
    .line 4056
    .restart local v172    # "timer":Landroid/os/BatteryStats$TimerEntry;
    const/4 v6, 0x0

    #@11fa
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@11fd
    .line 4057
    const-string/jumbo v6, "  Wake lock "

    #@1200
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1203
    .line 4058
    move-object/from16 v0, v172

    #@1205
    iget v6, v0, Landroid/os/BatteryStats$TimerEntry;->mId:I

    #@1207
    invoke-static {v14, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    #@120a
    .line 4059
    const-string/jumbo v6, " "

    #@120d
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1210
    .line 4060
    move-object/from16 v0, v172

    #@1212
    iget-object v6, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    #@1214
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1217
    .line 4061
    move-object/from16 v0, v172

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
    .line 4062
    const-string/jumbo v6, " realtime"

    #@122e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1231
    .line 4063
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1234
    move-result-object v6

    #@1235
    move-object/from16 v0, p2

    #@1237
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@123a
    .line 4054
    add-int/lit8 v94, v94, 0x1

    #@123c
    goto :goto_15

    #@123d
    .line 4065
    .end local v172    # "timer":Landroid/os/BatteryStats$TimerEntry;
    :cond_3f
    invoke-virtual/range {v174 .. v174}, Ljava/util/ArrayList;->clear()V

    #@1240
    .line 4066
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@1243
    .line 4069
    :cond_40
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    #@1246
    move-result-object v206

    #@1247
    .line 4070
    .local v206, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v206 .. v206}, Ljava/util/Map;->size()I

    #@124a
    move-result v6

    #@124b
    if-lez v6, :cond_43

    #@124d
    .line 4071
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1250
    const-string/jumbo v6, "  All wakeup reasons:"

    #@1253
    move-object/from16 v0, p2

    #@1255
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1258
    .line 4072
    new-instance v151, Ljava/util/ArrayList;

    #@125a
    invoke-direct/range {v151 .. v151}, Ljava/util/ArrayList;-><init>()V

    #@125d
    .line 4073
    .local v151, "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-interface/range {v206 .. v206}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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
    .line 4074
    .restart local v79    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v79 .. v79}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1274
    move-result-object v19

    #@1275
    check-cast v19, Landroid/os/BatteryStats$Timer;

    #@1277
    .line 4075
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    new-instance v30, Landroid/os/BatteryStats$TimerEntry;

    #@1279
    invoke-interface/range {v79 .. v79}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@127c
    move-result-object v31

    #@127d
    check-cast v31, Ljava/lang/String;

    #@127f
    .line 4076
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
    .line 4075
    const/16 v32, 0x0

    #@128c
    move-object/from16 v33, v19

    #@128e
    invoke-direct/range {v30 .. v35}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    #@1291
    move-object/from16 v0, v151

    #@1293
    move-object/from16 v1, v30

    #@1295
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1298
    goto :goto_16

    #@1299
    .line 4078
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v79    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_41
    move-object/from16 v0, v151

    #@129b
    move-object/from16 v1, v173

    #@129d
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@12a0
    .line 4079
    const/16 v94, 0x0

    #@12a2
    :goto_17
    invoke-virtual/range {v151 .. v151}, Ljava/util/ArrayList;->size()I

    #@12a5
    move-result v6

    #@12a6
    move/from16 v0, v94

    #@12a8
    if-ge v0, v6, :cond_42

    #@12aa
    .line 4080
    move-object/from16 v0, v151

    #@12ac
    move/from16 v1, v94

    #@12ae
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12b1
    move-result-object v172

    #@12b2
    check-cast v172, Landroid/os/BatteryStats$TimerEntry;

    #@12b4
    .line 4081
    .restart local v172    # "timer":Landroid/os/BatteryStats$TimerEntry;
    const-string/jumbo v28, ": "

    #@12b7
    .line 4082
    .restart local v28    # "linePrefix":Ljava/lang/String;
    const/4 v6, 0x0

    #@12b8
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@12bb
    .line 4083
    move-object/from16 v0, p3

    #@12bd
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c0
    .line 4084
    const-string/jumbo v6, "  Wakeup reason "

    #@12c3
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c6
    .line 4085
    move-object/from16 v0, v172

    #@12c8
    iget-object v6, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    #@12ca
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12cd
    .line 4086
    move-object/from16 v0, v172

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
    .line 4087
    const-string/jumbo v6, " realtime"

    #@12e4
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e7
    .line 4088
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12ea
    move-result-object v6

    #@12eb
    move-object/from16 v0, p2

    #@12ed
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12f0
    .line 4079
    add-int/lit8 v94, v94, 0x1

    #@12f2
    goto :goto_17

    #@12f3
    .line 4090
    .end local v28    # "linePrefix":Ljava/lang/String;
    .end local v172    # "timer":Landroid/os/BatteryStats$TimerEntry;
    :cond_42
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@12f6
    .line 4094
    .end local v80    # "ent$iterator":Ljava/util/Iterator;
    .end local v108    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v151    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v206    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_43
    const/16 v104, 0x0

    #@12f8
    :goto_18
    move/from16 v0, v104

    #@12fa
    move/from16 v1, v38

    #@12fc
    if-ge v0, v1, :cond_87

    #@12fe
    .line 4095
    move-object/from16 v0, v195

    #@1300
    move/from16 v1, v104

    #@1302
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@1305
    move-result v192

    #@1306
    .line 4096
    .local v192, "uid":I
    if-ltz p5, :cond_45

    #@1308
    move/from16 v0, v192

    #@130a
    move/from16 v1, p5

    #@130c
    if-eq v0, v1, :cond_45

    #@130e
    const/16 v6, 0x3e8

    #@1310
    move/from16 v0, v192

    #@1312
    if-eq v0, v6, :cond_45

    #@1314
    .line 4094
    :cond_44
    :goto_19
    add-int/lit8 v104, v104, 0x1

    #@1316
    goto :goto_18

    #@1317
    .line 4100
    :cond_45
    move-object/from16 v0, v195

    #@1319
    move/from16 v1, v104

    #@131b
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@131e
    move-result-object v175

    #@131f
    check-cast v175, Landroid/os/BatteryStats$Uid;

    #@1321
    .line 4102
    .restart local v175    # "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1324
    .line 4103
    const-string/jumbo v6, "  "

    #@1327
    move-object/from16 v0, p2

    #@1329
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@132c
    .line 4104
    move-object/from16 v0, p2

    #@132e
    move/from16 v1, v192

    #@1330
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@1333
    .line 4105
    const-string/jumbo v6, ":"

    #@1336
    move-object/from16 v0, p2

    #@1338
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@133b
    .line 4108
    const/4 v6, 0x0

    #@133c
    move-object/from16 v0, v175

    #@133e
    move/from16 v1, p4

    #@1340
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@1343
    move-result-wide v118

    #@1344
    .line 4109
    .local v118, "mobileRxBytes":J
    const/4 v6, 0x1

    #@1345
    move-object/from16 v0, v175

    #@1347
    move/from16 v1, p4

    #@1349
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@134c
    move-result-wide v126

    #@134d
    .line 4110
    .local v126, "mobileTxBytes":J
    const/4 v6, 0x2

    #@134e
    move-object/from16 v0, v175

    #@1350
    move/from16 v1, p4

    #@1352
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@1355
    move-result-wide v220

    #@1356
    .line 4111
    .local v220, "wifiRxBytes":J
    const/4 v6, 0x3

    #@1357
    move-object/from16 v0, v175

    #@1359
    move/from16 v1, p4

    #@135b
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@135e
    move-result-wide v230

    #@135f
    .line 4112
    .local v230, "wifiTxBytes":J
    const/4 v6, 0x4

    #@1360
    move-object/from16 v0, v175

    #@1362
    move/from16 v1, p4

    #@1364
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@1367
    move-result-wide v48

    #@1368
    .line 4113
    .local v48, "btRxBytes":J
    const/4 v6, 0x5

    #@1369
    move-object/from16 v0, v175

    #@136b
    move/from16 v1, p4

    #@136d
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@1370
    move-result-wide v52

    #@1371
    .line 4115
    .local v52, "btTxBytes":J
    const/4 v6, 0x0

    #@1372
    move-object/from16 v0, v175

    #@1374
    move/from16 v1, p4

    #@1376
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@1379
    move-result-wide v120

    #@137a
    .line 4116
    .local v120, "mobileRxPackets":J
    const/4 v6, 0x1

    #@137b
    move-object/from16 v0, v175

    #@137d
    move/from16 v1, p4

    #@137f
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@1382
    move-result-wide v128

    #@1383
    .line 4117
    .local v128, "mobileTxPackets":J
    const/4 v6, 0x2

    #@1384
    move-object/from16 v0, v175

    #@1386
    move/from16 v1, p4

    #@1388
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@138b
    move-result-wide v222

    #@138c
    .line 4118
    .local v222, "wifiRxPackets":J
    const/4 v6, 0x3

    #@138d
    move-object/from16 v0, v175

    #@138f
    move/from16 v1, p4

    #@1391
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@1394
    move-result-wide v232

    #@1395
    .line 4120
    .local v232, "wifiTxPackets":J
    move-object/from16 v0, v175

    #@1397
    move/from16 v1, p4

    #@1399
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    #@139c
    move-result-wide v196

    #@139d
    .line 4121
    .local v196, "uidMobileActiveTime":J
    move-object/from16 v0, v175

    #@139f
    move/from16 v1, p4

    #@13a1
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    #@13a4
    move-result v194

    #@13a5
    .line 4123
    .local v194, "uidMobileActiveCount":I
    move-object/from16 v0, v175

    #@13a7
    move-wide/from16 v1, v24

    #@13a9
    move/from16 v3, p4

    #@13ab
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    #@13ae
    move-result-wide v88

    #@13af
    .line 4124
    .local v88, "fullWifiLockOnTime":J
    move-object/from16 v0, v175

    #@13b1
    move-wide/from16 v1, v24

    #@13b3
    move/from16 v3, p4

    #@13b5
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    #@13b8
    move-result-wide v228

    #@13b9
    .line 4125
    .local v228, "wifiScanTime":J
    move-object/from16 v0, v175

    #@13bb
    move/from16 v1, p4

    #@13bd
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    #@13c0
    move-result v207

    #@13c1
    .line 4126
    .local v207, "wifiScanCount":I
    move-object/from16 v0, v175

    #@13c3
    move-wide/from16 v1, v24

    #@13c5
    move/from16 v3, p4

    #@13c7
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    #@13ca
    move-result-wide v198

    #@13cb
    .line 4128
    .local v198, "uidWifiRunningTime":J
    const-wide/16 v6, 0x0

    #@13cd
    cmp-long v6, v118, v6

    #@13cf
    if-gtz v6, :cond_46

    #@13d1
    const-wide/16 v6, 0x0

    #@13d3
    cmp-long v6, v126, v6

    #@13d5
    if-lez v6, :cond_52

    #@13d7
    .line 4130
    :cond_46
    :goto_1a
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13da
    const-string/jumbo v6, "    Mobile network: "

    #@13dd
    move-object/from16 v0, p2

    #@13df
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13e2
    .line 4131
    move-object/from16 v0, p0

    #@13e4
    move-wide/from16 v1, v118

    #@13e6
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@13e9
    move-result-object v6

    #@13ea
    move-object/from16 v0, p2

    #@13ec
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13ef
    const-string/jumbo v6, " received, "

    #@13f2
    move-object/from16 v0, p2

    #@13f4
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13f7
    .line 4132
    move-object/from16 v0, p0

    #@13f9
    move-wide/from16 v1, v126

    #@13fb
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@13fe
    move-result-object v6

    #@13ff
    move-object/from16 v0, p2

    #@1401
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1404
    .line 4133
    const-string/jumbo v6, " sent (packets "

    #@1407
    move-object/from16 v0, p2

    #@1409
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@140c
    move-object/from16 v0, p2

    #@140e
    move-wide/from16 v1, v120

    #@1410
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@1413
    .line 4134
    const-string/jumbo v6, " received, "

    #@1416
    move-object/from16 v0, p2

    #@1418
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@141b
    move-object/from16 v0, p2

    #@141d
    move-wide/from16 v1, v128

    #@141f
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@1422
    const-string/jumbo v6, " sent)"

    #@1425
    move-object/from16 v0, p2

    #@1427
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@142a
    .line 4136
    :cond_47
    const-wide/16 v6, 0x0

    #@142c
    cmp-long v6, v196, v6

    #@142e
    if-gtz v6, :cond_48

    #@1430
    if-lez v194, :cond_4a

    #@1432
    .line 4137
    :cond_48
    const/4 v6, 0x0

    #@1433
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1436
    .line 4138
    move-object/from16 v0, p3

    #@1438
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143b
    const-string/jumbo v6, "    Mobile radio active: "

    #@143e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1441
    .line 4139
    const-wide/16 v6, 0x3e8

    #@1443
    div-long v6, v196, v6

    #@1445
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1448
    .line 4140
    const-string/jumbo v6, "("

    #@144b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144e
    .line 4141
    move-object/from16 v0, p0

    #@1450
    move-wide/from16 v1, v196

    #@1452
    move-wide/from16 v3, v114

    #@1454
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@1457
    move-result-object v6

    #@1458
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145b
    .line 4142
    const-string/jumbo v6, ") "

    #@145e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1461
    move/from16 v0, v194

    #@1463
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1466
    const-string/jumbo v6, "x"

    #@1469
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146c
    .line 4143
    add-long v138, v120, v128

    #@146e
    .line 4144
    .local v138, "packets":J
    const-wide/16 v6, 0x0

    #@1470
    cmp-long v6, v138, v6

    #@1472
    if-nez v6, :cond_49

    #@1474
    .line 4145
    const-wide/16 v138, 0x1

    #@1476
    .line 4147
    :cond_49
    const-string/jumbo v6, " @ "

    #@1479
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147c
    .line 4148
    const-wide/16 v6, 0x3e8

    #@147e
    div-long v6, v196, v6

    #@1480
    long-to-double v6, v6

    #@1481
    move-wide/from16 v0, v138

    #@1483
    long-to-double v12, v0

    #@1484
    div-double/2addr v6, v12

    #@1485
    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@1488
    move-result-object v6

    #@1489
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148c
    .line 4149
    const-string/jumbo v6, " mspp"

    #@148f
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1492
    .line 4150
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1495
    move-result-object v6

    #@1496
    move-object/from16 v0, p2

    #@1498
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@149b
    .line 4153
    .end local v138    # "packets":J
    :cond_4a
    new-instance v6, Ljava/lang/StringBuilder;

    #@149d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@14a0
    move-object/from16 v0, p3

    #@14a2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a5
    move-result-object v6

    #@14a6
    const-string/jumbo v7, "  "

    #@14a9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14ac
    move-result-object v6

    #@14ad
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14b0
    move-result-object v15

    #@14b1
    const-string/jumbo v16, "Modem"

    #@14b4
    .line 4154
    invoke-virtual/range {v175 .. v175}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@14b7
    move-result-object v17

    #@14b8
    move-object/from16 v12, p0

    #@14ba
    move-object/from16 v13, p2

    #@14bc
    move/from16 v18, p4

    #@14be
    .line 4153
    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    #@14c1
    .line 4156
    const-wide/16 v6, 0x0

    #@14c3
    cmp-long v6, v220, v6

    #@14c5
    if-gtz v6, :cond_4b

    #@14c7
    const-wide/16 v6, 0x0

    #@14c9
    cmp-long v6, v230, v6

    #@14cb
    if-lez v6, :cond_53

    #@14cd
    .line 4157
    :cond_4b
    :goto_1b
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14d0
    const-string/jumbo v6, "    Wi-Fi network: "

    #@14d3
    move-object/from16 v0, p2

    #@14d5
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14d8
    .line 4158
    move-object/from16 v0, p0

    #@14da
    move-wide/from16 v1, v220

    #@14dc
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@14df
    move-result-object v6

    #@14e0
    move-object/from16 v0, p2

    #@14e2
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14e5
    const-string/jumbo v6, " received, "

    #@14e8
    move-object/from16 v0, p2

    #@14ea
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14ed
    .line 4159
    move-object/from16 v0, p0

    #@14ef
    move-wide/from16 v1, v230

    #@14f1
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@14f4
    move-result-object v6

    #@14f5
    move-object/from16 v0, p2

    #@14f7
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14fa
    .line 4160
    const-string/jumbo v6, " sent (packets "

    #@14fd
    move-object/from16 v0, p2

    #@14ff
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1502
    move-object/from16 v0, p2

    #@1504
    move-wide/from16 v1, v222

    #@1506
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@1509
    .line 4161
    const-string/jumbo v6, " received, "

    #@150c
    move-object/from16 v0, p2

    #@150e
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1511
    move-object/from16 v0, p2

    #@1513
    move-wide/from16 v1, v232

    #@1515
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@1518
    const-string/jumbo v6, " sent)"

    #@151b
    move-object/from16 v0, p2

    #@151d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1520
    .line 4164
    :cond_4c
    const-wide/16 v6, 0x0

    #@1522
    cmp-long v6, v88, v6

    #@1524
    if-nez v6, :cond_4d

    #@1526
    const-wide/16 v6, 0x0

    #@1528
    cmp-long v6, v228, v6

    #@152a
    if-eqz v6, :cond_54

    #@152c
    .line 4166
    :cond_4d
    :goto_1c
    const/4 v6, 0x0

    #@152d
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1530
    .line 4167
    move-object/from16 v0, p3

    #@1532
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1535
    const-string/jumbo v6, "    Wifi Running: "

    #@1538
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153b
    .line 4168
    const-wide/16 v6, 0x3e8

    #@153d
    div-long v6, v198, v6

    #@153f
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1542
    .line 4169
    const-string/jumbo v6, "("

    #@1545
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1548
    move-object/from16 v0, p0

    #@154a
    move-wide/from16 v1, v198

    #@154c
    move-wide/from16 v3, v208

    #@154e
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@1551
    move-result-object v6

    #@1552
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1555
    .line 4170
    const-string/jumbo v6, ")\n"

    #@1558
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155b
    .line 4171
    move-object/from16 v0, p3

    #@155d
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1560
    const-string/jumbo v6, "    Full Wifi Lock: "

    #@1563
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1566
    .line 4172
    const-wide/16 v6, 0x3e8

    #@1568
    div-long v6, v88, v6

    #@156a
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@156d
    .line 4173
    const-string/jumbo v6, "("

    #@1570
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1573
    move-object/from16 v0, p0

    #@1575
    move-wide/from16 v1, v88

    #@1577
    move-wide/from16 v3, v208

    #@1579
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@157c
    move-result-object v6

    #@157d
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1580
    .line 4174
    const-string/jumbo v6, ")\n"

    #@1583
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1586
    .line 4175
    move-object/from16 v0, p3

    #@1588
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158b
    const-string/jumbo v6, "    Wifi Scan: "

    #@158e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1591
    .line 4176
    const-wide/16 v6, 0x3e8

    #@1593
    div-long v6, v228, v6

    #@1595
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1598
    .line 4177
    const-string/jumbo v6, "("

    #@159b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159e
    move-object/from16 v0, p0

    #@15a0
    move-wide/from16 v1, v228

    #@15a2
    move-wide/from16 v3, v208

    #@15a4
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@15a7
    move-result-object v6

    #@15a8
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15ab
    .line 4178
    const-string/jumbo v6, ") "

    #@15ae
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b1
    .line 4179
    move/from16 v0, v207

    #@15b3
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15b6
    .line 4180
    const-string/jumbo v6, "x"

    #@15b9
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15bc
    .line 4181
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15bf
    move-result-object v6

    #@15c0
    move-object/from16 v0, p2

    #@15c2
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15c5
    .line 4184
    :cond_4e
    new-instance v6, Ljava/lang/StringBuilder;

    #@15c7
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@15ca
    move-object/from16 v0, p3

    #@15cc
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15cf
    move-result-object v6

    #@15d0
    const-string/jumbo v7, "  "

    #@15d3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d6
    move-result-object v6

    #@15d7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15da
    move-result-object v15

    #@15db
    const-string/jumbo v16, "WiFi"

    #@15de
    .line 4185
    invoke-virtual/range {v175 .. v175}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@15e1
    move-result-object v17

    #@15e2
    move-object/from16 v12, p0

    #@15e4
    move-object/from16 v13, p2

    #@15e6
    move/from16 v18, p4

    #@15e8
    .line 4184
    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    #@15eb
    .line 4187
    const-wide/16 v6, 0x0

    #@15ed
    cmp-long v6, v48, v6

    #@15ef
    if-gtz v6, :cond_4f

    #@15f1
    const-wide/16 v6, 0x0

    #@15f3
    cmp-long v6, v52, v6

    #@15f5
    if-lez v6, :cond_50

    #@15f7
    .line 4188
    :cond_4f
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15fa
    const-string/jumbo v6, "    Bluetooth network: "

    #@15fd
    move-object/from16 v0, p2

    #@15ff
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1602
    .line 4189
    move-object/from16 v0, p0

    #@1604
    move-wide/from16 v1, v48

    #@1606
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@1609
    move-result-object v6

    #@160a
    move-object/from16 v0, p2

    #@160c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@160f
    const-string/jumbo v6, " received, "

    #@1612
    move-object/from16 v0, p2

    #@1614
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1617
    .line 4190
    move-object/from16 v0, p0

    #@1619
    move-wide/from16 v1, v52

    #@161b
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@161e
    move-result-object v6

    #@161f
    move-object/from16 v0, p2

    #@1621
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1624
    .line 4191
    const-string/jumbo v6, " sent"

    #@1627
    move-object/from16 v0, p2

    #@1629
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@162c
    .line 4194
    :cond_50
    invoke-virtual/range {v175 .. v175}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    #@162f
    move-result-object v31

    #@1630
    .line 4195
    const-string/jumbo v36, "Bluetooth Scan"

    #@1633
    move-object/from16 v29, p2

    #@1635
    move-object/from16 v30, v14

    #@1637
    move-wide/from16 v32, v24

    #@1639
    move/from16 v34, p4

    #@163b
    move-object/from16 v35, p3

    #@163d
    .line 4194
    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    #@1640
    move-result v193

    #@1641
    .line 4197
    .local v193, "uidActivity":Z
    invoke-virtual/range {v175 .. v175}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    #@1644
    move-result v6

    #@1645
    if-eqz v6, :cond_57

    #@1647
    .line 4198
    const/16 v91, 0x0

    #@1649
    .line 4199
    .local v91, "hasData":Z
    const/16 v94, 0x0

    #@164b
    :goto_1d
    const/4 v6, 0x4

    #@164c
    move/from16 v0, v94

    #@164e
    if-ge v0, v6, :cond_56

    #@1650
    .line 4200
    move-object/from16 v0, v175

    #@1652
    move/from16 v1, v94

    #@1654
    move/from16 v2, p4

    #@1656
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    #@1659
    move-result v204

    #@165a
    .line 4201
    .local v204, "val":I
    if-eqz v204, :cond_51

    #@165c
    .line 4202
    if-nez v91, :cond_55

    #@165e
    .line 4203
    const/4 v6, 0x0

    #@165f
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1662
    .line 4204
    const-string/jumbo v6, "    User activity: "

    #@1665
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1668
    .line 4205
    const/16 v91, 0x1

    #@166a
    .line 4209
    :goto_1e
    move/from16 v0, v204

    #@166c
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@166f
    .line 4210
    const-string/jumbo v6, " "

    #@1672
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1675
    .line 4211
    sget-object v6, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    #@1677
    aget-object v6, v6, v94

    #@1679
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167c
    .line 4199
    :cond_51
    add-int/lit8 v94, v94, 0x1

    #@167e
    goto :goto_1d

    #@167f
    .line 4129
    .end local v91    # "hasData":Z
    .end local v193    # "uidActivity":Z
    .end local v204    # "val":I
    :cond_52
    const-wide/16 v6, 0x0

    #@1681
    cmp-long v6, v120, v6

    #@1683
    if-gtz v6, :cond_46

    #@1685
    const-wide/16 v6, 0x0

    #@1687
    cmp-long v6, v128, v6

    #@1689
    if-lez v6, :cond_47

    #@168b
    goto/16 :goto_1a

    #@168d
    .line 4156
    :cond_53
    const-wide/16 v6, 0x0

    #@168f
    cmp-long v6, v222, v6

    #@1691
    if-gtz v6, :cond_4b

    #@1693
    const-wide/16 v6, 0x0

    #@1695
    cmp-long v6, v232, v6

    #@1697
    if-lez v6, :cond_4c

    #@1699
    goto/16 :goto_1b

    #@169b
    .line 4164
    :cond_54
    if-nez v207, :cond_4d

    #@169d
    .line 4165
    const-wide/16 v6, 0x0

    #@169f
    cmp-long v6, v198, v6

    #@16a1
    if-eqz v6, :cond_4e

    #@16a3
    goto/16 :goto_1c

    #@16a5
    .line 4207
    .restart local v91    # "hasData":Z
    .restart local v193    # "uidActivity":Z
    .restart local v204    # "val":I
    :cond_55
    const-string/jumbo v6, ", "

    #@16a8
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16ab
    goto :goto_1e

    #@16ac
    .line 4214
    .end local v204    # "val":I
    :cond_56
    if-eqz v91, :cond_57

    #@16ae
    .line 4215
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16b1
    move-result-object v6

    #@16b2
    move-object/from16 v0, p2

    #@16b4
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16b7
    .line 4220
    .end local v91    # "hasData":Z
    :cond_57
    invoke-virtual/range {v175 .. v175}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    #@16ba
    move-result-object v205

    #@16bb
    .line 4221
    .restart local v205    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    const-wide/16 v178, 0x0

    #@16bd
    .local v178, "totalFullWakelock":J
    const-wide/16 v180, 0x0

    #@16bf
    .local v180, "totalPartialWakelock":J
    const-wide/16 v190, 0x0

    #@16c1
    .line 4222
    .local v190, "totalWindowWakelock":J
    const-wide/16 v176, 0x0

    #@16c3
    .line 4223
    .local v176, "totalDrawWakelock":J
    const/16 v60, 0x0

    #@16c5
    .line 4224
    .local v60, "countWakelock":I
    invoke-virtual/range {v205 .. v205}, Landroid/util/ArrayMap;->size()I

    #@16c8
    move-result v6

    #@16c9
    add-int/lit8 v105, v6, -0x1

    #@16cb
    .end local v193    # "uidActivity":Z
    .restart local v105    # "iw":I
    :goto_1f
    if-ltz v105, :cond_58

    #@16cd
    .line 4225
    move-object/from16 v0, v205

    #@16cf
    move/from16 v1, v105

    #@16d1
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@16d4
    move-result-object v238

    #@16d5
    check-cast v238, Landroid/os/BatteryStats$Uid$Wakelock;

    #@16d7
    .line 4226
    .restart local v238    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const-string/jumbo v28, ": "

    #@16da
    .line 4227
    .restart local v28    # "linePrefix":Ljava/lang/String;
    const/4 v6, 0x0

    #@16db
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@16de
    .line 4228
    move-object/from16 v0, p3

    #@16e0
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e3
    .line 4229
    const-string/jumbo v6, "    Wake lock "

    #@16e6
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e9
    .line 4230
    move-object/from16 v0, v205

    #@16eb
    move/from16 v1, v105

    #@16ed
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@16f0
    move-result-object v6

    #@16f1
    check-cast v6, Ljava/lang/String;

    #@16f3
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f6
    .line 4231
    const/4 v6, 0x1

    #@16f7
    move-object/from16 v0, v238

    #@16f9
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@16fc
    move-result-object v23

    #@16fd
    .line 4232
    const-string/jumbo v26, "full"

    #@1700
    move-object/from16 v22, v14

    #@1702
    move/from16 v27, p4

    #@1704
    .line 4231
    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@1707
    move-result-object v28

    #@1708
    .line 4233
    const/4 v6, 0x0

    #@1709
    move-object/from16 v0, v238

    #@170b
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@170e
    move-result-object v23

    #@170f
    .line 4234
    const-string/jumbo v26, "partial"

    #@1712
    move-object/from16 v22, v14

    #@1714
    move/from16 v27, p4

    #@1716
    .line 4233
    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@1719
    move-result-object v28

    #@171a
    .line 4235
    const/4 v6, 0x2

    #@171b
    move-object/from16 v0, v238

    #@171d
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@1720
    move-result-object v23

    #@1721
    .line 4236
    const-string/jumbo v26, "window"

    #@1724
    move-object/from16 v22, v14

    #@1726
    move/from16 v27, p4

    #@1728
    .line 4235
    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@172b
    move-result-object v28

    #@172c
    .line 4237
    const/16 v6, 0x12

    #@172e
    move-object/from16 v0, v238

    #@1730
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@1733
    move-result-object v23

    #@1734
    .line 4238
    const-string/jumbo v26, "draw"

    #@1737
    move-object/from16 v22, v14

    #@1739
    move/from16 v27, p4

    #@173b
    .line 4237
    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@173e
    move-result-object v28

    #@173f
    .line 4239
    const-string/jumbo v6, " realtime"

    #@1742
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1745
    .line 4240
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1748
    move-result-object v6

    #@1749
    move-object/from16 v0, p2

    #@174b
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@174e
    .line 4241
    const/16 v193, 0x1

    #@1750
    .line 4242
    .local v193, "uidActivity":Z
    add-int/lit8 v60, v60, 0x1

    #@1752
    .line 4244
    const/4 v6, 0x1

    #@1753
    move-object/from16 v0, v238

    #@1755
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@1758
    move-result-object v6

    #@1759
    move-wide/from16 v0, v24

    #@175b
    move/from16 v2, p4

    #@175d
    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    #@1760
    move-result-wide v6

    #@1761
    add-long v178, v178, v6

    #@1763
    .line 4246
    const/4 v6, 0x0

    #@1764
    move-object/from16 v0, v238

    #@1766
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@1769
    move-result-object v6

    #@176a
    move-wide/from16 v0, v24

    #@176c
    move/from16 v2, p4

    #@176e
    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    #@1771
    move-result-wide v6

    #@1772
    add-long v180, v180, v6

    #@1774
    .line 4248
    const/4 v6, 0x2

    #@1775
    move-object/from16 v0, v238

    #@1777
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@177a
    move-result-object v6

    #@177b
    move-wide/from16 v0, v24

    #@177d
    move/from16 v2, p4

    #@177f
    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    #@1782
    move-result-wide v6

    #@1783
    add-long v190, v190, v6

    #@1785
    .line 4250
    const/16 v6, 0x12

    #@1787
    move-object/from16 v0, v238

    #@1789
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@178c
    move-result-object v6

    #@178d
    move-wide/from16 v0, v24

    #@178f
    move/from16 v2, p4

    #@1791
    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    #@1794
    move-result-wide v6

    #@1795
    add-long v176, v176, v6

    #@1797
    .line 4224
    add-int/lit8 v105, v105, -0x1

    #@1799
    goto/16 :goto_1f

    #@179b
    .line 4253
    .end local v28    # "linePrefix":Ljava/lang/String;
    .end local v193    # "uidActivity":Z
    .end local v238    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_58
    const/4 v6, 0x1

    #@179c
    move/from16 v0, v60

    #@179e
    if-le v0, v6, :cond_61

    #@17a0
    .line 4254
    const-wide/16 v6, 0x0

    #@17a2
    cmp-long v6, v178, v6

    #@17a4
    if-nez v6, :cond_59

    #@17a6
    const-wide/16 v6, 0x0

    #@17a8
    cmp-long v6, v180, v6

    #@17aa
    if-eqz v6, :cond_62

    #@17ac
    .line 4256
    :cond_59
    :goto_20
    const/4 v6, 0x0

    #@17ad
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@17b0
    .line 4257
    move-object/from16 v0, p3

    #@17b2
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b5
    .line 4258
    const-string/jumbo v6, "    TOTAL wake: "

    #@17b8
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17bb
    .line 4259
    const/16 v111, 0x0

    #@17bd
    .line 4260
    .local v111, "needComma":Z
    const-wide/16 v6, 0x0

    #@17bf
    cmp-long v6, v178, v6

    #@17c1
    if-eqz v6, :cond_5a

    #@17c3
    .line 4261
    const/16 v111, 0x1

    #@17c5
    .line 4262
    move-wide/from16 v0, v178

    #@17c7
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@17ca
    .line 4263
    const-string/jumbo v6, "full"

    #@17cd
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d0
    .line 4265
    :cond_5a
    const-wide/16 v6, 0x0

    #@17d2
    cmp-long v6, v180, v6

    #@17d4
    if-eqz v6, :cond_5c

    #@17d6
    .line 4266
    if-eqz v111, :cond_5b

    #@17d8
    .line 4267
    const-string/jumbo v6, ", "

    #@17db
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17de
    .line 4269
    :cond_5b
    const/16 v111, 0x1

    #@17e0
    .line 4270
    move-wide/from16 v0, v180

    #@17e2
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@17e5
    .line 4271
    const-string/jumbo v6, "partial"

    #@17e8
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17eb
    .line 4273
    :cond_5c
    const-wide/16 v6, 0x0

    #@17ed
    cmp-long v6, v190, v6

    #@17ef
    if-eqz v6, :cond_5e

    #@17f1
    .line 4274
    if-eqz v111, :cond_5d

    #@17f3
    .line 4275
    const-string/jumbo v6, ", "

    #@17f6
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f9
    .line 4277
    :cond_5d
    const/16 v111, 0x1

    #@17fb
    .line 4278
    move-wide/from16 v0, v190

    #@17fd
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1800
    .line 4279
    const-string/jumbo v6, "window"

    #@1803
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1806
    .line 4281
    :cond_5e
    const-wide/16 v6, 0x0

    #@1808
    cmp-long v6, v176, v6

    #@180a
    if-eqz v6, :cond_60

    #@180c
    .line 4282
    if-eqz v111, :cond_5f

    #@180e
    .line 4283
    const-string/jumbo v6, ","

    #@1811
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1814
    .line 4285
    :cond_5f
    const/16 v111, 0x1

    #@1816
    .line 4286
    move-wide/from16 v0, v176

    #@1818
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@181b
    .line 4287
    const-string/jumbo v6, "draw"

    #@181e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1821
    .line 4289
    :cond_60
    const-string/jumbo v6, " realtime"

    #@1824
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1827
    .line 4290
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@182a
    move-result-object v6

    #@182b
    move-object/from16 v0, p2

    #@182d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1830
    .line 4294
    .end local v111    # "needComma":Z
    :cond_61
    invoke-virtual/range {v175 .. v175}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    #@1833
    move-result-object v165

    #@1834
    .line 4295
    .local v165, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v165 .. v165}, Landroid/util/ArrayMap;->size()I

    #@1837
    move-result v6

    #@1838
    add-int/lit8 v103, v6, -0x1

    #@183a
    .local v103, "isy":I
    :goto_21
    if-ltz v103, :cond_64

    #@183c
    .line 4296
    move-object/from16 v0, v165

    #@183e
    move/from16 v1, v103

    #@1840
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1843
    move-result-object v19

    #@1844
    check-cast v19, Landroid/os/BatteryStats$Timer;

    #@1846
    .line 4298
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v19

    #@1848
    move-wide/from16 v1, v24

    #@184a
    move/from16 v3, p4

    #@184c
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@184f
    move-result-wide v6

    #@1850
    const-wide/16 v12, 0x1f4

    #@1852
    add-long/2addr v6, v12

    #@1853
    const-wide/16 v12, 0x3e8

    #@1855
    div-long v186, v6, v12

    #@1857
    .line 4299
    .restart local v186    # "totalTime":J
    move-object/from16 v0, v19

    #@1859
    move/from16 v1, p4

    #@185b
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@185e
    move-result v59

    #@185f
    .line 4300
    .local v59, "count":I
    const/4 v6, 0x0

    #@1860
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1863
    .line 4301
    move-object/from16 v0, p3

    #@1865
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1868
    .line 4302
    const-string/jumbo v6, "    Sync "

    #@186b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186e
    .line 4303
    move-object/from16 v0, v165

    #@1870
    move/from16 v1, v103

    #@1872
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1875
    move-result-object v6

    #@1876
    check-cast v6, Ljava/lang/String;

    #@1878
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187b
    .line 4304
    const-string/jumbo v6, ": "

    #@187e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1881
    .line 4305
    const-wide/16 v6, 0x0

    #@1883
    cmp-long v6, v186, v6

    #@1885
    if-eqz v6, :cond_63

    #@1887
    .line 4306
    move-wide/from16 v0, v186

    #@1889
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@188c
    .line 4307
    const-string/jumbo v6, "realtime ("

    #@188f
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1892
    .line 4308
    move/from16 v0, v59

    #@1894
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1897
    .line 4309
    const-string/jumbo v6, " times)"

    #@189a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189d
    .line 4313
    :goto_22
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18a0
    move-result-object v6

    #@18a1
    move-object/from16 v0, p2

    #@18a3
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18a6
    .line 4314
    const/16 v193, 0x1

    #@18a8
    .line 4295
    .restart local v193    # "uidActivity":Z
    add-int/lit8 v103, v103, -0x1

    #@18aa
    goto :goto_21

    #@18ab
    .line 4255
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v59    # "count":I
    .end local v103    # "isy":I
    .end local v165    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v186    # "totalTime":J
    .end local v193    # "uidActivity":Z
    :cond_62
    const-wide/16 v6, 0x0

    #@18ad
    cmp-long v6, v190, v6

    #@18af
    if-eqz v6, :cond_61

    #@18b1
    goto/16 :goto_20

    #@18b3
    .line 4311
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v59    # "count":I
    .restart local v103    # "isy":I
    .restart local v165    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v186    # "totalTime":J
    :cond_63
    const-string/jumbo v6, "(not used)"

    #@18b6
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b9
    goto :goto_22

    #@18ba
    .line 4317
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v59    # "count":I
    .end local v186    # "totalTime":J
    :cond_64
    invoke-virtual/range {v175 .. v175}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    #@18bd
    move-result-object v107

    #@18be
    .line 4318
    .local v107, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v107 .. v107}, Landroid/util/ArrayMap;->size()I

    #@18c1
    move-result v6

    #@18c2
    add-int/lit8 v95, v6, -0x1

    #@18c4
    .local v95, "ij":I
    :goto_23
    if-ltz v95, :cond_66

    #@18c6
    .line 4319
    move-object/from16 v0, v107

    #@18c8
    move/from16 v1, v95

    #@18ca
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@18cd
    move-result-object v19

    #@18ce
    check-cast v19, Landroid/os/BatteryStats$Timer;

    #@18d0
    .line 4321
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v19

    #@18d2
    move-wide/from16 v1, v24

    #@18d4
    move/from16 v3, p4

    #@18d6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@18d9
    move-result-wide v6

    #@18da
    const-wide/16 v12, 0x1f4

    #@18dc
    add-long/2addr v6, v12

    #@18dd
    const-wide/16 v12, 0x3e8

    #@18df
    div-long v186, v6, v12

    #@18e1
    .line 4322
    .restart local v186    # "totalTime":J
    move-object/from16 v0, v19

    #@18e3
    move/from16 v1, p4

    #@18e5
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@18e8
    move-result v59

    #@18e9
    .line 4323
    .restart local v59    # "count":I
    const/4 v6, 0x0

    #@18ea
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@18ed
    .line 4324
    move-object/from16 v0, p3

    #@18ef
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18f2
    .line 4325
    const-string/jumbo v6, "    Job "

    #@18f5
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18f8
    .line 4326
    move-object/from16 v0, v107

    #@18fa
    move/from16 v1, v95

    #@18fc
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@18ff
    move-result-object v6

    #@1900
    check-cast v6, Ljava/lang/String;

    #@1902
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1905
    .line 4327
    const-string/jumbo v6, ": "

    #@1908
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@190b
    .line 4328
    const-wide/16 v6, 0x0

    #@190d
    cmp-long v6, v186, v6

    #@190f
    if-eqz v6, :cond_65

    #@1911
    .line 4329
    move-wide/from16 v0, v186

    #@1913
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1916
    .line 4330
    const-string/jumbo v6, "realtime ("

    #@1919
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@191c
    .line 4331
    move/from16 v0, v59

    #@191e
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1921
    .line 4332
    const-string/jumbo v6, " times)"

    #@1924
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1927
    .line 4336
    :goto_24
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@192a
    move-result-object v6

    #@192b
    move-object/from16 v0, p2

    #@192d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1930
    .line 4337
    const/16 v193, 0x1

    #@1932
    .line 4318
    .restart local v193    # "uidActivity":Z
    add-int/lit8 v95, v95, -0x1

    #@1934
    goto :goto_23

    #@1935
    .line 4334
    .end local v193    # "uidActivity":Z
    :cond_65
    const-string/jumbo v6, "(not used)"

    #@1938
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193b
    goto :goto_24

    #@193c
    .line 4340
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v59    # "count":I
    .end local v186    # "totalTime":J
    :cond_66
    invoke-virtual/range {v175 .. v175}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@193f
    move-result-object v31

    #@1940
    .line 4341
    const-string/jumbo v36, "Flashlight"

    #@1943
    move-object/from16 v29, p2

    #@1945
    move-object/from16 v30, v14

    #@1947
    move-wide/from16 v32, v24

    #@1949
    move/from16 v34, p4

    #@194b
    move-object/from16 v35, p3

    #@194d
    .line 4340
    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    #@1950
    move-result v6

    #@1951
    or-int v193, v193, v6

    #@1953
    .line 4342
    .local v193, "uidActivity":Z
    invoke-virtual/range {v175 .. v175}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@1956
    move-result-object v31

    #@1957
    .line 4343
    const-string/jumbo v36, "Camera"

    #@195a
    move-object/from16 v29, p2

    #@195c
    move-object/from16 v30, v14

    #@195e
    move-wide/from16 v32, v24

    #@1960
    move/from16 v34, p4

    #@1962
    move-object/from16 v35, p3

    #@1964
    .line 4342
    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    #@1967
    move-result v6

    #@1968
    or-int v193, v193, v6

    #@196a
    .line 4344
    invoke-virtual/range {v175 .. v175}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@196d
    move-result-object v31

    #@196e
    .line 4345
    const-string/jumbo v36, "Video"

    #@1971
    move-object/from16 v29, p2

    #@1973
    move-object/from16 v30, v14

    #@1975
    move-wide/from16 v32, v24

    #@1977
    move/from16 v34, p4

    #@1979
    move-object/from16 v35, p3

    #@197b
    .line 4344
    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    #@197e
    move-result v6

    #@197f
    or-int v193, v193, v6

    #@1981
    .line 4346
    invoke-virtual/range {v175 .. v175}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@1984
    move-result-object v31

    #@1985
    .line 4347
    const-string/jumbo v36, "Audio"

    #@1988
    move-object/from16 v29, p2

    #@198a
    move-object/from16 v30, v14

    #@198c
    move-wide/from16 v32, v24

    #@198e
    move/from16 v34, p4

    #@1990
    move-object/from16 v35, p3

    #@1992
    .line 4346
    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    #@1995
    move-result v6

    #@1996
    or-int v193, v193, v6

    #@1998
    .line 4349
    invoke-virtual/range {v175 .. v175}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    #@199b
    move-result-object v158

    #@199c
    .line 4350
    .local v158, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v158 .. v158}, Landroid/util/SparseArray;->size()I

    #@199f
    move-result v37

    #@19a0
    .line 4351
    .local v37, "NSE":I
    const/16 v101, 0x0

    #@19a2
    .end local v193    # "uidActivity":Z
    .local v101, "ise":I
    :goto_25
    move/from16 v0, v101

    #@19a4
    move/from16 v1, v37

    #@19a6
    if-ge v0, v1, :cond_6a

    #@19a8
    .line 4352
    move-object/from16 v0, v158

    #@19aa
    move/from16 v1, v101

    #@19ac
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@19af
    move-result-object v156

    #@19b0
    check-cast v156, Landroid/os/BatteryStats$Uid$Sensor;

    #@19b2
    .line 4353
    .local v156, "se":Landroid/os/BatteryStats$Uid$Sensor;
    move-object/from16 v0, v158

    #@19b4
    move/from16 v1, v101

    #@19b6
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@19b9
    move-result v157

    #@19ba
    .line 4354
    .local v157, "sensorNumber":I
    const/4 v6, 0x0

    #@19bb
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@19be
    .line 4355
    move-object/from16 v0, p3

    #@19c0
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c3
    .line 4356
    const-string/jumbo v6, "    Sensor "

    #@19c6
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c9
    .line 4357
    invoke-virtual/range {v156 .. v156}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    #@19cc
    move-result v90

    #@19cd
    .line 4358
    .local v90, "handle":I
    const/16 v6, -0x2710

    #@19cf
    move/from16 v0, v90

    #@19d1
    if-ne v0, v6, :cond_67

    #@19d3
    .line 4359
    const-string/jumbo v6, "GPS"

    #@19d6
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d9
    .line 4363
    :goto_26
    const-string/jumbo v6, ": "

    #@19dc
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19df
    .line 4365
    invoke-virtual/range {v156 .. v156}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    #@19e2
    move-result-object v19

    #@19e3
    .line 4366
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v19, :cond_69

    #@19e5
    .line 4368
    move-object/from16 v0, v19

    #@19e7
    move-wide/from16 v1, v24

    #@19e9
    move/from16 v3, p4

    #@19eb
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@19ee
    move-result-wide v6

    #@19ef
    .line 4369
    const-wide/16 v12, 0x1f4

    #@19f1
    .line 4368
    add-long/2addr v6, v12

    #@19f2
    .line 4369
    const-wide/16 v12, 0x3e8

    #@19f4
    .line 4368
    div-long v186, v6, v12

    #@19f6
    .line 4370
    .restart local v186    # "totalTime":J
    move-object/from16 v0, v19

    #@19f8
    move/from16 v1, p4

    #@19fa
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@19fd
    move-result v59

    #@19fe
    .line 4372
    .restart local v59    # "count":I
    const-wide/16 v6, 0x0

    #@1a00
    cmp-long v6, v186, v6

    #@1a02
    if-eqz v6, :cond_68

    #@1a04
    .line 4373
    move-wide/from16 v0, v186

    #@1a06
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1a09
    .line 4374
    const-string/jumbo v6, "realtime ("

    #@1a0c
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0f
    .line 4375
    move/from16 v0, v59

    #@1a11
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a14
    .line 4376
    const-string/jumbo v6, " times)"

    #@1a17
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1a
    .line 4384
    .end local v59    # "count":I
    .end local v186    # "totalTime":J
    :goto_27
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a1d
    move-result-object v6

    #@1a1e
    move-object/from16 v0, p2

    #@1a20
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a23
    .line 4385
    const/16 v193, 0x1

    #@1a25
    .line 4351
    .local v193, "uidActivity":Z
    add-int/lit8 v101, v101, 0x1

    #@1a27
    goto/16 :goto_25

    #@1a29
    .line 4361
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v193    # "uidActivity":Z
    :cond_67
    move/from16 v0, v90

    #@1a2b
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a2e
    goto :goto_26

    #@1a2f
    .line 4378
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v59    # "count":I
    .restart local v186    # "totalTime":J
    :cond_68
    const-string/jumbo v6, "(not used)"

    #@1a32
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a35
    goto :goto_27

    #@1a36
    .line 4381
    .end local v59    # "count":I
    .end local v186    # "totalTime":J
    :cond_69
    const-string/jumbo v6, "(not used)"

    #@1a39
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a3c
    goto :goto_27

    #@1a3d
    .line 4388
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v90    # "handle":I
    .end local v156    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v157    # "sensorNumber":I
    :cond_6a
    invoke-virtual/range {v175 .. v175}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    #@1a40
    move-result-object v31

    #@1a41
    .line 4389
    const-string/jumbo v36, "Vibrator"

    #@1a44
    move-object/from16 v29, p2

    #@1a46
    move-object/from16 v30, v14

    #@1a48
    move-wide/from16 v32, v24

    #@1a4a
    move/from16 v34, p4

    #@1a4c
    move-object/from16 v35, p3

    #@1a4e
    .line 4388
    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    #@1a51
    move-result v6

    #@1a52
    or-int v193, v193, v6

    #@1a54
    .line 4390
    .local v193, "uidActivity":Z
    invoke-virtual/range {v175 .. v175}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    #@1a57
    move-result-object v31

    #@1a58
    .line 4391
    const-string/jumbo v36, "Foreground activities"

    #@1a5b
    move-object/from16 v29, p2

    #@1a5d
    move-object/from16 v30, v14

    #@1a5f
    move-wide/from16 v32, v24

    #@1a61
    move/from16 v34, p4

    #@1a63
    move-object/from16 v35, p3

    #@1a65
    .line 4390
    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    #@1a68
    move-result v6

    #@1a69
    or-int v193, v193, v6

    #@1a6b
    .line 4393
    const-wide/16 v184, 0x0

    #@1a6d
    .line 4394
    .local v184, "totalStateTime":J
    const/16 v100, 0x0

    #@1a6f
    .end local v193    # "uidActivity":Z
    .local v100, "ips":I
    :goto_28
    const/4 v6, 0x6

    #@1a70
    move/from16 v0, v100

    #@1a72
    if-ge v0, v6, :cond_6c

    #@1a74
    .line 4395
    move-object/from16 v0, v175

    #@1a76
    move/from16 v1, v100

    #@1a78
    move-wide/from16 v2, v24

    #@1a7a
    move/from16 v4, p4

    #@1a7c
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    #@1a7f
    move-result-wide v170

    #@1a80
    .line 4396
    .restart local v170    # "time":J
    const-wide/16 v6, 0x0

    #@1a82
    cmp-long v6, v170, v6

    #@1a84
    if-lez v6, :cond_6b

    #@1a86
    .line 4397
    add-long v184, v184, v170

    #@1a88
    .line 4398
    const/4 v6, 0x0

    #@1a89
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1a8c
    .line 4399
    move-object/from16 v0, p3

    #@1a8e
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a91
    .line 4400
    const-string/jumbo v6, "    "

    #@1a94
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a97
    .line 4401
    sget-object v6, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    #@1a99
    aget-object v6, v6, v100

    #@1a9b
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a9e
    .line 4402
    const-string/jumbo v6, " for: "

    #@1aa1
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1aa4
    .line 4403
    const-wide/16 v6, 0x1f4

    #@1aa6
    add-long v6, v6, v170

    #@1aa8
    const-wide/16 v12, 0x3e8

    #@1aaa
    div-long/2addr v6, v12

    #@1aab
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1aae
    .line 4404
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ab1
    move-result-object v6

    #@1ab2
    move-object/from16 v0, p2

    #@1ab4
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ab7
    .line 4405
    const/16 v193, 0x1

    #@1ab9
    .line 4394
    :cond_6b
    add-int/lit8 v100, v100, 0x1

    #@1abb
    goto :goto_28

    #@1abc
    .line 4408
    .end local v170    # "time":J
    :cond_6c
    const-wide/16 v6, 0x0

    #@1abe
    cmp-long v6, v184, v6

    #@1ac0
    if-lez v6, :cond_6d

    #@1ac2
    .line 4409
    const/4 v6, 0x0

    #@1ac3
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1ac6
    .line 4410
    move-object/from16 v0, p3

    #@1ac8
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1acb
    .line 4411
    const-string/jumbo v6, "    Total running: "

    #@1ace
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad1
    .line 4412
    const-wide/16 v6, 0x1f4

    #@1ad3
    add-long v6, v6, v184

    #@1ad5
    const-wide/16 v12, 0x3e8

    #@1ad7
    div-long/2addr v6, v12

    #@1ad8
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1adb
    .line 4413
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ade
    move-result-object v6

    #@1adf
    move-object/from16 v0, p2

    #@1ae1
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ae4
    .line 4416
    :cond_6d
    move-object/from16 v0, v175

    #@1ae6
    move/from16 v1, p4

    #@1ae8
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    #@1aeb
    move-result-wide v200

    #@1aec
    .line 4417
    .local v200, "userCpuTimeUs":J
    move-object/from16 v0, v175

    #@1aee
    move/from16 v1, p4

    #@1af0
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    #@1af3
    move-result-wide v166

    #@1af4
    .line 4418
    .local v166, "systemCpuTimeUs":J
    move-object/from16 v0, v175

    #@1af6
    move/from16 v1, p4

    #@1af8
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getCpuPowerMaUs(I)J

    #@1afb
    move-result-wide v144

    #@1afc
    .line 4419
    .local v144, "powerCpuMaUs":J
    const-wide/16 v6, 0x0

    #@1afe
    cmp-long v6, v200, v6

    #@1b00
    if-gtz v6, :cond_6e

    #@1b02
    const-wide/16 v6, 0x0

    #@1b04
    cmp-long v6, v166, v6

    #@1b06
    if-lez v6, :cond_78

    #@1b08
    .line 4420
    :cond_6e
    :goto_29
    const/4 v6, 0x0

    #@1b09
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1b0c
    .line 4421
    move-object/from16 v0, p3

    #@1b0e
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b11
    .line 4422
    const-string/jumbo v6, "    Total cpu time: u="

    #@1b14
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b17
    .line 4423
    const-wide/16 v6, 0x3e8

    #@1b19
    div-long v6, v200, v6

    #@1b1b
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1b1e
    .line 4424
    const-string/jumbo v6, "s="

    #@1b21
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b24
    .line 4425
    const-wide/16 v6, 0x3e8

    #@1b26
    div-long v6, v166, v6

    #@1b28
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1b2b
    .line 4426
    const-string/jumbo v6, "p="

    #@1b2e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b31
    .line 4427
    move-wide/from16 v0, v144

    #@1b33
    long-to-double v6, v0

    #@1b34
    const-wide v12, 0x41ead27480000000L    # 3.6E9

    #@1b39
    div-double/2addr v6, v12

    #@1b3a
    move-object/from16 v0, p0

    #@1b3c
    invoke-direct {v0, v14, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/lang/StringBuilder;D)V

    #@1b3f
    .line 4428
    const-string/jumbo v6, "mAh"

    #@1b42
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b45
    .line 4429
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b48
    move-result-object v6

    #@1b49
    move-object/from16 v0, p2

    #@1b4b
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b4e
    .line 4433
    :cond_6f
    invoke-virtual/range {v175 .. v175}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    #@1b51
    move-result-object v148

    #@1b52
    .line 4434
    .local v148, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual/range {v148 .. v148}, Landroid/util/ArrayMap;->size()I

    #@1b55
    move-result v6

    #@1b56
    add-int/lit8 v99, v6, -0x1

    #@1b58
    .local v99, "ipr":I
    :goto_2a
    if-ltz v99, :cond_7f

    #@1b5a
    .line 4435
    move-object/from16 v0, v148

    #@1b5c
    move/from16 v1, v99

    #@1b5e
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1b61
    move-result-object v150

    #@1b62
    check-cast v150, Landroid/os/BatteryStats$Uid$Proc;

    #@1b64
    .line 4442
    .local v150, "ps":Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v150

    #@1b66
    move/from16 v1, p4

    #@1b68
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    #@1b6b
    move-result-wide v202

    #@1b6c
    .line 4443
    .local v202, "userTime":J
    move-object/from16 v0, v150

    #@1b6e
    move/from16 v1, p4

    #@1b70
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    #@1b73
    move-result-wide v168

    #@1b74
    .line 4444
    .local v168, "systemTime":J
    move-object/from16 v0, v150

    #@1b76
    move/from16 v1, p4

    #@1b78
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    #@1b7b
    move-result-wide v84

    #@1b7c
    .line 4445
    .local v84, "foregroundTime":J
    move-object/from16 v0, v150

    #@1b7e
    move/from16 v1, p4

    #@1b80
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    #@1b83
    move-result v164

    #@1b84
    .line 4446
    .local v164, "starts":I
    move-object/from16 v0, v150

    #@1b86
    move/from16 v1, p4

    #@1b88
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    #@1b8b
    move-result v135

    #@1b8c
    .line 4447
    .local v135, "numCrashes":I
    move-object/from16 v0, v150

    #@1b8e
    move/from16 v1, p4

    #@1b90
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    #@1b93
    move-result v134

    #@1b94
    .line 4448
    .local v134, "numAnrs":I
    if-nez p4, :cond_79

    #@1b96
    .line 4449
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    #@1b99
    move-result v136

    #@1b9a
    .line 4451
    .local v136, "numExcessive":I
    :goto_2b
    const-wide/16 v6, 0x0

    #@1b9c
    cmp-long v6, v202, v6

    #@1b9e
    if-nez v6, :cond_70

    #@1ba0
    const-wide/16 v6, 0x0

    #@1ba2
    cmp-long v6, v168, v6

    #@1ba4
    if-eqz v6, :cond_7a

    #@1ba6
    .line 4453
    :cond_70
    const/4 v6, 0x0

    #@1ba7
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1baa
    .line 4454
    move-object/from16 v0, p3

    #@1bac
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1baf
    const-string/jumbo v6, "    Proc "

    #@1bb2
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb5
    .line 4455
    move-object/from16 v0, v148

    #@1bb7
    move/from16 v1, v99

    #@1bb9
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1bbc
    move-result-object v6

    #@1bbd
    check-cast v6, Ljava/lang/String;

    #@1bbf
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc2
    const-string/jumbo v6, ":\n"

    #@1bc5
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc8
    .line 4456
    move-object/from16 v0, p3

    #@1bca
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bcd
    const-string/jumbo v6, "      CPU: "

    #@1bd0
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd3
    .line 4457
    move-wide/from16 v0, v202

    #@1bd5
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1bd8
    const-string/jumbo v6, "usr + "

    #@1bdb
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bde
    .line 4458
    move-wide/from16 v0, v168

    #@1be0
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1be3
    const-string/jumbo v6, "krn ; "

    #@1be6
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be9
    .line 4459
    move-wide/from16 v0, v84

    #@1beb
    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1bee
    const-string/jumbo v6, "fg"

    #@1bf1
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bf4
    .line 4460
    if-nez v164, :cond_71

    #@1bf6
    if-eqz v135, :cond_7b

    #@1bf8
    .line 4461
    :cond_71
    :goto_2c
    const-string/jumbo v6, "\n"

    #@1bfb
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bfe
    move-object/from16 v0, p3

    #@1c00
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c03
    const-string/jumbo v6, "      "

    #@1c06
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c09
    .line 4462
    const/16 v92, 0x0

    #@1c0b
    .line 4463
    .local v92, "hasOne":Z
    if-eqz v164, :cond_72

    #@1c0d
    .line 4464
    const/16 v92, 0x1

    #@1c0f
    .line 4465
    move/from16 v0, v164

    #@1c11
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c14
    const-string/jumbo v6, " starts"

    #@1c17
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c1a
    .line 4467
    :cond_72
    if-eqz v135, :cond_74

    #@1c1c
    .line 4468
    if-eqz v92, :cond_73

    #@1c1e
    .line 4469
    const-string/jumbo v6, ", "

    #@1c21
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c24
    .line 4471
    :cond_73
    const/16 v92, 0x1

    #@1c26
    .line 4472
    move/from16 v0, v135

    #@1c28
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c2b
    const-string/jumbo v6, " crashes"

    #@1c2e
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c31
    .line 4474
    :cond_74
    if-eqz v134, :cond_76

    #@1c33
    .line 4475
    if-eqz v92, :cond_75

    #@1c35
    .line 4476
    const-string/jumbo v6, ", "

    #@1c38
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c3b
    .line 4478
    :cond_75
    move/from16 v0, v134

    #@1c3d
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c40
    const-string/jumbo v6, " anrs"

    #@1c43
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c46
    .line 4481
    .end local v92    # "hasOne":Z
    :cond_76
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c49
    move-result-object v6

    #@1c4a
    move-object/from16 v0, p2

    #@1c4c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c4f
    .line 4482
    const/16 v78, 0x0

    #@1c51
    .local v78, "e":I
    :goto_2d
    move/from16 v0, v78

    #@1c53
    move/from16 v1, v136

    #@1c55
    if-ge v0, v1, :cond_7e

    #@1c57
    .line 4483
    move-object/from16 v0, v150

    #@1c59
    move/from16 v1, v78

    #@1c5b
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    #@1c5e
    move-result-object v82

    #@1c5f
    .line 4484
    .local v82, "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    if-eqz v82, :cond_77

    #@1c61
    .line 4485
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c64
    const-string/jumbo v6, "      * Killed for "

    #@1c67
    move-object/from16 v0, p2

    #@1c69
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c6c
    .line 4486
    move-object/from16 v0, v82

    #@1c6e
    iget v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    #@1c70
    const/4 v7, 0x1

    #@1c71
    if-ne v6, v7, :cond_7c

    #@1c73
    .line 4487
    const-string/jumbo v6, "wake lock"

    #@1c76
    move-object/from16 v0, p2

    #@1c78
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c7b
    .line 4493
    :goto_2e
    const-string/jumbo v6, " use: "

    #@1c7e
    move-object/from16 v0, p2

    #@1c80
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c83
    .line 4494
    move-object/from16 v0, v82

    #@1c85
    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    #@1c87
    move-object/from16 v0, p2

    #@1c89
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@1c8c
    .line 4495
    const-string/jumbo v6, " over "

    #@1c8f
    move-object/from16 v0, p2

    #@1c91
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c94
    .line 4496
    move-object/from16 v0, v82

    #@1c96
    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    #@1c98
    move-object/from16 v0, p2

    #@1c9a
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@1c9d
    .line 4497
    move-object/from16 v0, v82

    #@1c9f
    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    #@1ca1
    const-wide/16 v12, 0x0

    #@1ca3
    cmp-long v6, v6, v12

    #@1ca5
    if-eqz v6, :cond_77

    #@1ca7
    .line 4498
    const-string/jumbo v6, " ("

    #@1caa
    move-object/from16 v0, p2

    #@1cac
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1caf
    .line 4499
    move-object/from16 v0, v82

    #@1cb1
    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    #@1cb3
    const-wide/16 v12, 0x64

    #@1cb5
    mul-long/2addr v6, v12

    #@1cb6
    move-object/from16 v0, v82

    #@1cb8
    iget-wide v12, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    #@1cba
    div-long/2addr v6, v12

    #@1cbb
    move-object/from16 v0, p2

    #@1cbd
    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    #@1cc0
    .line 4500
    const-string/jumbo v6, "%)"

    #@1cc3
    move-object/from16 v0, p2

    #@1cc5
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1cc8
    .line 4482
    :cond_77
    add-int/lit8 v78, v78, 0x1

    #@1cca
    goto :goto_2d

    #@1ccb
    .line 4419
    .end local v78    # "e":I
    .end local v82    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .end local v84    # "foregroundTime":J
    .end local v99    # "ipr":I
    .end local v134    # "numAnrs":I
    .end local v135    # "numCrashes":I
    .end local v136    # "numExcessive":I
    .end local v148    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v150    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v164    # "starts":I
    .end local v168    # "systemTime":J
    .end local v202    # "userTime":J
    :cond_78
    const-wide/16 v6, 0x0

    #@1ccd
    cmp-long v6, v144, v6

    #@1ccf
    if-lez v6, :cond_6f

    #@1cd1
    goto/16 :goto_29

    #@1cd3
    .line 4449
    .restart local v84    # "foregroundTime":J
    .restart local v99    # "ipr":I
    .restart local v134    # "numAnrs":I
    .restart local v135    # "numCrashes":I
    .restart local v148    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v150    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .restart local v164    # "starts":I
    .restart local v168    # "systemTime":J
    .restart local v202    # "userTime":J
    :cond_79
    const/16 v136, 0x0

    #@1cd5
    .restart local v136    # "numExcessive":I
    goto/16 :goto_2b

    #@1cd7
    .line 4451
    :cond_7a
    const-wide/16 v6, 0x0

    #@1cd9
    cmp-long v6, v84, v6

    #@1cdb
    if-nez v6, :cond_70

    #@1cdd
    if-nez v164, :cond_70

    #@1cdf
    .line 4452
    if-nez v136, :cond_70

    #@1ce1
    if-nez v135, :cond_70

    #@1ce3
    if-nez v134, :cond_70

    #@1ce5
    .line 4434
    :goto_2f
    add-int/lit8 v99, v99, -0x1

    #@1ce7
    goto/16 :goto_2a

    #@1ce9
    .line 4460
    :cond_7b
    if-eqz v134, :cond_76

    #@1ceb
    goto/16 :goto_2c

    #@1ced
    .line 4488
    .restart local v78    # "e":I
    .restart local v82    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    :cond_7c
    move-object/from16 v0, v82

    #@1cef
    iget v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    #@1cf1
    const/4 v7, 0x2

    #@1cf2
    if-ne v6, v7, :cond_7d

    #@1cf4
    .line 4489
    const-string/jumbo v6, "cpu"

    #@1cf7
    move-object/from16 v0, p2

    #@1cf9
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1cfc
    goto/16 :goto_2e

    #@1cfe
    .line 4491
    :cond_7d
    const-string/jumbo v6, "unknown"

    #@1d01
    move-object/from16 v0, p2

    #@1d03
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d06
    goto/16 :goto_2e

    #@1d08
    .line 4504
    .end local v82    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    :cond_7e
    const/16 v193, 0x1

    #@1d0a
    .local v193, "uidActivity":Z
    goto :goto_2f

    #@1d0b
    .line 4509
    .end local v78    # "e":I
    .end local v84    # "foregroundTime":J
    .end local v134    # "numAnrs":I
    .end local v135    # "numCrashes":I
    .end local v136    # "numExcessive":I
    .end local v150    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v164    # "starts":I
    .end local v168    # "systemTime":J
    .end local v193    # "uidActivity":Z
    .end local v202    # "userTime":J
    :cond_7f
    invoke-virtual/range {v175 .. v175}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    #@1d0e
    move-result-object v137

    #@1d0f
    .line 4510
    .local v137, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual/range {v137 .. v137}, Landroid/util/ArrayMap;->size()I

    #@1d12
    move-result v6

    #@1d13
    add-int/lit8 v98, v6, -0x1

    #@1d15
    .local v98, "ipkg":I
    :goto_30
    if-ltz v98, :cond_86

    #@1d17
    .line 4511
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d1a
    const-string/jumbo v6, "    Apk "

    #@1d1d
    move-object/from16 v0, p2

    #@1d1f
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d22
    move-object/from16 v0, v137

    #@1d24
    move/from16 v1, v98

    #@1d26
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1d29
    move-result-object v6

    #@1d2a
    check-cast v6, Ljava/lang/String;

    #@1d2c
    move-object/from16 v0, p2

    #@1d2e
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d31
    .line 4512
    const-string/jumbo v6, ":"

    #@1d34
    move-object/from16 v0, p2

    #@1d36
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d39
    .line 4513
    const/16 v40, 0x0

    #@1d3b
    .line 4514
    .local v40, "apkActivity":Z
    move-object/from16 v0, v137

    #@1d3d
    move/from16 v1, v98

    #@1d3f
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1d42
    move-result-object v149

    #@1d43
    check-cast v149, Landroid/os/BatteryStats$Uid$Pkg;

    #@1d45
    .line 4515
    .local v149, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    invoke-virtual/range {v149 .. v149}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    #@1d48
    move-result-object v39

    #@1d49
    .line 4516
    .local v39, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual/range {v39 .. v39}, Landroid/util/ArrayMap;->size()I

    #@1d4c
    move-result v6

    #@1d4d
    add-int/lit8 v106, v6, -0x1

    #@1d4f
    .local v106, "iwa":I
    :goto_31
    if-ltz v106, :cond_80

    #@1d51
    .line 4517
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d54
    const-string/jumbo v6, "      Wakeup alarm "

    #@1d57
    move-object/from16 v0, p2

    #@1d59
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d5c
    .line 4518
    move-object/from16 v0, v39

    #@1d5e
    move/from16 v1, v106

    #@1d60
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1d63
    move-result-object v6

    #@1d64
    check-cast v6, Ljava/lang/String;

    #@1d66
    move-object/from16 v0, p2

    #@1d68
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d6b
    const-string/jumbo v6, ": "

    #@1d6e
    move-object/from16 v0, p2

    #@1d70
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d73
    .line 4519
    move-object/from16 v0, v39

    #@1d75
    move/from16 v1, v106

    #@1d77
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1d7a
    move-result-object v6

    #@1d7b
    check-cast v6, Landroid/os/BatteryStats$Counter;

    #@1d7d
    move/from16 v0, p4

    #@1d7f
    invoke-virtual {v6, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    #@1d82
    move-result v6

    #@1d83
    move-object/from16 v0, p2

    #@1d85
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    #@1d88
    .line 4520
    const-string/jumbo v6, " times"

    #@1d8b
    move-object/from16 v0, p2

    #@1d8d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d90
    .line 4521
    const/16 v40, 0x1

    #@1d92
    .line 4516
    add-int/lit8 v106, v106, -0x1

    #@1d94
    goto :goto_31

    #@1d95
    .line 4523
    :cond_80
    invoke-virtual/range {v149 .. v149}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    #@1d98
    move-result-object v159

    #@1d99
    .line 4524
    .local v159, "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual/range {v159 .. v159}, Landroid/util/ArrayMap;->size()I

    #@1d9c
    move-result v6

    #@1d9d
    add-int/lit8 v102, v6, -0x1

    #@1d9f
    .local v102, "isvc":I
    :goto_32
    if-ltz v102, :cond_84

    #@1da1
    .line 4525
    move-object/from16 v0, v159

    #@1da3
    move/from16 v1, v102

    #@1da5
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1da8
    move-result-object v161

    #@1da9
    check-cast v161, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    #@1dab
    .line 4526
    .local v161, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move-object/from16 v0, v161

    #@1dad
    move-wide/from16 v1, v44

    #@1daf
    move/from16 v3, p4

    #@1db1
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    #@1db4
    move-result-wide v162

    #@1db5
    .line 4527
    .local v162, "startTime":J
    move-object/from16 v0, v161

    #@1db7
    move/from16 v1, p4

    #@1db9
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    #@1dbc
    move-result v164

    #@1dbd
    .line 4528
    .restart local v164    # "starts":I
    move-object/from16 v0, v161

    #@1dbf
    move/from16 v1, p4

    #@1dc1
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    #@1dc4
    move-result v110

    #@1dc5
    .line 4529
    .local v110, "launches":I
    const-wide/16 v6, 0x0

    #@1dc7
    cmp-long v6, v162, v6

    #@1dc9
    if-nez v6, :cond_81

    #@1dcb
    if-eqz v164, :cond_83

    #@1dcd
    .line 4530
    :cond_81
    :goto_33
    const/4 v6, 0x0

    #@1dce
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1dd1
    .line 4531
    move-object/from16 v0, p3

    #@1dd3
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dd6
    const-string/jumbo v6, "      Service "

    #@1dd9
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ddc
    .line 4532
    move-object/from16 v0, v159

    #@1dde
    move/from16 v1, v102

    #@1de0
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1de3
    move-result-object v6

    #@1de4
    check-cast v6, Ljava/lang/String;

    #@1de6
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1de9
    const-string/jumbo v6, ":\n"

    #@1dec
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1def
    .line 4533
    move-object/from16 v0, p3

    #@1df1
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1df4
    const-string/jumbo v6, "        Created for: "

    #@1df7
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dfa
    .line 4534
    const-wide/16 v6, 0x3e8

    #@1dfc
    div-long v6, v162, v6

    #@1dfe
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1e01
    .line 4535
    const-string/jumbo v6, "uptime\n"

    #@1e04
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e07
    .line 4536
    move-object/from16 v0, p3

    #@1e09
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e0c
    const-string/jumbo v6, "        Starts: "

    #@1e0f
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e12
    .line 4537
    move/from16 v0, v164

    #@1e14
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e17
    .line 4538
    const-string/jumbo v6, ", launches: "

    #@1e1a
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e1d
    move/from16 v0, v110

    #@1e1f
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e22
    .line 4539
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e25
    move-result-object v6

    #@1e26
    move-object/from16 v0, p2

    #@1e28
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e2b
    .line 4540
    const/16 v40, 0x1

    #@1e2d
    .line 4524
    :cond_82
    add-int/lit8 v102, v102, -0x1

    #@1e2f
    goto/16 :goto_32

    #@1e31
    .line 4529
    :cond_83
    if-eqz v110, :cond_82

    #@1e33
    goto :goto_33

    #@1e34
    .line 4543
    .end local v110    # "launches":I
    .end local v161    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v162    # "startTime":J
    .end local v164    # "starts":I
    :cond_84
    if-nez v40, :cond_85

    #@1e36
    .line 4544
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e39
    const-string/jumbo v6, "      (nothing executed)"

    #@1e3c
    move-object/from16 v0, p2

    #@1e3e
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e41
    .line 4546
    :cond_85
    const/16 v193, 0x1

    #@1e43
    .line 4510
    .restart local v193    # "uidActivity":Z
    add-int/lit8 v98, v98, -0x1

    #@1e45
    goto/16 :goto_30

    #@1e47
    .line 4548
    .end local v39    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v40    # "apkActivity":Z
    .end local v102    # "isvc":I
    .end local v106    # "iwa":I
    .end local v149    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v159    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v193    # "uidActivity":Z
    :cond_86
    if-nez v193, :cond_44

    #@1e49
    .line 4549
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e4c
    const-string/jumbo v6, "    (nothing executed)"

    #@1e4f
    move-object/from16 v0, p2

    #@1e51
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e54
    goto/16 :goto_19

    #@1e56
    .line 3339
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
    .end local v137    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v144    # "powerCpuMaUs":J
    .end local v148    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v158    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v165    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v166    # "systemCpuTimeUs":J
    .end local v175    # "u":Landroid/os/BatteryStats$Uid;
    .end local v176    # "totalDrawWakelock":J
    .end local v178    # "totalFullWakelock":J
    .end local v180    # "totalPartialWakelock":J
    .end local v184    # "totalStateTime":J
    .end local v190    # "totalWindowWakelock":J
    .end local v192    # "uid":I
    .end local v194    # "uidMobileActiveCount":I
    .end local v196    # "uidMobileActiveTime":J
    .end local v198    # "uidWifiRunningTime":J
    .end local v200    # "userCpuTimeUs":J
    .end local v205    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v207    # "wifiScanCount":I
    .end local v220    # "wifiRxBytes":J
    .end local v222    # "wifiRxPackets":J
    .end local v228    # "wifiScanTime":J
    .end local v230    # "wifiTxBytes":J
    .end local v232    # "wifiTxPackets":J
    :cond_87
    return-void

    #@1e57
    .line 3877
    nop

    #@1e58
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
    .line 2485
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@4
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    #@7
    .line 2487
    const-wide/16 v0, 0x400

    #@9
    cmp-long v0, p1, v0

    #@b
    if-gez v0, :cond_0

    #@d
    .line 2488
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
    .line 2489
    :cond_0
    const-wide/32 v0, 0x100000

    #@25
    cmp-long v0, p1, v0

    #@27
    if-gez v0, :cond_1

    #@29
    .line 2490
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
    .line 2491
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    return-object v0

    #@44
    .line 2492
    :cond_1
    const-wide/32 v0, 0x40000000

    #@47
    cmp-long v0, p1, v0

    #@49
    if-gez v0, :cond_2

    #@4b
    .line 2493
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
    .line 2494
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v0

    #@65
    return-object v0

    #@66
    .line 2496
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
    .line 2497
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
    .line 2475
    const-wide/16 v2, 0x0

    #@3
    cmp-long v1, p3, v2

    #@5
    if-nez v1, :cond_0

    #@7
    .line 2476
    const-string/jumbo v1, "--%"

    #@a
    return-object v1

    #@b
    .line 2478
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
    .line 2479
    .local v0, "perc":F
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@14
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    #@17
    .line 2480
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
    .line 2481
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
    .line 4603
    return-void
.end method

.method public abstract startIteratingHistoryLocked()Z
.end method

.method public abstract startIteratingOldHistoryLocked()Z
.end method

.method public abstract writeToParcelWithoutUids(Landroid/os/Parcel;I)V
.end method
