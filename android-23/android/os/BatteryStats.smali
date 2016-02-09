.class public abstract Landroid/os/BatteryStats;
.super Ljava/lang/Object;
.source "BatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$Counter;,
        Landroid/os/BatteryStats$LongCounter;,
        Landroid/os/BatteryStats$Timer;,
        Landroid/os/BatteryStats$Uid;,
        Landroid/os/BatteryStats$LevelStepTracker;,
        Landroid/os/BatteryStats$PackageChange;,
        Landroid/os/BatteryStats$DailyItem;,
        Landroid/os/BatteryStats$HistoryTag;,
        Landroid/os/BatteryStats$HistoryStepDetails;,
        Landroid/os/BatteryStats$HistoryItem;,
        Landroid/os/BatteryStats$HistoryEventTracker;,
        Landroid/os/BatteryStats$BitDescription;,
        Landroid/os/BatteryStats$TimerEntry;,
        Landroid/os/BatteryStats$HistoryPrinter;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_os_BatterySipper$DrainTypeSwitchesValues:[I = null

.field private static final APK_DATA:Ljava/lang/String; = "apk"

.field private static final AUDIO_DATA:Ljava/lang/String; = "aud"

.field public static final AUDIO_TURNED_ON:I = 0xf

.field private static final BATTERY_DATA:Ljava/lang/String; = "bt"

.field private static final BATTERY_DISCHARGE_DATA:Ljava/lang/String; = "dc"

.field private static final BATTERY_LEVEL_DATA:Ljava/lang/String; = "lv"

.field private static final BATTERY_STATS_CHECKIN_VERSION:I = 0x9

.field private static final BYTES_PER_GB:J = 0x40000000L

.field private static final BYTES_PER_KB:J = 0x400L

.field private static final BYTES_PER_MB:J = 0x100000L

.field private static final CAMERA_DATA:Ljava/lang/String; = "cam"

.field public static final CAMERA_TURNED_ON:I = 0x11

.field private static final CHARGE_STEP_DATA:Ljava/lang/String; = "csd"

.field private static final CHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "ctr"

.field static final CHECKIN_VERSION:Ljava/lang/String; = "14"

.field public static final CONTROLLER_IDLE_TIME:I = 0x0

.field public static final CONTROLLER_POWER_DRAIN:I = 0x3

.field public static final CONTROLLER_RX_TIME:I = 0x1

.field public static final CONTROLLER_TX_TIME:I = 0x2

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

.field private static final GLOBAL_BLUETOOTH_DATA:Ljava/lang/String; = "gble"

.field private static final GLOBAL_NETWORK_DATA:Ljava/lang/String; = "gn"

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

.field private static final NETWORK_DATA:Ljava/lang/String; = "nt"

.field public static final NETWORK_MOBILE_RX_DATA:I = 0x0

.field public static final NETWORK_MOBILE_TX_DATA:I = 0x1

.field public static final NETWORK_WIFI_RX_DATA:I = 0x2

.field public static final NETWORK_WIFI_TX_DATA:I = 0x3

.field public static final NUM_CONTROLLER_ACTIVITY_TYPES:I = 0x4

.field public static final NUM_DATA_CONNECTION_TYPES:I = 0x11

.field public static final NUM_NETWORK_ACTIVITY_TYPES:I = 0x4

.field public static final NUM_SCREEN_BRIGHTNESS_BINS:I = 0x5

.field public static final NUM_WIFI_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final NUM_WIFI_STATES:I = 0x8

.field public static final NUM_WIFI_SUPPL_STATES:I = 0xd

.field private static final POWER_USE_ITEM_DATA:Ljava/lang/String; = "pwi"

.field private static final POWER_USE_SUMMARY_DATA:Ljava/lang/String; = "pws"

.field private static final PROCESS_DATA:Ljava/lang/String; = "pr"

.field public static final PROCESS_STATE:I = 0xc

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

.field private static final WAKEUP_REASON_DATA:Ljava/lang/String; = "wr"

.field public static final WAKE_TYPE_DRAW:I = 0x12

.field public static final WAKE_TYPE_FULL:I = 0x1

.field public static final WAKE_TYPE_PARTIAL:I = 0x0

.field public static final WAKE_TYPE_WINDOW:I = 0x2

.field public static final WIFI_BATCHED_SCAN:I = 0xb

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
.method private static synthetic -getcom_android_internal_os_BatterySipper$DrainTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/os/BatteryStats;->-com_android_internal_os_BatterySipper$DrainTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/os/BatteryStats;->-com_android_internal_os_BatterySipper$DrainTypeSwitchesValues:[I

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
    sput-object v0, Landroid/os/BatteryStats;->-com_android_internal_os_BatterySipper$DrainTypeSwitchesValues:[I

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
    .line 167
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
    .line 1585
    const/4 v0, 0x5

    #@19
    new-array v0, v0, [Ljava/lang/String;

    #@1b
    .line 1586
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
    .line 1585
    sput-object v0, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    #@36
    .line 1589
    const/4 v0, 0x5

    #@37
    new-array v0, v0, [Ljava/lang/String;

    #@39
    .line 1590
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
    .line 1589
    sput-object v0, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    #@54
    .line 1756
    const/16 v0, 0x11

    #@56
    new-array v0, v0, [Ljava/lang/String;

    #@58
    .line 1757
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
    .line 1758
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
    .line 1759
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
    .line 1756
    sput-object v0, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    #@c4
    .line 1797
    const/16 v0, 0xd

    #@c6
    new-array v0, v0, [Ljava/lang/String;

    #@c8
    .line 1798
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
    .line 1799
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
    .line 1800
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
    .line 1797
    sput-object v0, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    #@118
    .line 1803
    const/16 v0, 0xd

    #@11a
    new-array v0, v0, [Ljava/lang/String;

    #@11c
    .line 1804
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
    .line 1805
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
    .line 1806
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
    .line 1803
    sput-object v0, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    #@16c
    .line 1810
    const/16 v0, 0x11

    #@16e
    new-array v7, v0, [Landroid/os/BatteryStats$BitDescription;

    #@170
    .line 1811
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
    .line 1812
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
    .line 1813
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
    .line 1814
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
    .line 1815
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
    .line 1816
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
    .line 1817
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
    .line 1818
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
    .line 1819
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
    .line 1820
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
    .line 1821
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
    .line 1822
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
    .line 1823
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
    .line 1824
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@242
    .line 1825
    const-string/jumbo v3, "data_conn"

    #@245
    const-string/jumbo v4, "Pcn"

    #@248
    .line 1826
    sget-object v5, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    #@24a
    sget-object v6, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    #@24c
    .line 1824
    const/16 v1, 0x3e00

    #@24e
    .line 1825
    const/16 v2, 0x9

    #@250
    .line 1824
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@253
    const/16 v1, 0xd

    #@255
    aput-object v0, v7, v1

    #@257
    .line 1827
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@259
    .line 1828
    const-string/jumbo v3, "phone_state"

    #@25c
    const-string/jumbo v4, "Pst"

    #@25f
    .line 1829
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
    .line 1830
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
    .line 1827
    const/16 v1, 0x1c0

    #@28d
    .line 1828
    const/4 v2, 0x6

    #@28e
    .line 1827
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@291
    const/16 v1, 0xe

    #@293
    aput-object v0, v7, v1

    #@295
    .line 1831
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@297
    .line 1832
    const-string/jumbo v3, "phone_signal_strength"

    #@29a
    const-string/jumbo v4, "Pss"

    #@29d
    .line 1833
    sget-object v5, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    #@29f
    .line 1834
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
    .line 1831
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
    .line 1835
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@2c7
    .line 1836
    const-string/jumbo v3, "brightness"

    #@2ca
    const-string/jumbo v4, "Sb"

    #@2cd
    .line 1837
    sget-object v5, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    #@2cf
    sget-object v6, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    #@2d1
    .line 1835
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
    .line 1809
    sput-object v7, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    #@2dc
    .line 1841
    const/16 v0, 0xc

    #@2de
    new-array v7, v0, [Landroid/os/BatteryStats$BitDescription;

    #@2e0
    .line 1842
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
    .line 1843
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
    .line 1844
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
    .line 1845
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
    .line 1846
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
    .line 1847
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@32d
    const-string/jumbo v1, "device_idle"

    #@330
    const-string/jumbo v2, "di"

    #@333
    const/high16 v3, 0x4000000

    #@335
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@338
    const/4 v1, 0x5

    #@339
    aput-object v0, v7, v1

    #@33b
    .line 1848
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@33d
    const-string/jumbo v1, "charging"

    #@340
    const-string/jumbo v2, "ch"

    #@343
    const/high16 v3, 0x2000000

    #@345
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@348
    const/4 v1, 0x6

    #@349
    aput-object v0, v7, v1

    #@34b
    .line 1849
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@34d
    const-string/jumbo v1, "phone_in_call"

    #@350
    const-string/jumbo v2, "Pcl"

    #@353
    const/high16 v3, 0x1000000

    #@355
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@358
    const/4 v1, 0x7

    #@359
    aput-object v0, v7, v1

    #@35b
    .line 1850
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@35d
    const-string/jumbo v1, "bluetooth"

    #@360
    const-string/jumbo v2, "b"

    #@363
    const/high16 v3, 0x800000

    #@365
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@368
    const/16 v1, 0x8

    #@36a
    aput-object v0, v7, v1

    #@36c
    .line 1851
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@36e
    .line 1852
    const-string/jumbo v3, "wifi_signal_strength"

    #@371
    const-string/jumbo v4, "Wss"

    #@374
    .line 1853
    const/4 v1, 0x5

    #@375
    new-array v5, v1, [Ljava/lang/String;

    #@377
    const-string/jumbo v1, "0"

    #@37a
    aput-object v1, v5, v8

    #@37c
    const-string/jumbo v1, "1"

    #@37f
    aput-object v1, v5, v10

    #@381
    const-string/jumbo v1, "2"

    #@384
    aput-object v1, v5, v11

    #@386
    const-string/jumbo v1, "3"

    #@389
    aput-object v1, v5, v9

    #@38b
    const-string/jumbo v1, "4"

    #@38e
    aput-object v1, v5, v12

    #@390
    .line 1854
    const/4 v1, 0x5

    #@391
    new-array v6, v1, [Ljava/lang/String;

    #@393
    const-string/jumbo v1, "0"

    #@396
    aput-object v1, v6, v8

    #@398
    const-string/jumbo v1, "1"

    #@39b
    aput-object v1, v6, v10

    #@39d
    const-string/jumbo v1, "2"

    #@3a0
    aput-object v1, v6, v11

    #@3a2
    const-string/jumbo v1, "3"

    #@3a5
    aput-object v1, v6, v9

    #@3a7
    const-string/jumbo v1, "4"

    #@3aa
    aput-object v1, v6, v12

    #@3ac
    .line 1851
    const/16 v1, 0x70

    #@3ae
    move v2, v12

    #@3af
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@3b2
    const/16 v1, 0x9

    #@3b4
    aput-object v0, v7, v1

    #@3b6
    .line 1855
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@3b8
    .line 1856
    const-string/jumbo v3, "wifi_suppl"

    #@3bb
    const-string/jumbo v4, "Wsp"

    #@3be
    .line 1857
    sget-object v5, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    #@3c0
    sget-object v6, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    #@3c2
    .line 1855
    const/16 v1, 0xf

    #@3c4
    move v2, v8

    #@3c5
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@3c8
    const/16 v1, 0xa

    #@3ca
    aput-object v0, v7, v1

    #@3cc
    .line 1858
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    #@3ce
    const-string/jumbo v1, "camera"

    #@3d1
    const-string/jumbo v2, "ca"

    #@3d4
    const/high16 v3, 0x400000

    #@3d6
    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@3d9
    const/16 v1, 0xb

    #@3db
    aput-object v0, v7, v1

    #@3dd
    .line 1840
    sput-object v7, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    #@3df
    .line 1861
    const/16 v0, 0x13

    #@3e1
    new-array v0, v0, [Ljava/lang/String;

    #@3e3
    .line 1862
    const-string/jumbo v1, "null"

    #@3e6
    aput-object v1, v0, v8

    #@3e8
    const-string/jumbo v1, "proc"

    #@3eb
    aput-object v1, v0, v10

    #@3ed
    const-string/jumbo v1, "fg"

    #@3f0
    aput-object v1, v0, v11

    #@3f2
    const-string/jumbo v1, "top"

    #@3f5
    aput-object v1, v0, v9

    #@3f7
    const-string/jumbo v1, "sync"

    #@3fa
    aput-object v1, v0, v12

    #@3fc
    const-string/jumbo v1, "wake_lock_in"

    #@3ff
    const/4 v2, 0x5

    #@400
    aput-object v1, v0, v2

    #@402
    const-string/jumbo v1, "job"

    #@405
    const/4 v2, 0x6

    #@406
    aput-object v1, v0, v2

    #@408
    const-string/jumbo v1, "user"

    #@40b
    const/4 v2, 0x7

    #@40c
    aput-object v1, v0, v2

    #@40e
    const-string/jumbo v1, "userfg"

    #@411
    const/16 v2, 0x8

    #@413
    aput-object v1, v0, v2

    #@415
    const-string/jumbo v1, "conn"

    #@418
    const/16 v2, 0x9

    #@41a
    aput-object v1, v0, v2

    #@41c
    .line 1863
    const-string/jumbo v1, "active"

    #@41f
    const/16 v2, 0xa

    #@421
    aput-object v1, v0, v2

    #@423
    const-string/jumbo v1, "pkginst"

    #@426
    const/16 v2, 0xb

    #@428
    aput-object v1, v0, v2

    #@42a
    const-string/jumbo v1, "pkgunin"

    #@42d
    const/16 v2, 0xc

    #@42f
    aput-object v1, v0, v2

    #@431
    const-string/jumbo v1, "alarm"

    #@434
    const/16 v2, 0xd

    #@436
    aput-object v1, v0, v2

    #@438
    const-string/jumbo v1, "stats"

    #@43b
    const/16 v2, 0xe

    #@43d
    aput-object v1, v0, v2

    #@43f
    const-string/jumbo v1, "inactive"

    #@442
    const/16 v2, 0xf

    #@444
    aput-object v1, v0, v2

    #@446
    const-string/jumbo v1, "active"

    #@449
    const/16 v2, 0x10

    #@44b
    aput-object v1, v0, v2

    #@44d
    const-string/jumbo v1, "tmpwhitelist"

    #@450
    const/16 v2, 0x11

    #@452
    aput-object v1, v0, v2

    #@454
    .line 1864
    const-string/jumbo v1, "screenwake"

    #@457
    const/16 v2, 0x12

    #@459
    aput-object v1, v0, v2

    #@45b
    .line 1861
    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    #@45d
    .line 1867
    const/16 v0, 0x13

    #@45f
    new-array v0, v0, [Ljava/lang/String;

    #@461
    .line 1868
    const-string/jumbo v1, "Enl"

    #@464
    aput-object v1, v0, v8

    #@466
    const-string/jumbo v1, "Epr"

    #@469
    aput-object v1, v0, v10

    #@46b
    const-string/jumbo v1, "Efg"

    #@46e
    aput-object v1, v0, v11

    #@470
    const-string/jumbo v1, "Etp"

    #@473
    aput-object v1, v0, v9

    #@475
    const-string/jumbo v1, "Esy"

    #@478
    aput-object v1, v0, v12

    #@47a
    const-string/jumbo v1, "Ewl"

    #@47d
    const/4 v2, 0x5

    #@47e
    aput-object v1, v0, v2

    #@480
    const-string/jumbo v1, "Ejb"

    #@483
    const/4 v2, 0x6

    #@484
    aput-object v1, v0, v2

    #@486
    const-string/jumbo v1, "Eur"

    #@489
    const/4 v2, 0x7

    #@48a
    aput-object v1, v0, v2

    #@48c
    const-string/jumbo v1, "Euf"

    #@48f
    const/16 v2, 0x8

    #@491
    aput-object v1, v0, v2

    #@493
    const-string/jumbo v1, "Ecn"

    #@496
    const/16 v2, 0x9

    #@498
    aput-object v1, v0, v2

    #@49a
    .line 1869
    const-string/jumbo v1, "Eac"

    #@49d
    const/16 v2, 0xa

    #@49f
    aput-object v1, v0, v2

    #@4a1
    const-string/jumbo v1, "Epi"

    #@4a4
    const/16 v2, 0xb

    #@4a6
    aput-object v1, v0, v2

    #@4a8
    const-string/jumbo v1, "Epu"

    #@4ab
    const/16 v2, 0xc

    #@4ad
    aput-object v1, v0, v2

    #@4af
    const-string/jumbo v1, "Eal"

    #@4b2
    const/16 v2, 0xd

    #@4b4
    aput-object v1, v0, v2

    #@4b6
    const-string/jumbo v1, "Est"

    #@4b9
    const/16 v2, 0xe

    #@4bb
    aput-object v1, v0, v2

    #@4bd
    const-string/jumbo v1, "Eai"

    #@4c0
    const/16 v2, 0xf

    #@4c2
    aput-object v1, v0, v2

    #@4c4
    const-string/jumbo v1, "Eaa"

    #@4c7
    const/16 v2, 0x10

    #@4c9
    aput-object v1, v0, v2

    #@4cb
    const-string/jumbo v1, "Etw"

    #@4ce
    const/16 v2, 0x11

    #@4d0
    aput-object v1, v0, v2

    #@4d2
    .line 1870
    const-string/jumbo v1, "Esw"

    #@4d5
    const/16 v2, 0x12

    #@4d7
    aput-object v1, v0, v2

    #@4d9
    .line 1867
    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    #@4db
    .line 1898
    const/16 v0, 0x8

    #@4dd
    new-array v0, v0, [Ljava/lang/String;

    #@4df
    .line 1899
    const-string/jumbo v1, "off"

    #@4e2
    aput-object v1, v0, v8

    #@4e4
    const-string/jumbo v1, "scanning"

    #@4e7
    aput-object v1, v0, v10

    #@4e9
    const-string/jumbo v1, "no_net"

    #@4ec
    aput-object v1, v0, v11

    #@4ee
    const-string/jumbo v1, "disconn"

    #@4f1
    aput-object v1, v0, v9

    #@4f3
    .line 1900
    const-string/jumbo v1, "sta"

    #@4f6
    aput-object v1, v0, v12

    #@4f8
    const-string/jumbo v1, "p2p"

    #@4fb
    const/4 v2, 0x5

    #@4fc
    aput-object v1, v0, v2

    #@4fe
    const-string/jumbo v1, "sta_p2p"

    #@501
    const/4 v2, 0x6

    #@502
    aput-object v1, v0, v2

    #@504
    const-string/jumbo v1, "soft_ap"

    #@507
    const/4 v2, 0x7

    #@508
    aput-object v1, v0, v2

    #@50a
    .line 1898
    sput-object v0, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    #@50c
    .line 2205
    const/16 v0, 0xa

    #@50e
    new-array v0, v0, [I

    #@510
    fill-array-data v0, :array_0

    #@513
    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    #@515
    .line 2217
    const/16 v0, 0xa

    #@517
    new-array v0, v0, [I

    #@519
    fill-array-data v0, :array_1

    #@51c
    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    #@51e
    .line 2229
    const/16 v0, 0xa

    #@520
    new-array v0, v0, [Ljava/lang/String;

    #@522
    .line 2230
    const-string/jumbo v1, "screen off"

    #@525
    aput-object v1, v0, v8

    #@527
    .line 2231
    const-string/jumbo v1, "screen off power save"

    #@52a
    aput-object v1, v0, v10

    #@52c
    .line 2232
    const-string/jumbo v1, "screen off device idle"

    #@52f
    aput-object v1, v0, v11

    #@531
    .line 2233
    const-string/jumbo v1, "screen on"

    #@534
    aput-object v1, v0, v9

    #@536
    .line 2234
    const-string/jumbo v1, "screen on power save"

    #@539
    aput-object v1, v0, v12

    #@53b
    .line 2235
    const-string/jumbo v1, "screen doze"

    #@53e
    const/4 v2, 0x5

    #@53f
    aput-object v1, v0, v2

    #@541
    .line 2236
    const-string/jumbo v1, "screen doze power save"

    #@544
    const/4 v2, 0x6

    #@545
    aput-object v1, v0, v2

    #@547
    .line 2237
    const-string/jumbo v1, "screen doze-suspend"

    #@54a
    const/4 v2, 0x7

    #@54b
    aput-object v1, v0, v2

    #@54d
    .line 2238
    const-string/jumbo v1, "screen doze-suspend power save"

    #@550
    const/16 v2, 0x8

    #@552
    aput-object v1, v0, v2

    #@554
    .line 2239
    const-string/jumbo v1, "screen doze-suspend device idle"

    #@557
    const/16 v2, 0x9

    #@559
    aput-object v1, v0, v2

    #@55b
    .line 2229
    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    #@55d
    .line 47
    return-void

    #@55e
    .line 2205
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

    #@576
    .line 2217
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
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    const/16 v1, 0x20

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@a
    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@c
    .line 233
    new-instance v0, Ljava/util/Formatter;

    #@e
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    #@13
    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    #@15
    .line 47
    return-void
.end method

.method private static computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .locals 9
    .param p0, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 2353
    if-eqz p0, :cond_0

    #@2
    .line 2355
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@5
    move-result-wide v0

    #@6
    .line 2356
    .local v0, "totalTimeMicros":J
    const-wide/16 v4, 0x1f4

    #@8
    add-long/2addr v4, v0

    #@9
    const-wide/16 v6, 0x3e8

    #@b
    div-long v2, v4, v6

    #@d
    .line 2357
    .local v2, "totalTimeMillis":J
    return-wide v2

    #@e
    .line 2359
    .end local v0    # "totalTimeMicros":J
    .end local v2    # "totalTimeMillis":J
    :cond_0
    const-wide/16 v4, 0x0

    #@10
    return-wide v4
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
    .line 4803
    if-nez p4, :cond_0

    #@2
    .line 4804
    return-void

    #@3
    .line 4806
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
    .line 4807
    .local v12, "timeRemaining":J
    const-wide/16 v4, 0x0

    #@11
    cmp-long v3, v12, v4

    #@13
    if-ltz v3, :cond_1

    #@15
    .line 4808
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
    .line 4809
    const/4 v3, 0x0

    #@24
    move-object/from16 v0, p5

    #@26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    #@29
    .line 4810
    move-object/from16 v0, p5

    #@2b
    invoke-static {v0, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@2e
    .line 4811
    move-object/from16 v0, p5

    #@30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@33
    .line 4812
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
    .line 4813
    const-string/jumbo v3, " steps)"

    #@42
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@45
    .line 4815
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
    .line 4816
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    #@4d
    aget v3, v3, v2

    #@4f
    int-to-long v4, v3

    #@50
    .line 4817
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
    .line 4816
    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    #@5c
    move-result-wide v10

    #@5d
    .line 4818
    .local v10, "estimatedTime":J
    const-wide/16 v4, 0x0

    #@5f
    cmp-long v3, v10, v4

    #@61
    if-lez v3, :cond_2

    #@63
    .line 4819
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
    .line 4820
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    #@73
    aget-object v3, v3, v2

    #@75
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@78
    .line 4821
    const-string/jumbo v3, " time: "

    #@7b
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7e
    .line 4822
    const/4 v3, 0x0

    #@7f
    move-object/from16 v0, p5

    #@81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    #@84
    .line 4823
    move-object/from16 v0, p5

    #@86
    invoke-static {v0, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@89
    .line 4824
    move-object/from16 v0, p5

    #@8b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@8e
    .line 4825
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
    .line 4826
    const-string/jumbo v3, " steps)"

    #@9d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a0
    .line 4815
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@a2
    goto :goto_0

    #@a3
    .line 4802
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
    .line 4833
    .local p3, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    if-nez p3, :cond_0

    #@2
    .line 4834
    return-void

    #@3
    .line 4836
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    const-string/jumbo v2, "Package changes:"

    #@9
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 4837
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
    .line 4838
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/os/BatteryStats$PackageChange;

    #@19
    .line 4839
    .local v1, "pc":Landroid/os/BatteryStats$PackageChange;
    iget-boolean v2, v1, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 4840
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
    .line 4841
    const-string/jumbo v2, " vers="

    #@2e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    iget v2, v1, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    #@33
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    #@36
    .line 4837
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_0

    #@39
    .line 4843
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
    .line 4832
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
    .line 4631
    if-nez p3, :cond_0

    #@2
    .line 4632
    const/4 v11, 0x0

    #@3
    return v11

    #@4
    .line 4634
    :cond_0
    move-object/from16 v0, p3

    #@6
    iget v2, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    #@8
    .line 4635
    .local v2, "count":I
    if-gtz v2, :cond_1

    #@a
    .line 4636
    const/4 v11, 0x0

    #@b
    return v11

    #@c
    .line 4638
    :cond_1
    if-nez p4, :cond_2

    #@e
    .line 4639
    move-object/from16 v0, p0

    #@10
    move-object/from16 v1, p2

    #@12
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15
    .line 4641
    :cond_2
    const/4 v11, 0x5

    #@16
    new-array v10, v11, [Ljava/lang/String;

    #@18
    .line 4642
    .local v10, "lineArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    #@19
    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_11

    #@1b
    .line 4643
    move-object/from16 v0, p3

    #@1d
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    #@20
    move-result-wide v4

    #@21
    .line 4644
    .local v4, "duration":J
    move-object/from16 v0, p3

    #@23
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    #@26
    move-result v7

    #@27
    .line 4645
    .local v7, "level":I
    move-object/from16 v0, p3

    #@29
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    #@2c
    move-result v11

    #@2d
    int-to-long v8, v11

    #@2e
    .line 4646
    .local v8, "initMode":J
    move-object/from16 v0, p3

    #@30
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    #@33
    move-result v11

    #@34
    int-to-long v12, v11

    #@35
    .line 4647
    .local v12, "modMode":J
    if-eqz p4, :cond_8

    #@37
    .line 4648
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3a
    move-result-object v11

    #@3b
    const/4 v14, 0x0

    #@3c
    aput-object v11, v10, v14

    #@3e
    .line 4649
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@41
    move-result-object v11

    #@42
    const/4 v14, 0x1

    #@43
    aput-object v11, v10, v14

    #@45
    .line 4650
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
    .line 4651
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
    .line 4656
    const-string/jumbo v11, "?"

    #@5a
    const/4 v14, 0x2

    #@5b
    aput-object v11, v10, v14

    #@5d
    .line 4661
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
    .line 4662
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
    .line 4666
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
    .line 4667
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
    .line 4671
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
    .line 4642
    :goto_6
    add-int/lit8 v6, v6, 0x1

    #@9a
    goto/16 :goto_0

    #@9c
    .line 4652
    :pswitch_0
    const-string/jumbo v11, "s-"

    #@9f
    const/4 v14, 0x2

    #@a0
    aput-object v11, v10, v14

    #@a2
    goto :goto_1

    #@a3
    .line 4653
    :pswitch_1
    const-string/jumbo v11, "s+"

    #@a6
    const/4 v14, 0x2

    #@a7
    aput-object v11, v10, v14

    #@a9
    goto :goto_1

    #@aa
    .line 4654
    :pswitch_2
    const-string/jumbo v11, "sd"

    #@ad
    const/4 v14, 0x2

    #@ae
    aput-object v11, v10, v14

    #@b0
    goto :goto_1

    #@b1
    .line 4655
    :pswitch_3
    const-string/jumbo v11, "sds"

    #@b4
    const/4 v14, 0x2

    #@b5
    aput-object v11, v10, v14

    #@b7
    goto :goto_1

    #@b8
    .line 4659
    :cond_3
    const-string/jumbo v11, ""

    #@bb
    const/4 v14, 0x2

    #@bc
    aput-object v11, v10, v14

    #@be
    goto :goto_1

    #@bf
    .line 4662
    :cond_4
    const-string/jumbo v11, "p-"

    #@c2
    goto :goto_2

    #@c3
    .line 4664
    :cond_5
    const-string/jumbo v11, ""

    #@c6
    const/4 v14, 0x3

    #@c7
    aput-object v11, v10, v14

    #@c9
    goto :goto_3

    #@ca
    .line 4667
    :cond_6
    const-string/jumbo v11, "i-"

    #@cd
    goto :goto_4

    #@ce
    .line 4669
    :cond_7
    const-string/jumbo v11, ""

    #@d1
    const/4 v14, 0x4

    #@d2
    aput-object v11, v10, v14

    #@d4
    goto :goto_5

    #@d5
    .line 4673
    :cond_8
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d8
    .line 4674
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
    .line 4675
    move-object/from16 v0, p0

    #@ef
    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@f2
    .line 4676
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
    .line 4677
    const/4 v3, 0x0

    #@100
    .line 4678
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
    .line 4679
    const-string/jumbo v11, " ("

    #@10c
    move-object/from16 v0, p0

    #@10e
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@111
    .line 4680
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
    .line 4685
    const-string/jumbo v11, "screen-?"

    #@11d
    move-object/from16 v0, p0

    #@11f
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@122
    .line 4687
    :goto_7
    const/4 v3, 0x1

    #@123
    .line 4689
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
    .line 4690
    if-eqz v3, :cond_d

    #@12e
    const-string/jumbo v11, ", "

    #@131
    :goto_8
    move-object/from16 v0, p0

    #@133
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@136
    .line 4691
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
    .line 4692
    const-string/jumbo v11, "power-save-on"

    #@142
    .line 4691
    :goto_9
    move-object/from16 v0, p0

    #@144
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@147
    .line 4693
    const/4 v3, 0x1

    #@148
    .line 4695
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
    .line 4696
    if-eqz v3, :cond_f

    #@153
    const-string/jumbo v11, ", "

    #@156
    :goto_a
    move-object/from16 v0, p0

    #@158
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15b
    .line 4697
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
    .line 4698
    const-string/jumbo v11, "device-idle-on"

    #@167
    .line 4697
    :goto_b
    move-object/from16 v0, p0

    #@169
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16c
    .line 4699
    const/4 v3, 0x1

    #@16d
    .line 4701
    :cond_b
    if-eqz v3, :cond_c

    #@16f
    .line 4702
    const-string/jumbo v11, ")"

    #@172
    move-object/from16 v0, p0

    #@174
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@177
    .line 4704
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    #@17a
    goto/16 :goto_6

    #@17c
    .line 4681
    :pswitch_4
    const-string/jumbo v11, "screen-off"

    #@17f
    move-object/from16 v0, p0

    #@181
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@184
    goto :goto_7

    #@185
    .line 4682
    :pswitch_5
    const-string/jumbo v11, "screen-on"

    #@188
    move-object/from16 v0, p0

    #@18a
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18d
    goto :goto_7

    #@18e
    .line 4683
    :pswitch_6
    const-string/jumbo v11, "screen-doze"

    #@191
    move-object/from16 v0, p0

    #@193
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@196
    goto :goto_7

    #@197
    .line 4684
    :pswitch_7
    const-string/jumbo v11, "screen-doze-suspend"

    #@19a
    move-object/from16 v0, p0

    #@19c
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19f
    goto :goto_7

    #@1a0
    .line 4690
    :cond_d
    const-string/jumbo v11, " ("

    #@1a3
    goto :goto_8

    #@1a4
    .line 4692
    :cond_e
    const-string/jumbo v11, "power-save-off"

    #@1a7
    goto :goto_9

    #@1a8
    .line 4696
    :cond_f
    const-string/jumbo v11, " ("

    #@1ab
    goto :goto_a

    #@1ac
    .line 4698
    :cond_10
    const-string/jumbo v11, "device-idle-off"

    #@1af
    goto :goto_b

    #@1b0
    .line 4707
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
    .line 4651
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    #@1be
    .line 4680
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
    .line 4718
    new-instance v3, Landroid/os/BatteryStats$HistoryPrinter;

    #@2
    invoke-direct {v3}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    #@5
    .line 4719
    .local v3, "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    new-instance v5, Landroid/os/BatteryStats$HistoryItem;

    #@7
    invoke-direct {v5}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    #@a
    .line 4720
    .local v5, "rec":Landroid/os/BatteryStats$HistoryItem;
    const-wide/16 v16, -0x1

    #@c
    .line 4721
    .local v16, "lastTime":J
    const-wide/16 v6, -0x1

    #@e
    .line 4722
    .local v6, "baseTime":J
    const/16 v19, 0x0

    #@10
    .line 4723
    .local v19, "printed":Z
    const/16 v20, 0x0

    #@12
    .line 4724
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
    .line 4725
    iget-wide v0, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@1c
    move-wide/from16 v16, v0

    #@1e
    .line 4726
    const-wide/16 v8, 0x0

    #@20
    cmp-long v4, v6, v8

    #@22
    if-gez v4, :cond_1

    #@24
    .line 4727
    move-wide/from16 v6, v16

    #@26
    .line 4729
    :cond_1
    iget-wide v8, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@28
    cmp-long v4, v8, p3

    #@2a
    if-ltz v4, :cond_0

    #@2c
    .line 4730
    const-wide/16 v8, 0x0

    #@2e
    cmp-long v4, p3, v8

    #@30
    if-ltz v4, :cond_2

    #@32
    if-eqz v19, :cond_3

    #@34
    .line 4783
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
    .line 4782
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    #@40
    goto :goto_0

    #@41
    .line 4731
    :cond_3
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@43
    const/4 v8, 0x5

    #@44
    if-eq v4, v8, :cond_4

    #@46
    .line 4732
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@48
    const/4 v8, 0x7

    #@49
    if-ne v4, v8, :cond_8

    #@4b
    .line 4735
    :cond_4
    const/16 v19, 0x1

    #@4d
    .line 4737
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
    .line 4736
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    #@59
    .line 4738
    const/4 v4, 0x0

    #@5a
    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@5c
    .line 4747
    :cond_5
    :goto_4
    const/4 v4, 0x0

    #@5d
    if-eqz v4, :cond_2

    #@5f
    .line 4748
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@61
    if-eqz v4, :cond_6

    #@63
    .line 4750
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
    .line 4749
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    #@6f
    .line 4751
    const/4 v4, 0x0

    #@70
    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@72
    .line 4753
    :cond_6
    iget v15, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@74
    .line 4754
    .local v15, "oldEventCode":I
    iget-object v0, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@76
    move-object/from16 v18, v0

    #@78
    .line 4755
    .local v18, "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    new-instance v4, Landroid/os/BatteryStats$HistoryTag;

    #@7a
    invoke-direct {v4}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    #@7d
    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@7f
    .line 4756
    const/4 v13, 0x0

    #@80
    .local v13, "i":I
    :goto_6
    const/16 v4, 0x13

    #@82
    if-ge v13, v4, :cond_f

    #@84
    .line 4758
    move-object/from16 v0, v20

    #@86
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    #@89
    move-result-object v2

    #@8a
    .line 4759
    .local v2, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v2, :cond_c

    #@8c
    .line 4756
    :cond_7
    add-int/lit8 v13, v13, 0x1

    #@8e
    goto :goto_6

    #@8f
    .line 4733
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
    .line 4734
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@96
    const/16 v8, 0x8

    #@98
    if-eq v4, v8, :cond_4

    #@9a
    .line 4739
    iget-wide v8, v5, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@9c
    const-wide/16 v22, 0x0

    #@9e
    cmp-long v4, v8, v22

    #@a0
    if-eqz v4, :cond_5

    #@a2
    .line 4740
    const/16 v19, 0x1

    #@a4
    .line 4741
    iget-byte v10, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@a6
    .line 4742
    .local v10, "cmd":B
    const/4 v4, 0x5

    #@a7
    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@a9
    .line 4744
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
    .line 4743
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    #@b5
    .line 4745
    iput-byte v10, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@b7
    goto :goto_4

    #@b8
    .line 4737
    .end local v10    # "cmd":B
    :cond_9
    const/4 v9, 0x0

    #@b9
    goto :goto_3

    #@ba
    .line 4744
    .restart local v10    # "cmd":B
    :cond_a
    const/4 v9, 0x0

    #@bb
    goto :goto_7

    #@bc
    .line 4750
    .end local v10    # "cmd":B
    :cond_b
    const/4 v9, 0x0

    #@bd
    goto :goto_5

    #@be
    .line 4763
    .restart local v2    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v13    # "i":I
    .restart local v15    # "oldEventCode":I
    .restart local v18    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :cond_c
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@c1
    move-result-object v4

    #@c2
    .line 4762
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
    .line 4764
    .local v11, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@d5
    move-result-object v21

    #@d6
    check-cast v21, Landroid/util/SparseIntArray;

    #@d8
    .line 4765
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
    .line 4766
    iput v13, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@e1
    .line 4767
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
    .line 4768
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
    .line 4769
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
    .line 4771
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
    .line 4770
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    #@10b
    .line 4772
    const/4 v4, 0x0

    #@10c
    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@10e
    .line 4773
    const/4 v4, 0x0

    #@10f
    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@111
    .line 4765
    add-int/lit8 v14, v14, 0x1

    #@113
    goto :goto_8

    #@114
    .line 4771
    :cond_e
    const/4 v9, 0x0

    #@115
    goto :goto_9

    #@116
    .line 4777
    .end local v2    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v11    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v12    # "ent$iterator":Ljava/util/Iterator;
    .end local v14    # "j":I
    .end local v21    # "uids":Landroid/util/SparseIntArray;
    :cond_f
    iput v15, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@118
    .line 4778
    move-object/from16 v0, v18

    #@11a
    iput-object v0, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@11c
    .line 4779
    const/16 v20, 0x0

    #@11e
    goto/16 :goto_1

    #@120
    .line 4783
    .end local v13    # "i":I
    .end local v15    # "oldEventCode":I
    .end local v18    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :cond_10
    const/4 v9, 0x0

    #@121
    goto/16 :goto_2

    #@123
    .line 4795
    :cond_11
    const-wide/16 v8, 0x0

    #@125
    cmp-long v4, p3, v8

    #@127
    if-ltz v4, :cond_12

    #@129
    .line 4796
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    #@12c
    .line 4797
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
    .line 4717
    :cond_12
    return-void

    #@140
    .line 4797
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
    const/16 v3, 0x2c

    #@2
    .line 2466
    const/16 v1, 0x9

    #@4
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@7
    .line 2467
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    #@a
    .line 2468
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    #@d
    .line 2469
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    #@10
    .line 2470
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13
    .line 2471
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    #@16
    .line 2472
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19
    .line 2474
    const/4 v1, 0x0

    #@1a
    array-length v2, p4

    #@1b
    :goto_0
    if-ge v1, v2, :cond_0

    #@1d
    aget-object v0, p4, v1

    #@1f
    .line 2475
    .local v0, "arg":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    #@22
    .line 2476
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@25
    .line 2474
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 2478
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    #@2b
    .line 2465
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
    .line 4616
    const-wide/16 v2, 0x0

    #@2
    cmp-long v1, p4, v2

    #@4
    if-gez v1, :cond_0

    #@6
    .line 4617
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 4619
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    .line 4620
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e
    .line 4621
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    .line 4622
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    const/16 v1, 0x40

    #@15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@18
    .line 4623
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {v0, p4, p5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1b
    .line 4624
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@1e
    .line 4625
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    #@21
    .line 4626
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
    .line 2494
    if-eqz p4, :cond_0

    #@2
    .line 2496
    invoke-virtual/range {p4 .. p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@5
    move-result-wide v6

    #@6
    const-wide/16 v8, 0x1f4

    #@8
    add-long/2addr v6, v8

    #@9
    .line 2497
    const-wide/16 v8, 0x3e8

    #@b
    .line 2496
    div-long v4, v6, v8

    #@d
    .line 2498
    .local v4, "totalTime":J
    move/from16 v0, p7

    #@f
    invoke-virtual {p4, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@12
    move-result v2

    #@13
    .line 2499
    .local v2, "count":I
    const-wide/16 v6, 0x0

    #@15
    cmp-long v3, v4, v6

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 2500
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
    .line 2493
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
    .line 2312
    div-long v0, p1, v2

    #@4
    .line 2313
    .local v0, "sec":J
    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    #@7
    .line 2314
    mul-long/2addr v2, v0

    #@8
    sub-long v2, p1, v2

    #@a
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@d
    .line 2315
    const-string/jumbo v2, "ms "

    #@10
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 2311
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
    .line 2319
    div-long v0, p1, v2

    #@4
    .line 2320
    .local v0, "sec":J
    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    #@7
    .line 2321
    mul-long/2addr v2, v0

    #@8
    sub-long v2, p1, v2

    #@a
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@d
    .line 2322
    const-string/jumbo v2, "ms"

    #@10
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 2318
    return-void
.end method

.method private static final formatTimeRaw(Ljava/lang/StringBuilder;J)V
    .locals 13
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "seconds"    # J

    #@0
    .prologue
    .line 2284
    const-wide/32 v8, 0x15180

    #@3
    div-long v0, p1, v8

    #@5
    .line 2285
    .local v0, "days":J
    const-wide/16 v8, 0x0

    #@7
    cmp-long v8, v0, v8

    #@9
    if-eqz v8, :cond_0

    #@b
    .line 2286
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@e
    .line 2287
    const-string/jumbo v8, "d "

    #@11
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 2289
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
    .line 2291
    .local v6, "used":J
    sub-long v8, p1, v6

    #@20
    const-wide/16 v10, 0xe10

    #@22
    div-long v2, v8, v10

    #@24
    .line 2292
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
    .line 2293
    :cond_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@33
    .line 2294
    const-string/jumbo v8, "h "

    #@36
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 2296
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
    .line 2298
    sub-long v8, p1, v6

    #@42
    const-wide/16 v10, 0x3c

    #@44
    div-long v4, v8, v10

    #@46
    .line 2299
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
    .line 2300
    :cond_3
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@55
    .line 2301
    const-string/jumbo v8, "m "

    #@58
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    .line 2303
    :cond_4
    const-wide/16 v8, 0x3c

    #@5d
    mul-long/2addr v8, v4

    #@5e
    add-long/2addr v6, v8

    #@5f
    .line 2305
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
    .line 2306
    :cond_5
    sub-long v8, p1, v6

    #@6d
    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@70
    .line 2307
    const-string/jumbo v8, "s "

    #@73
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    .line 2283
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
    .line 4202
    xor-int v2, p1, p2

    #@2
    .line 4203
    .local v2, "diff":I
    if-nez v2, :cond_0

    #@4
    return-void

    #@5
    .line 4204
    :cond_0
    const/4 v1, 0x0

    #@6
    .line 4205
    .local v1, "didWake":Z
    const/4 v3, 0x0

    #@7
    .local v3, "i":I
    :goto_0
    array-length v5, p4

    #@8
    if-ge v3, v5, :cond_a

    #@a
    .line 4206
    aget-object v0, p4, v3

    #@c
    .line 4207
    .local v0, "bd":Landroid/os/BatteryStats$BitDescription;
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    #@e
    and-int/2addr v5, v2

    #@f
    if-eqz v5, :cond_1

    #@11
    .line 4208
    if-eqz p5, :cond_2

    #@13
    const-string/jumbo v5, " "

    #@16
    :goto_1
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19
    .line 4209
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->shift:I

    #@1b
    if-gez v5, :cond_6

    #@1d
    .line 4210
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
    .line 4211
    if-eqz p5, :cond_4

    #@2a
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    #@2c
    :goto_3
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    .line 4212
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    #@31
    const/high16 v6, 0x40000000    # 2.0f

    #@33
    if-ne v5, v6, :cond_1

    #@35
    if-eqz p3, :cond_1

    #@37
    .line 4213
    const/4 v1, 0x1

    #@38
    .line 4214
    const-string/jumbo v5, "="

    #@3b
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e
    .line 4215
    if-eqz p5, :cond_5

    #@40
    .line 4216
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@42
    invoke-static {p0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@45
    .line 4217
    const-string/jumbo v5, ":\""

    #@48
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b
    .line 4218
    iget-object v5, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@4d
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50
    .line 4219
    const-string/jumbo v5, "\""

    #@53
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    .line 4205
    :cond_1
    :goto_4
    add-int/lit8 v3, v3, 0x1

    #@58
    goto :goto_0

    #@59
    .line 4208
    :cond_2
    const-string/jumbo v5, ","

    #@5c
    goto :goto_1

    #@5d
    .line 4210
    :cond_3
    const-string/jumbo v5, "-"

    #@60
    goto :goto_2

    #@61
    .line 4211
    :cond_4
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    #@63
    goto :goto_3

    #@64
    .line 4221
    :cond_5
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    #@66
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@69
    goto :goto_4

    #@6a
    .line 4225
    :cond_6
    if-eqz p5, :cond_7

    #@6c
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    #@6e
    :goto_5
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    .line 4226
    const-string/jumbo v5, "="

    #@74
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@77
    .line 4227
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    #@79
    and-int/2addr v5, p2

    #@7a
    iget v6, v0, Landroid/os/BatteryStats$BitDescription;->shift:I

    #@7c
    shr-int v4, v5, v6

    #@7e
    .line 4228
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
    .line 4229
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
    .line 4225
    .end local v4    # "val":I
    :cond_7
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    #@95
    goto :goto_5

    #@96
    .line 4229
    .restart local v4    # "val":I
    :cond_8
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    #@98
    aget-object v5, v5, v4

    #@9a
    goto :goto_6

    #@9b
    .line 4231
    :cond_9
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@9e
    goto :goto_4

    #@9f
    .line 4236
    .end local v0    # "bd":Landroid/os/BatteryStats$BitDescription;
    .end local v4    # "val":I
    :cond_a
    if-nez v1, :cond_b

    #@a1
    if-eqz p3, :cond_b

    #@a3
    .line 4237
    if-eqz p5, :cond_c

    #@a5
    const-string/jumbo v5, " wake_lock="

    #@a8
    :goto_7
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ab
    .line 4238
    if-eqz p5, :cond_d

    #@ad
    .line 4239
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@af
    invoke-static {p0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@b2
    .line 4240
    const-string/jumbo v5, ":\""

    #@b5
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b8
    .line 4241
    iget-object v5, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@ba
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bd
    .line 4242
    const-string/jumbo v5, "\""

    #@c0
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c3
    .line 4201
    :cond_b
    :goto_8
    return-void

    #@c4
    .line 4237
    :cond_c
    const-string/jumbo v5, ",w="

    #@c7
    goto :goto_7

    #@c8
    .line 4244
    :cond_d
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    #@ca
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@cd
    goto :goto_8
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
    .line 4588
    long-to-float v0, p2

    #@5
    .line 4589
    .local v0, "result":F
    const-string/jumbo v1, ""

    #@8
    .line 4590
    .local v1, "suffix":Ljava/lang/String;
    cmpl-float v2, v0, v4

    #@a
    if-ltz v2, :cond_0

    #@c
    .line 4591
    const-string/jumbo v1, "KB"

    #@f
    .line 4592
    div-float/2addr v0, v3

    #@10
    .line 4594
    :cond_0
    cmpl-float v2, v0, v4

    #@12
    if-ltz v2, :cond_1

    #@14
    .line 4595
    const-string/jumbo v1, "MB"

    #@17
    .line 4596
    div-float/2addr v0, v3

    #@18
    .line 4598
    :cond_1
    cmpl-float v2, v0, v4

    #@1a
    if-ltz v2, :cond_2

    #@1c
    .line 4599
    const-string/jumbo v1, "GB"

    #@1f
    .line 4600
    div-float/2addr v0, v3

    #@20
    .line 4602
    :cond_2
    cmpl-float v2, v0, v4

    #@22
    if-ltz v2, :cond_3

    #@24
    .line 4603
    const-string/jumbo v1, "TB"

    #@27
    .line 4604
    div-float/2addr v0, v3

    #@28
    .line 4606
    :cond_3
    cmpl-float v2, v0, v4

    #@2a
    if-ltz v2, :cond_4

    #@2c
    .line 4607
    const-string/jumbo v1, "PB"

    #@2f
    .line 4608
    div-float/2addr v0, v3

    #@30
    .line 4610
    :cond_4
    float-to-int v2, v0

    #@31
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@34
    .line 4611
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37
    .line 4587
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
    .line 2407
    if-eqz p2, :cond_0

    #@2
    .line 2409
    invoke-virtual/range {p2 .. p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@5
    move-result-wide v6

    #@6
    .line 2410
    const-wide/16 v8, 0x1f4

    #@8
    .line 2409
    add-long/2addr v6, v8

    #@9
    .line 2410
    const-wide/16 v8, 0x3e8

    #@b
    .line 2409
    div-long v4, v6, v8

    #@d
    .line 2411
    .local v4, "totalTime":J
    move/from16 v0, p5

    #@f
    invoke-virtual {p2, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@12
    move-result v2

    #@13
    .line 2412
    .local v2, "count":I
    const-wide/16 v6, 0x0

    #@15
    cmp-long v3, v4, v6

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 2413
    const/4 v3, 0x0

    #@1a
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1d
    .line 2414
    move-object/from16 v0, p6

    #@1f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 2415
    const-string/jumbo v3, "    "

    #@25
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 2416
    move-object/from16 v0, p7

    #@2a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 2417
    const-string/jumbo v3, ": "

    #@30
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 2418
    invoke-static {p1, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@36
    .line 2419
    const-string/jumbo v3, "realtime ("

    #@39
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 2420
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    .line 2421
    const-string/jumbo v3, " times)"

    #@42
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 2422
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4c
    .line 2423
    const/4 v3, 0x1

    #@4d
    return v3

    #@4e
    .line 2426
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
    .line 2375
    if-eqz p1, :cond_1

    #@2
    .line 2376
    invoke-static {p1, p2, p3, p5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    #@5
    move-result-wide v2

    #@6
    .line 2378
    .local v2, "totalTimeMillis":J
    invoke-virtual {p1, p5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@9
    move-result v0

    #@a
    .line 2379
    .local v0, "count":I
    const-wide/16 v4, 0x0

    #@c
    cmp-long v1, v2, v4

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 2380
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 2381
    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@16
    .line 2382
    if-eqz p4, :cond_0

    #@18
    .line 2383
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 2384
    const/16 v1, 0x20

    #@1d
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    .line 2386
    :cond_0
    const/16 v1, 0x28

    #@22
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 2387
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    .line 2388
    const-string/jumbo v1, " times)"

    #@2b
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 2389
    const-string/jumbo v1, ", "

    #@31
    return-object v1

    #@32
    .line 2392
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
    .line 2442
    const-wide/16 v2, 0x0

    #@2
    .line 2443
    .local v2, "totalTimeMicros":J
    const/4 v0, 0x0

    #@3
    .line 2444
    .local v0, "count":I
    if-eqz p1, :cond_0

    #@5
    .line 2445
    invoke-virtual {p1, p2, p3, p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@8
    move-result-wide v2

    #@9
    .line 2446
    invoke-virtual {p1, p5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@c
    move-result v0

    #@d
    .line 2448
    :cond_0
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 2449
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
    .line 2450
    const/16 v1, 0x2c

    #@1b
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    .line 2451
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
    .line 2452
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    .line 2453
    const-string/jumbo v1, ","

    #@3d
    return-object v1

    #@3e
    .line 2451
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
    .line 2999
    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7
    .line 2998
    return-void
.end method

.method private printmAh(Ljava/lang/StringBuilder;D)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "power"    # D

    #@0
    .prologue
    .line 3003
    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    .line 3002
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
    .line 2509
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
    .line 2508
    return-void
.end method

.method public final dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V
    .locals 191
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "which"    # I
    .param p4, "reqUid"    # I
    .param p5, "wifiOnly"    # Z

    #@0
    .prologue
    .line 2519
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v8

    #@4
    const-wide/16 v14, 0x3e8

    #@6
    mul-long v104, v8, v14

    #@8
    .line 2520
    .local v104, "rawUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b
    move-result-wide v8

    #@c
    const-wide/16 v14, 0x3e8

    #@e
    mul-long v6, v8, v14

    #@10
    .line 2521
    .local v6, "rawRealtime":J
    move-object/from16 v0, p0

    #@12
    move-wide/from16 v1, v104

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    #@17
    move-result-wide v24

    #@18
    .line 2522
    .local v24, "batteryUptime":J
    move-object/from16 v0, p0

    #@1a
    move-wide/from16 v1, v104

    #@1c
    move/from16 v3, p3

    #@1e
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    #@21
    move-result-wide v158

    #@22
    .line 2523
    .local v158, "whichBatteryUptime":J
    move-object/from16 v0, p0

    #@24
    move/from16 v1, p3

    #@26
    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    #@29
    move-result-wide v152

    #@2a
    .line 2524
    .local v152, "whichBatteryRealtime":J
    move-object/from16 v0, p0

    #@2c
    move-wide/from16 v1, v104

    #@2e
    move/from16 v3, p3

    #@30
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    #@33
    move-result-wide v156

    #@34
    .line 2525
    .local v156, "whichBatteryScreenOffUptime":J
    move-object/from16 v0, p0

    #@36
    move/from16 v1, p3

    #@38
    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    #@3b
    move-result-wide v154

    #@3c
    .line 2527
    .local v154, "whichBatteryScreenOffRealtime":J
    move-object/from16 v0, p0

    #@3e
    move/from16 v1, p3

    #@40
    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    #@43
    move-result-wide v124

    #@44
    .line 2528
    .local v124, "totalRealtime":J
    move-object/from16 v0, p0

    #@46
    move-wide/from16 v1, v104

    #@48
    move/from16 v3, p3

    #@4a
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeUptime(JI)J

    #@4d
    move-result-wide v132

    #@4e
    .line 2529
    .local v132, "totalUptime":J
    move-object/from16 v0, p0

    #@50
    move/from16 v1, p3

    #@52
    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    #@55
    move-result-wide v106

    #@56
    .line 2530
    .local v106, "screenOnTime":J
    move-object/from16 v0, p0

    #@58
    move/from16 v1, p3

    #@5a
    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    #@5d
    move-result-wide v54

    #@5e
    .line 2531
    .local v54, "interactiveTime":J
    move-object/from16 v0, p0

    #@60
    move/from16 v1, p3

    #@62
    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    #@65
    move-result-wide v98

    #@66
    .line 2532
    .local v98, "powerSaveModeEnabledTime":J
    move-object/from16 v0, p0

    #@68
    move/from16 v1, p3

    #@6a
    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeEnabledTime(JI)J

    #@6d
    move-result-wide v36

    #@6e
    .line 2533
    .local v36, "deviceIdleModeEnabledTime":J
    move-object/from16 v0, p0

    #@70
    move/from16 v1, p3

    #@72
    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getDeviceIdlingTime(JI)J

    #@75
    move-result-wide v38

    #@76
    .line 2534
    .local v38, "deviceIdlingTime":J
    move-object/from16 v0, p0

    #@78
    move/from16 v1, p3

    #@7a
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    #@7d
    move-result v34

    #@7e
    .line 2535
    .local v34, "connChanges":I
    move-object/from16 v0, p0

    #@80
    move/from16 v1, p3

    #@82
    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    #@85
    move-result-wide v94

    #@86
    .line 2537
    .local v94, "phoneOnTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    #@88
    const/16 v5, 0x80

    #@8a
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8d
    .line 2539
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    #@90
    move-result-object v134

    #@91
    .line 2540
    .local v134, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v134 .. v134}, Landroid/util/SparseArray;->size()I

    #@94
    move-result v20

    #@95
    .line 2542
    .local v20, "NU":I
    sget-object v5, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    #@97
    aget-object v13, v5, p3

    #@99
    .line 2545
    .local v13, "category":Ljava/lang/String;
    const-string/jumbo v8, "bt"

    #@9c
    const/16 v5, 0x8

    #@9e
    new-array v9, v5, [Ljava/lang/Object;

    #@a0
    .line 2546
    if-nez p3, :cond_2

    #@a2
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    #@a5
    move-result v5

    #@a6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a9
    move-result-object v5

    #@aa
    :goto_0
    const/4 v11, 0x0

    #@ab
    aput-object v5, v9, v11

    #@ad
    .line 2547
    const-wide/16 v14, 0x3e8

    #@af
    div-long v14, v152, v14

    #@b1
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b4
    move-result-object v5

    #@b5
    const/4 v11, 0x1

    #@b6
    aput-object v5, v9, v11

    #@b8
    const-wide/16 v14, 0x3e8

    #@ba
    div-long v14, v158, v14

    #@bc
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@bf
    move-result-object v5

    #@c0
    const/4 v11, 0x2

    #@c1
    aput-object v5, v9, v11

    #@c3
    .line 2548
    const-wide/16 v14, 0x3e8

    #@c5
    div-long v14, v124, v14

    #@c7
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@ca
    move-result-object v5

    #@cb
    const/4 v11, 0x3

    #@cc
    aput-object v5, v9, v11

    #@ce
    const-wide/16 v14, 0x3e8

    #@d0
    div-long v14, v132, v14

    #@d2
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d5
    move-result-object v5

    #@d6
    const/4 v11, 0x4

    #@d7
    aput-object v5, v9, v11

    #@d9
    .line 2549
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    #@dc
    move-result-wide v14

    #@dd
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@e0
    move-result-object v5

    #@e1
    const/4 v11, 0x5

    #@e2
    aput-object v5, v9, v11

    #@e4
    .line 2550
    const-wide/16 v14, 0x3e8

    #@e6
    div-long v14, v154, v14

    #@e8
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@eb
    move-result-object v5

    #@ec
    const/4 v11, 0x6

    #@ed
    aput-object v5, v9, v11

    #@ef
    const-wide/16 v14, 0x3e8

    #@f1
    div-long v14, v156, v14

    #@f3
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@f6
    move-result-object v5

    #@f7
    const/4 v11, 0x7

    #@f8
    aput-object v5, v9, v11

    #@fa
    .line 2545
    const/4 v5, 0x0

    #@fb
    move-object/from16 v0, p2

    #@fd
    invoke-static {v0, v5, v13, v8, v9}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@100
    .line 2553
    const-wide/16 v44, 0x0

    #@102
    .line 2554
    .local v44, "fullWakeLockTimeTotal":J
    const-wide/16 v92, 0x0

    #@104
    .line 2556
    .local v92, "partialWakeLockTimeTotal":J
    const/16 v61, 0x0

    #@106
    .local v61, "iu":I
    :goto_1
    move/from16 v0, v61

    #@108
    move/from16 v1, v20

    #@10a
    if-ge v0, v1, :cond_4

    #@10c
    .line 2557
    move-object/from16 v0, v134

    #@10e
    move/from16 v1, v61

    #@110
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@113
    move-result-object v123

    #@114
    check-cast v123, Landroid/os/BatteryStats$Uid;

    #@116
    .line 2560
    .local v123, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v123 .. v123}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    #@119
    move-result-object v148

    #@11a
    .line 2561
    .local v148, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual/range {v148 .. v148}, Landroid/util/ArrayMap;->size()I

    #@11d
    move-result v5

    #@11e
    add-int/lit8 v62, v5, -0x1

    #@120
    .local v62, "iw":I
    :goto_2
    if-ltz v62, :cond_3

    #@122
    .line 2562
    move-object/from16 v0, v148

    #@124
    move/from16 v1, v62

    #@126
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@129
    move-result-object v190

    #@12a
    check-cast v190, Landroid/os/BatteryStats$Uid$Wakelock;

    #@12c
    .line 2564
    .local v190, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v5, 0x1

    #@12d
    move-object/from16 v0, v190

    #@12f
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@132
    move-result-object v46

    #@133
    .line 2565
    .local v46, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v46, :cond_0

    #@135
    .line 2566
    move-object/from16 v0, v46

    #@137
    move/from16 v1, p3

    #@139
    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@13c
    move-result-wide v8

    #@13d
    add-long v44, v44, v8

    #@13f
    .line 2570
    :cond_0
    const/4 v5, 0x0

    #@140
    move-object/from16 v0, v190

    #@142
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@145
    move-result-object v91

    #@146
    .line 2571
    .local v91, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v91, :cond_1

    #@148
    .line 2572
    move-object/from16 v0, v91

    #@14a
    move/from16 v1, p3

    #@14c
    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@14f
    move-result-wide v8

    #@150
    add-long v92, v92, v8

    #@152
    .line 2561
    :cond_1
    add-int/lit8 v62, v62, -0x1

    #@154
    goto :goto_2

    #@155
    .line 2546
    .end local v44    # "fullWakeLockTimeTotal":J
    .end local v46    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v61    # "iu":I
    .end local v62    # "iw":I
    .end local v91    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v92    # "partialWakeLockTimeTotal":J
    .end local v123    # "u":Landroid/os/BatteryStats$Uid;
    .end local v148    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v190    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_2
    const-string/jumbo v5, "N/A"

    #@158
    goto/16 :goto_0

    #@15a
    .line 2556
    .restart local v44    # "fullWakeLockTimeTotal":J
    .restart local v61    # "iu":I
    .restart local v62    # "iw":I
    .restart local v92    # "partialWakeLockTimeTotal":J
    .restart local v123    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v148    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_3
    add-int/lit8 v61, v61, 0x1

    #@15c
    goto :goto_1

    #@15d
    .line 2579
    .end local v62    # "iw":I
    .end local v123    # "u":Landroid/os/BatteryStats$Uid;
    .end local v148    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_4
    const/4 v5, 0x0

    #@15e
    move-object/from16 v0, p0

    #@160
    move/from16 v1, p3

    #@162
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@165
    move-result-wide v80

    #@166
    .line 2580
    .local v80, "mobileRxTotalBytes":J
    const/4 v5, 0x1

    #@167
    move-object/from16 v0, p0

    #@169
    move/from16 v1, p3

    #@16b
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@16e
    move-result-wide v84

    #@16f
    .line 2581
    .local v84, "mobileTxTotalBytes":J
    const/4 v5, 0x2

    #@170
    move-object/from16 v0, p0

    #@172
    move/from16 v1, p3

    #@174
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@177
    move-result-wide v178

    #@178
    .line 2582
    .local v178, "wifiRxTotalBytes":J
    const/4 v5, 0x3

    #@179
    move-object/from16 v0, p0

    #@17b
    move/from16 v1, p3

    #@17d
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@180
    move-result-wide v186

    #@181
    .line 2583
    .local v186, "wifiTxTotalBytes":J
    const/4 v5, 0x0

    #@182
    move-object/from16 v0, p0

    #@184
    move/from16 v1, p3

    #@186
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    #@189
    move-result-wide v82

    #@18a
    .line 2584
    .local v82, "mobileRxTotalPackets":J
    const/4 v5, 0x1

    #@18b
    move-object/from16 v0, p0

    #@18d
    move/from16 v1, p3

    #@18f
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    #@192
    move-result-wide v86

    #@193
    .line 2585
    .local v86, "mobileTxTotalPackets":J
    const/4 v5, 0x2

    #@194
    move-object/from16 v0, p0

    #@196
    move/from16 v1, p3

    #@198
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    #@19b
    move-result-wide v180

    #@19c
    .line 2586
    .local v180, "wifiRxTotalPackets":J
    const/4 v5, 0x3

    #@19d
    move-object/from16 v0, p0

    #@19f
    move/from16 v1, p3

    #@1a1
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    #@1a4
    move-result-wide v188

    #@1a5
    .line 2587
    .local v188, "wifiTxTotalPackets":J
    const-string/jumbo v5, "gn"

    #@1a8
    const/16 v8, 0x8

    #@1aa
    new-array v8, v8, [Ljava/lang/Object;

    #@1ac
    .line 2588
    invoke-static/range {v80 .. v81}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1af
    move-result-object v9

    #@1b0
    const/4 v11, 0x0

    #@1b1
    aput-object v9, v8, v11

    #@1b3
    invoke-static/range {v84 .. v85}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1b6
    move-result-object v9

    #@1b7
    const/4 v11, 0x1

    #@1b8
    aput-object v9, v8, v11

    #@1ba
    invoke-static/range {v178 .. v179}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1bd
    move-result-object v9

    #@1be
    const/4 v11, 0x2

    #@1bf
    aput-object v9, v8, v11

    #@1c1
    invoke-static/range {v186 .. v187}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1c4
    move-result-object v9

    #@1c5
    const/4 v11, 0x3

    #@1c6
    aput-object v9, v8, v11

    #@1c8
    .line 2589
    invoke-static/range {v82 .. v83}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1cb
    move-result-object v9

    #@1cc
    const/4 v11, 0x4

    #@1cd
    aput-object v9, v8, v11

    #@1cf
    invoke-static/range {v86 .. v87}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1d2
    move-result-object v9

    #@1d3
    const/4 v11, 0x5

    #@1d4
    aput-object v9, v8, v11

    #@1d6
    invoke-static/range {v180 .. v181}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1d9
    move-result-object v9

    #@1da
    const/4 v11, 0x6

    #@1db
    aput-object v9, v8, v11

    #@1dd
    invoke-static/range {v188 .. v189}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1e0
    move-result-object v9

    #@1e1
    const/4 v11, 0x7

    #@1e2
    aput-object v9, v8, v11

    #@1e4
    .line 2587
    const/4 v9, 0x0

    #@1e5
    move-object/from16 v0, p2

    #@1e7
    invoke-static {v0, v9, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@1ea
    .line 2592
    move-object/from16 v0, p0

    #@1ec
    move/from16 v1, p3

    #@1ee
    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    #@1f1
    move-result-wide v166

    #@1f2
    .line 2593
    .local v166, "wifiOnTime":J
    move-object/from16 v0, p0

    #@1f4
    move/from16 v1, p3

    #@1f6
    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    #@1f9
    move-result-wide v174

    #@1fa
    .line 2594
    .local v174, "wifiRunningTime":J
    const/4 v5, 0x0

    #@1fb
    move-object/from16 v0, p0

    #@1fd
    move/from16 v1, p3

    #@1ff
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    #@202
    move-result-wide v164

    #@203
    .line 2595
    .local v164, "wifiIdleTimeMs":J
    const/4 v5, 0x1

    #@204
    move-object/from16 v0, p0

    #@206
    move/from16 v1, p3

    #@208
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    #@20b
    move-result-wide v176

    #@20c
    .line 2596
    .local v176, "wifiRxTimeMs":J
    const/4 v5, 0x2

    #@20d
    move-object/from16 v0, p0

    #@20f
    move/from16 v1, p3

    #@211
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    #@214
    move-result-wide v184

    #@215
    .line 2597
    .local v184, "wifiTxTimeMs":J
    const/4 v5, 0x3

    #@216
    move-object/from16 v0, p0

    #@218
    move/from16 v1, p3

    #@21a
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    #@21d
    move-result-wide v172

    #@21e
    .line 2598
    .local v172, "wifiPowerMaMs":J
    const-string/jumbo v5, "gwfl"

    #@221
    const/4 v8, 0x6

    #@222
    new-array v8, v8, [Ljava/lang/Object;

    #@224
    .line 2599
    const-wide/16 v14, 0x3e8

    #@226
    div-long v14, v166, v14

    #@228
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@22b
    move-result-object v9

    #@22c
    const/4 v11, 0x0

    #@22d
    aput-object v9, v8, v11

    #@22f
    const-wide/16 v14, 0x3e8

    #@231
    div-long v14, v174, v14

    #@233
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@236
    move-result-object v9

    #@237
    const/4 v11, 0x1

    #@238
    aput-object v9, v8, v11

    #@23a
    .line 2600
    invoke-static/range {v164 .. v165}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@23d
    move-result-object v9

    #@23e
    const/4 v11, 0x2

    #@23f
    aput-object v9, v8, v11

    #@241
    invoke-static/range {v176 .. v177}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@244
    move-result-object v9

    #@245
    const/4 v11, 0x3

    #@246
    aput-object v9, v8, v11

    #@248
    invoke-static/range {v184 .. v185}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@24b
    move-result-object v9

    #@24c
    const/4 v11, 0x4

    #@24d
    aput-object v9, v8, v11

    #@24f
    const-wide/32 v14, 0x36ee80

    #@252
    div-long v14, v172, v14

    #@254
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@257
    move-result-object v9

    #@258
    const/4 v11, 0x5

    #@259
    aput-object v9, v8, v11

    #@25b
    .line 2598
    const/4 v9, 0x0

    #@25c
    move-object/from16 v0, p2

    #@25e
    invoke-static {v0, v9, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@261
    .line 2603
    const/4 v5, 0x0

    #@262
    move-object/from16 v0, p0

    #@264
    move/from16 v1, p3

    #@266
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    #@269
    move-result-wide v26

    #@26a
    .line 2604
    .local v26, "btIdleTimeMs":J
    const/4 v5, 0x1

    #@26b
    move-object/from16 v0, p0

    #@26d
    move/from16 v1, p3

    #@26f
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    #@272
    move-result-wide v30

    #@273
    .line 2605
    .local v30, "btRxTimeMs":J
    const/4 v5, 0x2

    #@274
    move-object/from16 v0, p0

    #@276
    move/from16 v1, p3

    #@278
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    #@27b
    move-result-wide v32

    #@27c
    .line 2606
    .local v32, "btTxTimeMs":J
    const/4 v5, 0x3

    #@27d
    move-object/from16 v0, p0

    #@27f
    move/from16 v1, p3

    #@281
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    #@284
    move-result-wide v28

    #@285
    .line 2607
    .local v28, "btPowerMaMs":J
    const-string/jumbo v5, "gble"

    #@288
    const/4 v8, 0x4

    #@289
    new-array v8, v8, [Ljava/lang/Object;

    #@28b
    .line 2608
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@28e
    move-result-object v9

    #@28f
    const/4 v11, 0x0

    #@290
    aput-object v9, v8, v11

    #@292
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@295
    move-result-object v9

    #@296
    const/4 v11, 0x1

    #@297
    aput-object v9, v8, v11

    #@299
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@29c
    move-result-object v9

    #@29d
    const/4 v11, 0x2

    #@29e
    aput-object v9, v8, v11

    #@2a0
    const-wide/32 v14, 0x36ee80

    #@2a3
    div-long v14, v28, v14

    #@2a5
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2a8
    move-result-object v9

    #@2a9
    const/4 v11, 0x3

    #@2aa
    aput-object v9, v8, v11

    #@2ac
    .line 2607
    const/4 v9, 0x0

    #@2ad
    move-object/from16 v0, p2

    #@2af
    invoke-static {v0, v9, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@2b2
    .line 2611
    const-string/jumbo v5, "m"

    #@2b5
    const/16 v8, 0xf

    #@2b7
    new-array v8, v8, [Ljava/lang/Object;

    #@2b9
    .line 2612
    const-wide/16 v14, 0x3e8

    #@2bb
    div-long v14, v106, v14

    #@2bd
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2c0
    move-result-object v9

    #@2c1
    const/4 v11, 0x0

    #@2c2
    aput-object v9, v8, v11

    #@2c4
    const-wide/16 v14, 0x3e8

    #@2c6
    div-long v14, v94, v14

    #@2c8
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2cb
    move-result-object v9

    #@2cc
    const/4 v11, 0x1

    #@2cd
    aput-object v9, v8, v11

    #@2cf
    .line 2613
    const-wide/16 v14, 0x3e8

    #@2d1
    div-long v14, v44, v14

    #@2d3
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2d6
    move-result-object v9

    #@2d7
    const/4 v11, 0x2

    #@2d8
    aput-object v9, v8, v11

    #@2da
    const-wide/16 v14, 0x3e8

    #@2dc
    div-long v14, v92, v14

    #@2de
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2e1
    move-result-object v9

    #@2e2
    const/4 v11, 0x3

    #@2e3
    aput-object v9, v8, v11

    #@2e5
    .line 2614
    move-object/from16 v0, p0

    #@2e7
    move/from16 v1, p3

    #@2e9
    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    #@2ec
    move-result-wide v14

    #@2ed
    const-wide/16 v16, 0x3e8

    #@2ef
    div-long v14, v14, v16

    #@2f1
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2f4
    move-result-object v9

    #@2f5
    const/4 v11, 0x4

    #@2f6
    aput-object v9, v8, v11

    #@2f8
    .line 2615
    move-object/from16 v0, p0

    #@2fa
    move/from16 v1, p3

    #@2fc
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    #@2ff
    move-result-wide v14

    #@300
    const-wide/16 v16, 0x3e8

    #@302
    div-long v14, v14, v16

    #@304
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@307
    move-result-object v9

    #@308
    const/4 v11, 0x5

    #@309
    aput-object v9, v8, v11

    #@30b
    const-wide/16 v14, 0x3e8

    #@30d
    div-long v14, v54, v14

    #@30f
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@312
    move-result-object v9

    #@313
    const/4 v11, 0x6

    #@314
    aput-object v9, v8, v11

    #@316
    .line 2616
    const-wide/16 v14, 0x3e8

    #@318
    div-long v14, v98, v14

    #@31a
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@31d
    move-result-object v9

    #@31e
    const/4 v11, 0x7

    #@31f
    aput-object v9, v8, v11

    #@321
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@324
    move-result-object v9

    #@325
    const/16 v11, 0x8

    #@327
    aput-object v9, v8, v11

    #@329
    const-wide/16 v14, 0x3e8

    #@32b
    div-long v14, v36, v14

    #@32d
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@330
    move-result-object v9

    #@331
    const/16 v11, 0x9

    #@333
    aput-object v9, v8, v11

    #@335
    .line 2617
    move-object/from16 v0, p0

    #@337
    move/from16 v1, p3

    #@339
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeEnabledCount(I)I

    #@33c
    move-result v9

    #@33d
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@340
    move-result-object v9

    #@341
    const/16 v11, 0xa

    #@343
    aput-object v9, v8, v11

    #@345
    const-wide/16 v14, 0x3e8

    #@347
    div-long v14, v38, v14

    #@349
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@34c
    move-result-object v9

    #@34d
    const/16 v11, 0xb

    #@34f
    aput-object v9, v8, v11

    #@351
    .line 2618
    move-object/from16 v0, p0

    #@353
    move/from16 v1, p3

    #@355
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(I)I

    #@358
    move-result v9

    #@359
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35c
    move-result-object v9

    #@35d
    const/16 v11, 0xc

    #@35f
    aput-object v9, v8, v11

    #@361
    .line 2619
    move-object/from16 v0, p0

    #@363
    move/from16 v1, p3

    #@365
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    #@368
    move-result v9

    #@369
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36c
    move-result-object v9

    #@36d
    const/16 v11, 0xd

    #@36f
    aput-object v9, v8, v11

    #@371
    .line 2620
    move-object/from16 v0, p0

    #@373
    move/from16 v1, p3

    #@375
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    #@378
    move-result-wide v14

    #@379
    const-wide/16 v16, 0x3e8

    #@37b
    div-long v14, v14, v16

    #@37d
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@380
    move-result-object v9

    #@381
    const/16 v11, 0xe

    #@383
    aput-object v9, v8, v11

    #@385
    .line 2611
    const/4 v9, 0x0

    #@386
    move-object/from16 v0, p2

    #@388
    invoke-static {v0, v9, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@38b
    .line 2623
    const/4 v5, 0x5

    #@38c
    new-array v0, v5, [Ljava/lang/Object;

    #@38e
    move-object/from16 v22, v0

    #@390
    .line 2624
    .local v22, "args":[Ljava/lang/Object;
    const/16 v51, 0x0

    #@392
    .local v51, "i":I
    :goto_3
    const/4 v5, 0x5

    #@393
    move/from16 v0, v51

    #@395
    if-ge v0, v5, :cond_5

    #@397
    .line 2625
    move-object/from16 v0, p0

    #@399
    move/from16 v1, v51

    #@39b
    move/from16 v2, p3

    #@39d
    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    #@3a0
    move-result-wide v8

    #@3a1
    const-wide/16 v14, 0x3e8

    #@3a3
    div-long/2addr v8, v14

    #@3a4
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3a7
    move-result-object v5

    #@3a8
    aput-object v5, v22, v51

    #@3aa
    .line 2624
    add-int/lit8 v51, v51, 0x1

    #@3ac
    goto :goto_3

    #@3ad
    .line 2627
    :cond_5
    const-string/jumbo v5, "br"

    #@3b0
    const/4 v8, 0x0

    #@3b1
    move-object/from16 v0, p2

    #@3b3
    move-object/from16 v1, v22

    #@3b5
    invoke-static {v0, v8, v13, v5, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@3b8
    .line 2630
    const/4 v5, 0x5

    #@3b9
    new-array v0, v5, [Ljava/lang/Object;

    #@3bb
    move-object/from16 v22, v0

    #@3bd
    .line 2631
    const/16 v51, 0x0

    #@3bf
    :goto_4
    const/4 v5, 0x5

    #@3c0
    move/from16 v0, v51

    #@3c2
    if-ge v0, v5, :cond_6

    #@3c4
    .line 2632
    move-object/from16 v0, p0

    #@3c6
    move/from16 v1, v51

    #@3c8
    move/from16 v2, p3

    #@3ca
    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    #@3cd
    move-result-wide v8

    #@3ce
    const-wide/16 v14, 0x3e8

    #@3d0
    div-long/2addr v8, v14

    #@3d1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3d4
    move-result-object v5

    #@3d5
    aput-object v5, v22, v51

    #@3d7
    .line 2631
    add-int/lit8 v51, v51, 0x1

    #@3d9
    goto :goto_4

    #@3da
    .line 2634
    :cond_6
    const-string/jumbo v5, "sgt"

    #@3dd
    const/4 v8, 0x0

    #@3de
    move-object/from16 v0, p2

    #@3e0
    move-object/from16 v1, v22

    #@3e2
    invoke-static {v0, v8, v13, v5, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@3e5
    .line 2635
    const-string/jumbo v5, "sst"

    #@3e8
    const/4 v8, 0x1

    #@3e9
    new-array v8, v8, [Ljava/lang/Object;

    #@3eb
    .line 2636
    move-object/from16 v0, p0

    #@3ed
    move/from16 v1, p3

    #@3ef
    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    #@3f2
    move-result-wide v14

    #@3f3
    const-wide/16 v16, 0x3e8

    #@3f5
    div-long v14, v14, v16

    #@3f7
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3fa
    move-result-object v9

    #@3fb
    const/4 v11, 0x0

    #@3fc
    aput-object v9, v8, v11

    #@3fe
    .line 2635
    const/4 v9, 0x0

    #@3ff
    move-object/from16 v0, p2

    #@401
    invoke-static {v0, v9, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@404
    .line 2637
    const/16 v51, 0x0

    #@406
    :goto_5
    const/4 v5, 0x5

    #@407
    move/from16 v0, v51

    #@409
    if-ge v0, v5, :cond_7

    #@40b
    .line 2638
    move-object/from16 v0, p0

    #@40d
    move/from16 v1, v51

    #@40f
    move/from16 v2, p3

    #@411
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    #@414
    move-result v5

    #@415
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@418
    move-result-object v5

    #@419
    aput-object v5, v22, v51

    #@41b
    .line 2637
    add-int/lit8 v51, v51, 0x1

    #@41d
    goto :goto_5

    #@41e
    .line 2640
    :cond_7
    const-string/jumbo v5, "sgc"

    #@421
    const/4 v8, 0x0

    #@422
    move-object/from16 v0, p2

    #@424
    move-object/from16 v1, v22

    #@426
    invoke-static {v0, v8, v13, v5, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@429
    .line 2643
    const/16 v5, 0x11

    #@42b
    new-array v0, v5, [Ljava/lang/Object;

    #@42d
    move-object/from16 v22, v0

    #@42f
    .line 2644
    const/16 v51, 0x0

    #@431
    :goto_6
    const/16 v5, 0x11

    #@433
    move/from16 v0, v51

    #@435
    if-ge v0, v5, :cond_8

    #@437
    .line 2645
    move-object/from16 v0, p0

    #@439
    move/from16 v1, v51

    #@43b
    move/from16 v2, p3

    #@43d
    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    #@440
    move-result-wide v8

    #@441
    const-wide/16 v14, 0x3e8

    #@443
    div-long/2addr v8, v14

    #@444
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@447
    move-result-object v5

    #@448
    aput-object v5, v22, v51

    #@44a
    .line 2644
    add-int/lit8 v51, v51, 0x1

    #@44c
    goto :goto_6

    #@44d
    .line 2647
    :cond_8
    const-string/jumbo v5, "dct"

    #@450
    const/4 v8, 0x0

    #@451
    move-object/from16 v0, p2

    #@453
    move-object/from16 v1, v22

    #@455
    invoke-static {v0, v8, v13, v5, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@458
    .line 2648
    const/16 v51, 0x0

    #@45a
    :goto_7
    const/16 v5, 0x11

    #@45c
    move/from16 v0, v51

    #@45e
    if-ge v0, v5, :cond_9

    #@460
    .line 2649
    move-object/from16 v0, p0

    #@462
    move/from16 v1, v51

    #@464
    move/from16 v2, p3

    #@466
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    #@469
    move-result v5

    #@46a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@46d
    move-result-object v5

    #@46e
    aput-object v5, v22, v51

    #@470
    .line 2648
    add-int/lit8 v51, v51, 0x1

    #@472
    goto :goto_7

    #@473
    .line 2651
    :cond_9
    const-string/jumbo v5, "dcc"

    #@476
    const/4 v8, 0x0

    #@477
    move-object/from16 v0, p2

    #@479
    move-object/from16 v1, v22

    #@47b
    invoke-static {v0, v8, v13, v5, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@47e
    .line 2654
    const/16 v5, 0x8

    #@480
    new-array v0, v5, [Ljava/lang/Object;

    #@482
    move-object/from16 v22, v0

    #@484
    .line 2655
    const/16 v51, 0x0

    #@486
    :goto_8
    const/16 v5, 0x8

    #@488
    move/from16 v0, v51

    #@48a
    if-ge v0, v5, :cond_a

    #@48c
    .line 2656
    move-object/from16 v0, p0

    #@48e
    move/from16 v1, v51

    #@490
    move/from16 v2, p3

    #@492
    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    #@495
    move-result-wide v8

    #@496
    const-wide/16 v14, 0x3e8

    #@498
    div-long/2addr v8, v14

    #@499
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@49c
    move-result-object v5

    #@49d
    aput-object v5, v22, v51

    #@49f
    .line 2655
    add-int/lit8 v51, v51, 0x1

    #@4a1
    goto :goto_8

    #@4a2
    .line 2658
    :cond_a
    const-string/jumbo v5, "wst"

    #@4a5
    const/4 v8, 0x0

    #@4a6
    move-object/from16 v0, p2

    #@4a8
    move-object/from16 v1, v22

    #@4aa
    invoke-static {v0, v8, v13, v5, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@4ad
    .line 2659
    const/16 v51, 0x0

    #@4af
    :goto_9
    const/16 v5, 0x8

    #@4b1
    move/from16 v0, v51

    #@4b3
    if-ge v0, v5, :cond_b

    #@4b5
    .line 2660
    move-object/from16 v0, p0

    #@4b7
    move/from16 v1, v51

    #@4b9
    move/from16 v2, p3

    #@4bb
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiStateCount(II)I

    #@4be
    move-result v5

    #@4bf
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c2
    move-result-object v5

    #@4c3
    aput-object v5, v22, v51

    #@4c5
    .line 2659
    add-int/lit8 v51, v51, 0x1

    #@4c7
    goto :goto_9

    #@4c8
    .line 2662
    :cond_b
    const-string/jumbo v5, "wsc"

    #@4cb
    const/4 v8, 0x0

    #@4cc
    move-object/from16 v0, p2

    #@4ce
    move-object/from16 v1, v22

    #@4d0
    invoke-static {v0, v8, v13, v5, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@4d3
    .line 2665
    const/16 v5, 0xd

    #@4d5
    new-array v0, v5, [Ljava/lang/Object;

    #@4d7
    move-object/from16 v22, v0

    #@4d9
    .line 2666
    const/16 v51, 0x0

    #@4db
    :goto_a
    const/16 v5, 0xd

    #@4dd
    move/from16 v0, v51

    #@4df
    if-ge v0, v5, :cond_c

    #@4e1
    .line 2667
    move-object/from16 v0, p0

    #@4e3
    move/from16 v1, v51

    #@4e5
    move/from16 v2, p3

    #@4e7
    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    #@4ea
    move-result-wide v8

    #@4eb
    const-wide/16 v14, 0x3e8

    #@4ed
    div-long/2addr v8, v14

    #@4ee
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4f1
    move-result-object v5

    #@4f2
    aput-object v5, v22, v51

    #@4f4
    .line 2666
    add-int/lit8 v51, v51, 0x1

    #@4f6
    goto :goto_a

    #@4f7
    .line 2669
    :cond_c
    const-string/jumbo v5, "wsst"

    #@4fa
    const/4 v8, 0x0

    #@4fb
    move-object/from16 v0, p2

    #@4fd
    move-object/from16 v1, v22

    #@4ff
    invoke-static {v0, v8, v13, v5, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@502
    .line 2670
    const/16 v51, 0x0

    #@504
    :goto_b
    const/16 v5, 0xd

    #@506
    move/from16 v0, v51

    #@508
    if-ge v0, v5, :cond_d

    #@50a
    .line 2671
    move-object/from16 v0, p0

    #@50c
    move/from16 v1, v51

    #@50e
    move/from16 v2, p3

    #@510
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSupplStateCount(II)I

    #@513
    move-result v5

    #@514
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@517
    move-result-object v5

    #@518
    aput-object v5, v22, v51

    #@51a
    .line 2670
    add-int/lit8 v51, v51, 0x1

    #@51c
    goto :goto_b

    #@51d
    .line 2673
    :cond_d
    const-string/jumbo v5, "wssc"

    #@520
    const/4 v8, 0x0

    #@521
    move-object/from16 v0, p2

    #@523
    move-object/from16 v1, v22

    #@525
    invoke-static {v0, v8, v13, v5, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@528
    .line 2676
    const/4 v5, 0x5

    #@529
    new-array v0, v5, [Ljava/lang/Object;

    #@52b
    move-object/from16 v22, v0

    #@52d
    .line 2677
    const/16 v51, 0x0

    #@52f
    :goto_c
    const/4 v5, 0x5

    #@530
    move/from16 v0, v51

    #@532
    if-ge v0, v5, :cond_e

    #@534
    .line 2678
    move-object/from16 v0, p0

    #@536
    move/from16 v1, v51

    #@538
    move/from16 v2, p3

    #@53a
    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    #@53d
    move-result-wide v8

    #@53e
    const-wide/16 v14, 0x3e8

    #@540
    div-long/2addr v8, v14

    #@541
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@544
    move-result-object v5

    #@545
    aput-object v5, v22, v51

    #@547
    .line 2677
    add-int/lit8 v51, v51, 0x1

    #@549
    goto :goto_c

    #@54a
    .line 2680
    :cond_e
    const-string/jumbo v5, "wsgt"

    #@54d
    const/4 v8, 0x0

    #@54e
    move-object/from16 v0, p2

    #@550
    move-object/from16 v1, v22

    #@552
    invoke-static {v0, v8, v13, v5, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@555
    .line 2681
    const/16 v51, 0x0

    #@557
    :goto_d
    const/4 v5, 0x5

    #@558
    move/from16 v0, v51

    #@55a
    if-ge v0, v5, :cond_f

    #@55c
    .line 2682
    move-object/from16 v0, p0

    #@55e
    move/from16 v1, v51

    #@560
    move/from16 v2, p3

    #@562
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSignalStrengthCount(II)I

    #@565
    move-result v5

    #@566
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@569
    move-result-object v5

    #@56a
    aput-object v5, v22, v51

    #@56c
    .line 2681
    add-int/lit8 v51, v51, 0x1

    #@56e
    goto :goto_d

    #@56f
    .line 2684
    :cond_f
    const-string/jumbo v5, "wsgc"

    #@572
    const/4 v8, 0x0

    #@573
    move-object/from16 v0, p2

    #@575
    move-object/from16 v1, v22

    #@577
    invoke-static {v0, v8, v13, v5, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@57a
    .line 2686
    const/4 v5, 0x2

    #@57b
    move/from16 v0, p3

    #@57d
    if-ne v0, v5, :cond_10

    #@57f
    .line 2687
    const-string/jumbo v5, "lv"

    #@582
    const/4 v8, 0x2

    #@583
    new-array v8, v8, [Ljava/lang/Object;

    #@585
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    #@588
    move-result v9

    #@589
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@58c
    move-result-object v9

    #@58d
    const/4 v11, 0x0

    #@58e
    aput-object v9, v8, v11

    #@590
    .line 2688
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    #@593
    move-result v9

    #@594
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@597
    move-result-object v9

    #@598
    const/4 v11, 0x1

    #@599
    aput-object v9, v8, v11

    #@59b
    .line 2687
    const/4 v9, 0x0

    #@59c
    move-object/from16 v0, p2

    #@59e
    invoke-static {v0, v9, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@5a1
    .line 2691
    :cond_10
    const/4 v5, 0x2

    #@5a2
    move/from16 v0, p3

    #@5a4
    if-ne v0, v5, :cond_11

    #@5a6
    .line 2692
    const-string/jumbo v5, "dc"

    #@5a9
    const/4 v8, 0x4

    #@5aa
    new-array v8, v8, [Ljava/lang/Object;

    #@5ac
    .line 2693
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    #@5af
    move-result v9

    #@5b0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    #@5b3
    move-result v11

    #@5b4
    sub-int/2addr v9, v11

    #@5b5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5b8
    move-result-object v9

    #@5b9
    const/4 v11, 0x0

    #@5ba
    aput-object v9, v8, v11

    #@5bc
    .line 2694
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    #@5bf
    move-result v9

    #@5c0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    #@5c3
    move-result v11

    #@5c4
    sub-int/2addr v9, v11

    #@5c5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5c8
    move-result-object v9

    #@5c9
    const/4 v11, 0x1

    #@5ca
    aput-object v9, v8, v11

    #@5cc
    .line 2695
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    #@5cf
    move-result v9

    #@5d0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5d3
    move-result-object v9

    #@5d4
    const/4 v11, 0x2

    #@5d5
    aput-object v9, v8, v11

    #@5d7
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    #@5da
    move-result v9

    #@5db
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5de
    move-result-object v9

    #@5df
    const/4 v11, 0x3

    #@5e0
    aput-object v9, v8, v11

    #@5e2
    .line 2692
    const/4 v9, 0x0

    #@5e3
    move-object/from16 v0, p2

    #@5e5
    invoke-static {v0, v9, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@5e8
    .line 2703
    :goto_e
    if-gez p4, :cond_13

    #@5ea
    .line 2704
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    #@5ed
    move-result-object v65

    #@5ee
    .line 2705
    .local v65, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v65 .. v65}, Ljava/util/Map;->size()I

    #@5f1
    move-result v5

    #@5f2
    if-lez v5, :cond_12

    #@5f4
    .line 2706
    invoke-interface/range {v65 .. v65}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@5f7
    move-result-object v5

    #@5f8
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5fb
    move-result-object v41

    #@5fc
    .local v41, "ent$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    #@5ff
    move-result v5

    #@600
    if-eqz v5, :cond_12

    #@602
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@605
    move-result-object v40

    #@606
    check-cast v40, Ljava/util/Map$Entry;

    #@608
    .line 2707
    .local v40, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const/4 v5, 0x0

    #@609
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    #@60c
    .line 2708
    invoke-interface/range {v40 .. v40}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@60f
    move-result-object v5

    #@610
    check-cast v5, Landroid/os/BatteryStats$Timer;

    #@612
    const-string/jumbo v10, ""

    #@615
    const/4 v8, 0x0

    #@616
    move/from16 v9, p3

    #@618
    invoke-static/range {v4 .. v10}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@61b
    .line 2709
    const-string/jumbo v5, "kwl"

    #@61e
    const/4 v8, 0x2

    #@61f
    new-array v8, v8, [Ljava/lang/Object;

    #@621
    invoke-interface/range {v40 .. v40}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@624
    move-result-object v9

    #@625
    const/4 v11, 0x0

    #@626
    aput-object v9, v8, v11

    #@628
    .line 2710
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62b
    move-result-object v9

    #@62c
    const/4 v11, 0x1

    #@62d
    aput-object v9, v8, v11

    #@62f
    .line 2709
    const/4 v9, 0x0

    #@630
    move-object/from16 v0, p2

    #@632
    invoke-static {v0, v9, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@635
    goto :goto_f

    #@636
    .line 2697
    .end local v40    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v41    # "ent$iterator":Ljava/util/Iterator;
    .end local v65    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_11
    const-string/jumbo v5, "dc"

    #@639
    const/4 v8, 0x4

    #@63a
    new-array v8, v8, [Ljava/lang/Object;

    #@63c
    .line 2698
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    #@63f
    move-result v9

    #@640
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@643
    move-result-object v9

    #@644
    const/4 v11, 0x0

    #@645
    aput-object v9, v8, v11

    #@647
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    #@64a
    move-result v9

    #@64b
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@64e
    move-result-object v9

    #@64f
    const/4 v11, 0x1

    #@650
    aput-object v9, v8, v11

    #@652
    .line 2699
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    #@655
    move-result v9

    #@656
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@659
    move-result-object v9

    #@65a
    const/4 v11, 0x2

    #@65b
    aput-object v9, v8, v11

    #@65d
    .line 2700
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    #@660
    move-result v9

    #@661
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@664
    move-result-object v9

    #@665
    const/4 v11, 0x3

    #@666
    aput-object v9, v8, v11

    #@668
    .line 2697
    const/4 v9, 0x0

    #@669
    move-object/from16 v0, p2

    #@66b
    invoke-static {v0, v9, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@66e
    goto/16 :goto_e

    #@670
    .line 2713
    .restart local v65    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    #@673
    move-result-object v149

    #@674
    .line 2714
    .local v149, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v149 .. v149}, Ljava/util/Map;->size()I

    #@677
    move-result v5

    #@678
    if-lez v5, :cond_13

    #@67a
    .line 2715
    invoke-interface/range {v149 .. v149}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@67d
    move-result-object v5

    #@67e
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@681
    move-result-object v41

    #@682
    .restart local v41    # "ent$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    #@685
    move-result v5

    #@686
    if-eqz v5, :cond_13

    #@688
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@68b
    move-result-object v40

    #@68c
    check-cast v40, Ljava/util/Map$Entry;

    #@68e
    .line 2718
    .restart local v40    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v40 .. v40}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@691
    move-result-object v5

    #@692
    check-cast v5, Landroid/os/BatteryStats$Timer;

    #@694
    move/from16 v0, p3

    #@696
    invoke-virtual {v5, v6, v7, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@699
    move-result-wide v130

    #@69a
    .line 2719
    .local v130, "totalTimeMicros":J
    invoke-interface/range {v40 .. v40}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@69d
    move-result-object v5

    #@69e
    check-cast v5, Landroid/os/BatteryStats$Timer;

    #@6a0
    move/from16 v0, p3

    #@6a2
    invoke-virtual {v5, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@6a5
    move-result v35

    #@6a6
    .line 2720
    .local v35, "count":I
    const-string/jumbo v8, "wr"

    #@6a9
    const/4 v5, 0x3

    #@6aa
    new-array v9, v5, [Ljava/lang/Object;

    #@6ac
    .line 2721
    new-instance v5, Ljava/lang/StringBuilder;

    #@6ae
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6b1
    const-string/jumbo v11, "\""

    #@6b4
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b7
    move-result-object v11

    #@6b8
    invoke-interface/range {v40 .. v40}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@6bb
    move-result-object v5

    #@6bc
    check-cast v5, Ljava/lang/String;

    #@6be
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c1
    move-result-object v5

    #@6c2
    const-string/jumbo v11, "\""

    #@6c5
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c8
    move-result-object v5

    #@6c9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6cc
    move-result-object v5

    #@6cd
    const/4 v11, 0x0

    #@6ce
    aput-object v5, v9, v11

    #@6d0
    const-wide/16 v14, 0x1f4

    #@6d2
    add-long v14, v14, v130

    #@6d4
    const-wide/16 v16, 0x3e8

    #@6d6
    div-long v14, v14, v16

    #@6d8
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6db
    move-result-object v5

    #@6dc
    const/4 v11, 0x1

    #@6dd
    aput-object v5, v9, v11

    #@6df
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6e2
    move-result-object v5

    #@6e3
    const/4 v11, 0x2

    #@6e4
    aput-object v5, v9, v11

    #@6e6
    .line 2720
    const/4 v5, 0x0

    #@6e7
    move-object/from16 v0, p2

    #@6e9
    invoke-static {v0, v5, v13, v8, v9}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@6ec
    goto :goto_10

    #@6ed
    .line 2726
    .end local v35    # "count":I
    .end local v40    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v41    # "ent$iterator":Ljava/util/Iterator;
    .end local v65    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v130    # "totalTimeMicros":J
    .end local v149    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_13
    new-instance v50, Lcom/android/internal/os/BatteryStatsHelper;

    #@6ef
    const/4 v5, 0x0

    #@6f0
    move-object/from16 v0, v50

    #@6f2
    move-object/from16 v1, p1

    #@6f4
    move/from16 v2, p5

    #@6f6
    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    #@6f9
    .line 2727
    .local v50, "helper":Lcom/android/internal/os/BatteryStatsHelper;
    move-object/from16 v0, v50

    #@6fb
    move-object/from16 v1, p0

    #@6fd
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    #@700
    .line 2728
    const/4 v5, -0x1

    #@701
    move-object/from16 v0, v50

    #@703
    move/from16 v1, p3

    #@705
    invoke-virtual {v0, v1, v5}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    #@708
    .line 2729
    invoke-virtual/range {v50 .. v50}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    #@70b
    move-result-object v111

    #@70c
    .line 2730
    .local v111, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v111, :cond_14

    #@70e
    invoke-interface/range {v111 .. v111}, Ljava/util/List;->size()I

    #@711
    move-result v5

    #@712
    if-lez v5, :cond_14

    #@714
    .line 2731
    const-string/jumbo v5, "pws"

    #@717
    const/4 v8, 0x4

    #@718
    new-array v8, v8, [Ljava/lang/Object;

    #@71a
    .line 2732
    invoke-virtual/range {v50 .. v50}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    #@71d
    move-result-object v9

    #@71e
    invoke-virtual {v9}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    #@721
    move-result-wide v14

    #@722
    invoke-static {v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@725
    move-result-object v9

    #@726
    const/4 v11, 0x0

    #@727
    aput-object v9, v8, v11

    #@729
    .line 2733
    invoke-virtual/range {v50 .. v50}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    #@72c
    move-result-wide v14

    #@72d
    invoke-static {v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@730
    move-result-object v9

    #@731
    const/4 v11, 0x1

    #@732
    aput-object v9, v8, v11

    #@734
    .line 2734
    invoke-virtual/range {v50 .. v50}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    #@737
    move-result-wide v14

    #@738
    invoke-static {v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@73b
    move-result-object v9

    #@73c
    const/4 v11, 0x2

    #@73d
    aput-object v9, v8, v11

    #@73f
    .line 2735
    invoke-virtual/range {v50 .. v50}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    #@742
    move-result-wide v14

    #@743
    invoke-static {v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@746
    move-result-object v9

    #@747
    const/4 v11, 0x3

    #@748
    aput-object v9, v8, v11

    #@74a
    .line 2731
    const/4 v9, 0x0

    #@74b
    move-object/from16 v0, p2

    #@74d
    invoke-static {v0, v9, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@750
    .line 2736
    const/16 v51, 0x0

    #@752
    :goto_11
    invoke-interface/range {v111 .. v111}, Ljava/util/List;->size()I

    #@755
    move-result v5

    #@756
    move/from16 v0, v51

    #@758
    if-ge v0, v5, :cond_14

    #@75a
    .line 2737
    move-object/from16 v0, v111

    #@75c
    move/from16 v1, v51

    #@75e
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@761
    move-result-object v23

    #@762
    check-cast v23, Lcom/android/internal/os/BatterySipper;

    #@764
    .line 2738
    .local v23, "bs":Lcom/android/internal/os/BatterySipper;
    const/4 v12, 0x0

    #@765
    .line 2740
    .local v12, "uid":I
    invoke-static {}, Landroid/os/BatteryStats;->-getcom_android_internal_os_BatterySipper$DrainTypeSwitchesValues()[I

    #@768
    move-result-object v5

    #@769
    move-object/from16 v0, v23

    #@76b
    iget-object v8, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    #@76d
    invoke-virtual {v8}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    #@770
    move-result v8

    #@771
    aget v5, v5, v8

    #@773
    packed-switch v5, :pswitch_data_0

    #@776
    .line 2780
    const-string/jumbo v66, "???"

    #@779
    .line 2782
    .local v66, "label":Ljava/lang/String;
    :goto_12
    const-string/jumbo v5, "pwi"

    #@77c
    const/4 v8, 0x2

    #@77d
    new-array v8, v8, [Ljava/lang/Object;

    #@77f
    const/4 v9, 0x0

    #@780
    aput-object v66, v8, v9

    #@782
    .line 2783
    move-object/from16 v0, v23

    #@784
    iget-wide v14, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    #@786
    invoke-static {v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@789
    move-result-object v9

    #@78a
    const/4 v11, 0x1

    #@78b
    aput-object v9, v8, v11

    #@78d
    .line 2782
    move-object/from16 v0, p2

    #@78f
    invoke-static {v0, v12, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@792
    .line 2736
    add-int/lit8 v51, v51, 0x1

    #@794
    goto :goto_11

    #@795
    .line 2742
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v66, "idle"

    #@798
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    #@799
    .line 2745
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v66, "cell"

    #@79c
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    #@79d
    .line 2748
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v66, "phone"

    #@7a0
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    #@7a1
    .line 2751
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v66, "wifi"

    #@7a4
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    #@7a5
    .line 2754
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v66, "blue"

    #@7a8
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    #@7a9
    .line 2757
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v66, "scrn"

    #@7ac
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    #@7ad
    .line 2760
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v66, "flashlight"

    #@7b0
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    #@7b1
    .line 2763
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, v23

    #@7b3
    iget-object v5, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    #@7b5
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    #@7b8
    move-result v12

    #@7b9
    .line 2764
    const-string/jumbo v66, "uid"

    #@7bc
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    #@7bd
    .line 2767
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, v23

    #@7bf
    iget v5, v0, Lcom/android/internal/os/BatterySipper;->userId:I

    #@7c1
    const/4 v8, 0x0

    #@7c2
    invoke-static {v5, v8}, Landroid/os/UserHandle;->getUid(II)I

    #@7c5
    move-result v12

    #@7c6
    .line 2768
    const-string/jumbo v66, "user"

    #@7c9
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    #@7ca
    .line 2771
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v66, "unacc"

    #@7cd
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    #@7ce
    .line 2774
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v66, "over"

    #@7d1
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    #@7d2
    .line 2777
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v66, "camera"

    #@7d5
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    #@7d6
    .line 2787
    .end local v12    # "uid":I
    .end local v23    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v66    # "label":Ljava/lang/String;
    :cond_14
    const/16 v61, 0x0

    #@7d8
    :goto_13
    move/from16 v0, v61

    #@7da
    move/from16 v1, v20

    #@7dc
    if-ge v0, v1, :cond_37

    #@7de
    .line 2788
    move-object/from16 v0, v134

    #@7e0
    move/from16 v1, v61

    #@7e2
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@7e5
    move-result v12

    #@7e6
    .line 2789
    .restart local v12    # "uid":I
    if-ltz p4, :cond_16

    #@7e8
    move/from16 v0, p4

    #@7ea
    if-eq v12, v0, :cond_16

    #@7ec
    .line 2787
    :cond_15
    add-int/lit8 v61, v61, 0x1

    #@7ee
    goto :goto_13

    #@7ef
    .line 2792
    :cond_16
    move-object/from16 v0, v134

    #@7f1
    move/from16 v1, v61

    #@7f3
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@7f6
    move-result-object v123

    #@7f7
    check-cast v123, Landroid/os/BatteryStats$Uid;

    #@7f9
    .line 2795
    .restart local v123    # "u":Landroid/os/BatteryStats$Uid;
    const/4 v5, 0x0

    #@7fa
    move-object/from16 v0, v123

    #@7fc
    move/from16 v1, p3

    #@7fe
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@801
    move-result-wide v72

    #@802
    .line 2796
    .local v72, "mobileBytesRx":J
    const/4 v5, 0x1

    #@803
    move-object/from16 v0, v123

    #@805
    move/from16 v1, p3

    #@807
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@80a
    move-result-wide v74

    #@80b
    .line 2797
    .local v74, "mobileBytesTx":J
    const/4 v5, 0x2

    #@80c
    move-object/from16 v0, v123

    #@80e
    move/from16 v1, p3

    #@810
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@813
    move-result-wide v160

    #@814
    .line 2798
    .local v160, "wifiBytesRx":J
    const/4 v5, 0x3

    #@815
    move-object/from16 v0, v123

    #@817
    move/from16 v1, p3

    #@819
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@81c
    move-result-wide v162

    #@81d
    .line 2799
    .local v162, "wifiBytesTx":J
    const/4 v5, 0x0

    #@81e
    move-object/from16 v0, v123

    #@820
    move/from16 v1, p3

    #@822
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@825
    move-result-wide v76

    #@826
    .line 2800
    .local v76, "mobilePacketsRx":J
    const/4 v5, 0x1

    #@827
    move-object/from16 v0, v123

    #@829
    move/from16 v1, p3

    #@82b
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@82e
    move-result-wide v78

    #@82f
    .line 2801
    .local v78, "mobilePacketsTx":J
    move-object/from16 v0, v123

    #@831
    move/from16 v1, p3

    #@833
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    #@836
    move-result-wide v70

    #@837
    .line 2802
    .local v70, "mobileActiveTime":J
    move-object/from16 v0, v123

    #@839
    move/from16 v1, p3

    #@83b
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    #@83e
    move-result v68

    #@83f
    .line 2803
    .local v68, "mobileActiveCount":I
    const/4 v5, 0x2

    #@840
    move-object/from16 v0, v123

    #@842
    move/from16 v1, p3

    #@844
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@847
    move-result-wide v168

    #@848
    .line 2804
    .local v168, "wifiPacketsRx":J
    const/4 v5, 0x3

    #@849
    move-object/from16 v0, v123

    #@84b
    move/from16 v1, p3

    #@84d
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@850
    move-result-wide v170

    #@851
    .line 2805
    .local v170, "wifiPacketsTx":J
    const-wide/16 v8, 0x0

    #@853
    cmp-long v5, v72, v8

    #@855
    if-gtz v5, :cond_17

    #@857
    const-wide/16 v8, 0x0

    #@859
    cmp-long v5, v74, v8

    #@85b
    if-lez v5, :cond_1c

    #@85d
    .line 2808
    :cond_17
    :goto_14
    const-string/jumbo v5, "nt"

    #@860
    const/16 v8, 0xa

    #@862
    new-array v8, v8, [Ljava/lang/Object;

    #@864
    invoke-static/range {v72 .. v73}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@867
    move-result-object v9

    #@868
    const/4 v11, 0x0

    #@869
    aput-object v9, v8, v11

    #@86b
    invoke-static/range {v74 .. v75}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@86e
    move-result-object v9

    #@86f
    const/4 v11, 0x1

    #@870
    aput-object v9, v8, v11

    #@872
    .line 2809
    invoke-static/range {v160 .. v161}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@875
    move-result-object v9

    #@876
    const/4 v11, 0x2

    #@877
    aput-object v9, v8, v11

    #@879
    invoke-static/range {v162 .. v163}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@87c
    move-result-object v9

    #@87d
    const/4 v11, 0x3

    #@87e
    aput-object v9, v8, v11

    #@880
    .line 2810
    invoke-static/range {v76 .. v77}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@883
    move-result-object v9

    #@884
    const/4 v11, 0x4

    #@885
    aput-object v9, v8, v11

    #@887
    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@88a
    move-result-object v9

    #@88b
    const/4 v11, 0x5

    #@88c
    aput-object v9, v8, v11

    #@88e
    .line 2811
    invoke-static/range {v168 .. v169}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@891
    move-result-object v9

    #@892
    const/4 v11, 0x6

    #@893
    aput-object v9, v8, v11

    #@895
    invoke-static/range {v170 .. v171}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@898
    move-result-object v9

    #@899
    const/4 v11, 0x7

    #@89a
    aput-object v9, v8, v11

    #@89c
    .line 2812
    invoke-static/range {v70 .. v71}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@89f
    move-result-object v9

    #@8a0
    const/16 v11, 0x8

    #@8a2
    aput-object v9, v8, v11

    #@8a4
    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8a7
    move-result-object v9

    #@8a8
    const/16 v11, 0x9

    #@8aa
    aput-object v9, v8, v11

    #@8ac
    .line 2808
    move-object/from16 v0, p2

    #@8ae
    invoke-static {v0, v12, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@8b1
    .line 2815
    :cond_18
    move-object/from16 v0, v123

    #@8b3
    move/from16 v1, p3

    #@8b5
    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    #@8b8
    move-result-wide v48

    #@8b9
    .line 2816
    .local v48, "fullWifiLockOnTime":J
    move-object/from16 v0, v123

    #@8bb
    move/from16 v1, p3

    #@8bd
    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    #@8c0
    move-result-wide v182

    #@8c1
    .line 2817
    .local v182, "wifiScanTime":J
    move-object/from16 v0, v123

    #@8c3
    move/from16 v1, p3

    #@8c5
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    #@8c8
    move-result v151

    #@8c9
    .line 2818
    .local v151, "wifiScanCount":I
    move-object/from16 v0, v123

    #@8cb
    move/from16 v1, p3

    #@8cd
    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    #@8d0
    move-result-wide v138

    #@8d1
    .line 2819
    .local v138, "uidWifiRunningTime":J
    const/4 v5, 0x0

    #@8d2
    move-object/from16 v0, v123

    #@8d4
    move/from16 v1, p3

    #@8d6
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity(II)J

    #@8d9
    move-result-wide v136

    #@8da
    .line 2820
    .local v136, "uidWifiIdleTimeMs":J
    const/4 v5, 0x1

    #@8db
    move-object/from16 v0, v123

    #@8dd
    move/from16 v1, p3

    #@8df
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity(II)J

    #@8e2
    move-result-wide v140

    #@8e3
    .line 2821
    .local v140, "uidWifiRxTimeMs":J
    const/4 v5, 0x2

    #@8e4
    move-object/from16 v0, v123

    #@8e6
    move/from16 v1, p3

    #@8e8
    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity(II)J

    #@8eb
    move-result-wide v142

    #@8ec
    .line 2822
    .local v142, "uidWifiTxTimeMs":J
    const-wide/16 v8, 0x0

    #@8ee
    cmp-long v5, v48, v8

    #@8f0
    if-nez v5, :cond_19

    #@8f2
    const-wide/16 v8, 0x0

    #@8f4
    cmp-long v5, v182, v8

    #@8f6
    if-eqz v5, :cond_1d

    #@8f8
    .line 2825
    :cond_19
    :goto_15
    const-string/jumbo v5, "wfl"

    #@8fb
    const/4 v8, 0x7

    #@8fc
    new-array v8, v8, [Ljava/lang/Object;

    #@8fe
    .line 2826
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@901
    move-result-object v9

    #@902
    const/4 v11, 0x0

    #@903
    aput-object v9, v8, v11

    #@905
    invoke-static/range {v182 .. v183}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@908
    move-result-object v9

    #@909
    const/4 v11, 0x1

    #@90a
    aput-object v9, v8, v11

    #@90c
    invoke-static/range {v138 .. v139}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@90f
    move-result-object v9

    #@910
    const/4 v11, 0x2

    #@911
    aput-object v9, v8, v11

    #@913
    invoke-static/range {v151 .. v151}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@916
    move-result-object v9

    #@917
    const/4 v11, 0x3

    #@918
    aput-object v9, v8, v11

    #@91a
    .line 2827
    invoke-static/range {v136 .. v137}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@91d
    move-result-object v9

    #@91e
    const/4 v11, 0x4

    #@91f
    aput-object v9, v8, v11

    #@921
    invoke-static/range {v140 .. v141}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@924
    move-result-object v9

    #@925
    const/4 v11, 0x5

    #@926
    aput-object v9, v8, v11

    #@928
    invoke-static/range {v142 .. v143}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@92b
    move-result-object v9

    #@92c
    const/4 v11, 0x6

    #@92d
    aput-object v9, v8, v11

    #@92f
    .line 2825
    move-object/from16 v0, p2

    #@931
    invoke-static {v0, v12, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@934
    .line 2830
    :cond_1a
    invoke-virtual/range {v123 .. v123}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    #@937
    move-result v5

    #@938
    if-eqz v5, :cond_1f

    #@93a
    .line 2831
    const/4 v5, 0x3

    #@93b
    new-array v0, v5, [Ljava/lang/Object;

    #@93d
    move-object/from16 v22, v0

    #@93f
    .line 2832
    const/16 v47, 0x0

    #@941
    .line 2833
    .local v47, "hasData":Z
    const/16 v51, 0x0

    #@943
    :goto_16
    const/4 v5, 0x3

    #@944
    move/from16 v0, v51

    #@946
    if-ge v0, v5, :cond_1e

    #@948
    .line 2834
    move-object/from16 v0, v123

    #@94a
    move/from16 v1, v51

    #@94c
    move/from16 v2, p3

    #@94e
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    #@951
    move-result v135

    #@952
    .line 2835
    .local v135, "val":I
    invoke-static/range {v135 .. v135}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@955
    move-result-object v5

    #@956
    aput-object v5, v22, v51

    #@958
    .line 2836
    if-eqz v135, :cond_1b

    #@95a
    const/16 v47, 0x1

    #@95c
    .line 2833
    :cond_1b
    add-int/lit8 v51, v51, 0x1

    #@95e
    goto :goto_16

    #@95f
    .line 2805
    .end local v47    # "hasData":Z
    .end local v48    # "fullWifiLockOnTime":J
    .end local v135    # "val":I
    .end local v136    # "uidWifiIdleTimeMs":J
    .end local v138    # "uidWifiRunningTime":J
    .end local v140    # "uidWifiRxTimeMs":J
    .end local v142    # "uidWifiTxTimeMs":J
    .end local v151    # "wifiScanCount":I
    .end local v182    # "wifiScanTime":J
    :cond_1c
    const-wide/16 v8, 0x0

    #@961
    cmp-long v5, v160, v8

    #@963
    if-gtz v5, :cond_17

    #@965
    const-wide/16 v8, 0x0

    #@967
    cmp-long v5, v162, v8

    #@969
    if-gtz v5, :cond_17

    #@96b
    .line 2806
    const-wide/16 v8, 0x0

    #@96d
    cmp-long v5, v76, v8

    #@96f
    if-gtz v5, :cond_17

    #@971
    const-wide/16 v8, 0x0

    #@973
    cmp-long v5, v78, v8

    #@975
    if-gtz v5, :cond_17

    #@977
    const-wide/16 v8, 0x0

    #@979
    cmp-long v5, v168, v8

    #@97b
    if-gtz v5, :cond_17

    #@97d
    .line 2807
    const-wide/16 v8, 0x0

    #@97f
    cmp-long v5, v170, v8

    #@981
    if-gtz v5, :cond_17

    #@983
    const-wide/16 v8, 0x0

    #@985
    cmp-long v5, v70, v8

    #@987
    if-gtz v5, :cond_17

    #@989
    if-lez v68, :cond_18

    #@98b
    goto/16 :goto_14

    #@98d
    .line 2822
    .restart local v48    # "fullWifiLockOnTime":J
    .restart local v136    # "uidWifiIdleTimeMs":J
    .restart local v138    # "uidWifiRunningTime":J
    .restart local v140    # "uidWifiRxTimeMs":J
    .restart local v142    # "uidWifiTxTimeMs":J
    .restart local v151    # "wifiScanCount":I
    .restart local v182    # "wifiScanTime":J
    :cond_1d
    if-nez v151, :cond_19

    #@98f
    .line 2823
    const-wide/16 v8, 0x0

    #@991
    cmp-long v5, v138, v8

    #@993
    if-nez v5, :cond_19

    #@995
    const-wide/16 v8, 0x0

    #@997
    cmp-long v5, v136, v8

    #@999
    if-nez v5, :cond_19

    #@99b
    const-wide/16 v8, 0x0

    #@99d
    cmp-long v5, v140, v8

    #@99f
    if-nez v5, :cond_19

    #@9a1
    .line 2824
    const-wide/16 v8, 0x0

    #@9a3
    cmp-long v5, v142, v8

    #@9a5
    if-eqz v5, :cond_1a

    #@9a7
    goto/16 :goto_15

    #@9a9
    .line 2838
    .restart local v47    # "hasData":Z
    :cond_1e
    if-eqz v47, :cond_1f

    #@9ab
    .line 2839
    const-string/jumbo v5, "ua"

    #@9ae
    move-object/from16 v0, p2

    #@9b0
    move-object/from16 v1, v22

    #@9b2
    invoke-static {v0, v12, v13, v5, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@9b5
    .line 2843
    .end local v47    # "hasData":Z
    :cond_1f
    invoke-virtual/range {v123 .. v123}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    #@9b8
    move-result-object v148

    #@9b9
    .line 2844
    .restart local v148    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual/range {v148 .. v148}, Landroid/util/ArrayMap;->size()I

    #@9bc
    move-result v5

    #@9bd
    add-int/lit8 v62, v5, -0x1

    #@9bf
    .restart local v62    # "iw":I
    :goto_17
    if-ltz v62, :cond_22

    #@9c1
    .line 2845
    move-object/from16 v0, v148

    #@9c3
    move/from16 v1, v62

    #@9c5
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@9c8
    move-result-object v190

    #@9c9
    check-cast v190, Landroid/os/BatteryStats$Uid$Wakelock;

    #@9cb
    .line 2846
    .restart local v190    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const-string/jumbo v10, ""

    #@9ce
    .line 2847
    .local v10, "linePrefix":Ljava/lang/String;
    const/4 v5, 0x0

    #@9cf
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    #@9d2
    .line 2848
    const/4 v5, 0x1

    #@9d3
    move-object/from16 v0, v190

    #@9d5
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@9d8
    move-result-object v5

    #@9d9
    .line 2849
    const-string/jumbo v8, "f"

    #@9dc
    move/from16 v9, p3

    #@9de
    .line 2848
    invoke-static/range {v4 .. v10}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@9e1
    move-result-object v10

    #@9e2
    .line 2850
    const/4 v5, 0x0

    #@9e3
    move-object/from16 v0, v190

    #@9e5
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@9e8
    move-result-object v5

    #@9e9
    .line 2851
    const-string/jumbo v8, "p"

    #@9ec
    move/from16 v9, p3

    #@9ee
    .line 2850
    invoke-static/range {v4 .. v10}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@9f1
    move-result-object v10

    #@9f2
    .line 2852
    const/4 v5, 0x2

    #@9f3
    move-object/from16 v0, v190

    #@9f5
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@9f8
    move-result-object v5

    #@9f9
    .line 2853
    const-string/jumbo v8, "w"

    #@9fc
    move/from16 v9, p3

    #@9fe
    .line 2852
    invoke-static/range {v4 .. v10}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@a01
    move-result-object v10

    #@a02
    .line 2856
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@a05
    move-result v5

    #@a06
    if-lez v5, :cond_21

    #@a08
    .line 2857
    move-object/from16 v0, v148

    #@a0a
    move/from16 v1, v62

    #@a0c
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@a0f
    move-result-object v69

    #@a10
    check-cast v69, Ljava/lang/String;

    #@a12
    .line 2858
    .local v69, "name":Ljava/lang/String;
    const/16 v5, 0x2c

    #@a14
    move-object/from16 v0, v69

    #@a16
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    #@a19
    move-result v5

    #@a1a
    if-ltz v5, :cond_20

    #@a1c
    .line 2859
    const/16 v5, 0x2c

    #@a1e
    const/16 v8, 0x5f

    #@a20
    move-object/from16 v0, v69

    #@a22
    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@a25
    move-result-object v69

    #@a26
    .line 2861
    :cond_20
    const-string/jumbo v5, "wl"

    #@a29
    const/4 v8, 0x2

    #@a2a
    new-array v8, v8, [Ljava/lang/Object;

    #@a2c
    const/4 v9, 0x0

    #@a2d
    aput-object v69, v8, v9

    #@a2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a32
    move-result-object v9

    #@a33
    const/4 v11, 0x1

    #@a34
    aput-object v9, v8, v11

    #@a36
    move-object/from16 v0, p2

    #@a38
    invoke-static {v0, v12, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@a3b
    .line 2844
    .end local v69    # "name":Ljava/lang/String;
    :cond_21
    add-int/lit8 v62, v62, -0x1

    #@a3d
    goto :goto_17

    #@a3e
    .line 2865
    .end local v10    # "linePrefix":Ljava/lang/String;
    .end local v190    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_22
    invoke-virtual/range {v123 .. v123}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    #@a41
    move-result-object v117

    #@a42
    .line 2866
    .local v117, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v117 .. v117}, Landroid/util/ArrayMap;->size()I

    #@a45
    move-result v5

    #@a46
    add-int/lit8 v60, v5, -0x1

    #@a48
    .local v60, "isy":I
    :goto_18
    if-ltz v60, :cond_24

    #@a4a
    .line 2867
    move-object/from16 v0, v117

    #@a4c
    move/from16 v1, v60

    #@a4e
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@a51
    move-result-object v122

    #@a52
    check-cast v122, Landroid/os/BatteryStats$Timer;

    #@a54
    .line 2869
    .local v122, "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v122

    #@a56
    move/from16 v1, p3

    #@a58
    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@a5b
    move-result-wide v8

    #@a5c
    const-wide/16 v14, 0x1f4

    #@a5e
    add-long/2addr v8, v14

    #@a5f
    const-wide/16 v14, 0x3e8

    #@a61
    div-long v128, v8, v14

    #@a63
    .line 2870
    .local v128, "totalTime":J
    move-object/from16 v0, v122

    #@a65
    move/from16 v1, p3

    #@a67
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@a6a
    move-result v35

    #@a6b
    .line 2871
    .restart local v35    # "count":I
    const-wide/16 v8, 0x0

    #@a6d
    cmp-long v5, v128, v8

    #@a6f
    if-eqz v5, :cond_23

    #@a71
    .line 2872
    const-string/jumbo v5, "sy"

    #@a74
    const/4 v8, 0x3

    #@a75
    new-array v8, v8, [Ljava/lang/Object;

    #@a77
    move-object/from16 v0, v117

    #@a79
    move/from16 v1, v60

    #@a7b
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@a7e
    move-result-object v9

    #@a7f
    const/4 v11, 0x0

    #@a80
    aput-object v9, v8, v11

    #@a82
    invoke-static/range {v128 .. v129}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@a85
    move-result-object v9

    #@a86
    const/4 v11, 0x1

    #@a87
    aput-object v9, v8, v11

    #@a89
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a8c
    move-result-object v9

    #@a8d
    const/4 v11, 0x2

    #@a8e
    aput-object v9, v8, v11

    #@a90
    move-object/from16 v0, p2

    #@a92
    invoke-static {v0, v12, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@a95
    .line 2866
    :cond_23
    add-int/lit8 v60, v60, -0x1

    #@a97
    goto :goto_18

    #@a98
    .line 2876
    .end local v35    # "count":I
    .end local v122    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v128    # "totalTime":J
    :cond_24
    invoke-virtual/range {v123 .. v123}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    #@a9b
    move-result-object v64

    #@a9c
    .line 2877
    .local v64, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v64 .. v64}, Landroid/util/ArrayMap;->size()I

    #@a9f
    move-result v5

    #@aa0
    add-int/lit8 v52, v5, -0x1

    #@aa2
    .local v52, "ij":I
    :goto_19
    if-ltz v52, :cond_26

    #@aa4
    .line 2878
    move-object/from16 v0, v64

    #@aa6
    move/from16 v1, v52

    #@aa8
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@aab
    move-result-object v122

    #@aac
    check-cast v122, Landroid/os/BatteryStats$Timer;

    #@aae
    .line 2880
    .restart local v122    # "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v122

    #@ab0
    move/from16 v1, p3

    #@ab2
    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@ab5
    move-result-wide v8

    #@ab6
    const-wide/16 v14, 0x1f4

    #@ab8
    add-long/2addr v8, v14

    #@ab9
    const-wide/16 v14, 0x3e8

    #@abb
    div-long v128, v8, v14

    #@abd
    .line 2881
    .restart local v128    # "totalTime":J
    move-object/from16 v0, v122

    #@abf
    move/from16 v1, p3

    #@ac1
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@ac4
    move-result v35

    #@ac5
    .line 2882
    .restart local v35    # "count":I
    const-wide/16 v8, 0x0

    #@ac7
    cmp-long v5, v128, v8

    #@ac9
    if-eqz v5, :cond_25

    #@acb
    .line 2883
    const-string/jumbo v5, "jb"

    #@ace
    const/4 v8, 0x3

    #@acf
    new-array v8, v8, [Ljava/lang/Object;

    #@ad1
    move-object/from16 v0, v64

    #@ad3
    move/from16 v1, v52

    #@ad5
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@ad8
    move-result-object v9

    #@ad9
    const/4 v11, 0x0

    #@ada
    aput-object v9, v8, v11

    #@adc
    invoke-static/range {v128 .. v129}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@adf
    move-result-object v9

    #@ae0
    const/4 v11, 0x1

    #@ae1
    aput-object v9, v8, v11

    #@ae3
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ae6
    move-result-object v9

    #@ae7
    const/4 v11, 0x2

    #@ae8
    aput-object v9, v8, v11

    #@aea
    move-object/from16 v0, p2

    #@aec
    invoke-static {v0, v12, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@aef
    .line 2877
    :cond_25
    add-int/lit8 v52, v52, -0x1

    #@af1
    goto :goto_19

    #@af2
    .line 2887
    .end local v35    # "count":I
    .end local v122    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v128    # "totalTime":J
    :cond_26
    const-string/jumbo v14, "fla"

    #@af5
    invoke-virtual/range {v123 .. v123}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@af8
    move-result-object v15

    #@af9
    move-object/from16 v11, p2

    #@afb
    move-wide/from16 v16, v6

    #@afd
    move/from16 v18, p3

    #@aff
    invoke-static/range {v11 .. v18}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    #@b02
    .line 2889
    const-string/jumbo v14, "cam"

    #@b05
    invoke-virtual/range {v123 .. v123}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@b08
    move-result-object v15

    #@b09
    move-object/from16 v11, p2

    #@b0b
    move-wide/from16 v16, v6

    #@b0d
    move/from16 v18, p3

    #@b0f
    invoke-static/range {v11 .. v18}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    #@b12
    .line 2891
    const-string/jumbo v14, "vid"

    #@b15
    invoke-virtual/range {v123 .. v123}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@b18
    move-result-object v15

    #@b19
    move-object/from16 v11, p2

    #@b1b
    move-wide/from16 v16, v6

    #@b1d
    move/from16 v18, p3

    #@b1f
    invoke-static/range {v11 .. v18}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    #@b22
    .line 2893
    const-string/jumbo v14, "aud"

    #@b25
    invoke-virtual/range {v123 .. v123}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@b28
    move-result-object v15

    #@b29
    move-object/from16 v11, p2

    #@b2b
    move-wide/from16 v16, v6

    #@b2d
    move/from16 v18, p3

    #@b2f
    invoke-static/range {v11 .. v18}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    #@b32
    .line 2896
    invoke-virtual/range {v123 .. v123}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    #@b35
    move-result-object v109

    #@b36
    .line 2897
    .local v109, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v109 .. v109}, Landroid/util/SparseArray;->size()I

    #@b39
    move-result v19

    #@b3a
    .line 2898
    .local v19, "NSE":I
    const/16 v58, 0x0

    #@b3c
    .local v58, "ise":I
    :goto_1a
    move/from16 v0, v58

    #@b3e
    move/from16 v1, v19

    #@b40
    if-ge v0, v1, :cond_28

    #@b42
    .line 2899
    move-object/from16 v0, v109

    #@b44
    move/from16 v1, v58

    #@b46
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@b49
    move-result-object v103

    #@b4a
    check-cast v103, Landroid/os/BatteryStats$Uid$Sensor;

    #@b4c
    .line 2900
    .local v103, "se":Landroid/os/BatteryStats$Uid$Sensor;
    move-object/from16 v0, v109

    #@b4e
    move/from16 v1, v58

    #@b50
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@b53
    move-result v108

    #@b54
    .line 2901
    .local v108, "sensorNumber":I
    invoke-virtual/range {v103 .. v103}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    #@b57
    move-result-object v122

    #@b58
    .line 2902
    .restart local v122    # "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v122, :cond_27

    #@b5a
    .line 2904
    move-object/from16 v0, v122

    #@b5c
    move/from16 v1, p3

    #@b5e
    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@b61
    move-result-wide v8

    #@b62
    const-wide/16 v14, 0x1f4

    #@b64
    add-long/2addr v8, v14

    #@b65
    .line 2905
    const-wide/16 v14, 0x3e8

    #@b67
    .line 2904
    div-long v128, v8, v14

    #@b69
    .line 2906
    .restart local v128    # "totalTime":J
    move-object/from16 v0, v122

    #@b6b
    move/from16 v1, p3

    #@b6d
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@b70
    move-result v35

    #@b71
    .line 2907
    .restart local v35    # "count":I
    const-wide/16 v8, 0x0

    #@b73
    cmp-long v5, v128, v8

    #@b75
    if-eqz v5, :cond_27

    #@b77
    .line 2908
    const-string/jumbo v5, "sr"

    #@b7a
    const/4 v8, 0x3

    #@b7b
    new-array v8, v8, [Ljava/lang/Object;

    #@b7d
    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b80
    move-result-object v9

    #@b81
    const/4 v11, 0x0

    #@b82
    aput-object v9, v8, v11

    #@b84
    invoke-static/range {v128 .. v129}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b87
    move-result-object v9

    #@b88
    const/4 v11, 0x1

    #@b89
    aput-object v9, v8, v11

    #@b8b
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b8e
    move-result-object v9

    #@b8f
    const/4 v11, 0x2

    #@b90
    aput-object v9, v8, v11

    #@b92
    move-object/from16 v0, p2

    #@b94
    invoke-static {v0, v12, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@b97
    .line 2898
    .end local v35    # "count":I
    .end local v128    # "totalTime":J
    :cond_27
    add-int/lit8 v58, v58, 0x1

    #@b99
    goto :goto_1a

    #@b9a
    .line 2913
    .end local v103    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v108    # "sensorNumber":I
    .end local v122    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_28
    const-string/jumbo v14, "vib"

    #@b9d
    invoke-virtual/range {v123 .. v123}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    #@ba0
    move-result-object v15

    #@ba1
    move-object/from16 v11, p2

    #@ba3
    move-wide/from16 v16, v6

    #@ba5
    move/from16 v18, p3

    #@ba7
    invoke-static/range {v11 .. v18}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    #@baa
    .line 2916
    const-string/jumbo v14, "fg"

    #@bad
    invoke-virtual/range {v123 .. v123}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    #@bb0
    move-result-object v15

    #@bb1
    move-object/from16 v11, p2

    #@bb3
    move-wide/from16 v16, v6

    #@bb5
    move/from16 v18, p3

    #@bb7
    invoke-static/range {v11 .. v18}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    #@bba
    .line 2919
    const/4 v5, 0x3

    #@bbb
    new-array v0, v5, [Ljava/lang/Object;

    #@bbd
    move-object/from16 v116, v0

    #@bbf
    .line 2920
    .local v116, "stateTimes":[Ljava/lang/Object;
    const-wide/16 v126, 0x0

    #@bc1
    .line 2921
    .local v126, "totalStateTime":J
    const/16 v57, 0x0

    #@bc3
    .local v57, "ips":I
    :goto_1b
    const/4 v5, 0x3

    #@bc4
    move/from16 v0, v57

    #@bc6
    if-ge v0, v5, :cond_29

    #@bc8
    .line 2922
    move-object/from16 v0, v123

    #@bca
    move/from16 v1, v57

    #@bcc
    move/from16 v2, p3

    #@bce
    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    #@bd1
    move-result-wide v8

    #@bd2
    add-long v126, v126, v8

    #@bd4
    .line 2923
    const-wide/16 v8, 0x1f4

    #@bd6
    add-long v8, v8, v126

    #@bd8
    const-wide/16 v14, 0x3e8

    #@bda
    div-long/2addr v8, v14

    #@bdb
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@bde
    move-result-object v5

    #@bdf
    aput-object v5, v116, v57

    #@be1
    .line 2921
    add-int/lit8 v57, v57, 0x1

    #@be3
    goto :goto_1b

    #@be4
    .line 2925
    :cond_29
    const-wide/16 v8, 0x0

    #@be6
    cmp-long v5, v126, v8

    #@be8
    if-lez v5, :cond_2a

    #@bea
    .line 2926
    const-string/jumbo v5, "st"

    #@bed
    move-object/from16 v0, p2

    #@bef
    move-object/from16 v1, v116

    #@bf1
    invoke-static {v0, v12, v13, v5, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@bf4
    .line 2929
    :cond_2a
    move-object/from16 v0, v123

    #@bf6
    move/from16 v1, p3

    #@bf8
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    #@bfb
    move-result-wide v144

    #@bfc
    .line 2930
    .local v144, "userCpuTimeUs":J
    move-object/from16 v0, v123

    #@bfe
    move/from16 v1, p3

    #@c00
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    #@c03
    move-result-wide v118

    #@c04
    .line 2931
    .local v118, "systemCpuTimeUs":J
    move-object/from16 v0, v123

    #@c06
    move/from16 v1, p3

    #@c08
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getCpuPowerMaUs(I)J

    #@c0b
    move-result-wide v96

    #@c0c
    .line 2932
    .local v96, "powerCpuMaUs":J
    const-wide/16 v8, 0x0

    #@c0e
    cmp-long v5, v144, v8

    #@c10
    if-gtz v5, :cond_2b

    #@c12
    const-wide/16 v8, 0x0

    #@c14
    cmp-long v5, v118, v8

    #@c16
    if-lez v5, :cond_2f

    #@c18
    .line 2933
    :cond_2b
    :goto_1c
    const-string/jumbo v5, "cpu"

    #@c1b
    const/4 v8, 0x3

    #@c1c
    new-array v8, v8, [Ljava/lang/Object;

    #@c1e
    const-wide/16 v14, 0x3e8

    #@c20
    div-long v14, v144, v14

    #@c22
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@c25
    move-result-object v9

    #@c26
    const/4 v11, 0x0

    #@c27
    aput-object v9, v8, v11

    #@c29
    const-wide/16 v14, 0x3e8

    #@c2b
    div-long v14, v118, v14

    #@c2d
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@c30
    move-result-object v9

    #@c31
    const/4 v11, 0x1

    #@c32
    aput-object v9, v8, v11

    #@c34
    .line 2934
    const-wide/16 v14, 0x3e8

    #@c36
    div-long v14, v96, v14

    #@c38
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@c3b
    move-result-object v9

    #@c3c
    const/4 v11, 0x2

    #@c3d
    aput-object v9, v8, v11

    #@c3f
    .line 2933
    move-object/from16 v0, p2

    #@c41
    invoke-static {v0, v12, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c44
    .line 2938
    :cond_2c
    invoke-virtual/range {v123 .. v123}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    #@c47
    move-result-object v100

    #@c48
    .line 2939
    .local v100, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual/range {v100 .. v100}, Landroid/util/ArrayMap;->size()I

    #@c4b
    move-result v5

    #@c4c
    add-int/lit8 v56, v5, -0x1

    #@c4e
    .local v56, "ipr":I
    :goto_1d
    if-ltz v56, :cond_31

    #@c50
    .line 2940
    move-object/from16 v0, v100

    #@c52
    move/from16 v1, v56

    #@c54
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@c57
    move-result-object v102

    #@c58
    check-cast v102, Landroid/os/BatteryStats$Uid$Proc;

    #@c5a
    .line 2942
    .local v102, "ps":Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v102

    #@c5c
    move/from16 v1, p3

    #@c5e
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    #@c61
    move-result-wide v146

    #@c62
    .line 2943
    .local v146, "userMillis":J
    move-object/from16 v0, v102

    #@c64
    move/from16 v1, p3

    #@c66
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    #@c69
    move-result-wide v120

    #@c6a
    .line 2944
    .local v120, "systemMillis":J
    move-object/from16 v0, v102

    #@c6c
    move/from16 v1, p3

    #@c6e
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    #@c71
    move-result-wide v42

    #@c72
    .line 2945
    .local v42, "foregroundMillis":J
    move-object/from16 v0, v102

    #@c74
    move/from16 v1, p3

    #@c76
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    #@c79
    move-result v113

    #@c7a
    .line 2946
    .local v113, "starts":I
    move-object/from16 v0, v102

    #@c7c
    move/from16 v1, p3

    #@c7e
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    #@c81
    move-result v89

    #@c82
    .line 2947
    .local v89, "numCrashes":I
    move-object/from16 v0, v102

    #@c84
    move/from16 v1, p3

    #@c86
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    #@c89
    move-result v88

    #@c8a
    .line 2949
    .local v88, "numAnrs":I
    const-wide/16 v8, 0x0

    #@c8c
    cmp-long v5, v146, v8

    #@c8e
    if-nez v5, :cond_2d

    #@c90
    const-wide/16 v8, 0x0

    #@c92
    cmp-long v5, v120, v8

    #@c94
    if-eqz v5, :cond_30

    #@c96
    .line 2951
    :cond_2d
    :goto_1e
    const-string/jumbo v5, "pr"

    #@c99
    const/4 v8, 0x7

    #@c9a
    new-array v8, v8, [Ljava/lang/Object;

    #@c9c
    move-object/from16 v0, v100

    #@c9e
    move/from16 v1, v56

    #@ca0
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@ca3
    move-result-object v9

    #@ca4
    const/4 v11, 0x0

    #@ca5
    aput-object v9, v8, v11

    #@ca7
    invoke-static/range {v146 .. v147}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@caa
    move-result-object v9

    #@cab
    const/4 v11, 0x1

    #@cac
    aput-object v9, v8, v11

    #@cae
    .line 2952
    invoke-static/range {v120 .. v121}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@cb1
    move-result-object v9

    #@cb2
    const/4 v11, 0x2

    #@cb3
    aput-object v9, v8, v11

    #@cb5
    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@cb8
    move-result-object v9

    #@cb9
    const/4 v11, 0x3

    #@cba
    aput-object v9, v8, v11

    #@cbc
    invoke-static/range {v113 .. v113}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cbf
    move-result-object v9

    #@cc0
    const/4 v11, 0x4

    #@cc1
    aput-object v9, v8, v11

    #@cc3
    invoke-static/range {v88 .. v88}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cc6
    move-result-object v9

    #@cc7
    const/4 v11, 0x5

    #@cc8
    aput-object v9, v8, v11

    #@cca
    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ccd
    move-result-object v9

    #@cce
    const/4 v11, 0x6

    #@ccf
    aput-object v9, v8, v11

    #@cd1
    .line 2951
    move-object/from16 v0, p2

    #@cd3
    invoke-static {v0, v12, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@cd6
    .line 2939
    :cond_2e
    add-int/lit8 v56, v56, -0x1

    #@cd8
    goto/16 :goto_1d

    #@cda
    .line 2932
    .end local v42    # "foregroundMillis":J
    .end local v56    # "ipr":I
    .end local v88    # "numAnrs":I
    .end local v89    # "numCrashes":I
    .end local v100    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v102    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v113    # "starts":I
    .end local v120    # "systemMillis":J
    .end local v146    # "userMillis":J
    :cond_2f
    const-wide/16 v8, 0x0

    #@cdc
    cmp-long v5, v96, v8

    #@cde
    if-lez v5, :cond_2c

    #@ce0
    goto/16 :goto_1c

    #@ce2
    .line 2949
    .restart local v42    # "foregroundMillis":J
    .restart local v56    # "ipr":I
    .restart local v88    # "numAnrs":I
    .restart local v89    # "numCrashes":I
    .restart local v100    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v102    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .restart local v113    # "starts":I
    .restart local v120    # "systemMillis":J
    .restart local v146    # "userMillis":J
    :cond_30
    const-wide/16 v8, 0x0

    #@ce4
    cmp-long v5, v42, v8

    #@ce6
    if-nez v5, :cond_2d

    #@ce8
    .line 2950
    if-nez v113, :cond_2d

    #@cea
    if-nez v88, :cond_2d

    #@cec
    if-eqz v89, :cond_2e

    #@cee
    goto :goto_1e

    #@cef
    .line 2957
    .end local v42    # "foregroundMillis":J
    .end local v88    # "numAnrs":I
    .end local v89    # "numCrashes":I
    .end local v102    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v113    # "starts":I
    .end local v120    # "systemMillis":J
    .end local v146    # "userMillis":J
    :cond_31
    invoke-virtual/range {v123 .. v123}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    #@cf2
    move-result-object v90

    #@cf3
    .line 2958
    .local v90, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual/range {v90 .. v90}, Landroid/util/ArrayMap;->size()I

    #@cf6
    move-result v5

    #@cf7
    add-int/lit8 v53, v5, -0x1

    #@cf9
    .local v53, "ipkg":I
    :goto_1f
    if-ltz v53, :cond_15

    #@cfb
    .line 2959
    move-object/from16 v0, v90

    #@cfd
    move/from16 v1, v53

    #@cff
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@d02
    move-result-object v101

    #@d03
    check-cast v101, Landroid/os/BatteryStats$Uid$Pkg;

    #@d05
    .line 2960
    .local v101, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    const/16 v150, 0x0

    #@d07
    .line 2961
    .local v150, "wakeups":I
    invoke-virtual/range {v101 .. v101}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    #@d0a
    move-result-object v21

    #@d0b
    .line 2962
    .local v21, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->size()I

    #@d0e
    move-result v5

    #@d0f
    add-int/lit8 v63, v5, -0x1

    #@d11
    .local v63, "iwa":I
    :goto_20
    if-ltz v63, :cond_32

    #@d13
    .line 2963
    move-object/from16 v0, v21

    #@d15
    move/from16 v1, v63

    #@d17
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@d1a
    move-result-object v5

    #@d1b
    check-cast v5, Landroid/os/BatteryStats$Counter;

    #@d1d
    move/from16 v0, p3

    #@d1f
    invoke-virtual {v5, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    #@d22
    move-result v5

    #@d23
    add-int v150, v150, v5

    #@d25
    .line 2962
    add-int/lit8 v63, v63, -0x1

    #@d27
    goto :goto_20

    #@d28
    .line 2965
    :cond_32
    invoke-virtual/range {v101 .. v101}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    #@d2b
    move-result-object v110

    #@d2c
    .line 2966
    .local v110, "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual/range {v110 .. v110}, Landroid/util/ArrayMap;->size()I

    #@d2f
    move-result v5

    #@d30
    add-int/lit8 v59, v5, -0x1

    #@d32
    .local v59, "isvc":I
    :goto_21
    if-ltz v59, :cond_36

    #@d34
    .line 2967
    move-object/from16 v0, v110

    #@d36
    move/from16 v1, v59

    #@d38
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@d3b
    move-result-object v112

    #@d3c
    check-cast v112, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    #@d3e
    .line 2968
    .local v112, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move-object/from16 v0, v112

    #@d40
    move-wide/from16 v1, v24

    #@d42
    move/from16 v3, p3

    #@d44
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    #@d47
    move-result-wide v114

    #@d48
    .line 2969
    .local v114, "startTime":J
    move-object/from16 v0, v112

    #@d4a
    move/from16 v1, p3

    #@d4c
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    #@d4f
    move-result v113

    #@d50
    .line 2970
    .restart local v113    # "starts":I
    move-object/from16 v0, v112

    #@d52
    move/from16 v1, p3

    #@d54
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    #@d57
    move-result v67

    #@d58
    .line 2971
    .local v67, "launches":I
    const-wide/16 v8, 0x0

    #@d5a
    cmp-long v5, v114, v8

    #@d5c
    if-nez v5, :cond_33

    #@d5e
    if-eqz v113, :cond_35

    #@d60
    .line 2972
    :cond_33
    :goto_22
    const-string/jumbo v5, "apk"

    #@d63
    const/4 v8, 0x6

    #@d64
    new-array v8, v8, [Ljava/lang/Object;

    #@d66
    .line 2973
    invoke-static/range {v150 .. v150}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d69
    move-result-object v9

    #@d6a
    const/4 v11, 0x0

    #@d6b
    aput-object v9, v8, v11

    #@d6d
    .line 2974
    move-object/from16 v0, v90

    #@d6f
    move/from16 v1, v53

    #@d71
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@d74
    move-result-object v9

    #@d75
    const/4 v11, 0x1

    #@d76
    aput-object v9, v8, v11

    #@d78
    .line 2975
    move-object/from16 v0, v110

    #@d7a
    move/from16 v1, v59

    #@d7c
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@d7f
    move-result-object v9

    #@d80
    const/4 v11, 0x2

    #@d81
    aput-object v9, v8, v11

    #@d83
    .line 2976
    const-wide/16 v14, 0x3e8

    #@d85
    div-long v14, v114, v14

    #@d87
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d8a
    move-result-object v9

    #@d8b
    const/4 v11, 0x3

    #@d8c
    aput-object v9, v8, v11

    #@d8e
    .line 2977
    invoke-static/range {v113 .. v113}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d91
    move-result-object v9

    #@d92
    const/4 v11, 0x4

    #@d93
    aput-object v9, v8, v11

    #@d95
    .line 2978
    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d98
    move-result-object v9

    #@d99
    const/4 v11, 0x5

    #@d9a
    aput-object v9, v8, v11

    #@d9c
    .line 2972
    move-object/from16 v0, p2

    #@d9e
    invoke-static {v0, v12, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@da1
    .line 2966
    :cond_34
    add-int/lit8 v59, v59, -0x1

    #@da3
    goto :goto_21

    #@da4
    .line 2971
    :cond_35
    if-eqz v67, :cond_34

    #@da6
    goto :goto_22

    #@da7
    .line 2958
    .end local v67    # "launches":I
    .end local v112    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v113    # "starts":I
    .end local v114    # "startTime":J
    :cond_36
    add-int/lit8 v53, v53, -0x1

    #@da9
    goto/16 :goto_1f

    #@dab
    .line 2518
    .end local v12    # "uid":I
    .end local v19    # "NSE":I
    .end local v21    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v48    # "fullWifiLockOnTime":J
    .end local v52    # "ij":I
    .end local v53    # "ipkg":I
    .end local v56    # "ipr":I
    .end local v57    # "ips":I
    .end local v58    # "ise":I
    .end local v59    # "isvc":I
    .end local v60    # "isy":I
    .end local v62    # "iw":I
    .end local v63    # "iwa":I
    .end local v64    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v68    # "mobileActiveCount":I
    .end local v70    # "mobileActiveTime":J
    .end local v72    # "mobileBytesRx":J
    .end local v74    # "mobileBytesTx":J
    .end local v76    # "mobilePacketsRx":J
    .end local v78    # "mobilePacketsTx":J
    .end local v90    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v96    # "powerCpuMaUs":J
    .end local v100    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v101    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v109    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v110    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v116    # "stateTimes":[Ljava/lang/Object;
    .end local v117    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v118    # "systemCpuTimeUs":J
    .end local v123    # "u":Landroid/os/BatteryStats$Uid;
    .end local v126    # "totalStateTime":J
    .end local v136    # "uidWifiIdleTimeMs":J
    .end local v138    # "uidWifiRunningTime":J
    .end local v140    # "uidWifiRxTimeMs":J
    .end local v142    # "uidWifiTxTimeMs":J
    .end local v144    # "userCpuTimeUs":J
    .end local v148    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v150    # "wakeups":I
    .end local v151    # "wifiScanCount":I
    .end local v160    # "wifiBytesRx":J
    .end local v162    # "wifiBytesTx":J
    .end local v168    # "wifiPacketsRx":J
    .end local v170    # "wifiPacketsTx":J
    .end local v182    # "wifiScanTime":J
    :cond_37
    return-void

    #@dac
    .line 2740
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
    .line 5046
    .local p3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    #@3
    .line 5048
    const-string/jumbo v2, "i"

    #@6
    const-string/jumbo v3, "vers"

    #@9
    const/4 v4, 0x4

    #@a
    new-array v4, v4, [Ljava/lang/Object;

    #@c
    .line 5049
    const-string/jumbo v5, "14"

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
    .line 5050
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    const/4 v6, 0x3

    #@29
    aput-object v5, v4, v6

    #@2b
    .line 5048
    const/4 v5, 0x0

    #@2c
    move-object/from16 v0, p2

    #@2e
    invoke-static {v0, v5, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@31
    .line 5052
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
    .line 5054
    .local v16, "now":J
    and-int/lit8 v2, p4, 0xe

    #@3d
    if-eqz v2, :cond_1

    #@3f
    const/4 v11, 0x1

    #@40
    .line 5057
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
    .line 5058
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    #@4b
    move-result v2

    #@4c
    if-eqz v2, :cond_3

    #@4e
    .line 5060
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
    .line 5061
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
    .line 5062
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
    .line 5063
    move-object/from16 v0, p2

    #@74
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    #@77
    .line 5064
    const-string/jumbo v2, ","

    #@7a
    move-object/from16 v0, p2

    #@7c
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7f
    .line 5065
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
    .line 5066
    const-string/jumbo v2, ",\""

    #@8d
    move-object/from16 v0, p2

    #@8f
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@92
    .line 5067
    move-object/from16 v0, p0

    #@94
    invoke-virtual {v0, v12}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    #@97
    move-result-object v18

    #@98
    .line 5068
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
    .line 5069
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
    .line 5070
    move-object/from16 v0, p2

    #@b2
    move-object/from16 v1, v18

    #@b4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b7
    .line 5071
    const-string/jumbo v2, "\""

    #@ba
    move-object/from16 v0, p2

    #@bc
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bf
    .line 5072
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@c2
    .line 5060
    add-int/lit8 v12, v12, 0x1

    #@c4
    goto :goto_1

    #@c5
    .line 5054
    .end local v11    # "filtering":Z
    .end local v12    # "i":I
    .end local v18    # "str":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    #@c6
    .restart local v11    # "filtering":Z
    goto/16 :goto_0

    #@c8
    .line 5074
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
    .line 5076
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    #@d7
    .line 5081
    .end local v12    # "i":I
    :cond_3
    if-eqz v11, :cond_4

    #@d9
    and-int/lit8 v2, p4, 0x6

    #@db
    if-nez v2, :cond_4

    #@dd
    .line 5082
    return-void

    #@de
    .line 5075
    .restart local v12    # "i":I
    :catchall_0
    move-exception v2

    #@df
    .line 5076
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    #@e2
    .line 5075
    throw v2

    #@e3
    .line 5085
    .end local v12    # "i":I
    :cond_4
    if-eqz p3, :cond_8

    #@e5
    .line 5086
    new-instance v23, Landroid/util/SparseArray;

    #@e7
    invoke-direct/range {v23 .. v23}, Landroid/util/SparseArray;-><init>()V

    #@ea
    .line 5087
    .local v23, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
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
    .line 5088
    move-object/from16 v0, p3

    #@f3
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f6
    move-result-object v10

    #@f7
    check-cast v10, Landroid/content/pm/ApplicationInfo;

    #@f9
    .line 5089
    .local v10, "ai":Landroid/content/pm/ApplicationInfo;
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    #@fb
    move-object/from16 v0, v23

    #@fd
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@100
    move-result-object v15

    #@101
    check-cast v15, Ljava/util/ArrayList;

    #@103
    .line 5090
    .local v15, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v15, :cond_5

    #@105
    .line 5091
    new-instance v15, Ljava/util/ArrayList;

    #@107
    .end local v15    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@10a
    .line 5092
    .restart local v15    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    #@10c
    move-object/from16 v0, v23

    #@10e
    invoke-virtual {v0, v2, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@111
    .line 5094
    :cond_5
    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@113
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@116
    .line 5087
    add-int/lit8 v12, v12, 0x1

    #@118
    goto :goto_2

    #@119
    .line 5096
    .end local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    #@11c
    move-result-object v22

    #@11d
    .line 5097
    .local v22, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    #@120
    move-result v9

    #@121
    .line 5098
    .local v9, "NU":I
    const/4 v2, 0x2

    #@122
    new-array v14, v2, [Ljava/lang/String;

    #@124
    .line 5099
    .local v14, "lineArgs":[Ljava/lang/String;
    const/4 v12, 0x0

    #@125
    :goto_3
    if-ge v12, v9, :cond_8

    #@127
    .line 5100
    move-object/from16 v0, v22

    #@129
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    #@12c
    move-result v19

    #@12d
    .line 5101
    .local v19, "uid":I
    move-object/from16 v0, v23

    #@12f
    move/from16 v1, v19

    #@131
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@134
    move-result-object v15

    #@135
    check-cast v15, Ljava/util/ArrayList;

    #@137
    .line 5102
    .restart local v15    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v15, :cond_7

    #@139
    .line 5103
    const/4 v13, 0x0

    #@13a
    .local v13, "j":I
    :goto_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@13d
    move-result v2

    #@13e
    if-ge v13, v2, :cond_7

    #@140
    .line 5104
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@143
    move-result-object v2

    #@144
    const/4 v3, 0x0

    #@145
    aput-object v2, v14, v3

    #@147
    .line 5105
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14a
    move-result-object v2

    #@14b
    check-cast v2, Ljava/lang/String;

    #@14d
    const/4 v3, 0x1

    #@14e
    aput-object v2, v14, v3

    #@150
    .line 5106
    const-string/jumbo v2, "i"

    #@153
    const-string/jumbo v3, "uid"

    #@156
    const/4 v4, 0x0

    #@157
    move-object/from16 v0, p2

    #@159
    invoke-static {v0, v4, v2, v3, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@15c
    .line 5103
    add-int/lit8 v13, v13, 0x1

    #@15e
    goto :goto_4

    #@15f
    .line 5099
    .end local v13    # "j":I
    :cond_7
    add-int/lit8 v12, v12, 0x1

    #@161
    goto :goto_3

    #@162
    .line 5112
    .end local v9    # "NU":I
    .end local v12    # "i":I
    .end local v14    # "lineArgs":[Ljava/lang/String;
    .end local v15    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "uid":I
    .end local v22    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_8
    if-eqz v11, :cond_9

    #@164
    and-int/lit8 v2, p4, 0x2

    #@166
    if-eqz v2, :cond_c

    #@168
    .line 5113
    :cond_9
    const-string/jumbo v2, ""

    #@16b
    const-string/jumbo v3, "dsd"

    #@16e
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    #@171
    move-result-object v4

    #@172
    const/4 v5, 0x1

    #@173
    move-object/from16 v0, p2

    #@175
    invoke-static {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    #@178
    .line 5114
    const/4 v2, 0x1

    #@179
    new-array v14, v2, [Ljava/lang/String;

    #@17b
    .line 5115
    .restart local v14    # "lineArgs":[Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@17e
    move-result-wide v2

    #@17f
    move-object/from16 v0, p0

    #@181
    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    #@184
    move-result-wide v20

    #@185
    .line 5116
    .local v20, "timeRemaining":J
    const-wide/16 v2, 0x0

    #@187
    cmp-long v2, v20, v2

    #@189
    if-ltz v2, :cond_a

    #@18b
    .line 5117
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@18e
    move-result-object v2

    #@18f
    const/4 v3, 0x0

    #@190
    aput-object v2, v14, v3

    #@192
    .line 5118
    const-string/jumbo v2, "i"

    #@195
    const-string/jumbo v3, "dtr"

    #@198
    const/4 v4, 0x0

    #@199
    move-object/from16 v0, p2

    #@19b
    invoke-static {v0, v4, v2, v3, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@19e
    .line 5121
    :cond_a
    const-string/jumbo v2, ""

    #@1a1
    const-string/jumbo v3, "csd"

    #@1a4
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    #@1a7
    move-result-object v4

    #@1a8
    const/4 v5, 0x1

    #@1a9
    move-object/from16 v0, p2

    #@1ab
    invoke-static {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    #@1ae
    .line 5122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1b1
    move-result-wide v2

    #@1b2
    move-object/from16 v0, p0

    #@1b4
    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    #@1b7
    move-result-wide v20

    #@1b8
    .line 5123
    const-wide/16 v2, 0x0

    #@1ba
    cmp-long v2, v20, v2

    #@1bc
    if-ltz v2, :cond_b

    #@1be
    .line 5124
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@1c1
    move-result-object v2

    #@1c2
    const/4 v3, 0x0

    #@1c3
    aput-object v2, v14, v3

    #@1c5
    .line 5125
    const-string/jumbo v2, "i"

    #@1c8
    const-string/jumbo v3, "ctr"

    #@1cb
    const/4 v4, 0x0

    #@1cc
    move-object/from16 v0, p2

    #@1ce
    invoke-static {v0, v4, v2, v3, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@1d1
    .line 5129
    :cond_b
    and-int/lit8 v2, p4, 0x40

    #@1d3
    if-eqz v2, :cond_d

    #@1d5
    const/4 v7, 0x1

    #@1d6
    .line 5128
    :goto_5
    const/4 v5, 0x0

    #@1d7
    const/4 v6, -0x1

    #@1d8
    move-object/from16 v2, p0

    #@1da
    move-object/from16 v3, p1

    #@1dc
    move-object/from16 v4, p2

    #@1de
    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    #@1e1
    .line 5045
    .end local v14    # "lineArgs":[Ljava/lang/String;
    .end local v20    # "timeRemaining":J
    :cond_c
    return-void

    #@1e2
    .line 5129
    .restart local v14    # "lineArgs":[Ljava/lang/String;
    .restart local v20    # "timeRemaining":J
    :cond_d
    const/4 v7, 0x0

    #@1e3
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
    .line 4855
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    #@3
    .line 4857
    and-int/lit8 v6, p3, 0xe

    #@5
    if-eqz v6, :cond_1

    #@7
    const/16 v34, 0x1

    #@9
    .line 4860
    .local v34, "filtering":Z
    :goto_0
    and-int/lit8 v6, p3, 0x8

    #@b
    if-nez v6, :cond_2

    #@d
    if-eqz v34, :cond_2

    #@f
    .line 4902
    :cond_0
    :goto_1
    if-eqz v34, :cond_7

    #@11
    and-int/lit8 v6, p3, 0x6

    #@13
    if-nez v6, :cond_7

    #@15
    .line 4903
    return-void

    #@16
    .line 4857
    .end local v34    # "filtering":Z
    :cond_1
    const/16 v34, 0x0

    #@18
    .restart local v34    # "filtering":Z
    goto :goto_0

    #@19
    .line 4861
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryTotalSize()I

    #@1c
    move-result v6

    #@1d
    int-to-long v0, v6

    #@1e
    move-wide/from16 v36, v0

    #@20
    .line 4862
    .local v36, "historyTotalSize":J
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryUsedSize()I

    #@23
    move-result v6

    #@24
    int-to-long v0, v6

    #@25
    move-wide/from16 v38, v0

    #@27
    .line 4863
    .local v38, "historyUsedSize":J
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    #@2a
    move-result v6

    #@2b
    if-eqz v6, :cond_3

    #@2d
    .line 4865
    :try_start_0
    const-string/jumbo v6, "Battery History ("

    #@30
    move-object/from16 v0, p2

    #@32
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@35
    .line 4866
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
    .line 4867
    const-string/jumbo v6, "% used, "

    #@43
    move-object/from16 v0, p2

    #@45
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    .line 4868
    move-object/from16 v0, p0

    #@4a
    move-object/from16 v1, p2

    #@4c
    move-wide/from16 v2, v38

    #@4e
    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@51
    .line 4869
    const-string/jumbo v6, " used of "

    #@54
    move-object/from16 v0, p2

    #@56
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@59
    .line 4870
    move-object/from16 v0, p0

    #@5b
    move-object/from16 v1, p2

    #@5d
    move-wide/from16 v2, v36

    #@5f
    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@62
    .line 4871
    const-string/jumbo v6, ", "

    #@65
    move-object/from16 v0, p2

    #@67
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6a
    .line 4872
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    #@6d
    move-result v6

    #@6e
    move-object/from16 v0, p2

    #@70
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    #@73
    .line 4873
    const-string/jumbo v6, " strings using "

    #@76
    move-object/from16 v0, p2

    #@78
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7b
    .line 4874
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
    .line 4875
    const-string/jumbo v6, "):"

    #@8a
    move-object/from16 v0, p2

    #@8c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8f
    .line 4876
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
    .line 4877
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9e
    .line 4879
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    #@a1
    .line 4883
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingOldHistoryLocked()Z

    #@a4
    move-result v6

    #@a5
    if-eqz v6, :cond_0

    #@a7
    .line 4885
    :try_start_1
    new-instance v7, Landroid/os/BatteryStats$HistoryItem;

    #@a9
    invoke-direct {v7}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    #@ac
    .line 4886
    .local v7, "rec":Landroid/os/BatteryStats$HistoryItem;
    const-string/jumbo v6, "Old battery History:"

    #@af
    move-object/from16 v0, p2

    #@b1
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b4
    .line 4887
    new-instance v5, Landroid/os/BatteryStats$HistoryPrinter;

    #@b6
    invoke-direct {v5}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    #@b9
    .line 4888
    .local v5, "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    const-wide/16 v8, -0x1

    #@bb
    .line 4889
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
    .line 4890
    const-wide/16 v12, 0x0

    #@c5
    cmp-long v6, v8, v12

    #@c7
    if-gez v6, :cond_4

    #@c9
    .line 4891
    iget-wide v8, v7, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@cb
    .line 4893
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
    .line 4896
    .end local v5    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .end local v7    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v8    # "baseTime":J
    :catchall_0
    move-exception v6

    #@d8
    .line 4897
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    #@db
    .line 4896
    throw v6

    #@dc
    .line 4878
    :catchall_1
    move-exception v6

    #@dd
    .line 4879
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    #@e0
    .line 4878
    throw v6

    #@e1
    .line 4893
    .restart local v5    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .restart local v7    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v8    # "baseTime":J
    :cond_5
    const/4 v11, 0x0

    #@e2
    goto :goto_3

    #@e3
    .line 4895
    :cond_6
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@e6
    .line 4897
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    #@e9
    goto/16 :goto_1

    #@eb
    .line 4906
    .end local v5    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .end local v7    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v8    # "baseTime":J
    .end local v36    # "historyTotalSize":J
    .end local v38    # "historyUsedSize":J
    :cond_7
    if-nez v34, :cond_c

    #@ed
    .line 4907
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    #@f0
    move-result-object v51

    #@f1
    .line 4908
    .local v51, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v51 .. v51}, Landroid/util/SparseArray;->size()I

    #@f4
    move-result v4

    #@f5
    .line 4909
    .local v4, "NU":I
    const/16 v32, 0x0

    #@f7
    .line 4910
    .local v32, "didPid":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@fa
    move-result-wide v42

    #@fb
    .line 4911
    .local v42, "nowRealtime":J
    const/16 v35, 0x0

    #@fd
    .local v35, "i":I
    :goto_4
    move/from16 v0, v35

    #@ff
    if-ge v0, v4, :cond_b

    #@101
    .line 4912
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
    .line 4913
    .local v50, "uid":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v50 .. v50}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    #@10e
    move-result-object v44

    #@10f
    .line 4914
    .local v44, "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    if-eqz v44, :cond_a

    #@111
    .line 4915
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
    .line 4916
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
    .line 4917
    .local v41, "pid":Landroid/os/BatteryStats$Uid$Pid;
    if-nez v32, :cond_8

    #@127
    .line 4918
    const-string/jumbo v6, "Per-PID Stats:"

    #@12a
    move-object/from16 v0, p2

    #@12c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12f
    .line 4919
    const/16 v32, 0x1

    #@131
    .line 4921
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
    .line 4922
    move-object/from16 v0, v41

    #@13d
    iget-wide v12, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    #@13f
    sub-long v12, v42, v12

    #@141
    .line 4921
    :goto_6
    add-long v46, v14, v12

    #@143
    .line 4923
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
    .line 4924
    const-string/jumbo v6, " wake time: "

    #@15b
    move-object/from16 v0, p2

    #@15d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@160
    .line 4925
    move-wide/from16 v0, v46

    #@162
    move-object/from16 v2, p2

    #@164
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@167
    .line 4926
    const-string/jumbo v6, ""

    #@16a
    move-object/from16 v0, p2

    #@16c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16f
    .line 4915
    add-int/lit8 v40, v40, 0x1

    #@171
    goto :goto_5

    #@172
    .line 4922
    .end local v46    # "time":J
    :cond_9
    const-wide/16 v12, 0x0

    #@174
    goto :goto_6

    #@175
    .line 4911
    .end local v40    # "j":I
    .end local v41    # "pid":Landroid/os/BatteryStats$Uid$Pid;
    :cond_a
    add-int/lit8 v35, v35, 0x1

    #@177
    goto :goto_4

    #@178
    .line 4930
    .end local v44    # "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    .end local v50    # "uid":Landroid/os/BatteryStats$Uid;
    :cond_b
    if-eqz v32, :cond_c

    #@17a
    .line 4931
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@17d
    .line 4935
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
    .line 4936
    :cond_d
    const-string/jumbo v6, "  "

    #@186
    const-string/jumbo v10, "Discharge step durations:"

    #@189
    .line 4937
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    #@18c
    move-result-object v12

    #@18d
    const/4 v13, 0x0

    #@18e
    .line 4936
    move-object/from16 v0, p2

    #@190
    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    #@193
    move-result v6

    #@194
    if-eqz v6, :cond_10

    #@196
    .line 4938
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
    .line 4939
    .local v48, "timeRemaining":J
    const-wide/16 v12, 0x0

    #@1a2
    cmp-long v6, v48, v12

    #@1a4
    if-ltz v6, :cond_e

    #@1a6
    .line 4940
    const-string/jumbo v6, "  Estimated discharge time remaining: "

    #@1a9
    move-object/from16 v0, p2

    #@1ab
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ae
    .line 4941
    const-wide/16 v12, 0x3e8

    #@1b0
    div-long v12, v48, v12

    #@1b2
    move-object/from16 v0, p2

    #@1b4
    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@1b7
    .line 4942
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@1ba
    .line 4944
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    #@1bd
    move-result-object v11

    #@1be
    .line 4945
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
    .line 4946
    const-string/jumbo v6, "  Estimated "

    #@1ca
    sget-object v10, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    #@1cc
    aget-object v10, v10, v35

    #@1ce
    const-string/jumbo v19, " time: "

    #@1d1
    .line 4947
    sget-object v12, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    #@1d3
    aget v12, v12, v35

    #@1d5
    int-to-long v12, v12

    #@1d6
    .line 4948
    sget-object v14, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    #@1d8
    aget v14, v14, v35

    #@1da
    int-to-long v14, v14

    #@1db
    const/16 v16, 0x0

    #@1dd
    .line 4947
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
    .line 4946
    invoke-static/range {v12 .. v17}, Landroid/os/BatteryStats;->dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    #@1ea
    .line 4945
    add-int/lit8 v35, v35, 0x1

    #@1ec
    goto :goto_7

    #@1ed
    .line 4950
    :cond_f
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@1f0
    .line 4952
    .end local v11    # "steps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v35    # "i":I
    .end local v48    # "timeRemaining":J
    :cond_10
    const-string/jumbo v6, "  "

    #@1f3
    const-string/jumbo v10, "Charge step durations:"

    #@1f6
    .line 4953
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    #@1f9
    move-result-object v12

    #@1fa
    const/4 v13, 0x0

    #@1fb
    .line 4952
    move-object/from16 v0, p2

    #@1fd
    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    #@200
    move-result v6

    #@201
    if-eqz v6, :cond_12

    #@203
    .line 4954
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
    .line 4955
    .restart local v48    # "timeRemaining":J
    const-wide/16 v12, 0x0

    #@20f
    cmp-long v6, v48, v12

    #@211
    if-ltz v6, :cond_11

    #@213
    .line 4956
    const-string/jumbo v6, "  Estimated charge time remaining: "

    #@216
    move-object/from16 v0, p2

    #@218
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21b
    .line 4957
    const-wide/16 v12, 0x3e8

    #@21d
    div-long v12, v48, v12

    #@21f
    move-object/from16 v0, p2

    #@221
    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@224
    .line 4958
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@227
    .line 4960
    :cond_11
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@22a
    .line 4963
    .end local v48    # "timeRemaining":J
    :cond_12
    if-eqz v34, :cond_13

    #@22c
    and-int/lit8 v6, p3, 0x6

    #@22e
    if-eqz v6, :cond_1f

    #@230
    .line 4964
    :cond_13
    const-string/jumbo v6, "Daily stats:"

    #@233
    move-object/from16 v0, p2

    #@235
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@238
    .line 4965
    const-string/jumbo v6, "  Current start time: "

    #@23b
    move-object/from16 v0, p2

    #@23d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@240
    .line 4966
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    #@243
    .line 4967
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCurrentDailyStartTime()J

    #@246
    move-result-wide v12

    #@247
    .line 4966
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
    .line 4968
    const-string/jumbo v6, "  Next min deadline: "

    #@257
    move-object/from16 v0, p2

    #@259
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25c
    .line 4969
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    #@25f
    .line 4970
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMinDailyDeadline()J

    #@262
    move-result-wide v12

    #@263
    .line 4969
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
    .line 4971
    const-string/jumbo v6, "  Next max deadline: "

    #@273
    move-object/from16 v0, p2

    #@275
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@278
    .line 4972
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    #@27b
    .line 4973
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMaxDailyDeadline()J

    #@27e
    move-result-wide v12

    #@27f
    .line 4972
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
    .line 4974
    new-instance v17, Ljava/lang/StringBuilder;

    #@28e
    const/16 v6, 0x40

    #@290
    move-object/from16 v0, v17

    #@292
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@295
    .line 4975
    .local v17, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x1

    #@296
    new-array v0, v6, [I

    #@298
    move-object/from16 v18, v0

    #@29a
    .line 4976
    .local v18, "outInt":[I
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    #@29d
    move-result-object v16

    #@29e
    .line 4977
    .local v16, "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    #@2a1
    move-result-object v23

    #@2a2
    .line 4978
    .local v23, "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyPackageChanges()Ljava/util/ArrayList;

    #@2a5
    move-result-object v45

    #@2a6
    .line 4979
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
    .line 4980
    :cond_14
    :goto_8
    and-int/lit8 v6, p3, 0x4

    #@2b4
    if-nez v6, :cond_18

    #@2b6
    if-eqz v34, :cond_18

    #@2b8
    .line 4993
    const-string/jumbo v6, "  Current daily steps:"

    #@2bb
    move-object/from16 v0, p2

    #@2bd
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c0
    .line 4994
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
    .line 4996
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
    .line 5001
    :cond_15
    :goto_9
    const/16 v31, 0x0

    #@2e0
    .line 5002
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
    .line 5003
    add-int/lit8 v31, v31, 0x1

    #@2ec
    .line 5004
    and-int/lit8 v6, p3, 0x4

    #@2ee
    if-eqz v6, :cond_16

    #@2f0
    .line 5005
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@2f3
    .line 5007
    :cond_16
    const-string/jumbo v6, "  Daily from "

    #@2f6
    move-object/from16 v0, p2

    #@2f8
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2fb
    .line 5008
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
    .line 5009
    const-string/jumbo v6, " to "

    #@312
    move-object/from16 v0, p2

    #@314
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@317
    .line 5010
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
    .line 5011
    const-string/jumbo v6, ":"

    #@32e
    move-object/from16 v0, p2

    #@330
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@333
    .line 5012
    and-int/lit8 v6, p3, 0x4

    #@335
    if-nez v6, :cond_1b

    #@337
    if-eqz v34, :cond_1b

    #@339
    .line 5025
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
    .line 5027
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
    .line 4979
    .end local v31    # "curIndex":I
    .end local v33    # "dit":Landroid/os/BatteryStats$DailyItem;
    :cond_17
    if-eqz v45, :cond_15

    #@36b
    goto/16 :goto_8

    #@36d
    .line 4981
    :cond_18
    const-string/jumbo v6, "    "

    #@370
    const-string/jumbo v10, "  Current daily discharge step durations:"

    #@373
    .line 4982
    const/4 v12, 0x0

    #@374
    .line 4981
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
    .line 4983
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
    .line 4986
    :cond_19
    const-string/jumbo v6, "    "

    #@38e
    const-string/jumbo v10, "  Current daily charge step durations:"

    #@391
    .line 4987
    const/4 v12, 0x0

    #@392
    .line 4986
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
    .line 4988
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
    .line 4991
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
    .line 5013
    .restart local v31    # "curIndex":I
    .restart local v33    # "dit":Landroid/os/BatteryStats$DailyItem;
    :cond_1b
    const-string/jumbo v6, "      "

    #@3be
    .line 5014
    const-string/jumbo v10, "    Discharge step durations:"

    #@3c1
    move-object/from16 v0, v33

    #@3c3
    iget-object v12, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    #@3c5
    const/4 v13, 0x0

    #@3c6
    .line 5013
    move-object/from16 v0, p2

    #@3c8
    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    #@3cb
    move-result v6

    #@3cc
    if-eqz v6, :cond_1c

    #@3ce
    .line 5015
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
    .line 5018
    :cond_1c
    const-string/jumbo v6, "      "

    #@3e8
    .line 5019
    const-string/jumbo v10, "    Charge step durations:"

    #@3eb
    move-object/from16 v0, v33

    #@3ed
    iget-object v12, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    #@3ef
    const/4 v13, 0x0

    #@3f0
    .line 5018
    move-object/from16 v0, p2

    #@3f2
    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    #@3f5
    move-result v6

    #@3f6
    if-eqz v6, :cond_1d

    #@3f8
    .line 5020
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
    .line 5023
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
    .line 5031
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@422
    .line 5033
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
    .line 5034
    :cond_20
    const-string/jumbo v6, "Statistics since last charge:"

    #@42b
    move-object/from16 v0, p2

    #@42d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@430
    .line 5035
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
    .line 5036
    const-string/jumbo v10, ", currently on battery: "

    #@447
    .line 5035
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44a
    move-result-object v6

    #@44b
    .line 5036
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    #@44e
    move-result v10

    #@44f
    .line 5035
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
    .line 5037
    const-string/jumbo v27, ""

    #@45f
    .line 5038
    and-int/lit8 v6, p3, 0x40

    #@461
    if-eqz v6, :cond_22

    #@463
    const/16 v30, 0x1

    #@465
    .line 5037
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
    .line 5039
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@475
    .line 4854
    :cond_21
    return-void

    #@476
    .line 5038
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
    .line 3011
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
    .line 3010
    return-void
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V
    .locals 238
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "which"    # I
    .param p5, "reqUid"    # I
    .param p6, "wifiOnly"    # Z

    #@0
    .prologue
    .line 3017
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v6

    #@4
    const-wide/16 v12, 0x3e8

    #@6
    mul-long v132, v6, v12

    #@8
    .line 3018
    .local v132, "rawUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b
    move-result-wide v6

    #@c
    const-wide/16 v12, 0x3e8

    #@e
    mul-long v20, v6, v12

    #@10
    .line 3019
    .local v20, "rawRealtime":J
    move-object/from16 v0, p0

    #@12
    move-wide/from16 v1, v132

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    #@17
    move-result-wide v40

    #@18
    .line 3021
    .local v40, "batteryUptime":J
    move-object/from16 v0, p0

    #@1a
    move-wide/from16 v1, v132

    #@1c
    move/from16 v3, p4

    #@1e
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    #@21
    move-result-wide v202

    #@22
    .line 3022
    .local v202, "whichBatteryUptime":J
    move-object/from16 v0, p0

    #@24
    move-wide/from16 v1, v20

    #@26
    move/from16 v3, p4

    #@28
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    #@2b
    move-result-wide v196

    #@2c
    .line 3023
    .local v196, "whichBatteryRealtime":J
    move-object/from16 v0, p0

    #@2e
    move-wide/from16 v1, v20

    #@30
    move/from16 v3, p4

    #@32
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    #@35
    move-result-wide v162

    #@36
    .line 3024
    .local v162, "totalRealtime":J
    move-object/from16 v0, p0

    #@38
    move-wide/from16 v1, v132

    #@3a
    move/from16 v3, p4

    #@3c
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeUptime(JI)J

    #@3f
    move-result-wide v168

    #@40
    .line 3025
    .local v168, "totalUptime":J
    move-object/from16 v0, p0

    #@42
    move-wide/from16 v1, v132

    #@44
    move/from16 v3, p4

    #@46
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    #@49
    move-result-wide v200

    #@4a
    .line 3026
    .local v200, "whichBatteryScreenOffUptime":J
    move-object/from16 v0, p0

    #@4c
    move-wide/from16 v1, v20

    #@4e
    move/from16 v3, p4

    #@50
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    #@53
    move-result-wide v198

    #@54
    .line 3028
    .local v198, "whichBatteryScreenOffRealtime":J
    move-object/from16 v0, p0

    #@56
    move-wide/from16 v1, v20

    #@58
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    #@5b
    move-result-wide v38

    #@5c
    .line 3029
    .local v38, "batteryTimeRemaining":J
    move-object/from16 v0, p0

    #@5e
    move-wide/from16 v1, v20

    #@60
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    #@63
    move-result-wide v50

    #@64
    .line 3031
    .local v50, "chargeTimeRemaining":J
    new-instance v18, Ljava/lang/StringBuilder;

    #@66
    const/16 v6, 0x80

    #@68
    move-object/from16 v0, v18

    #@6a
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@6d
    .line 3033
    .local v18, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    #@70
    move-result-object v178

    #@71
    .line 3034
    .local v178, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v178 .. v178}, Landroid/util/SparseArray;->size()I

    #@74
    move-result v34

    #@75
    .line 3036
    .local v34, "NU":I
    const/4 v6, 0x0

    #@76
    move-object/from16 v0, v18

    #@78
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@7b
    .line 3037
    move-object/from16 v0, v18

    #@7d
    move-object/from16 v1, p3

    #@7f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    .line 3038
    const-string/jumbo v6, "  Time on battery: "

    #@85
    move-object/from16 v0, v18

    #@87
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    .line 3039
    const-wide/16 v6, 0x3e8

    #@8c
    div-long v6, v196, v6

    #@8e
    move-object/from16 v0, v18

    #@90
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@93
    const-string/jumbo v6, "("

    #@96
    move-object/from16 v0, v18

    #@98
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    .line 3040
    move-object/from16 v0, p0

    #@9d
    move-wide/from16 v1, v196

    #@9f
    move-wide/from16 v3, v162

    #@a1
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@a4
    move-result-object v6

    #@a5
    move-object/from16 v0, v18

    #@a7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    .line 3041
    const-string/jumbo v6, ") realtime, "

    #@ad
    move-object/from16 v0, v18

    #@af
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    .line 3042
    const-wide/16 v6, 0x3e8

    #@b4
    div-long v6, v202, v6

    #@b6
    move-object/from16 v0, v18

    #@b8
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@bb
    .line 3043
    const-string/jumbo v6, "("

    #@be
    move-object/from16 v0, v18

    #@c0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-object/from16 v0, p0

    #@c5
    move-wide/from16 v1, v202

    #@c7
    move-wide/from16 v3, v162

    #@c9
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@cc
    move-result-object v6

    #@cd
    move-object/from16 v0, v18

    #@cf
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    .line 3044
    const-string/jumbo v6, ") uptime"

    #@d5
    move-object/from16 v0, v18

    #@d7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    .line 3045
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v6

    #@de
    move-object/from16 v0, p2

    #@e0
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e3
    .line 3046
    const/4 v6, 0x0

    #@e4
    move-object/from16 v0, v18

    #@e6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@e9
    .line 3047
    move-object/from16 v0, v18

    #@eb
    move-object/from16 v1, p3

    #@ed
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    .line 3048
    const-string/jumbo v6, "  Time on battery screen off: "

    #@f3
    move-object/from16 v0, v18

    #@f5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    .line 3049
    const-wide/16 v6, 0x3e8

    #@fa
    div-long v6, v198, v6

    #@fc
    move-object/from16 v0, v18

    #@fe
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@101
    const-string/jumbo v6, "("

    #@104
    move-object/from16 v0, v18

    #@106
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    .line 3050
    move-object/from16 v0, p0

    #@10b
    move-wide/from16 v1, v198

    #@10d
    move-wide/from16 v3, v162

    #@10f
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@112
    move-result-object v6

    #@113
    move-object/from16 v0, v18

    #@115
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    .line 3051
    const-string/jumbo v6, ") realtime, "

    #@11b
    move-object/from16 v0, v18

    #@11d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    .line 3052
    const-wide/16 v6, 0x3e8

    #@122
    div-long v6, v200, v6

    #@124
    move-object/from16 v0, v18

    #@126
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@129
    .line 3053
    const-string/jumbo v6, "("

    #@12c
    move-object/from16 v0, v18

    #@12e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    .line 3054
    move-object/from16 v0, p0

    #@133
    move-wide/from16 v1, v200

    #@135
    move-wide/from16 v3, v162

    #@137
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@13a
    move-result-object v6

    #@13b
    move-object/from16 v0, v18

    #@13d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    .line 3055
    const-string/jumbo v6, ") uptime"

    #@143
    move-object/from16 v0, v18

    #@145
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    .line 3056
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14b
    move-result-object v6

    #@14c
    move-object/from16 v0, p2

    #@14e
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@151
    .line 3057
    const/4 v6, 0x0

    #@152
    move-object/from16 v0, v18

    #@154
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@157
    .line 3058
    move-object/from16 v0, v18

    #@159
    move-object/from16 v1, p3

    #@15b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15e
    .line 3059
    const-string/jumbo v6, "  Total run time: "

    #@161
    move-object/from16 v0, v18

    #@163
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    .line 3060
    const-wide/16 v6, 0x3e8

    #@168
    div-long v6, v162, v6

    #@16a
    move-object/from16 v0, v18

    #@16c
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@16f
    .line 3061
    const-string/jumbo v6, "realtime, "

    #@172
    move-object/from16 v0, v18

    #@174
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    .line 3062
    const-wide/16 v6, 0x3e8

    #@179
    div-long v6, v168, v6

    #@17b
    move-object/from16 v0, v18

    #@17d
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@180
    .line 3063
    const-string/jumbo v6, "uptime"

    #@183
    move-object/from16 v0, v18

    #@185
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    .line 3064
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18b
    move-result-object v6

    #@18c
    move-object/from16 v0, p2

    #@18e
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@191
    .line 3065
    const-wide/16 v6, 0x0

    #@193
    cmp-long v6, v38, v6

    #@195
    if-ltz v6, :cond_0

    #@197
    .line 3066
    const/4 v6, 0x0

    #@198
    move-object/from16 v0, v18

    #@19a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@19d
    .line 3067
    move-object/from16 v0, v18

    #@19f
    move-object/from16 v1, p3

    #@1a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    .line 3068
    const-string/jumbo v6, "  Battery time remaining: "

    #@1a7
    move-object/from16 v0, v18

    #@1a9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    .line 3069
    const-wide/16 v6, 0x3e8

    #@1ae
    div-long v6, v38, v6

    #@1b0
    move-object/from16 v0, v18

    #@1b2
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1b5
    .line 3070
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b8
    move-result-object v6

    #@1b9
    move-object/from16 v0, p2

    #@1bb
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1be
    .line 3072
    :cond_0
    const-wide/16 v6, 0x0

    #@1c0
    cmp-long v6, v50, v6

    #@1c2
    if-ltz v6, :cond_1

    #@1c4
    .line 3073
    const/4 v6, 0x0

    #@1c5
    move-object/from16 v0, v18

    #@1c7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1ca
    .line 3074
    move-object/from16 v0, v18

    #@1cc
    move-object/from16 v1, p3

    #@1ce
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d1
    .line 3075
    const-string/jumbo v6, "  Charge time remaining: "

    #@1d4
    move-object/from16 v0, v18

    #@1d6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d9
    .line 3076
    const-wide/16 v6, 0x3e8

    #@1db
    div-long v6, v50, v6

    #@1dd
    move-object/from16 v0, v18

    #@1df
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1e2
    .line 3077
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e5
    move-result-object v6

    #@1e6
    move-object/from16 v0, p2

    #@1e8
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1eb
    .line 3079
    :cond_1
    const-string/jumbo v6, "  Start clock time: "

    #@1ee
    move-object/from16 v0, p2

    #@1f0
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f3
    .line 3080
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    #@1f6
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    #@1f9
    move-result-wide v12

    #@1fa
    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    #@1fd
    move-result-object v6

    #@1fe
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@201
    move-result-object v6

    #@202
    move-object/from16 v0, p2

    #@204
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@207
    .line 3082
    move-object/from16 v0, p0

    #@209
    move-wide/from16 v1, v20

    #@20b
    move/from16 v3, p4

    #@20d
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    #@210
    move-result-wide v136

    #@211
    .line 3083
    .local v136, "screenOnTime":J
    move-object/from16 v0, p0

    #@213
    move-wide/from16 v1, v20

    #@215
    move/from16 v3, p4

    #@217
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    #@21a
    move-result-wide v78

    #@21b
    .line 3084
    .local v78, "interactiveTime":J
    move-object/from16 v0, p0

    #@21d
    move-wide/from16 v1, v20

    #@21f
    move/from16 v3, p4

    #@221
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    #@224
    move-result-wide v128

    #@225
    .line 3085
    .local v128, "powerSaveModeEnabledTime":J
    move-object/from16 v0, p0

    #@227
    move-wide/from16 v1, v20

    #@229
    move/from16 v3, p4

    #@22b
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdleModeEnabledTime(JI)J

    #@22e
    move-result-wide v56

    #@22f
    .line 3086
    .local v56, "deviceIdleModeEnabledTime":J
    move-object/from16 v0, p0

    #@231
    move-wide/from16 v1, v20

    #@233
    move/from16 v3, p4

    #@235
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdlingTime(JI)J

    #@238
    move-result-wide v58

    #@239
    .line 3087
    .local v58, "deviceIdlingTime":J
    move-object/from16 v0, p0

    #@23b
    move-wide/from16 v1, v20

    #@23d
    move/from16 v3, p4

    #@23f
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    #@242
    move-result-wide v124

    #@243
    .line 3088
    .local v124, "phoneOnTime":J
    move-object/from16 v0, p0

    #@245
    move-wide/from16 v1, v20

    #@247
    move/from16 v3, p4

    #@249
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    #@24c
    move-result-wide v210

    #@24d
    .line 3089
    .local v210, "wifiRunningTime":J
    move-object/from16 v0, p0

    #@24f
    move-wide/from16 v1, v20

    #@251
    move/from16 v3, p4

    #@253
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    #@256
    move-result-wide v206

    #@257
    .line 3090
    .local v206, "wifiOnTime":J
    const/4 v6, 0x0

    #@258
    move-object/from16 v0, v18

    #@25a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@25d
    .line 3091
    move-object/from16 v0, v18

    #@25f
    move-object/from16 v1, p3

    #@261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@264
    .line 3092
    const-string/jumbo v6, "  Screen on: "

    #@267
    move-object/from16 v0, v18

    #@269
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26c
    const-wide/16 v6, 0x3e8

    #@26e
    div-long v6, v136, v6

    #@270
    move-object/from16 v0, v18

    #@272
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@275
    .line 3093
    const-string/jumbo v6, "("

    #@278
    move-object/from16 v0, v18

    #@27a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27d
    move-object/from16 v0, p0

    #@27f
    move-wide/from16 v1, v136

    #@281
    move-wide/from16 v3, v196

    #@283
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@286
    move-result-object v6

    #@287
    move-object/from16 v0, v18

    #@289
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28c
    .line 3094
    const-string/jumbo v6, ") "

    #@28f
    move-object/from16 v0, v18

    #@291
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@294
    move-object/from16 v0, p0

    #@296
    move/from16 v1, p4

    #@298
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getScreenOnCount(I)I

    #@29b
    move-result v6

    #@29c
    move-object/from16 v0, v18

    #@29e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a1
    .line 3095
    const-string/jumbo v6, "x, Interactive: "

    #@2a4
    move-object/from16 v0, v18

    #@2a6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a9
    const-wide/16 v6, 0x3e8

    #@2ab
    div-long v6, v78, v6

    #@2ad
    move-object/from16 v0, v18

    #@2af
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@2b2
    .line 3096
    const-string/jumbo v6, "("

    #@2b5
    move-object/from16 v0, v18

    #@2b7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ba
    move-object/from16 v0, p0

    #@2bc
    move-wide/from16 v1, v78

    #@2be
    move-wide/from16 v3, v196

    #@2c0
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@2c3
    move-result-object v6

    #@2c4
    move-object/from16 v0, v18

    #@2c6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c9
    .line 3097
    const-string/jumbo v6, ")"

    #@2cc
    move-object/from16 v0, v18

    #@2ce
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d1
    .line 3098
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d4
    move-result-object v6

    #@2d5
    move-object/from16 v0, p2

    #@2d7
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2da
    .line 3099
    const/4 v6, 0x0

    #@2db
    move-object/from16 v0, v18

    #@2dd
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@2e0
    .line 3100
    move-object/from16 v0, v18

    #@2e2
    move-object/from16 v1, p3

    #@2e4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e7
    .line 3101
    const-string/jumbo v6, "  Screen brightnesses:"

    #@2ea
    move-object/from16 v0, v18

    #@2ec
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ef
    .line 3102
    const/16 v55, 0x0

    #@2f1
    .line 3103
    .local v55, "didOne":Z
    const/16 v75, 0x0

    #@2f3
    .local v75, "i":I
    :goto_0
    const/4 v6, 0x5

    #@2f4
    move/from16 v0, v75

    #@2f6
    if-ge v0, v6, :cond_3

    #@2f8
    .line 3104
    move-object/from16 v0, p0

    #@2fa
    move/from16 v1, v75

    #@2fc
    move-wide/from16 v2, v20

    #@2fe
    move/from16 v4, p4

    #@300
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    #@303
    move-result-wide v152

    #@304
    .line 3105
    .local v152, "time":J
    const-wide/16 v6, 0x0

    #@306
    cmp-long v6, v152, v6

    #@308
    if-nez v6, :cond_2

    #@30a
    .line 3103
    :goto_1
    add-int/lit8 v75, v75, 0x1

    #@30c
    goto :goto_0

    #@30d
    .line 3108
    :cond_2
    const-string/jumbo v6, "\n    "

    #@310
    move-object/from16 v0, v18

    #@312
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@315
    .line 3109
    move-object/from16 v0, v18

    #@317
    move-object/from16 v1, p3

    #@319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31c
    .line 3110
    const/16 v55, 0x1

    #@31e
    .line 3111
    sget-object v6, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    #@320
    aget-object v6, v6, v75

    #@322
    move-object/from16 v0, v18

    #@324
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@327
    .line 3112
    const-string/jumbo v6, " "

    #@32a
    move-object/from16 v0, v18

    #@32c
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32f
    .line 3113
    const-wide/16 v6, 0x3e8

    #@331
    div-long v6, v152, v6

    #@333
    move-object/from16 v0, v18

    #@335
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@338
    .line 3114
    const-string/jumbo v6, "("

    #@33b
    move-object/from16 v0, v18

    #@33d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@340
    .line 3115
    move-object/from16 v0, p0

    #@342
    move-wide/from16 v1, v152

    #@344
    move-wide/from16 v3, v136

    #@346
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@349
    move-result-object v6

    #@34a
    move-object/from16 v0, v18

    #@34c
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34f
    .line 3116
    const-string/jumbo v6, ")"

    #@352
    move-object/from16 v0, v18

    #@354
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@357
    goto :goto_1

    #@358
    .line 3118
    .end local v152    # "time":J
    :cond_3
    if-nez v55, :cond_4

    #@35a
    const-string/jumbo v6, " (no activity)"

    #@35d
    move-object/from16 v0, v18

    #@35f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@362
    .line 3119
    :cond_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@365
    move-result-object v6

    #@366
    move-object/from16 v0, p2

    #@368
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@36b
    .line 3120
    const-wide/16 v6, 0x0

    #@36d
    cmp-long v6, v128, v6

    #@36f
    if-eqz v6, :cond_5

    #@371
    .line 3121
    const/4 v6, 0x0

    #@372
    move-object/from16 v0, v18

    #@374
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@377
    .line 3122
    move-object/from16 v0, v18

    #@379
    move-object/from16 v1, p3

    #@37b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37e
    .line 3123
    const-string/jumbo v6, "  Power save mode enabled: "

    #@381
    move-object/from16 v0, v18

    #@383
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@386
    .line 3124
    const-wide/16 v6, 0x3e8

    #@388
    div-long v6, v128, v6

    #@38a
    move-object/from16 v0, v18

    #@38c
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@38f
    .line 3125
    const-string/jumbo v6, "("

    #@392
    move-object/from16 v0, v18

    #@394
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@397
    .line 3126
    move-object/from16 v0, p0

    #@399
    move-wide/from16 v1, v128

    #@39b
    move-wide/from16 v3, v196

    #@39d
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@3a0
    move-result-object v6

    #@3a1
    move-object/from16 v0, v18

    #@3a3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a6
    .line 3127
    const-string/jumbo v6, ")"

    #@3a9
    move-object/from16 v0, v18

    #@3ab
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ae
    .line 3128
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b1
    move-result-object v6

    #@3b2
    move-object/from16 v0, p2

    #@3b4
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3b7
    .line 3130
    :cond_5
    const-wide/16 v6, 0x0

    #@3b9
    cmp-long v6, v58, v6

    #@3bb
    if-eqz v6, :cond_6

    #@3bd
    .line 3131
    const/4 v6, 0x0

    #@3be
    move-object/from16 v0, v18

    #@3c0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@3c3
    .line 3132
    move-object/from16 v0, v18

    #@3c5
    move-object/from16 v1, p3

    #@3c7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ca
    .line 3133
    const-string/jumbo v6, "  Device idling: "

    #@3cd
    move-object/from16 v0, v18

    #@3cf
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d2
    .line 3134
    const-wide/16 v6, 0x3e8

    #@3d4
    div-long v6, v58, v6

    #@3d6
    move-object/from16 v0, v18

    #@3d8
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@3db
    .line 3135
    const-string/jumbo v6, "("

    #@3de
    move-object/from16 v0, v18

    #@3e0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e3
    .line 3136
    move-object/from16 v0, p0

    #@3e5
    move-wide/from16 v1, v58

    #@3e7
    move-wide/from16 v3, v196

    #@3e9
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@3ec
    move-result-object v6

    #@3ed
    move-object/from16 v0, v18

    #@3ef
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f2
    .line 3137
    const-string/jumbo v6, ") "

    #@3f5
    move-object/from16 v0, v18

    #@3f7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fa
    move-object/from16 v0, p0

    #@3fc
    move/from16 v1, p4

    #@3fe
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(I)I

    #@401
    move-result v6

    #@402
    move-object/from16 v0, v18

    #@404
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@407
    .line 3138
    const-string/jumbo v6, "x"

    #@40a
    move-object/from16 v0, v18

    #@40c
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40f
    .line 3139
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@412
    move-result-object v6

    #@413
    move-object/from16 v0, p2

    #@415
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@418
    .line 3141
    :cond_6
    const-wide/16 v6, 0x0

    #@41a
    cmp-long v6, v56, v6

    #@41c
    if-eqz v6, :cond_7

    #@41e
    .line 3142
    const/4 v6, 0x0

    #@41f
    move-object/from16 v0, v18

    #@421
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@424
    .line 3143
    move-object/from16 v0, v18

    #@426
    move-object/from16 v1, p3

    #@428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42b
    .line 3144
    const-string/jumbo v6, "  Idle mode time: "

    #@42e
    move-object/from16 v0, v18

    #@430
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@433
    .line 3145
    const-wide/16 v6, 0x3e8

    #@435
    div-long v6, v56, v6

    #@437
    move-object/from16 v0, v18

    #@439
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@43c
    .line 3146
    const-string/jumbo v6, "("

    #@43f
    move-object/from16 v0, v18

    #@441
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@444
    .line 3147
    move-object/from16 v0, p0

    #@446
    move-wide/from16 v1, v56

    #@448
    move-wide/from16 v3, v196

    #@44a
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@44d
    move-result-object v6

    #@44e
    move-object/from16 v0, v18

    #@450
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@453
    .line 3148
    const-string/jumbo v6, ") "

    #@456
    move-object/from16 v0, v18

    #@458
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45b
    move-object/from16 v0, p0

    #@45d
    move/from16 v1, p4

    #@45f
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeEnabledCount(I)I

    #@462
    move-result v6

    #@463
    move-object/from16 v0, v18

    #@465
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@468
    .line 3149
    const-string/jumbo v6, "x"

    #@46b
    move-object/from16 v0, v18

    #@46d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@470
    .line 3150
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@473
    move-result-object v6

    #@474
    move-object/from16 v0, p2

    #@476
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@479
    .line 3152
    :cond_7
    const-wide/16 v6, 0x0

    #@47b
    cmp-long v6, v124, v6

    #@47d
    if-eqz v6, :cond_8

    #@47f
    .line 3153
    const/4 v6, 0x0

    #@480
    move-object/from16 v0, v18

    #@482
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@485
    .line 3154
    move-object/from16 v0, v18

    #@487
    move-object/from16 v1, p3

    #@489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48c
    .line 3155
    const-string/jumbo v6, "  Active phone call: "

    #@48f
    move-object/from16 v0, v18

    #@491
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@494
    const-wide/16 v6, 0x3e8

    #@496
    div-long v6, v124, v6

    #@498
    move-object/from16 v0, v18

    #@49a
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@49d
    .line 3156
    const-string/jumbo v6, "("

    #@4a0
    move-object/from16 v0, v18

    #@4a2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a5
    move-object/from16 v0, p0

    #@4a7
    move-wide/from16 v1, v124

    #@4a9
    move-wide/from16 v3, v196

    #@4ab
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@4ae
    move-result-object v6

    #@4af
    move-object/from16 v0, v18

    #@4b1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b4
    .line 3157
    const-string/jumbo v6, ") "

    #@4b7
    move-object/from16 v0, v18

    #@4b9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4bc
    move-object/from16 v0, p0

    #@4be
    move/from16 v1, p4

    #@4c0
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getPhoneOnCount(I)I

    #@4c3
    move-result v6

    #@4c4
    move-object/from16 v0, v18

    #@4c6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c9
    const-string/jumbo v6, "x"

    #@4cc
    move-object/from16 v0, v18

    #@4ce
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d1
    .line 3159
    :cond_8
    move-object/from16 v0, p0

    #@4d3
    move/from16 v1, p4

    #@4d5
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    #@4d8
    move-result v52

    #@4d9
    .line 3160
    .local v52, "connChanges":I
    if-eqz v52, :cond_9

    #@4db
    .line 3161
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4de
    .line 3162
    const-string/jumbo v6, "  Connectivity changes: "

    #@4e1
    move-object/from16 v0, p2

    #@4e3
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e6
    move-object/from16 v0, p2

    #@4e8
    move/from16 v1, v52

    #@4ea
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    #@4ed
    .line 3166
    :cond_9
    const-wide/16 v66, 0x0

    #@4ef
    .line 3167
    .local v66, "fullWakeLockTimeTotalMicros":J
    const-wide/16 v122, 0x0

    #@4f1
    .line 3169
    .local v122, "partialWakeLockTimeTotalMicros":J
    new-instance v155, Ljava/util/ArrayList;

    #@4f3
    invoke-direct/range {v155 .. v155}, Ljava/util/ArrayList;-><init>()V

    #@4f6
    .line 3171
    .local v155, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    const/16 v85, 0x0

    #@4f8
    .local v85, "iu":I
    :goto_2
    move/from16 v0, v85

    #@4fa
    move/from16 v1, v34

    #@4fc
    if-ge v0, v1, :cond_e

    #@4fe
    .line 3172
    move-object/from16 v0, v178

    #@500
    move/from16 v1, v85

    #@502
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@505
    move-result-object v172

    #@506
    check-cast v172, Landroid/os/BatteryStats$Uid;

    #@508
    .line 3175
    .local v172, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    #@50b
    move-result-object v194

    #@50c
    .line 3176
    .local v194, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual/range {v194 .. v194}, Landroid/util/ArrayMap;->size()I

    #@50f
    move-result v6

    #@510
    add-int/lit8 v86, v6, -0x1

    #@512
    .local v86, "iw":I
    :goto_3
    if-ltz v86, :cond_d

    #@514
    .line 3177
    move-object/from16 v0, v194

    #@516
    move/from16 v1, v86

    #@518
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@51b
    move-result-object v223

    #@51c
    check-cast v223, Landroid/os/BatteryStats$Uid$Wakelock;

    #@51e
    .line 3179
    .local v223, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v6, 0x1

    #@51f
    move-object/from16 v0, v223

    #@521
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@524
    move-result-object v68

    #@525
    .line 3180
    .local v68, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v68, :cond_a

    #@527
    .line 3181
    move-object/from16 v0, v68

    #@529
    move-wide/from16 v1, v20

    #@52b
    move/from16 v3, p4

    #@52d
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@530
    move-result-wide v6

    #@531
    add-long v66, v66, v6

    #@533
    .line 3185
    :cond_a
    const/4 v6, 0x0

    #@534
    move-object/from16 v0, v223

    #@536
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@539
    move-result-object v9

    #@53a
    .line 3186
    .local v9, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v9, :cond_c

    #@53c
    .line 3187
    move-wide/from16 v0, v20

    #@53e
    move/from16 v2, p4

    #@540
    invoke-virtual {v9, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@543
    move-result-wide v10

    #@544
    .line 3189
    .local v10, "totalTimeMicros":J
    const-wide/16 v6, 0x0

    #@546
    cmp-long v6, v10, v6

    #@548
    if-lez v6, :cond_c

    #@54a
    .line 3190
    if-gez p5, :cond_b

    #@54c
    .line 3194
    new-instance v6, Landroid/os/BatteryStats$TimerEntry;

    #@54e
    move-object/from16 v0, v194

    #@550
    move/from16 v1, v86

    #@552
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@555
    move-result-object v7

    #@556
    check-cast v7, Ljava/lang/String;

    #@558
    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getUid()I

    #@55b
    move-result v8

    #@55c
    invoke-direct/range {v6 .. v11}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    #@55f
    move-object/from16 v0, v155

    #@561
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@564
    .line 3197
    :cond_b
    add-long v122, v122, v10

    #@566
    .line 3176
    .end local v10    # "totalTimeMicros":J
    :cond_c
    add-int/lit8 v86, v86, -0x1

    #@568
    goto :goto_3

    #@569
    .line 3171
    .end local v9    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v68    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v223    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_d
    add-int/lit8 v85, v85, 0x1

    #@56b
    goto :goto_2

    #@56c
    .line 3203
    .end local v86    # "iw":I
    .end local v172    # "u":Landroid/os/BatteryStats$Uid;
    .end local v194    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_e
    const/4 v6, 0x0

    #@56d
    move-object/from16 v0, p0

    #@56f
    move/from16 v1, p4

    #@571
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@574
    move-result-wide v102

    #@575
    .line 3204
    .local v102, "mobileRxTotalBytes":J
    const/4 v6, 0x1

    #@576
    move-object/from16 v0, p0

    #@578
    move/from16 v1, p4

    #@57a
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@57d
    move-result-wide v110

    #@57e
    .line 3205
    .local v110, "mobileTxTotalBytes":J
    const/4 v6, 0x2

    #@57f
    move-object/from16 v0, p0

    #@581
    move/from16 v1, p4

    #@583
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@586
    move-result-wide v218

    #@587
    .line 3206
    .local v218, "wifiRxTotalBytes":J
    const/4 v6, 0x3

    #@588
    move-object/from16 v0, p0

    #@58a
    move/from16 v1, p4

    #@58c
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    #@58f
    move-result-wide v234

    #@590
    .line 3207
    .local v234, "wifiTxTotalBytes":J
    const/4 v6, 0x0

    #@591
    move-object/from16 v0, p0

    #@593
    move/from16 v1, p4

    #@595
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    #@598
    move-result-wide v104

    #@599
    .line 3208
    .local v104, "mobileRxTotalPackets":J
    const/4 v6, 0x1

    #@59a
    move-object/from16 v0, p0

    #@59c
    move/from16 v1, p4

    #@59e
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    #@5a1
    move-result-wide v112

    #@5a2
    .line 3209
    .local v112, "mobileTxTotalPackets":J
    const/4 v6, 0x2

    #@5a3
    move-object/from16 v0, p0

    #@5a5
    move/from16 v1, p4

    #@5a7
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    #@5aa
    move-result-wide v220

    #@5ab
    .line 3210
    .local v220, "wifiRxTotalPackets":J
    const/4 v6, 0x3

    #@5ac
    move-object/from16 v0, p0

    #@5ae
    move/from16 v1, p4

    #@5b0
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    #@5b3
    move-result-wide v236

    #@5b4
    .line 3212
    .local v236, "wifiTxTotalPackets":J
    const-wide/16 v6, 0x0

    #@5b6
    cmp-long v6, v66, v6

    #@5b8
    if-eqz v6, :cond_f

    #@5ba
    .line 3213
    const/4 v6, 0x0

    #@5bb
    move-object/from16 v0, v18

    #@5bd
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@5c0
    .line 3214
    move-object/from16 v0, v18

    #@5c2
    move-object/from16 v1, p3

    #@5c4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c7
    .line 3215
    const-string/jumbo v6, "  Total full wakelock time: "

    #@5ca
    move-object/from16 v0, v18

    #@5cc
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5cf
    .line 3216
    const-wide/16 v6, 0x1f4

    #@5d1
    add-long v6, v6, v66

    #@5d3
    const-wide/16 v12, 0x3e8

    #@5d5
    div-long/2addr v6, v12

    #@5d6
    .line 3215
    move-object/from16 v0, v18

    #@5d8
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    #@5db
    .line 3217
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5de
    move-result-object v6

    #@5df
    move-object/from16 v0, p2

    #@5e1
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5e4
    .line 3220
    :cond_f
    const-wide/16 v6, 0x0

    #@5e6
    cmp-long v6, v122, v6

    #@5e8
    if-eqz v6, :cond_10

    #@5ea
    .line 3221
    const/4 v6, 0x0

    #@5eb
    move-object/from16 v0, v18

    #@5ed
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@5f0
    .line 3222
    move-object/from16 v0, v18

    #@5f2
    move-object/from16 v1, p3

    #@5f4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f7
    .line 3223
    const-string/jumbo v6, "  Total partial wakelock time: "

    #@5fa
    move-object/from16 v0, v18

    #@5fc
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ff
    .line 3224
    const-wide/16 v6, 0x1f4

    #@601
    add-long v6, v6, v122

    #@603
    const-wide/16 v12, 0x3e8

    #@605
    div-long/2addr v6, v12

    #@606
    .line 3223
    move-object/from16 v0, v18

    #@608
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    #@60b
    .line 3225
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60e
    move-result-object v6

    #@60f
    move-object/from16 v0, p2

    #@611
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@614
    .line 3228
    :cond_10
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@617
    .line 3229
    const-string/jumbo v6, "  Mobile total received: "

    #@61a
    move-object/from16 v0, p2

    #@61c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@61f
    move-object/from16 v0, p0

    #@621
    move-wide/from16 v1, v102

    #@623
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@626
    move-result-object v6

    #@627
    move-object/from16 v0, p2

    #@629
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@62c
    .line 3230
    const-string/jumbo v6, ", sent: "

    #@62f
    move-object/from16 v0, p2

    #@631
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@634
    move-object/from16 v0, p0

    #@636
    move-wide/from16 v1, v110

    #@638
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@63b
    move-result-object v6

    #@63c
    move-object/from16 v0, p2

    #@63e
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@641
    .line 3231
    const-string/jumbo v6, " (packets received "

    #@644
    move-object/from16 v0, p2

    #@646
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@649
    move-object/from16 v0, p2

    #@64b
    move-wide/from16 v1, v104

    #@64d
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@650
    .line 3232
    const-string/jumbo v6, ", sent "

    #@653
    move-object/from16 v0, p2

    #@655
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@658
    move-object/from16 v0, p2

    #@65a
    move-wide/from16 v1, v112

    #@65c
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@65f
    const-string/jumbo v6, ")"

    #@662
    move-object/from16 v0, p2

    #@664
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@667
    .line 3233
    const/4 v6, 0x0

    #@668
    move-object/from16 v0, v18

    #@66a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@66d
    .line 3234
    move-object/from16 v0, v18

    #@66f
    move-object/from16 v1, p3

    #@671
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@674
    .line 3235
    const-string/jumbo v6, "  Phone signal levels:"

    #@677
    move-object/from16 v0, v18

    #@679
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67c
    .line 3236
    const/16 v55, 0x0

    #@67e
    .line 3237
    const/16 v75, 0x0

    #@680
    :goto_4
    const/4 v6, 0x5

    #@681
    move/from16 v0, v75

    #@683
    if-ge v0, v6, :cond_12

    #@685
    .line 3238
    move-object/from16 v0, p0

    #@687
    move/from16 v1, v75

    #@689
    move-wide/from16 v2, v20

    #@68b
    move/from16 v4, p4

    #@68d
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    #@690
    move-result-wide v152

    #@691
    .line 3239
    .restart local v152    # "time":J
    const-wide/16 v6, 0x0

    #@693
    cmp-long v6, v152, v6

    #@695
    if-nez v6, :cond_11

    #@697
    .line 3237
    :goto_5
    add-int/lit8 v75, v75, 0x1

    #@699
    goto :goto_4

    #@69a
    .line 3242
    :cond_11
    const-string/jumbo v6, "\n    "

    #@69d
    move-object/from16 v0, v18

    #@69f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a2
    .line 3243
    move-object/from16 v0, v18

    #@6a4
    move-object/from16 v1, p3

    #@6a6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a9
    .line 3244
    const/16 v55, 0x1

    #@6ab
    .line 3245
    sget-object v6, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    #@6ad
    aget-object v6, v6, v75

    #@6af
    move-object/from16 v0, v18

    #@6b1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b4
    .line 3246
    const-string/jumbo v6, " "

    #@6b7
    move-object/from16 v0, v18

    #@6b9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6bc
    .line 3247
    const-wide/16 v6, 0x3e8

    #@6be
    div-long v6, v152, v6

    #@6c0
    move-object/from16 v0, v18

    #@6c2
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@6c5
    .line 3248
    const-string/jumbo v6, "("

    #@6c8
    move-object/from16 v0, v18

    #@6ca
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6cd
    .line 3249
    move-object/from16 v0, p0

    #@6cf
    move-wide/from16 v1, v152

    #@6d1
    move-wide/from16 v3, v196

    #@6d3
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@6d6
    move-result-object v6

    #@6d7
    move-object/from16 v0, v18

    #@6d9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6dc
    .line 3250
    const-string/jumbo v6, ") "

    #@6df
    move-object/from16 v0, v18

    #@6e1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e4
    .line 3251
    move-object/from16 v0, p0

    #@6e6
    move/from16 v1, v75

    #@6e8
    move/from16 v2, p4

    #@6ea
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    #@6ed
    move-result v6

    #@6ee
    move-object/from16 v0, v18

    #@6f0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f3
    .line 3252
    const-string/jumbo v6, "x"

    #@6f6
    move-object/from16 v0, v18

    #@6f8
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6fb
    goto :goto_5

    #@6fc
    .line 3254
    .end local v152    # "time":J
    :cond_12
    if-nez v55, :cond_13

    #@6fe
    const-string/jumbo v6, " (no activity)"

    #@701
    move-object/from16 v0, v18

    #@703
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@706
    .line 3255
    :cond_13
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@709
    move-result-object v6

    #@70a
    move-object/from16 v0, p2

    #@70c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@70f
    .line 3257
    const/4 v6, 0x0

    #@710
    move-object/from16 v0, v18

    #@712
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@715
    .line 3258
    move-object/from16 v0, v18

    #@717
    move-object/from16 v1, p3

    #@719
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71c
    .line 3259
    const-string/jumbo v6, "  Signal scanning time: "

    #@71f
    move-object/from16 v0, v18

    #@721
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@724
    .line 3260
    move-object/from16 v0, p0

    #@726
    move-wide/from16 v1, v20

    #@728
    move/from16 v3, p4

    #@72a
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    #@72d
    move-result-wide v6

    #@72e
    const-wide/16 v12, 0x3e8

    #@730
    div-long/2addr v6, v12

    #@731
    move-object/from16 v0, v18

    #@733
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    #@736
    .line 3261
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@739
    move-result-object v6

    #@73a
    move-object/from16 v0, p2

    #@73c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@73f
    .line 3263
    const/4 v6, 0x0

    #@740
    move-object/from16 v0, v18

    #@742
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@745
    .line 3264
    move-object/from16 v0, v18

    #@747
    move-object/from16 v1, p3

    #@749
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74c
    .line 3265
    const-string/jumbo v6, "  Radio types:"

    #@74f
    move-object/from16 v0, v18

    #@751
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@754
    .line 3266
    const/16 v55, 0x0

    #@756
    .line 3267
    const/16 v75, 0x0

    #@758
    :goto_6
    const/16 v6, 0x11

    #@75a
    move/from16 v0, v75

    #@75c
    if-ge v0, v6, :cond_15

    #@75e
    .line 3268
    move-object/from16 v0, p0

    #@760
    move/from16 v1, v75

    #@762
    move-wide/from16 v2, v20

    #@764
    move/from16 v4, p4

    #@766
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    #@769
    move-result-wide v152

    #@76a
    .line 3269
    .restart local v152    # "time":J
    const-wide/16 v6, 0x0

    #@76c
    cmp-long v6, v152, v6

    #@76e
    if-nez v6, :cond_14

    #@770
    .line 3267
    :goto_7
    add-int/lit8 v75, v75, 0x1

    #@772
    goto :goto_6

    #@773
    .line 3272
    :cond_14
    const-string/jumbo v6, "\n    "

    #@776
    move-object/from16 v0, v18

    #@778
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77b
    .line 3273
    move-object/from16 v0, v18

    #@77d
    move-object/from16 v1, p3

    #@77f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@782
    .line 3274
    const/16 v55, 0x1

    #@784
    .line 3275
    sget-object v6, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    #@786
    aget-object v6, v6, v75

    #@788
    move-object/from16 v0, v18

    #@78a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78d
    .line 3276
    const-string/jumbo v6, " "

    #@790
    move-object/from16 v0, v18

    #@792
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@795
    .line 3277
    const-wide/16 v6, 0x3e8

    #@797
    div-long v6, v152, v6

    #@799
    move-object/from16 v0, v18

    #@79b
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@79e
    .line 3278
    const-string/jumbo v6, "("

    #@7a1
    move-object/from16 v0, v18

    #@7a3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a6
    .line 3279
    move-object/from16 v0, p0

    #@7a8
    move-wide/from16 v1, v152

    #@7aa
    move-wide/from16 v3, v196

    #@7ac
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@7af
    move-result-object v6

    #@7b0
    move-object/from16 v0, v18

    #@7b2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b5
    .line 3280
    const-string/jumbo v6, ") "

    #@7b8
    move-object/from16 v0, v18

    #@7ba
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7bd
    .line 3281
    move-object/from16 v0, p0

    #@7bf
    move/from16 v1, v75

    #@7c1
    move/from16 v2, p4

    #@7c3
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    #@7c6
    move-result v6

    #@7c7
    move-object/from16 v0, v18

    #@7c9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7cc
    .line 3282
    const-string/jumbo v6, "x"

    #@7cf
    move-object/from16 v0, v18

    #@7d1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d4
    goto :goto_7

    #@7d5
    .line 3284
    .end local v152    # "time":J
    :cond_15
    if-nez v55, :cond_16

    #@7d7
    const-string/jumbo v6, " (no activity)"

    #@7da
    move-object/from16 v0, v18

    #@7dc
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7df
    .line 3285
    :cond_16
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e2
    move-result-object v6

    #@7e3
    move-object/from16 v0, p2

    #@7e5
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7e8
    .line 3287
    const/4 v6, 0x0

    #@7e9
    move-object/from16 v0, v18

    #@7eb
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@7ee
    .line 3288
    move-object/from16 v0, v18

    #@7f0
    move-object/from16 v1, p3

    #@7f2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f5
    .line 3289
    const-string/jumbo v6, "  Mobile radio active time: "

    #@7f8
    move-object/from16 v0, v18

    #@7fa
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7fd
    .line 3290
    move-object/from16 v0, p0

    #@7ff
    move-wide/from16 v1, v20

    #@801
    move/from16 v3, p4

    #@803
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    #@806
    move-result-wide v94

    #@807
    .line 3291
    .local v94, "mobileActiveTime":J
    const-wide/16 v6, 0x3e8

    #@809
    div-long v6, v94, v6

    #@80b
    move-object/from16 v0, v18

    #@80d
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@810
    .line 3292
    const-string/jumbo v6, "("

    #@813
    move-object/from16 v0, v18

    #@815
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@818
    move-object/from16 v0, p0

    #@81a
    move-wide/from16 v1, v94

    #@81c
    move-wide/from16 v3, v196

    #@81e
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@821
    move-result-object v6

    #@822
    move-object/from16 v0, v18

    #@824
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@827
    .line 3293
    const-string/jumbo v6, ") "

    #@82a
    move-object/from16 v0, v18

    #@82c
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82f
    move-object/from16 v0, p0

    #@831
    move/from16 v1, p4

    #@833
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    #@836
    move-result v6

    #@837
    move-object/from16 v0, v18

    #@839
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@83c
    .line 3294
    const-string/jumbo v6, "x"

    #@83f
    move-object/from16 v0, v18

    #@841
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@844
    .line 3295
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@847
    move-result-object v6

    #@848
    move-object/from16 v0, p2

    #@84a
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@84d
    .line 3297
    move-object/from16 v0, p0

    #@84f
    move/from16 v1, p4

    #@851
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    #@854
    move-result-wide v96

    #@855
    .line 3298
    .local v96, "mobileActiveUnknownTime":J
    const-wide/16 v6, 0x0

    #@857
    cmp-long v6, v96, v6

    #@859
    if-eqz v6, :cond_17

    #@85b
    .line 3299
    const/4 v6, 0x0

    #@85c
    move-object/from16 v0, v18

    #@85e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@861
    .line 3300
    move-object/from16 v0, v18

    #@863
    move-object/from16 v1, p3

    #@865
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@868
    .line 3301
    const-string/jumbo v6, "  Mobile radio active unknown time: "

    #@86b
    move-object/from16 v0, v18

    #@86d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@870
    .line 3302
    const-wide/16 v6, 0x3e8

    #@872
    div-long v6, v96, v6

    #@874
    move-object/from16 v0, v18

    #@876
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@879
    .line 3303
    const-string/jumbo v6, "("

    #@87c
    move-object/from16 v0, v18

    #@87e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@881
    .line 3304
    move-object/from16 v0, p0

    #@883
    move-wide/from16 v1, v96

    #@885
    move-wide/from16 v3, v196

    #@887
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@88a
    move-result-object v6

    #@88b
    move-object/from16 v0, v18

    #@88d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@890
    .line 3305
    const-string/jumbo v6, ") "

    #@893
    move-object/from16 v0, v18

    #@895
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@898
    move-object/from16 v0, p0

    #@89a
    move/from16 v1, p4

    #@89c
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownCount(I)I

    #@89f
    move-result v6

    #@8a0
    move-object/from16 v0, v18

    #@8a2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8a5
    .line 3306
    const-string/jumbo v6, "x"

    #@8a8
    move-object/from16 v0, v18

    #@8aa
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8ad
    .line 3307
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b0
    move-result-object v6

    #@8b1
    move-object/from16 v0, p2

    #@8b3
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8b6
    .line 3310
    :cond_17
    move-object/from16 v0, p0

    #@8b8
    move/from16 v1, p4

    #@8ba
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    #@8bd
    move-result-wide v92

    #@8be
    .line 3311
    .local v92, "mobileActiveAdjustedTime":J
    const-wide/16 v6, 0x0

    #@8c0
    cmp-long v6, v92, v6

    #@8c2
    if-eqz v6, :cond_18

    #@8c4
    .line 3312
    const/4 v6, 0x0

    #@8c5
    move-object/from16 v0, v18

    #@8c7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@8ca
    .line 3313
    move-object/from16 v0, v18

    #@8cc
    move-object/from16 v1, p3

    #@8ce
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d1
    .line 3314
    const-string/jumbo v6, "  Mobile radio active adjusted time: "

    #@8d4
    move-object/from16 v0, v18

    #@8d6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d9
    .line 3315
    const-wide/16 v6, 0x3e8

    #@8db
    div-long v6, v92, v6

    #@8dd
    move-object/from16 v0, v18

    #@8df
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@8e2
    .line 3316
    const-string/jumbo v6, "("

    #@8e5
    move-object/from16 v0, v18

    #@8e7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8ea
    .line 3317
    move-object/from16 v0, p0

    #@8ec
    move-wide/from16 v1, v92

    #@8ee
    move-wide/from16 v3, v196

    #@8f0
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@8f3
    move-result-object v6

    #@8f4
    move-object/from16 v0, v18

    #@8f6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f9
    .line 3318
    const-string/jumbo v6, ")"

    #@8fc
    move-object/from16 v0, v18

    #@8fe
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@901
    .line 3319
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@904
    move-result-object v6

    #@905
    move-object/from16 v0, p2

    #@907
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@90a
    .line 3322
    :cond_18
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@90d
    .line 3323
    const-string/jumbo v6, "  Wi-Fi total received: "

    #@910
    move-object/from16 v0, p2

    #@912
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@915
    move-object/from16 v0, p0

    #@917
    move-wide/from16 v1, v218

    #@919
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@91c
    move-result-object v6

    #@91d
    move-object/from16 v0, p2

    #@91f
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@922
    .line 3324
    const-string/jumbo v6, ", sent: "

    #@925
    move-object/from16 v0, p2

    #@927
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@92a
    move-object/from16 v0, p0

    #@92c
    move-wide/from16 v1, v234

    #@92e
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@931
    move-result-object v6

    #@932
    move-object/from16 v0, p2

    #@934
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@937
    .line 3325
    const-string/jumbo v6, " (packets received "

    #@93a
    move-object/from16 v0, p2

    #@93c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@93f
    move-object/from16 v0, p2

    #@941
    move-wide/from16 v1, v220

    #@943
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@946
    .line 3326
    const-string/jumbo v6, ", sent "

    #@949
    move-object/from16 v0, p2

    #@94b
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@94e
    move-object/from16 v0, p2

    #@950
    move-wide/from16 v1, v236

    #@952
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@955
    const-string/jumbo v6, ")"

    #@958
    move-object/from16 v0, p2

    #@95a
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@95d
    .line 3327
    const/4 v6, 0x0

    #@95e
    move-object/from16 v0, v18

    #@960
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@963
    .line 3328
    move-object/from16 v0, v18

    #@965
    move-object/from16 v1, p3

    #@967
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96a
    .line 3329
    const-string/jumbo v6, "  Wifi on: "

    #@96d
    move-object/from16 v0, v18

    #@96f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@972
    const-wide/16 v6, 0x3e8

    #@974
    div-long v6, v206, v6

    #@976
    move-object/from16 v0, v18

    #@978
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@97b
    .line 3330
    const-string/jumbo v6, "("

    #@97e
    move-object/from16 v0, v18

    #@980
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@983
    move-object/from16 v0, p0

    #@985
    move-wide/from16 v1, v206

    #@987
    move-wide/from16 v3, v196

    #@989
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@98c
    move-result-object v6

    #@98d
    move-object/from16 v0, v18

    #@98f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@992
    .line 3331
    const-string/jumbo v6, "), Wifi running: "

    #@995
    move-object/from16 v0, v18

    #@997
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99a
    const-wide/16 v6, 0x3e8

    #@99c
    div-long v6, v210, v6

    #@99e
    move-object/from16 v0, v18

    #@9a0
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@9a3
    .line 3332
    const-string/jumbo v6, "("

    #@9a6
    move-object/from16 v0, v18

    #@9a8
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9ab
    move-object/from16 v0, p0

    #@9ad
    move-wide/from16 v1, v210

    #@9af
    move-wide/from16 v3, v196

    #@9b1
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@9b4
    move-result-object v6

    #@9b5
    move-object/from16 v0, v18

    #@9b7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9ba
    .line 3333
    const-string/jumbo v6, ")"

    #@9bd
    move-object/from16 v0, v18

    #@9bf
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c2
    .line 3334
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c5
    move-result-object v6

    #@9c6
    move-object/from16 v0, p2

    #@9c8
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9cb
    .line 3336
    const/4 v6, 0x0

    #@9cc
    move-object/from16 v0, v18

    #@9ce
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@9d1
    .line 3337
    move-object/from16 v0, v18

    #@9d3
    move-object/from16 v1, p3

    #@9d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d8
    .line 3338
    const-string/jumbo v6, "  Wifi states:"

    #@9db
    move-object/from16 v0, v18

    #@9dd
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e0
    .line 3339
    const/16 v55, 0x0

    #@9e2
    .line 3340
    const/16 v75, 0x0

    #@9e4
    :goto_8
    const/16 v6, 0x8

    #@9e6
    move/from16 v0, v75

    #@9e8
    if-ge v0, v6, :cond_1a

    #@9ea
    .line 3341
    move-object/from16 v0, p0

    #@9ec
    move/from16 v1, v75

    #@9ee
    move-wide/from16 v2, v20

    #@9f0
    move/from16 v4, p4

    #@9f2
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    #@9f5
    move-result-wide v152

    #@9f6
    .line 3342
    .restart local v152    # "time":J
    const-wide/16 v6, 0x0

    #@9f8
    cmp-long v6, v152, v6

    #@9fa
    if-nez v6, :cond_19

    #@9fc
    .line 3340
    :goto_9
    add-int/lit8 v75, v75, 0x1

    #@9fe
    goto :goto_8

    #@9ff
    .line 3345
    :cond_19
    const-string/jumbo v6, "\n    "

    #@a02
    move-object/from16 v0, v18

    #@a04
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a07
    .line 3346
    const/16 v55, 0x1

    #@a09
    .line 3347
    sget-object v6, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    #@a0b
    aget-object v6, v6, v75

    #@a0d
    move-object/from16 v0, v18

    #@a0f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a12
    .line 3348
    const-string/jumbo v6, " "

    #@a15
    move-object/from16 v0, v18

    #@a17
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1a
    .line 3349
    const-wide/16 v6, 0x3e8

    #@a1c
    div-long v6, v152, v6

    #@a1e
    move-object/from16 v0, v18

    #@a20
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@a23
    .line 3350
    const-string/jumbo v6, "("

    #@a26
    move-object/from16 v0, v18

    #@a28
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2b
    .line 3351
    move-object/from16 v0, p0

    #@a2d
    move-wide/from16 v1, v152

    #@a2f
    move-wide/from16 v3, v196

    #@a31
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@a34
    move-result-object v6

    #@a35
    move-object/from16 v0, v18

    #@a37
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3a
    .line 3352
    const-string/jumbo v6, ") "

    #@a3d
    move-object/from16 v0, v18

    #@a3f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a42
    .line 3353
    move-object/from16 v0, p0

    #@a44
    move/from16 v1, v75

    #@a46
    move/from16 v2, p4

    #@a48
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiStateCount(II)I

    #@a4b
    move-result v6

    #@a4c
    move-object/from16 v0, v18

    #@a4e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a51
    .line 3354
    const-string/jumbo v6, "x"

    #@a54
    move-object/from16 v0, v18

    #@a56
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a59
    goto :goto_9

    #@a5a
    .line 3356
    .end local v152    # "time":J
    :cond_1a
    if-nez v55, :cond_1b

    #@a5c
    const-string/jumbo v6, " (no activity)"

    #@a5f
    move-object/from16 v0, v18

    #@a61
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a64
    .line 3357
    :cond_1b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a67
    move-result-object v6

    #@a68
    move-object/from16 v0, p2

    #@a6a
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a6d
    .line 3359
    const/4 v6, 0x0

    #@a6e
    move-object/from16 v0, v18

    #@a70
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@a73
    .line 3360
    move-object/from16 v0, v18

    #@a75
    move-object/from16 v1, p3

    #@a77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7a
    .line 3361
    const-string/jumbo v6, "  Wifi supplicant states:"

    #@a7d
    move-object/from16 v0, v18

    #@a7f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a82
    .line 3362
    const/16 v55, 0x0

    #@a84
    .line 3363
    const/16 v75, 0x0

    #@a86
    :goto_a
    const/16 v6, 0xd

    #@a88
    move/from16 v0, v75

    #@a8a
    if-ge v0, v6, :cond_1d

    #@a8c
    .line 3364
    move-object/from16 v0, p0

    #@a8e
    move/from16 v1, v75

    #@a90
    move-wide/from16 v2, v20

    #@a92
    move/from16 v4, p4

    #@a94
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    #@a97
    move-result-wide v152

    #@a98
    .line 3365
    .restart local v152    # "time":J
    const-wide/16 v6, 0x0

    #@a9a
    cmp-long v6, v152, v6

    #@a9c
    if-nez v6, :cond_1c

    #@a9e
    .line 3363
    :goto_b
    add-int/lit8 v75, v75, 0x1

    #@aa0
    goto :goto_a

    #@aa1
    .line 3368
    :cond_1c
    const-string/jumbo v6, "\n    "

    #@aa4
    move-object/from16 v0, v18

    #@aa6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa9
    .line 3369
    const/16 v55, 0x1

    #@aab
    .line 3370
    sget-object v6, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    #@aad
    aget-object v6, v6, v75

    #@aaf
    move-object/from16 v0, v18

    #@ab1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab4
    .line 3371
    const-string/jumbo v6, " "

    #@ab7
    move-object/from16 v0, v18

    #@ab9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@abc
    .line 3372
    const-wide/16 v6, 0x3e8

    #@abe
    div-long v6, v152, v6

    #@ac0
    move-object/from16 v0, v18

    #@ac2
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@ac5
    .line 3373
    const-string/jumbo v6, "("

    #@ac8
    move-object/from16 v0, v18

    #@aca
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@acd
    .line 3374
    move-object/from16 v0, p0

    #@acf
    move-wide/from16 v1, v152

    #@ad1
    move-wide/from16 v3, v196

    #@ad3
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@ad6
    move-result-object v6

    #@ad7
    move-object/from16 v0, v18

    #@ad9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@adc
    .line 3375
    const-string/jumbo v6, ") "

    #@adf
    move-object/from16 v0, v18

    #@ae1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae4
    .line 3376
    move-object/from16 v0, p0

    #@ae6
    move/from16 v1, v75

    #@ae8
    move/from16 v2, p4

    #@aea
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSupplStateCount(II)I

    #@aed
    move-result v6

    #@aee
    move-object/from16 v0, v18

    #@af0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@af3
    .line 3377
    const-string/jumbo v6, "x"

    #@af6
    move-object/from16 v0, v18

    #@af8
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@afb
    goto :goto_b

    #@afc
    .line 3379
    .end local v152    # "time":J
    :cond_1d
    if-nez v55, :cond_1e

    #@afe
    const-string/jumbo v6, " (no activity)"

    #@b01
    move-object/from16 v0, v18

    #@b03
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b06
    .line 3380
    :cond_1e
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b09
    move-result-object v6

    #@b0a
    move-object/from16 v0, p2

    #@b0c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b0f
    .line 3382
    const/4 v6, 0x0

    #@b10
    move-object/from16 v0, v18

    #@b12
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@b15
    .line 3383
    move-object/from16 v0, v18

    #@b17
    move-object/from16 v1, p3

    #@b19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1c
    .line 3384
    const-string/jumbo v6, "  Wifi signal levels:"

    #@b1f
    move-object/from16 v0, v18

    #@b21
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b24
    .line 3385
    const/16 v55, 0x0

    #@b26
    .line 3386
    const/16 v75, 0x0

    #@b28
    :goto_c
    const/4 v6, 0x5

    #@b29
    move/from16 v0, v75

    #@b2b
    if-ge v0, v6, :cond_20

    #@b2d
    .line 3387
    move-object/from16 v0, p0

    #@b2f
    move/from16 v1, v75

    #@b31
    move-wide/from16 v2, v20

    #@b33
    move/from16 v4, p4

    #@b35
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    #@b38
    move-result-wide v152

    #@b39
    .line 3388
    .restart local v152    # "time":J
    const-wide/16 v6, 0x0

    #@b3b
    cmp-long v6, v152, v6

    #@b3d
    if-nez v6, :cond_1f

    #@b3f
    .line 3386
    :goto_d
    add-int/lit8 v75, v75, 0x1

    #@b41
    goto :goto_c

    #@b42
    .line 3391
    :cond_1f
    const-string/jumbo v6, "\n    "

    #@b45
    move-object/from16 v0, v18

    #@b47
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4a
    .line 3392
    move-object/from16 v0, v18

    #@b4c
    move-object/from16 v1, p3

    #@b4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b51
    .line 3393
    const/16 v55, 0x1

    #@b53
    .line 3394
    const-string/jumbo v6, "level("

    #@b56
    move-object/from16 v0, v18

    #@b58
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5b
    .line 3395
    move-object/from16 v0, v18

    #@b5d
    move/from16 v1, v75

    #@b5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b62
    .line 3396
    const-string/jumbo v6, ") "

    #@b65
    move-object/from16 v0, v18

    #@b67
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6a
    .line 3397
    const-wide/16 v6, 0x3e8

    #@b6c
    div-long v6, v152, v6

    #@b6e
    move-object/from16 v0, v18

    #@b70
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@b73
    .line 3398
    const-string/jumbo v6, "("

    #@b76
    move-object/from16 v0, v18

    #@b78
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7b
    .line 3399
    move-object/from16 v0, p0

    #@b7d
    move-wide/from16 v1, v152

    #@b7f
    move-wide/from16 v3, v196

    #@b81
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@b84
    move-result-object v6

    #@b85
    move-object/from16 v0, v18

    #@b87
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8a
    .line 3400
    const-string/jumbo v6, ") "

    #@b8d
    move-object/from16 v0, v18

    #@b8f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b92
    .line 3401
    move-object/from16 v0, p0

    #@b94
    move/from16 v1, v75

    #@b96
    move/from16 v2, p4

    #@b98
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSignalStrengthCount(II)I

    #@b9b
    move-result v6

    #@b9c
    move-object/from16 v0, v18

    #@b9e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ba1
    .line 3402
    const-string/jumbo v6, "x"

    #@ba4
    move-object/from16 v0, v18

    #@ba6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba9
    goto :goto_d

    #@baa
    .line 3404
    .end local v152    # "time":J
    :cond_20
    if-nez v55, :cond_21

    #@bac
    const-string/jumbo v6, " (no activity)"

    #@baf
    move-object/from16 v0, v18

    #@bb1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb4
    .line 3405
    :cond_21
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb7
    move-result-object v6

    #@bb8
    move-object/from16 v0, p2

    #@bba
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bbd
    .line 3407
    const/4 v6, 0x0

    #@bbe
    move-object/from16 v0, p0

    #@bc0
    move/from16 v1, p4

    #@bc2
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    #@bc5
    move-result-wide v204

    #@bc6
    .line 3408
    .local v204, "wifiIdleTimeMs":J
    const/4 v6, 0x1

    #@bc7
    move-object/from16 v0, p0

    #@bc9
    move/from16 v1, p4

    #@bcb
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    #@bce
    move-result-wide v216

    #@bcf
    .line 3409
    .local v216, "wifiRxTimeMs":J
    const/4 v6, 0x2

    #@bd0
    move-object/from16 v0, p0

    #@bd2
    move/from16 v1, p4

    #@bd4
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    #@bd7
    move-result-wide v232

    #@bd8
    .line 3410
    .local v232, "wifiTxTimeMs":J
    const/4 v6, 0x3

    #@bd9
    move-object/from16 v0, p0

    #@bdb
    move/from16 v1, p4

    #@bdd
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    #@be0
    move-result-wide v208

    #@be1
    .line 3411
    .local v208, "wifiPowerDrainMaMs":J
    add-long v6, v204, v216

    #@be3
    add-long v226, v6, v232

    #@be5
    .line 3413
    .local v226, "wifiTotalTimeMs":J
    const/4 v6, 0x0

    #@be6
    move-object/from16 v0, v18

    #@be8
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@beb
    .line 3414
    move-object/from16 v0, v18

    #@bed
    move-object/from16 v1, p3

    #@bef
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf2
    .line 3415
    const-string/jumbo v6, "  WiFi Idle time: "

    #@bf5
    move-object/from16 v0, v18

    #@bf7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bfa
    move-object/from16 v0, v18

    #@bfc
    move-wide/from16 v1, v204

    #@bfe
    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@c01
    .line 3416
    const-string/jumbo v6, "("

    #@c04
    move-object/from16 v0, v18

    #@c06
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c09
    .line 3417
    move-object/from16 v0, p0

    #@c0b
    move-wide/from16 v1, v204

    #@c0d
    move-wide/from16 v3, v226

    #@c0f
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@c12
    move-result-object v6

    #@c13
    move-object/from16 v0, v18

    #@c15
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c18
    .line 3418
    const-string/jumbo v6, ")"

    #@c1b
    move-object/from16 v0, v18

    #@c1d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c20
    .line 3419
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c23
    move-result-object v6

    #@c24
    move-object/from16 v0, p2

    #@c26
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c29
    .line 3421
    const/4 v6, 0x0

    #@c2a
    move-object/from16 v0, v18

    #@c2c
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@c2f
    .line 3422
    move-object/from16 v0, v18

    #@c31
    move-object/from16 v1, p3

    #@c33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c36
    .line 3423
    const-string/jumbo v6, "  WiFi Rx time:   "

    #@c39
    move-object/from16 v0, v18

    #@c3b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3e
    move-object/from16 v0, v18

    #@c40
    move-wide/from16 v1, v216

    #@c42
    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@c45
    .line 3424
    const-string/jumbo v6, "("

    #@c48
    move-object/from16 v0, v18

    #@c4a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4d
    .line 3425
    move-object/from16 v0, p0

    #@c4f
    move-wide/from16 v1, v216

    #@c51
    move-wide/from16 v3, v226

    #@c53
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@c56
    move-result-object v6

    #@c57
    move-object/from16 v0, v18

    #@c59
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5c
    .line 3426
    const-string/jumbo v6, ")"

    #@c5f
    move-object/from16 v0, v18

    #@c61
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c64
    .line 3427
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c67
    move-result-object v6

    #@c68
    move-object/from16 v0, p2

    #@c6a
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c6d
    .line 3429
    const/4 v6, 0x0

    #@c6e
    move-object/from16 v0, v18

    #@c70
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@c73
    .line 3430
    move-object/from16 v0, v18

    #@c75
    move-object/from16 v1, p3

    #@c77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7a
    .line 3431
    const-string/jumbo v6, "  WiFi Tx time:   "

    #@c7d
    move-object/from16 v0, v18

    #@c7f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c82
    move-object/from16 v0, v18

    #@c84
    move-wide/from16 v1, v232

    #@c86
    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@c89
    .line 3432
    const-string/jumbo v6, "("

    #@c8c
    move-object/from16 v0, v18

    #@c8e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c91
    .line 3433
    move-object/from16 v0, p0

    #@c93
    move-wide/from16 v1, v232

    #@c95
    move-wide/from16 v3, v226

    #@c97
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@c9a
    move-result-object v6

    #@c9b
    move-object/from16 v0, v18

    #@c9d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca0
    .line 3434
    const-string/jumbo v6, ")"

    #@ca3
    move-object/from16 v0, v18

    #@ca5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca8
    .line 3435
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cab
    move-result-object v6

    #@cac
    move-object/from16 v0, p2

    #@cae
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cb1
    .line 3437
    const/4 v6, 0x0

    #@cb2
    move-object/from16 v0, v18

    #@cb4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@cb7
    .line 3438
    move-object/from16 v0, v18

    #@cb9
    move-object/from16 v1, p3

    #@cbb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cbe
    .line 3439
    const-string/jumbo v6, "  WiFi Power drain: "

    #@cc1
    move-object/from16 v0, v18

    #@cc3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc6
    move-result-object v6

    #@cc7
    .line 3440
    move-wide/from16 v0, v208

    #@cc9
    long-to-double v12, v0

    #@cca
    const-wide v22, 0x414b774000000000L    # 3600000.0

    #@ccf
    div-double v12, v12, v22

    #@cd1
    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@cd4
    move-result-object v7

    #@cd5
    .line 3439
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd8
    .line 3441
    const-string/jumbo v6, "mAh"

    #@cdb
    move-object/from16 v0, v18

    #@cdd
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce0
    .line 3442
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce3
    move-result-object v6

    #@ce4
    move-object/from16 v0, p2

    #@ce6
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ce9
    .line 3445
    const/4 v6, 0x0

    #@cea
    move-object/from16 v0, p0

    #@cec
    move/from16 v1, p4

    #@cee
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    #@cf1
    move-result-wide v42

    #@cf2
    .line 3446
    .local v42, "bluetoothIdleTimeMs":J
    const/4 v6, 0x1

    #@cf3
    move-object/from16 v0, p0

    #@cf5
    move/from16 v1, p4

    #@cf7
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    #@cfa
    move-result-wide v44

    #@cfb
    .line 3447
    .local v44, "bluetoothRxTimeMs":J
    const/4 v6, 0x2

    #@cfc
    move-object/from16 v0, p0

    #@cfe
    move/from16 v1, p4

    #@d00
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    #@d03
    move-result-wide v48

    #@d04
    .line 3448
    .local v48, "bluetoothTxTimeMs":J
    add-long v6, v42, v44

    #@d06
    add-long v46, v6, v48

    #@d08
    .line 3451
    .local v46, "bluetoothTotalTimeMs":J
    const/4 v6, 0x0

    #@d09
    move-object/from16 v0, v18

    #@d0b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@d0e
    .line 3452
    move-object/from16 v0, v18

    #@d10
    move-object/from16 v1, p3

    #@d12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d15
    .line 3453
    const-string/jumbo v6, "  Bluetooth Idle time: "

    #@d18
    move-object/from16 v0, v18

    #@d1a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1d
    move-object/from16 v0, v18

    #@d1f
    move-wide/from16 v1, v42

    #@d21
    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@d24
    .line 3454
    const-string/jumbo v6, "("

    #@d27
    move-object/from16 v0, v18

    #@d29
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2c
    .line 3455
    move-object/from16 v0, p0

    #@d2e
    move-wide/from16 v1, v42

    #@d30
    move-wide/from16 v3, v46

    #@d32
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@d35
    move-result-object v6

    #@d36
    move-object/from16 v0, v18

    #@d38
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3b
    .line 3456
    const-string/jumbo v6, ")"

    #@d3e
    move-object/from16 v0, v18

    #@d40
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d43
    .line 3457
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d46
    move-result-object v6

    #@d47
    move-object/from16 v0, p2

    #@d49
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d4c
    .line 3459
    const/4 v6, 0x0

    #@d4d
    move-object/from16 v0, v18

    #@d4f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@d52
    .line 3460
    move-object/from16 v0, v18

    #@d54
    move-object/from16 v1, p3

    #@d56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d59
    .line 3461
    const-string/jumbo v6, "  Bluetooth Rx time:   "

    #@d5c
    move-object/from16 v0, v18

    #@d5e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d61
    move-object/from16 v0, v18

    #@d63
    move-wide/from16 v1, v44

    #@d65
    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@d68
    .line 3462
    const-string/jumbo v6, "("

    #@d6b
    move-object/from16 v0, v18

    #@d6d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d70
    .line 3463
    move-object/from16 v0, p0

    #@d72
    move-wide/from16 v1, v44

    #@d74
    move-wide/from16 v3, v46

    #@d76
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@d79
    move-result-object v6

    #@d7a
    move-object/from16 v0, v18

    #@d7c
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7f
    .line 3464
    const-string/jumbo v6, ")"

    #@d82
    move-object/from16 v0, v18

    #@d84
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d87
    .line 3465
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8a
    move-result-object v6

    #@d8b
    move-object/from16 v0, p2

    #@d8d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d90
    .line 3467
    const/4 v6, 0x0

    #@d91
    move-object/from16 v0, v18

    #@d93
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@d96
    .line 3468
    move-object/from16 v0, v18

    #@d98
    move-object/from16 v1, p3

    #@d9a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9d
    .line 3469
    const-string/jumbo v6, "  Bluetooth Tx time:   "

    #@da0
    move-object/from16 v0, v18

    #@da2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da5
    move-object/from16 v0, v18

    #@da7
    move-wide/from16 v1, v48

    #@da9
    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@dac
    .line 3470
    const-string/jumbo v6, "("

    #@daf
    move-object/from16 v0, v18

    #@db1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db4
    .line 3471
    move-object/from16 v0, p0

    #@db6
    move-wide/from16 v1, v48

    #@db8
    move-wide/from16 v3, v46

    #@dba
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@dbd
    move-result-object v6

    #@dbe
    move-object/from16 v0, v18

    #@dc0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc3
    .line 3472
    const-string/jumbo v6, ")"

    #@dc6
    move-object/from16 v0, v18

    #@dc8
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dcb
    .line 3473
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dce
    move-result-object v6

    #@dcf
    move-object/from16 v0, p2

    #@dd1
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@dd4
    .line 3475
    const/4 v6, 0x0

    #@dd5
    move-object/from16 v0, v18

    #@dd7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@dda
    .line 3476
    move-object/from16 v0, v18

    #@ddc
    move-object/from16 v1, p3

    #@dde
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de1
    .line 3477
    const-string/jumbo v6, "  Bluetooth Power drain: "

    #@de4
    move-object/from16 v0, v18

    #@de6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de9
    move-result-object v6

    #@dea
    .line 3478
    const/4 v7, 0x3

    #@deb
    move-object/from16 v0, p0

    #@ded
    move/from16 v1, p4

    #@def
    invoke-virtual {v0, v7, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    #@df2
    move-result-wide v12

    #@df3
    long-to-double v12, v12

    #@df4
    .line 3479
    const-wide v22, 0x414b774000000000L    # 3600000.0

    #@df9
    .line 3478
    div-double v12, v12, v22

    #@dfb
    .line 3477
    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@dfe
    move-result-object v7

    #@dff
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e02
    .line 3480
    const-string/jumbo v6, "mAh"

    #@e05
    move-object/from16 v0, v18

    #@e07
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0a
    .line 3481
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0d
    move-result-object v6

    #@e0e
    move-object/from16 v0, p2

    #@e10
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e13
    .line 3483
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@e16
    .line 3485
    const/4 v6, 0x2

    #@e17
    move/from16 v0, p4

    #@e19
    if-ne v0, v6, :cond_2e

    #@e1b
    .line 3486
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    #@e1e
    move-result v6

    #@e1f
    if-eqz v6, :cond_2d

    #@e21
    .line 3487
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e24
    const-string/jumbo v6, "  Device is currently unplugged"

    #@e27
    move-object/from16 v0, p2

    #@e29
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e2c
    .line 3488
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e2f
    const-string/jumbo v6, "    Discharge cycle start level: "

    #@e32
    move-object/from16 v0, p2

    #@e34
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e37
    .line 3489
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    #@e3a
    move-result v6

    #@e3b
    move-object/from16 v0, p2

    #@e3d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@e40
    .line 3490
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e43
    const-string/jumbo v6, "    Discharge cycle current level: "

    #@e46
    move-object/from16 v0, p2

    #@e48
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e4b
    .line 3491
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    #@e4e
    move-result v6

    #@e4f
    move-object/from16 v0, p2

    #@e51
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@e54
    .line 3499
    :goto_e
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e57
    const-string/jumbo v6, "    Amount discharged while screen on: "

    #@e5a
    move-object/from16 v0, p2

    #@e5c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e5f
    .line 3500
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    #@e62
    move-result v6

    #@e63
    move-object/from16 v0, p2

    #@e65
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@e68
    .line 3501
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e6b
    const-string/jumbo v6, "    Amount discharged while screen off: "

    #@e6e
    move-object/from16 v0, p2

    #@e70
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e73
    .line 3502
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    #@e76
    move-result v6

    #@e77
    move-object/from16 v0, p2

    #@e79
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@e7c
    .line 3503
    const-string/jumbo v6, " "

    #@e7f
    move-object/from16 v0, p2

    #@e81
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e84
    .line 3517
    :goto_f
    new-instance v74, Lcom/android/internal/os/BatteryStatsHelper;

    #@e86
    const/4 v6, 0x0

    #@e87
    move-object/from16 v0, v74

    #@e89
    move-object/from16 v1, p1

    #@e8b
    move/from16 v2, p6

    #@e8d
    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    #@e90
    .line 3518
    .local v74, "helper":Lcom/android/internal/os/BatteryStatsHelper;
    move-object/from16 v0, v74

    #@e92
    move-object/from16 v1, p0

    #@e94
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    #@e97
    .line 3519
    const/4 v6, -0x1

    #@e98
    move-object/from16 v0, v74

    #@e9a
    move/from16 v1, p4

    #@e9c
    invoke-virtual {v0, v1, v6}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    #@e9f
    .line 3520
    invoke-virtual/range {v74 .. v74}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    #@ea2
    move-result-object v141

    #@ea3
    .line 3521
    .local v141, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v141, :cond_30

    #@ea5
    invoke-interface/range {v141 .. v141}, Ljava/util/List;->size()I

    #@ea8
    move-result v6

    #@ea9
    if-lez v6, :cond_30

    #@eab
    .line 3522
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@eae
    const-string/jumbo v6, "  Estimated power use (mAh):"

    #@eb1
    move-object/from16 v0, p2

    #@eb3
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@eb6
    .line 3523
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@eb9
    const-string/jumbo v6, "    Capacity: "

    #@ebc
    move-object/from16 v0, p2

    #@ebe
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ec1
    .line 3524
    invoke-virtual/range {v74 .. v74}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    #@ec4
    move-result-object v6

    #@ec5
    invoke-virtual {v6}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    #@ec8
    move-result-wide v6

    #@ec9
    move-object/from16 v0, p0

    #@ecb
    move-object/from16 v1, p2

    #@ecd
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@ed0
    .line 3525
    const-string/jumbo v6, ", Computed drain: "

    #@ed3
    move-object/from16 v0, p2

    #@ed5
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ed8
    invoke-virtual/range {v74 .. v74}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    #@edb
    move-result-wide v6

    #@edc
    move-object/from16 v0, p0

    #@ede
    move-object/from16 v1, p2

    #@ee0
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@ee3
    .line 3526
    const-string/jumbo v6, ", actual drain: "

    #@ee6
    move-object/from16 v0, p2

    #@ee8
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@eeb
    invoke-virtual/range {v74 .. v74}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    #@eee
    move-result-wide v6

    #@eef
    move-object/from16 v0, p0

    #@ef1
    move-object/from16 v1, p2

    #@ef3
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@ef6
    .line 3527
    invoke-virtual/range {v74 .. v74}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    #@ef9
    move-result-wide v6

    #@efa
    invoke-virtual/range {v74 .. v74}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    #@efd
    move-result-wide v12

    #@efe
    cmpl-double v6, v6, v12

    #@f00
    if-eqz v6, :cond_22

    #@f02
    .line 3528
    const-string/jumbo v6, "-"

    #@f05
    move-object/from16 v0, p2

    #@f07
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f0a
    invoke-virtual/range {v74 .. v74}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    #@f0d
    move-result-wide v6

    #@f0e
    move-object/from16 v0, p0

    #@f10
    move-object/from16 v1, p2

    #@f12
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@f15
    .line 3530
    :cond_22
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@f18
    .line 3531
    const/16 v75, 0x0

    #@f1a
    :goto_10
    invoke-interface/range {v141 .. v141}, Ljava/util/List;->size()I

    #@f1d
    move-result v6

    #@f1e
    move/from16 v0, v75

    #@f20
    if-ge v0, v6, :cond_2f

    #@f22
    .line 3532
    move-object/from16 v0, v141

    #@f24
    move/from16 v1, v75

    #@f26
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f29
    move-result-object v37

    #@f2a
    check-cast v37, Lcom/android/internal/os/BatterySipper;

    #@f2c
    .line 3533
    .local v37, "bs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f2f
    .line 3534
    invoke-static {}, Landroid/os/BatteryStats;->-getcom_android_internal_os_BatterySipper$DrainTypeSwitchesValues()[I

    #@f32
    move-result-object v6

    #@f33
    move-object/from16 v0, v37

    #@f35
    iget-object v7, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    #@f37
    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    #@f3a
    move-result v7

    #@f3b
    aget v6, v6, v7

    #@f3d
    packed-switch v6, :pswitch_data_0

    #@f40
    .line 3575
    const-string/jumbo v6, "    ???: "

    #@f43
    move-object/from16 v0, p2

    #@f45
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f48
    .line 3578
    :goto_11
    move-object/from16 v0, v37

    #@f4a
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    #@f4c
    move-object/from16 v0, p0

    #@f4e
    move-object/from16 v1, p2

    #@f50
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@f53
    .line 3580
    move-object/from16 v0, v37

    #@f55
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    #@f57
    move-object/from16 v0, v37

    #@f59
    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    #@f5b
    cmpl-double v6, v6, v12

    #@f5d
    if-eqz v6, :cond_2c

    #@f5f
    .line 3584
    const-string/jumbo v6, " ("

    #@f62
    move-object/from16 v0, p2

    #@f64
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f67
    .line 3585
    move-object/from16 v0, v37

    #@f69
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    #@f6b
    const-wide/16 v12, 0x0

    #@f6d
    cmpl-double v6, v6, v12

    #@f6f
    if-eqz v6, :cond_23

    #@f71
    .line 3586
    const-string/jumbo v6, " usage="

    #@f74
    move-object/from16 v0, p2

    #@f76
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f79
    .line 3587
    move-object/from16 v0, v37

    #@f7b
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    #@f7d
    move-object/from16 v0, p0

    #@f7f
    move-object/from16 v1, p2

    #@f81
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@f84
    .line 3589
    :cond_23
    move-object/from16 v0, v37

    #@f86
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    #@f88
    const-wide/16 v12, 0x0

    #@f8a
    cmpl-double v6, v6, v12

    #@f8c
    if-eqz v6, :cond_24

    #@f8e
    .line 3590
    const-string/jumbo v6, " cpu="

    #@f91
    move-object/from16 v0, p2

    #@f93
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f96
    .line 3591
    move-object/from16 v0, v37

    #@f98
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    #@f9a
    move-object/from16 v0, p0

    #@f9c
    move-object/from16 v1, p2

    #@f9e
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@fa1
    .line 3593
    :cond_24
    move-object/from16 v0, v37

    #@fa3
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    #@fa5
    const-wide/16 v12, 0x0

    #@fa7
    cmpl-double v6, v6, v12

    #@fa9
    if-eqz v6, :cond_25

    #@fab
    .line 3594
    const-string/jumbo v6, " wake="

    #@fae
    move-object/from16 v0, p2

    #@fb0
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fb3
    .line 3595
    move-object/from16 v0, v37

    #@fb5
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    #@fb7
    move-object/from16 v0, p0

    #@fb9
    move-object/from16 v1, p2

    #@fbb
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@fbe
    .line 3597
    :cond_25
    move-object/from16 v0, v37

    #@fc0
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    #@fc2
    const-wide/16 v12, 0x0

    #@fc4
    cmpl-double v6, v6, v12

    #@fc6
    if-eqz v6, :cond_26

    #@fc8
    .line 3598
    const-string/jumbo v6, " radio="

    #@fcb
    move-object/from16 v0, p2

    #@fcd
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fd0
    .line 3599
    move-object/from16 v0, v37

    #@fd2
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    #@fd4
    move-object/from16 v0, p0

    #@fd6
    move-object/from16 v1, p2

    #@fd8
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@fdb
    .line 3601
    :cond_26
    move-object/from16 v0, v37

    #@fdd
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    #@fdf
    const-wide/16 v12, 0x0

    #@fe1
    cmpl-double v6, v6, v12

    #@fe3
    if-eqz v6, :cond_27

    #@fe5
    .line 3602
    const-string/jumbo v6, " wifi="

    #@fe8
    move-object/from16 v0, p2

    #@fea
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fed
    .line 3603
    move-object/from16 v0, v37

    #@fef
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    #@ff1
    move-object/from16 v0, p0

    #@ff3
    move-object/from16 v1, p2

    #@ff5
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@ff8
    .line 3605
    :cond_27
    move-object/from16 v0, v37

    #@ffa
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    #@ffc
    const-wide/16 v12, 0x0

    #@ffe
    cmpl-double v6, v6, v12

    #@1000
    if-eqz v6, :cond_28

    #@1002
    .line 3606
    const-string/jumbo v6, " gps="

    #@1005
    move-object/from16 v0, p2

    #@1007
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@100a
    .line 3607
    move-object/from16 v0, v37

    #@100c
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    #@100e
    move-object/from16 v0, p0

    #@1010
    move-object/from16 v1, p2

    #@1012
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@1015
    .line 3609
    :cond_28
    move-object/from16 v0, v37

    #@1017
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    #@1019
    const-wide/16 v12, 0x0

    #@101b
    cmpl-double v6, v6, v12

    #@101d
    if-eqz v6, :cond_29

    #@101f
    .line 3610
    const-string/jumbo v6, " sensor="

    #@1022
    move-object/from16 v0, p2

    #@1024
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1027
    .line 3611
    move-object/from16 v0, v37

    #@1029
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    #@102b
    move-object/from16 v0, p0

    #@102d
    move-object/from16 v1, p2

    #@102f
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@1032
    .line 3613
    :cond_29
    move-object/from16 v0, v37

    #@1034
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    #@1036
    const-wide/16 v12, 0x0

    #@1038
    cmpl-double v6, v6, v12

    #@103a
    if-eqz v6, :cond_2a

    #@103c
    .line 3614
    const-string/jumbo v6, " camera="

    #@103f
    move-object/from16 v0, p2

    #@1041
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1044
    .line 3615
    move-object/from16 v0, v37

    #@1046
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    #@1048
    move-object/from16 v0, p0

    #@104a
    move-object/from16 v1, p2

    #@104c
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@104f
    .line 3617
    :cond_2a
    move-object/from16 v0, v37

    #@1051
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    #@1053
    const-wide/16 v12, 0x0

    #@1055
    cmpl-double v6, v6, v12

    #@1057
    if-eqz v6, :cond_2b

    #@1059
    .line 3618
    const-string/jumbo v6, " flash="

    #@105c
    move-object/from16 v0, p2

    #@105e
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1061
    .line 3619
    move-object/from16 v0, v37

    #@1063
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    #@1065
    move-object/from16 v0, p0

    #@1067
    move-object/from16 v1, p2

    #@1069
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    #@106c
    .line 3621
    :cond_2b
    const-string/jumbo v6, " )"

    #@106f
    move-object/from16 v0, p2

    #@1071
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1074
    .line 3623
    :cond_2c
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@1077
    .line 3531
    add-int/lit8 v75, v75, 0x1

    #@1079
    goto/16 :goto_10

    #@107b
    .line 3493
    .end local v37    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v74    # "helper":Lcom/android/internal/os/BatteryStatsHelper;
    .end local v141    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_2d
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@107e
    const-string/jumbo v6, "  Device is currently plugged into power"

    #@1081
    move-object/from16 v0, p2

    #@1083
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1086
    .line 3494
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1089
    const-string/jumbo v6, "    Last discharge cycle start level: "

    #@108c
    move-object/from16 v0, p2

    #@108e
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1091
    .line 3495
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    #@1094
    move-result v6

    #@1095
    move-object/from16 v0, p2

    #@1097
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@109a
    .line 3496
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@109d
    const-string/jumbo v6, "    Last discharge cycle end level: "

    #@10a0
    move-object/from16 v0, p2

    #@10a2
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10a5
    .line 3497
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    #@10a8
    move-result v6

    #@10a9
    move-object/from16 v0, p2

    #@10ab
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@10ae
    goto/16 :goto_e

    #@10b0
    .line 3505
    :cond_2e
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10b3
    const-string/jumbo v6, "  Device battery use since last full charge"

    #@10b6
    move-object/from16 v0, p2

    #@10b8
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10bb
    .line 3506
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10be
    const-string/jumbo v6, "    Amount discharged (lower bound): "

    #@10c1
    move-object/from16 v0, p2

    #@10c3
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10c6
    .line 3507
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    #@10c9
    move-result v6

    #@10ca
    move-object/from16 v0, p2

    #@10cc
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@10cf
    .line 3508
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10d2
    const-string/jumbo v6, "    Amount discharged (upper bound): "

    #@10d5
    move-object/from16 v0, p2

    #@10d7
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10da
    .line 3509
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    #@10dd
    move-result v6

    #@10de
    move-object/from16 v0, p2

    #@10e0
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@10e3
    .line 3510
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10e6
    const-string/jumbo v6, "    Amount discharged while screen on: "

    #@10e9
    move-object/from16 v0, p2

    #@10eb
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10ee
    .line 3511
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    #@10f1
    move-result v6

    #@10f2
    move-object/from16 v0, p2

    #@10f4
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@10f7
    .line 3512
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10fa
    const-string/jumbo v6, "    Amount discharged while screen off: "

    #@10fd
    move-object/from16 v0, p2

    #@10ff
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1102
    .line 3513
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    #@1105
    move-result v6

    #@1106
    move-object/from16 v0, p2

    #@1108
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    #@110b
    .line 3514
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@110e
    goto/16 :goto_f

    #@1110
    .line 3536
    .restart local v37    # "bs":Lcom/android/internal/os/BatterySipper;
    .restart local v74    # "helper":Lcom/android/internal/os/BatteryStatsHelper;
    .restart local v141    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :pswitch_0
    const-string/jumbo v6, "    Idle: "

    #@1113
    move-object/from16 v0, p2

    #@1115
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1118
    goto/16 :goto_11

    #@111a
    .line 3539
    :pswitch_1
    const-string/jumbo v6, "    Cell standby: "

    #@111d
    move-object/from16 v0, p2

    #@111f
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1122
    goto/16 :goto_11

    #@1124
    .line 3542
    :pswitch_2
    const-string/jumbo v6, "    Phone calls: "

    #@1127
    move-object/from16 v0, p2

    #@1129
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@112c
    goto/16 :goto_11

    #@112e
    .line 3545
    :pswitch_3
    const-string/jumbo v6, "    Wifi: "

    #@1131
    move-object/from16 v0, p2

    #@1133
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1136
    goto/16 :goto_11

    #@1138
    .line 3548
    :pswitch_4
    const-string/jumbo v6, "    Bluetooth: "

    #@113b
    move-object/from16 v0, p2

    #@113d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1140
    goto/16 :goto_11

    #@1142
    .line 3551
    :pswitch_5
    const-string/jumbo v6, "    Screen: "

    #@1145
    move-object/from16 v0, p2

    #@1147
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@114a
    goto/16 :goto_11

    #@114c
    .line 3554
    :pswitch_6
    const-string/jumbo v6, "    Flashlight: "

    #@114f
    move-object/from16 v0, p2

    #@1151
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1154
    goto/16 :goto_11

    #@1156
    .line 3557
    :pswitch_7
    const-string/jumbo v6, "    Uid "

    #@1159
    move-object/from16 v0, p2

    #@115b
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@115e
    .line 3558
    move-object/from16 v0, v37

    #@1160
    iget-object v6, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    #@1162
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    #@1165
    move-result v6

    #@1166
    move-object/from16 v0, p2

    #@1168
    invoke-static {v0, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@116b
    .line 3559
    const-string/jumbo v6, ": "

    #@116e
    move-object/from16 v0, p2

    #@1170
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1173
    goto/16 :goto_11

    #@1175
    .line 3562
    :pswitch_8
    const-string/jumbo v6, "    User "

    #@1178
    move-object/from16 v0, p2

    #@117a
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@117d
    move-object/from16 v0, v37

    #@117f
    iget v6, v0, Lcom/android/internal/os/BatterySipper;->userId:I

    #@1181
    move-object/from16 v0, p2

    #@1183
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    #@1186
    .line 3563
    const-string/jumbo v6, ": "

    #@1189
    move-object/from16 v0, p2

    #@118b
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@118e
    goto/16 :goto_11

    #@1190
    .line 3566
    :pswitch_9
    const-string/jumbo v6, "    Unaccounted: "

    #@1193
    move-object/from16 v0, p2

    #@1195
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1198
    goto/16 :goto_11

    #@119a
    .line 3569
    :pswitch_a
    const-string/jumbo v6, "    Over-counted: "

    #@119d
    move-object/from16 v0, p2

    #@119f
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11a2
    goto/16 :goto_11

    #@11a4
    .line 3572
    :pswitch_b
    const-string/jumbo v6, "    Camera: "

    #@11a7
    move-object/from16 v0, p2

    #@11a9
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11ac
    goto/16 :goto_11

    #@11ae
    .line 3625
    .end local v37    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_2f
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@11b1
    .line 3628
    :cond_30
    invoke-virtual/range {v74 .. v74}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilemsppList()Ljava/util/List;

    #@11b4
    move-result-object v141

    #@11b5
    .line 3629
    if-eqz v141, :cond_32

    #@11b7
    invoke-interface/range {v141 .. v141}, Ljava/util/List;->size()I

    #@11ba
    move-result v6

    #@11bb
    if-lez v6, :cond_32

    #@11bd
    .line 3630
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11c0
    const-string/jumbo v6, "  Per-app mobile ms per packet:"

    #@11c3
    move-object/from16 v0, p2

    #@11c5
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11c8
    .line 3631
    const-wide/16 v166, 0x0

    #@11ca
    .line 3632
    .local v166, "totalTime":J
    const/16 v75, 0x0

    #@11cc
    :goto_12
    invoke-interface/range {v141 .. v141}, Ljava/util/List;->size()I

    #@11cf
    move-result v6

    #@11d0
    move/from16 v0, v75

    #@11d2
    if-ge v0, v6, :cond_31

    #@11d4
    .line 3633
    move-object/from16 v0, v141

    #@11d6
    move/from16 v1, v75

    #@11d8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11db
    move-result-object v37

    #@11dc
    check-cast v37, Lcom/android/internal/os/BatterySipper;

    #@11de
    .line 3634
    .restart local v37    # "bs":Lcom/android/internal/os/BatterySipper;
    const/4 v6, 0x0

    #@11df
    move-object/from16 v0, v18

    #@11e1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@11e4
    .line 3635
    move-object/from16 v0, v18

    #@11e6
    move-object/from16 v1, p3

    #@11e8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11eb
    const-string/jumbo v6, "    Uid "

    #@11ee
    move-object/from16 v0, v18

    #@11f0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f3
    .line 3636
    move-object/from16 v0, v37

    #@11f5
    iget-object v6, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    #@11f7
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    #@11fa
    move-result v6

    #@11fb
    move-object/from16 v0, v18

    #@11fd
    invoke-static {v0, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    #@1200
    .line 3637
    const-string/jumbo v6, ": "

    #@1203
    move-object/from16 v0, v18

    #@1205
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1208
    move-object/from16 v0, v37

    #@120a
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    #@120c
    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@120f
    move-result-object v6

    #@1210
    move-object/from16 v0, v18

    #@1212
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1215
    .line 3638
    const-string/jumbo v6, " ("

    #@1218
    move-object/from16 v0, v18

    #@121a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121d
    move-object/from16 v0, v37

    #@121f
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    #@1221
    move-object/from16 v0, v37

    #@1223
    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    #@1225
    add-long/2addr v6, v12

    #@1226
    move-object/from16 v0, v18

    #@1228
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@122b
    .line 3639
    const-string/jumbo v6, " packets over "

    #@122e
    move-object/from16 v0, v18

    #@1230
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1233
    move-object/from16 v0, v37

    #@1235
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    #@1237
    move-object/from16 v0, v18

    #@1239
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    #@123c
    .line 3640
    const-string/jumbo v6, ") "

    #@123f
    move-object/from16 v0, v18

    #@1241
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1244
    move-object/from16 v0, v37

    #@1246
    iget v6, v0, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    #@1248
    move-object/from16 v0, v18

    #@124a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@124d
    const-string/jumbo v6, "x"

    #@1250
    move-object/from16 v0, v18

    #@1252
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1255
    .line 3641
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1258
    move-result-object v6

    #@1259
    move-object/from16 v0, p2

    #@125b
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@125e
    .line 3642
    move-object/from16 v0, v37

    #@1260
    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    #@1262
    add-long v166, v166, v6

    #@1264
    .line 3632
    add-int/lit8 v75, v75, 0x1

    #@1266
    goto/16 :goto_12

    #@1268
    .line 3644
    .end local v37    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_31
    const/4 v6, 0x0

    #@1269
    move-object/from16 v0, v18

    #@126b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@126e
    .line 3645
    move-object/from16 v0, v18

    #@1270
    move-object/from16 v1, p3

    #@1272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1275
    .line 3646
    const-string/jumbo v6, "    TOTAL TIME: "

    #@1278
    move-object/from16 v0, v18

    #@127a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127d
    .line 3647
    move-object/from16 v0, v18

    #@127f
    move-wide/from16 v1, v166

    #@1281
    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1284
    .line 3648
    const-string/jumbo v6, "("

    #@1287
    move-object/from16 v0, v18

    #@1289
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128c
    move-object/from16 v0, p0

    #@128e
    move-wide/from16 v1, v166

    #@1290
    move-wide/from16 v3, v196

    #@1292
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@1295
    move-result-object v6

    #@1296
    move-object/from16 v0, v18

    #@1298
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129b
    .line 3649
    const-string/jumbo v6, ")"

    #@129e
    move-object/from16 v0, v18

    #@12a0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a3
    .line 3650
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12a6
    move-result-object v6

    #@12a7
    move-object/from16 v0, p2

    #@12a9
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12ac
    .line 3651
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@12af
    .line 3654
    .end local v166    # "totalTime":J
    :cond_32
    new-instance v154, Landroid/os/BatteryStats$1;

    #@12b1
    move-object/from16 v0, v154

    #@12b3
    move-object/from16 v1, p0

    #@12b5
    invoke-direct {v0, v1}, Landroid/os/BatteryStats$1;-><init>(Landroid/os/BatteryStats;)V

    #@12b8
    .line 3669
    .local v154, "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    if-gez p5, :cond_3c

    #@12ba
    .line 3671
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    #@12bd
    move-result-object v89

    #@12be
    .line 3672
    .local v89, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v89 .. v89}, Ljava/util/Map;->size()I

    #@12c1
    move-result v6

    #@12c2
    if-lez v6, :cond_37

    #@12c4
    .line 3673
    new-instance v90, Ljava/util/ArrayList;

    #@12c6
    invoke-direct/range {v90 .. v90}, Ljava/util/ArrayList;-><init>()V

    #@12c9
    .line 3675
    .local v90, "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-interface/range {v89 .. v89}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@12cc
    move-result-object v6

    #@12cd
    .line 3674
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12d0
    move-result-object v62

    #@12d1
    .local v62, "ent$iterator":Ljava/util/Iterator;
    :cond_33
    :goto_13
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    #@12d4
    move-result v6

    #@12d5
    if-eqz v6, :cond_34

    #@12d7
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12da
    move-result-object v61

    #@12db
    check-cast v61, Ljava/util/Map$Entry;

    #@12dd
    .line 3676
    .local v61, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v61 .. v61}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@12e0
    move-result-object v15

    #@12e1
    check-cast v15, Landroid/os/BatteryStats$Timer;

    #@12e3
    .line 3677
    .local v15, "timer":Landroid/os/BatteryStats$Timer;
    move-wide/from16 v0, v20

    #@12e5
    move/from16 v2, p4

    #@12e7
    invoke-static {v15, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    #@12ea
    move-result-wide v16

    #@12eb
    .line 3678
    .local v16, "totalTimeMillis":J
    const-wide/16 v6, 0x0

    #@12ed
    cmp-long v6, v16, v6

    #@12ef
    if-lez v6, :cond_33

    #@12f1
    .line 3679
    new-instance v12, Landroid/os/BatteryStats$TimerEntry;

    #@12f3
    invoke-interface/range {v61 .. v61}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@12f6
    move-result-object v13

    #@12f7
    check-cast v13, Ljava/lang/String;

    #@12f9
    const/4 v14, 0x0

    #@12fa
    invoke-direct/range {v12 .. v17}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    #@12fd
    move-object/from16 v0, v90

    #@12ff
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1302
    goto :goto_13

    #@1303
    .line 3682
    .end local v15    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v16    # "totalTimeMillis":J
    .end local v61    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_34
    invoke-virtual/range {v90 .. v90}, Ljava/util/ArrayList;->size()I

    #@1306
    move-result v6

    #@1307
    if-lez v6, :cond_37

    #@1309
    .line 3683
    move-object/from16 v0, v90

    #@130b
    move-object/from16 v1, v154

    #@130d
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@1310
    .line 3684
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1313
    const-string/jumbo v6, "  All kernel wake locks:"

    #@1316
    move-object/from16 v0, p2

    #@1318
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@131b
    .line 3685
    const/16 v75, 0x0

    #@131d
    :goto_14
    invoke-virtual/range {v90 .. v90}, Ljava/util/ArrayList;->size()I

    #@1320
    move-result v6

    #@1321
    move/from16 v0, v75

    #@1323
    if-ge v0, v6, :cond_36

    #@1325
    .line 3686
    move-object/from16 v0, v90

    #@1327
    move/from16 v1, v75

    #@1329
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@132c
    move-result-object v147

    #@132d
    check-cast v147, Landroid/os/BatteryStats$TimerEntry;

    #@132f
    .line 3687
    .local v147, "timer":Landroid/os/BatteryStats$TimerEntry;
    const-string/jumbo v24, ": "

    #@1332
    .line 3688
    .local v24, "linePrefix":Ljava/lang/String;
    const/4 v6, 0x0

    #@1333
    move-object/from16 v0, v18

    #@1335
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1338
    .line 3689
    move-object/from16 v0, v18

    #@133a
    move-object/from16 v1, p3

    #@133c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133f
    .line 3690
    const-string/jumbo v6, "  Kernel Wake lock "

    #@1342
    move-object/from16 v0, v18

    #@1344
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1347
    .line 3691
    move-object/from16 v0, v147

    #@1349
    iget-object v6, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    #@134b
    move-object/from16 v0, v18

    #@134d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1350
    .line 3692
    move-object/from16 v0, v147

    #@1352
    iget-object v0, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    #@1354
    move-object/from16 v19, v0

    #@1356
    const/16 v22, 0x0

    #@1358
    move/from16 v23, p4

    #@135a
    invoke-static/range {v18 .. v24}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@135d
    move-result-object v24

    #@135e
    .line 3694
    const-string/jumbo v6, ": "

    #@1361
    move-object/from16 v0, v24

    #@1363
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1366
    move-result v6

    #@1367
    if-nez v6, :cond_35

    #@1369
    .line 3695
    const-string/jumbo v6, " realtime"

    #@136c
    move-object/from16 v0, v18

    #@136e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1371
    .line 3697
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1374
    move-result-object v6

    #@1375
    move-object/from16 v0, p2

    #@1377
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@137a
    .line 3685
    :cond_35
    add-int/lit8 v75, v75, 0x1

    #@137c
    goto :goto_14

    #@137d
    .line 3700
    .end local v24    # "linePrefix":Ljava/lang/String;
    .end local v147    # "timer":Landroid/os/BatteryStats$TimerEntry;
    :cond_36
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@1380
    .line 3704
    .end local v62    # "ent$iterator":Ljava/util/Iterator;
    .end local v90    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    :cond_37
    invoke-virtual/range {v155 .. v155}, Ljava/util/ArrayList;->size()I

    #@1383
    move-result v6

    #@1384
    if-lez v6, :cond_39

    #@1386
    .line 3705
    move-object/from16 v0, v155

    #@1388
    move-object/from16 v1, v154

    #@138a
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@138d
    .line 3706
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1390
    const-string/jumbo v6, "  All partial wake locks:"

    #@1393
    move-object/from16 v0, p2

    #@1395
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1398
    .line 3707
    const/16 v75, 0x0

    #@139a
    :goto_15
    invoke-virtual/range {v155 .. v155}, Ljava/util/ArrayList;->size()I

    #@139d
    move-result v6

    #@139e
    move/from16 v0, v75

    #@13a0
    if-ge v0, v6, :cond_38

    #@13a2
    .line 3708
    move-object/from16 v0, v155

    #@13a4
    move/from16 v1, v75

    #@13a6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13a9
    move-result-object v147

    #@13aa
    check-cast v147, Landroid/os/BatteryStats$TimerEntry;

    #@13ac
    .line 3709
    .restart local v147    # "timer":Landroid/os/BatteryStats$TimerEntry;
    const/4 v6, 0x0

    #@13ad
    move-object/from16 v0, v18

    #@13af
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@13b2
    .line 3710
    const-string/jumbo v6, "  Wake lock "

    #@13b5
    move-object/from16 v0, v18

    #@13b7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13ba
    .line 3711
    move-object/from16 v0, v147

    #@13bc
    iget v6, v0, Landroid/os/BatteryStats$TimerEntry;->mId:I

    #@13be
    move-object/from16 v0, v18

    #@13c0
    invoke-static {v0, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    #@13c3
    .line 3712
    const-string/jumbo v6, " "

    #@13c6
    move-object/from16 v0, v18

    #@13c8
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13cb
    .line 3713
    move-object/from16 v0, v147

    #@13cd
    iget-object v6, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    #@13cf
    move-object/from16 v0, v18

    #@13d1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d4
    .line 3714
    move-object/from16 v0, v147

    #@13d6
    iget-object v0, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    #@13d8
    move-object/from16 v27, v0

    #@13da
    const-string/jumbo v32, ": "

    #@13dd
    const/16 v30, 0x0

    #@13df
    move-object/from16 v26, v18

    #@13e1
    move-wide/from16 v28, v20

    #@13e3
    move/from16 v31, p4

    #@13e5
    invoke-static/range {v26 .. v32}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@13e8
    .line 3715
    const-string/jumbo v6, " realtime"

    #@13eb
    move-object/from16 v0, v18

    #@13ed
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f0
    .line 3716
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13f3
    move-result-object v6

    #@13f4
    move-object/from16 v0, p2

    #@13f6
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13f9
    .line 3707
    add-int/lit8 v75, v75, 0x1

    #@13fb
    goto :goto_15

    #@13fc
    .line 3718
    .end local v147    # "timer":Landroid/os/BatteryStats$TimerEntry;
    :cond_38
    invoke-virtual/range {v155 .. v155}, Ljava/util/ArrayList;->clear()V

    #@13ff
    .line 3719
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@1402
    .line 3722
    :cond_39
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    #@1405
    move-result-object v195

    #@1406
    .line 3723
    .local v195, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v195 .. v195}, Ljava/util/Map;->size()I

    #@1409
    move-result v6

    #@140a
    if-lez v6, :cond_3c

    #@140c
    .line 3724
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@140f
    const-string/jumbo v6, "  All wakeup reasons:"

    #@1412
    move-object/from16 v0, p2

    #@1414
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1417
    .line 3725
    new-instance v134, Ljava/util/ArrayList;

    #@1419
    invoke-direct/range {v134 .. v134}, Ljava/util/ArrayList;-><init>()V

    #@141c
    .line 3726
    .local v134, "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-interface/range {v195 .. v195}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@141f
    move-result-object v6

    #@1420
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1423
    move-result-object v62

    #@1424
    .restart local v62    # "ent$iterator":Ljava/util/Iterator;
    :goto_16
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    #@1427
    move-result v6

    #@1428
    if-eqz v6, :cond_3a

    #@142a
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@142d
    move-result-object v61

    #@142e
    check-cast v61, Ljava/util/Map$Entry;

    #@1430
    .line 3727
    .restart local v61    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v61 .. v61}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1433
    move-result-object v15

    #@1434
    check-cast v15, Landroid/os/BatteryStats$Timer;

    #@1436
    .line 3728
    .restart local v15    # "timer":Landroid/os/BatteryStats$Timer;
    new-instance v26, Landroid/os/BatteryStats$TimerEntry;

    #@1438
    invoke-interface/range {v61 .. v61}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@143b
    move-result-object v27

    #@143c
    check-cast v27, Ljava/lang/String;

    #@143e
    .line 3729
    move/from16 v0, p4

    #@1440
    invoke-virtual {v15, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@1443
    move-result v6

    #@1444
    int-to-long v0, v6

    #@1445
    move-wide/from16 v30, v0

    #@1447
    .line 3728
    const/16 v28, 0x0

    #@1449
    move-object/from16 v29, v15

    #@144b
    invoke-direct/range {v26 .. v31}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    #@144e
    move-object/from16 v0, v134

    #@1450
    move-object/from16 v1, v26

    #@1452
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1455
    goto :goto_16

    #@1456
    .line 3731
    .end local v15    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v61    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_3a
    move-object/from16 v0, v134

    #@1458
    move-object/from16 v1, v154

    #@145a
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@145d
    .line 3732
    const/16 v75, 0x0

    #@145f
    :goto_17
    invoke-virtual/range {v134 .. v134}, Ljava/util/ArrayList;->size()I

    #@1462
    move-result v6

    #@1463
    move/from16 v0, v75

    #@1465
    if-ge v0, v6, :cond_3b

    #@1467
    .line 3733
    move-object/from16 v0, v134

    #@1469
    move/from16 v1, v75

    #@146b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@146e
    move-result-object v147

    #@146f
    check-cast v147, Landroid/os/BatteryStats$TimerEntry;

    #@1471
    .line 3734
    .restart local v147    # "timer":Landroid/os/BatteryStats$TimerEntry;
    const-string/jumbo v24, ": "

    #@1474
    .line 3735
    .restart local v24    # "linePrefix":Ljava/lang/String;
    const/4 v6, 0x0

    #@1475
    move-object/from16 v0, v18

    #@1477
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@147a
    .line 3736
    move-object/from16 v0, v18

    #@147c
    move-object/from16 v1, p3

    #@147e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1481
    .line 3737
    const-string/jumbo v6, "  Wakeup reason "

    #@1484
    move-object/from16 v0, v18

    #@1486
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1489
    .line 3738
    move-object/from16 v0, v147

    #@148b
    iget-object v6, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    #@148d
    move-object/from16 v0, v18

    #@148f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1492
    .line 3739
    move-object/from16 v0, v147

    #@1494
    iget-object v0, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    #@1496
    move-object/from16 v27, v0

    #@1498
    const-string/jumbo v32, ": "

    #@149b
    const/16 v30, 0x0

    #@149d
    move-object/from16 v26, v18

    #@149f
    move-wide/from16 v28, v20

    #@14a1
    move/from16 v31, p4

    #@14a3
    invoke-static/range {v26 .. v32}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@14a6
    .line 3740
    const-string/jumbo v6, " realtime"

    #@14a9
    move-object/from16 v0, v18

    #@14ab
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14ae
    .line 3741
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14b1
    move-result-object v6

    #@14b2
    move-object/from16 v0, p2

    #@14b4
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14b7
    .line 3732
    add-int/lit8 v75, v75, 0x1

    #@14b9
    goto :goto_17

    #@14ba
    .line 3743
    .end local v24    # "linePrefix":Ljava/lang/String;
    .end local v147    # "timer":Landroid/os/BatteryStats$TimerEntry;
    :cond_3b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@14bd
    .line 3747
    .end local v62    # "ent$iterator":Ljava/util/Iterator;
    .end local v89    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v134    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v195    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_3c
    const/16 v85, 0x0

    #@14bf
    :goto_18
    move/from16 v0, v85

    #@14c1
    move/from16 v1, v34

    #@14c3
    if-ge v0, v1, :cond_7e

    #@14c5
    .line 3748
    move-object/from16 v0, v178

    #@14c7
    move/from16 v1, v85

    #@14c9
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@14cc
    move-result v173

    #@14cd
    .line 3749
    .local v173, "uid":I
    if-ltz p5, :cond_3e

    #@14cf
    move/from16 v0, v173

    #@14d1
    move/from16 v1, p5

    #@14d3
    if-eq v0, v1, :cond_3e

    #@14d5
    const/16 v6, 0x3e8

    #@14d7
    move/from16 v0, v173

    #@14d9
    if-eq v0, v6, :cond_3e

    #@14db
    .line 3747
    :cond_3d
    :goto_19
    add-int/lit8 v85, v85, 0x1

    #@14dd
    goto :goto_18

    #@14de
    .line 3753
    :cond_3e
    move-object/from16 v0, v178

    #@14e0
    move/from16 v1, v85

    #@14e2
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@14e5
    move-result-object v172

    #@14e6
    check-cast v172, Landroid/os/BatteryStats$Uid;

    #@14e8
    .line 3755
    .restart local v172    # "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14eb
    .line 3756
    const-string/jumbo v6, "  "

    #@14ee
    move-object/from16 v0, p2

    #@14f0
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14f3
    .line 3757
    move-object/from16 v0, p2

    #@14f5
    move/from16 v1, v173

    #@14f7
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@14fa
    .line 3758
    const-string/jumbo v6, ":"

    #@14fd
    move-object/from16 v0, p2

    #@14ff
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1502
    .line 3759
    const/16 v174, 0x0

    #@1504
    .line 3761
    .local v174, "uidActivity":Z
    const/4 v6, 0x0

    #@1505
    move-object/from16 v0, v172

    #@1507
    move/from16 v1, p4

    #@1509
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@150c
    move-result-wide v98

    #@150d
    .line 3762
    .local v98, "mobileRxBytes":J
    const/4 v6, 0x1

    #@150e
    move-object/from16 v0, v172

    #@1510
    move/from16 v1, p4

    #@1512
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@1515
    move-result-wide v106

    #@1516
    .line 3763
    .local v106, "mobileTxBytes":J
    const/4 v6, 0x2

    #@1517
    move-object/from16 v0, v172

    #@1519
    move/from16 v1, p4

    #@151b
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@151e
    move-result-wide v212

    #@151f
    .line 3764
    .local v212, "wifiRxBytes":J
    const/4 v6, 0x3

    #@1520
    move-object/from16 v0, v172

    #@1522
    move/from16 v1, p4

    #@1524
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@1527
    move-result-wide v228

    #@1528
    .line 3765
    .local v228, "wifiTxBytes":J
    const/4 v6, 0x0

    #@1529
    move-object/from16 v0, v172

    #@152b
    move/from16 v1, p4

    #@152d
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@1530
    move-result-wide v100

    #@1531
    .line 3766
    .local v100, "mobileRxPackets":J
    const/4 v6, 0x1

    #@1532
    move-object/from16 v0, v172

    #@1534
    move/from16 v1, p4

    #@1536
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@1539
    move-result-wide v108

    #@153a
    .line 3767
    .local v108, "mobileTxPackets":J
    move-object/from16 v0, v172

    #@153c
    move/from16 v1, p4

    #@153e
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    #@1541
    move-result-wide v176

    #@1542
    .line 3768
    .local v176, "uidMobileActiveTime":J
    move-object/from16 v0, v172

    #@1544
    move/from16 v1, p4

    #@1546
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    #@1549
    move-result v175

    #@154a
    .line 3769
    .local v175, "uidMobileActiveCount":I
    const/4 v6, 0x2

    #@154b
    move-object/from16 v0, v172

    #@154d
    move/from16 v1, p4

    #@154f
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@1552
    move-result-wide v214

    #@1553
    .line 3770
    .local v214, "wifiRxPackets":J
    const/4 v6, 0x3

    #@1554
    move-object/from16 v0, v172

    #@1556
    move/from16 v1, p4

    #@1558
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@155b
    move-result-wide v230

    #@155c
    .line 3771
    .local v230, "wifiTxPackets":J
    move-object/from16 v0, v172

    #@155e
    move-wide/from16 v1, v20

    #@1560
    move/from16 v3, p4

    #@1562
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    #@1565
    move-result-wide v70

    #@1566
    .line 3772
    .local v70, "fullWifiLockOnTime":J
    move-object/from16 v0, v172

    #@1568
    move-wide/from16 v1, v20

    #@156a
    move/from16 v3, p4

    #@156c
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    #@156f
    move-result-wide v224

    #@1570
    .line 3773
    .local v224, "wifiScanTime":J
    move-object/from16 v0, v172

    #@1572
    move/from16 v1, p4

    #@1574
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    #@1577
    move-result v222

    #@1578
    .line 3774
    .local v222, "wifiScanCount":I
    move-object/from16 v0, v172

    #@157a
    move-wide/from16 v1, v20

    #@157c
    move/from16 v3, p4

    #@157e
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    #@1581
    move-result-wide v182

    #@1582
    .line 3776
    .local v182, "uidWifiRunningTime":J
    const-wide/16 v6, 0x0

    #@1584
    cmp-long v6, v98, v6

    #@1586
    if-gtz v6, :cond_3f

    #@1588
    const-wide/16 v6, 0x0

    #@158a
    cmp-long v6, v106, v6

    #@158c
    if-lez v6, :cond_4a

    #@158e
    .line 3778
    :cond_3f
    :goto_1a
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1591
    const-string/jumbo v6, "    Mobile network: "

    #@1594
    move-object/from16 v0, p2

    #@1596
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1599
    .line 3779
    move-object/from16 v0, p0

    #@159b
    move-wide/from16 v1, v98

    #@159d
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@15a0
    move-result-object v6

    #@15a1
    move-object/from16 v0, p2

    #@15a3
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15a6
    const-string/jumbo v6, " received, "

    #@15a9
    move-object/from16 v0, p2

    #@15ab
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15ae
    .line 3780
    move-object/from16 v0, p0

    #@15b0
    move-wide/from16 v1, v106

    #@15b2
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@15b5
    move-result-object v6

    #@15b6
    move-object/from16 v0, p2

    #@15b8
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15bb
    .line 3781
    const-string/jumbo v6, " sent (packets "

    #@15be
    move-object/from16 v0, p2

    #@15c0
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15c3
    move-object/from16 v0, p2

    #@15c5
    move-wide/from16 v1, v100

    #@15c7
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@15ca
    .line 3782
    const-string/jumbo v6, " received, "

    #@15cd
    move-object/from16 v0, p2

    #@15cf
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15d2
    move-object/from16 v0, p2

    #@15d4
    move-wide/from16 v1, v108

    #@15d6
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@15d9
    const-string/jumbo v6, " sent)"

    #@15dc
    move-object/from16 v0, p2

    #@15de
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15e1
    .line 3784
    :cond_40
    const-wide/16 v6, 0x0

    #@15e3
    cmp-long v6, v176, v6

    #@15e5
    if-gtz v6, :cond_41

    #@15e7
    if-lez v175, :cond_43

    #@15e9
    .line 3785
    :cond_41
    const/4 v6, 0x0

    #@15ea
    move-object/from16 v0, v18

    #@15ec
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@15ef
    .line 3786
    move-object/from16 v0, v18

    #@15f1
    move-object/from16 v1, p3

    #@15f3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15f6
    const-string/jumbo v6, "    Mobile radio active: "

    #@15f9
    move-object/from16 v0, v18

    #@15fb
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15fe
    .line 3787
    const-wide/16 v6, 0x3e8

    #@1600
    div-long v6, v176, v6

    #@1602
    move-object/from16 v0, v18

    #@1604
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1607
    .line 3788
    const-string/jumbo v6, "("

    #@160a
    move-object/from16 v0, v18

    #@160c
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160f
    .line 3789
    move-object/from16 v0, p0

    #@1611
    move-wide/from16 v1, v176

    #@1613
    move-wide/from16 v3, v94

    #@1615
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@1618
    move-result-object v6

    #@1619
    move-object/from16 v0, v18

    #@161b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161e
    .line 3790
    const-string/jumbo v6, ") "

    #@1621
    move-object/from16 v0, v18

    #@1623
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1626
    move-object/from16 v0, v18

    #@1628
    move/from16 v1, v175

    #@162a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@162d
    const-string/jumbo v6, "x"

    #@1630
    move-object/from16 v0, v18

    #@1632
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1635
    .line 3791
    add-long v120, v100, v108

    #@1637
    .line 3792
    .local v120, "packets":J
    const-wide/16 v6, 0x0

    #@1639
    cmp-long v6, v120, v6

    #@163b
    if-nez v6, :cond_42

    #@163d
    .line 3793
    const-wide/16 v120, 0x1

    #@163f
    .line 3795
    :cond_42
    const-string/jumbo v6, " @ "

    #@1642
    move-object/from16 v0, v18

    #@1644
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1647
    .line 3796
    const-wide/16 v6, 0x3e8

    #@1649
    div-long v6, v176, v6

    #@164b
    long-to-double v6, v6

    #@164c
    move-wide/from16 v0, v120

    #@164e
    long-to-double v12, v0

    #@164f
    div-double/2addr v6, v12

    #@1650
    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    #@1653
    move-result-object v6

    #@1654
    move-object/from16 v0, v18

    #@1656
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1659
    .line 3797
    const-string/jumbo v6, " mspp"

    #@165c
    move-object/from16 v0, v18

    #@165e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1661
    .line 3798
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1664
    move-result-object v6

    #@1665
    move-object/from16 v0, p2

    #@1667
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@166a
    .line 3801
    .end local v120    # "packets":J
    :cond_43
    const-wide/16 v6, 0x0

    #@166c
    cmp-long v6, v212, v6

    #@166e
    if-gtz v6, :cond_44

    #@1670
    const-wide/16 v6, 0x0

    #@1672
    cmp-long v6, v228, v6

    #@1674
    if-lez v6, :cond_4b

    #@1676
    .line 3802
    :cond_44
    :goto_1b
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1679
    const-string/jumbo v6, "    Wi-Fi network: "

    #@167c
    move-object/from16 v0, p2

    #@167e
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1681
    .line 3803
    move-object/from16 v0, p0

    #@1683
    move-wide/from16 v1, v212

    #@1685
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@1688
    move-result-object v6

    #@1689
    move-object/from16 v0, p2

    #@168b
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@168e
    const-string/jumbo v6, " received, "

    #@1691
    move-object/from16 v0, p2

    #@1693
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1696
    .line 3804
    move-object/from16 v0, p0

    #@1698
    move-wide/from16 v1, v228

    #@169a
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    #@169d
    move-result-object v6

    #@169e
    move-object/from16 v0, p2

    #@16a0
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16a3
    .line 3805
    const-string/jumbo v6, " sent (packets "

    #@16a6
    move-object/from16 v0, p2

    #@16a8
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16ab
    move-object/from16 v0, p2

    #@16ad
    move-wide/from16 v1, v214

    #@16af
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@16b2
    .line 3806
    const-string/jumbo v6, " received, "

    #@16b5
    move-object/from16 v0, p2

    #@16b7
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16ba
    move-object/from16 v0, p2

    #@16bc
    move-wide/from16 v1, v230

    #@16be
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@16c1
    const-string/jumbo v6, " sent)"

    #@16c4
    move-object/from16 v0, p2

    #@16c6
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16c9
    .line 3809
    :cond_45
    const-wide/16 v6, 0x0

    #@16cb
    cmp-long v6, v70, v6

    #@16cd
    if-nez v6, :cond_46

    #@16cf
    const-wide/16 v6, 0x0

    #@16d1
    cmp-long v6, v224, v6

    #@16d3
    if-eqz v6, :cond_4c

    #@16d5
    .line 3811
    :cond_46
    :goto_1c
    const/4 v6, 0x0

    #@16d6
    move-object/from16 v0, v18

    #@16d8
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@16db
    .line 3812
    move-object/from16 v0, v18

    #@16dd
    move-object/from16 v1, p3

    #@16df
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e2
    const-string/jumbo v6, "    Wifi Running: "

    #@16e5
    move-object/from16 v0, v18

    #@16e7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16ea
    .line 3813
    const-wide/16 v6, 0x3e8

    #@16ec
    div-long v6, v182, v6

    #@16ee
    move-object/from16 v0, v18

    #@16f0
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@16f3
    .line 3814
    const-string/jumbo v6, "("

    #@16f6
    move-object/from16 v0, v18

    #@16f8
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16fb
    move-object/from16 v0, p0

    #@16fd
    move-wide/from16 v1, v182

    #@16ff
    move-wide/from16 v3, v196

    #@1701
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@1704
    move-result-object v6

    #@1705
    move-object/from16 v0, v18

    #@1707
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@170a
    .line 3815
    const-string/jumbo v6, ")\n"

    #@170d
    move-object/from16 v0, v18

    #@170f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1712
    .line 3816
    move-object/from16 v0, v18

    #@1714
    move-object/from16 v1, p3

    #@1716
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1719
    const-string/jumbo v6, "    Full Wifi Lock: "

    #@171c
    move-object/from16 v0, v18

    #@171e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1721
    .line 3817
    const-wide/16 v6, 0x3e8

    #@1723
    div-long v6, v70, v6

    #@1725
    move-object/from16 v0, v18

    #@1727
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@172a
    .line 3818
    const-string/jumbo v6, "("

    #@172d
    move-object/from16 v0, v18

    #@172f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1732
    move-object/from16 v0, p0

    #@1734
    move-wide/from16 v1, v70

    #@1736
    move-wide/from16 v3, v196

    #@1738
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@173b
    move-result-object v6

    #@173c
    move-object/from16 v0, v18

    #@173e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1741
    .line 3819
    const-string/jumbo v6, ")\n"

    #@1744
    move-object/from16 v0, v18

    #@1746
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1749
    .line 3820
    move-object/from16 v0, v18

    #@174b
    move-object/from16 v1, p3

    #@174d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1750
    const-string/jumbo v6, "    Wifi Scan: "

    #@1753
    move-object/from16 v0, v18

    #@1755
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1758
    .line 3821
    const-wide/16 v6, 0x3e8

    #@175a
    div-long v6, v224, v6

    #@175c
    move-object/from16 v0, v18

    #@175e
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1761
    .line 3822
    const-string/jumbo v6, "("

    #@1764
    move-object/from16 v0, v18

    #@1766
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1769
    move-object/from16 v0, p0

    #@176b
    move-wide/from16 v1, v224

    #@176d
    move-wide/from16 v3, v196

    #@176f
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@1772
    move-result-object v6

    #@1773
    move-object/from16 v0, v18

    #@1775
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1778
    .line 3823
    const-string/jumbo v6, ") "

    #@177b
    move-object/from16 v0, v18

    #@177d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1780
    .line 3824
    move-object/from16 v0, v18

    #@1782
    move/from16 v1, v222

    #@1784
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1787
    .line 3825
    const-string/jumbo v6, "x"

    #@178a
    move-object/from16 v0, v18

    #@178c
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@178f
    .line 3826
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1792
    move-result-object v6

    #@1793
    move-object/from16 v0, p2

    #@1795
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1798
    .line 3829
    :cond_47
    const/4 v6, 0x0

    #@1799
    move-object/from16 v0, v172

    #@179b
    move/from16 v1, p4

    #@179d
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity(II)J

    #@17a0
    move-result-wide v180

    #@17a1
    .line 3830
    .local v180, "uidWifiIdleTimeMs":J
    const/4 v6, 0x1

    #@17a2
    move-object/from16 v0, v172

    #@17a4
    move/from16 v1, p4

    #@17a6
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity(II)J

    #@17a9
    move-result-wide v184

    #@17aa
    .line 3831
    .local v184, "uidWifiRxTimeMs":J
    const/4 v6, 0x2

    #@17ab
    move-object/from16 v0, v172

    #@17ad
    move/from16 v1, p4

    #@17af
    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity(II)J

    #@17b2
    move-result-wide v188

    #@17b3
    .line 3832
    .local v188, "uidWifiTxTimeMs":J
    add-long v6, v180, v184

    #@17b5
    add-long v186, v6, v188

    #@17b7
    .line 3833
    .local v186, "uidWifiTotalTimeMs":J
    const-wide/16 v6, 0x0

    #@17b9
    cmp-long v6, v186, v6

    #@17bb
    if-lez v6, :cond_48

    #@17bd
    .line 3834
    const/4 v6, 0x0

    #@17be
    move-object/from16 v0, v18

    #@17c0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@17c3
    .line 3835
    move-object/from16 v0, v18

    #@17c5
    move-object/from16 v1, p3

    #@17c7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17ca
    move-result-object v6

    #@17cb
    const-string/jumbo v7, "    WiFi Idle time: "

    #@17ce
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d1
    .line 3836
    move-object/from16 v0, v18

    #@17d3
    move-wide/from16 v1, v180

    #@17d5
    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@17d8
    .line 3837
    const-string/jumbo v6, "("

    #@17db
    move-object/from16 v0, v18

    #@17dd
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e0
    move-result-object v6

    #@17e1
    move-object/from16 v0, p0

    #@17e3
    move-wide/from16 v1, v180

    #@17e5
    move-wide/from16 v3, v186

    #@17e7
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@17ea
    move-result-object v7

    #@17eb
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17ee
    move-result-object v6

    #@17ef
    .line 3838
    const-string/jumbo v7, ")\n"

    #@17f2
    .line 3837
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f5
    .line 3840
    move-object/from16 v0, v18

    #@17f7
    move-object/from16 v1, p3

    #@17f9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17fc
    move-result-object v6

    #@17fd
    const-string/jumbo v7, "    WiFi Rx time:   "

    #@1800
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1803
    move-object/from16 v0, v18

    #@1805
    move-wide/from16 v1, v184

    #@1807
    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@180a
    .line 3841
    const-string/jumbo v6, "("

    #@180d
    move-object/from16 v0, v18

    #@180f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1812
    move-result-object v6

    #@1813
    move-object/from16 v0, p0

    #@1815
    move-wide/from16 v1, v184

    #@1817
    move-wide/from16 v3, v186

    #@1819
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@181c
    move-result-object v7

    #@181d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1820
    move-result-object v6

    #@1821
    .line 3842
    const-string/jumbo v7, ")\n"

    #@1824
    .line 3841
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1827
    .line 3844
    move-object/from16 v0, v18

    #@1829
    move-object/from16 v1, p3

    #@182b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182e
    move-result-object v6

    #@182f
    const-string/jumbo v7, "    WiFi Tx time:   "

    #@1832
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1835
    move-object/from16 v0, v18

    #@1837
    move-wide/from16 v1, v188

    #@1839
    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@183c
    .line 3845
    const-string/jumbo v6, "("

    #@183f
    move-object/from16 v0, v18

    #@1841
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1844
    move-result-object v6

    #@1845
    move-object/from16 v0, p0

    #@1847
    move-wide/from16 v1, v188

    #@1849
    move-wide/from16 v3, v186

    #@184b
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    #@184e
    move-result-object v7

    #@184f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1852
    move-result-object v6

    #@1853
    .line 3846
    const-string/jumbo v7, ")"

    #@1856
    .line 3845
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1859
    .line 3847
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@185c
    move-result-object v6

    #@185d
    move-object/from16 v0, p2

    #@185f
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1862
    .line 3850
    :cond_48
    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    #@1865
    move-result v6

    #@1866
    if-eqz v6, :cond_4f

    #@1868
    .line 3851
    const/16 v72, 0x0

    #@186a
    .line 3852
    .local v72, "hasData":Z
    const/16 v75, 0x0

    #@186c
    :goto_1d
    const/4 v6, 0x3

    #@186d
    move/from16 v0, v75

    #@186f
    if-ge v0, v6, :cond_4e

    #@1871
    .line 3853
    move-object/from16 v0, v172

    #@1873
    move/from16 v1, v75

    #@1875
    move/from16 v2, p4

    #@1877
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    #@187a
    move-result v179

    #@187b
    .line 3854
    .local v179, "val":I
    if-eqz v179, :cond_49

    #@187d
    .line 3855
    if-nez v72, :cond_4d

    #@187f
    .line 3856
    const/4 v6, 0x0

    #@1880
    move-object/from16 v0, v18

    #@1882
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1885
    .line 3857
    const-string/jumbo v6, "    User activity: "

    #@1888
    move-object/from16 v0, v18

    #@188a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188d
    .line 3858
    const/16 v72, 0x1

    #@188f
    .line 3862
    :goto_1e
    move-object/from16 v0, v18

    #@1891
    move/from16 v1, v179

    #@1893
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1896
    .line 3863
    const-string/jumbo v6, " "

    #@1899
    move-object/from16 v0, v18

    #@189b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189e
    .line 3864
    sget-object v6, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    #@18a0
    aget-object v6, v6, v75

    #@18a2
    move-object/from16 v0, v18

    #@18a4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18a7
    .line 3852
    :cond_49
    add-int/lit8 v75, v75, 0x1

    #@18a9
    goto :goto_1d

    #@18aa
    .line 3777
    .end local v72    # "hasData":Z
    .end local v179    # "val":I
    .end local v180    # "uidWifiIdleTimeMs":J
    .end local v184    # "uidWifiRxTimeMs":J
    .end local v186    # "uidWifiTotalTimeMs":J
    .end local v188    # "uidWifiTxTimeMs":J
    :cond_4a
    const-wide/16 v6, 0x0

    #@18ac
    cmp-long v6, v100, v6

    #@18ae
    if-gtz v6, :cond_3f

    #@18b0
    const-wide/16 v6, 0x0

    #@18b2
    cmp-long v6, v108, v6

    #@18b4
    if-lez v6, :cond_40

    #@18b6
    goto/16 :goto_1a

    #@18b8
    .line 3801
    :cond_4b
    const-wide/16 v6, 0x0

    #@18ba
    cmp-long v6, v214, v6

    #@18bc
    if-gtz v6, :cond_44

    #@18be
    const-wide/16 v6, 0x0

    #@18c0
    cmp-long v6, v230, v6

    #@18c2
    if-lez v6, :cond_45

    #@18c4
    goto/16 :goto_1b

    #@18c6
    .line 3809
    :cond_4c
    if-nez v222, :cond_46

    #@18c8
    .line 3810
    const-wide/16 v6, 0x0

    #@18ca
    cmp-long v6, v182, v6

    #@18cc
    if-eqz v6, :cond_47

    #@18ce
    goto/16 :goto_1c

    #@18d0
    .line 3860
    .restart local v72    # "hasData":Z
    .restart local v179    # "val":I
    .restart local v180    # "uidWifiIdleTimeMs":J
    .restart local v184    # "uidWifiRxTimeMs":J
    .restart local v186    # "uidWifiTotalTimeMs":J
    .restart local v188    # "uidWifiTxTimeMs":J
    :cond_4d
    const-string/jumbo v6, ", "

    #@18d3
    move-object/from16 v0, v18

    #@18d5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d8
    goto :goto_1e

    #@18d9
    .line 3867
    .end local v179    # "val":I
    :cond_4e
    if-eqz v72, :cond_4f

    #@18db
    .line 3868
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18de
    move-result-object v6

    #@18df
    move-object/from16 v0, p2

    #@18e1
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18e4
    .line 3873
    .end local v72    # "hasData":Z
    :cond_4f
    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    #@18e7
    move-result-object v194

    #@18e8
    .line 3874
    .restart local v194    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    const-wide/16 v158, 0x0

    #@18ea
    .local v158, "totalFullWakelock":J
    const-wide/16 v160, 0x0

    #@18ec
    .local v160, "totalPartialWakelock":J
    const-wide/16 v170, 0x0

    #@18ee
    .line 3875
    .local v170, "totalWindowWakelock":J
    const-wide/16 v156, 0x0

    #@18f0
    .line 3876
    .local v156, "totalDrawWakelock":J
    const/16 v54, 0x0

    #@18f2
    .line 3877
    .local v54, "countWakelock":I
    invoke-virtual/range {v194 .. v194}, Landroid/util/ArrayMap;->size()I

    #@18f5
    move-result v6

    #@18f6
    add-int/lit8 v86, v6, -0x1

    #@18f8
    .restart local v86    # "iw":I
    :goto_1f
    if-ltz v86, :cond_50

    #@18fa
    .line 3878
    move-object/from16 v0, v194

    #@18fc
    move/from16 v1, v86

    #@18fe
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1901
    move-result-object v223

    #@1902
    check-cast v223, Landroid/os/BatteryStats$Uid$Wakelock;

    #@1904
    .line 3879
    .restart local v223    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const-string/jumbo v24, ": "

    #@1907
    .line 3880
    .restart local v24    # "linePrefix":Ljava/lang/String;
    const/4 v6, 0x0

    #@1908
    move-object/from16 v0, v18

    #@190a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@190d
    .line 3881
    move-object/from16 v0, v18

    #@190f
    move-object/from16 v1, p3

    #@1911
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1914
    .line 3882
    const-string/jumbo v6, "    Wake lock "

    #@1917
    move-object/from16 v0, v18

    #@1919
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@191c
    .line 3883
    move-object/from16 v0, v194

    #@191e
    move/from16 v1, v86

    #@1920
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1923
    move-result-object v6

    #@1924
    check-cast v6, Ljava/lang/String;

    #@1926
    move-object/from16 v0, v18

    #@1928
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@192b
    .line 3884
    const/4 v6, 0x1

    #@192c
    move-object/from16 v0, v223

    #@192e
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@1931
    move-result-object v19

    #@1932
    .line 3885
    const-string/jumbo v22, "full"

    #@1935
    move/from16 v23, p4

    #@1937
    .line 3884
    invoke-static/range {v18 .. v24}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@193a
    move-result-object v24

    #@193b
    .line 3886
    const/4 v6, 0x0

    #@193c
    move-object/from16 v0, v223

    #@193e
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@1941
    move-result-object v19

    #@1942
    .line 3887
    const-string/jumbo v22, "partial"

    #@1945
    move/from16 v23, p4

    #@1947
    .line 3886
    invoke-static/range {v18 .. v24}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@194a
    move-result-object v24

    #@194b
    .line 3888
    const/4 v6, 0x2

    #@194c
    move-object/from16 v0, v223

    #@194e
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@1951
    move-result-object v19

    #@1952
    .line 3889
    const-string/jumbo v22, "window"

    #@1955
    move/from16 v23, p4

    #@1957
    .line 3888
    invoke-static/range {v18 .. v24}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@195a
    move-result-object v24

    #@195b
    .line 3890
    const/16 v6, 0x12

    #@195d
    move-object/from16 v0, v223

    #@195f
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@1962
    move-result-object v19

    #@1963
    .line 3891
    const-string/jumbo v22, "draw"

    #@1966
    move/from16 v23, p4

    #@1968
    .line 3890
    invoke-static/range {v18 .. v24}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@196b
    move-result-object v24

    #@196c
    .line 3892
    const-string/jumbo v6, " realtime"

    #@196f
    move-object/from16 v0, v18

    #@1971
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1974
    .line 3893
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1977
    move-result-object v6

    #@1978
    move-object/from16 v0, p2

    #@197a
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@197d
    .line 3894
    const/16 v174, 0x1

    #@197f
    .line 3895
    add-int/lit8 v54, v54, 0x1

    #@1981
    .line 3897
    const/4 v6, 0x1

    #@1982
    move-object/from16 v0, v223

    #@1984
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@1987
    move-result-object v6

    #@1988
    move-wide/from16 v0, v20

    #@198a
    move/from16 v2, p4

    #@198c
    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    #@198f
    move-result-wide v6

    #@1990
    add-long v158, v158, v6

    #@1992
    .line 3899
    const/4 v6, 0x0

    #@1993
    move-object/from16 v0, v223

    #@1995
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@1998
    move-result-object v6

    #@1999
    move-wide/from16 v0, v20

    #@199b
    move/from16 v2, p4

    #@199d
    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    #@19a0
    move-result-wide v6

    #@19a1
    add-long v160, v160, v6

    #@19a3
    .line 3901
    const/4 v6, 0x2

    #@19a4
    move-object/from16 v0, v223

    #@19a6
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@19a9
    move-result-object v6

    #@19aa
    move-wide/from16 v0, v20

    #@19ac
    move/from16 v2, p4

    #@19ae
    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    #@19b1
    move-result-wide v6

    #@19b2
    add-long v170, v170, v6

    #@19b4
    .line 3903
    const/16 v6, 0x12

    #@19b6
    move-object/from16 v0, v223

    #@19b8
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@19bb
    move-result-object v6

    #@19bc
    move-wide/from16 v0, v20

    #@19be
    move/from16 v2, p4

    #@19c0
    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    #@19c3
    move-result-wide v6

    #@19c4
    add-long v156, v156, v6

    #@19c6
    .line 3877
    add-int/lit8 v86, v86, -0x1

    #@19c8
    goto/16 :goto_1f

    #@19ca
    .line 3906
    .end local v24    # "linePrefix":Ljava/lang/String;
    .end local v223    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_50
    const/4 v6, 0x1

    #@19cb
    move/from16 v0, v54

    #@19cd
    if-le v0, v6, :cond_59

    #@19cf
    .line 3907
    const-wide/16 v6, 0x0

    #@19d1
    cmp-long v6, v158, v6

    #@19d3
    if-nez v6, :cond_51

    #@19d5
    const-wide/16 v6, 0x0

    #@19d7
    cmp-long v6, v160, v6

    #@19d9
    if-eqz v6, :cond_5a

    #@19db
    .line 3909
    :cond_51
    :goto_20
    const/4 v6, 0x0

    #@19dc
    move-object/from16 v0, v18

    #@19de
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@19e1
    .line 3910
    move-object/from16 v0, v18

    #@19e3
    move-object/from16 v1, p3

    #@19e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e8
    .line 3911
    const-string/jumbo v6, "    TOTAL wake: "

    #@19eb
    move-object/from16 v0, v18

    #@19ed
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f0
    .line 3912
    const/16 v114, 0x0

    #@19f2
    .line 3913
    .local v114, "needComma":Z
    const-wide/16 v6, 0x0

    #@19f4
    cmp-long v6, v158, v6

    #@19f6
    if-eqz v6, :cond_52

    #@19f8
    .line 3914
    const/16 v114, 0x1

    #@19fa
    .line 3915
    move-object/from16 v0, v18

    #@19fc
    move-wide/from16 v1, v158

    #@19fe
    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1a01
    .line 3916
    const-string/jumbo v6, "full"

    #@1a04
    move-object/from16 v0, v18

    #@1a06
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a09
    .line 3918
    :cond_52
    const-wide/16 v6, 0x0

    #@1a0b
    cmp-long v6, v160, v6

    #@1a0d
    if-eqz v6, :cond_54

    #@1a0f
    .line 3919
    if-eqz v114, :cond_53

    #@1a11
    .line 3920
    const-string/jumbo v6, ", "

    #@1a14
    move-object/from16 v0, v18

    #@1a16
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a19
    .line 3922
    :cond_53
    const/16 v114, 0x1

    #@1a1b
    .line 3923
    move-object/from16 v0, v18

    #@1a1d
    move-wide/from16 v1, v160

    #@1a1f
    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1a22
    .line 3924
    const-string/jumbo v6, "partial"

    #@1a25
    move-object/from16 v0, v18

    #@1a27
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2a
    .line 3926
    :cond_54
    const-wide/16 v6, 0x0

    #@1a2c
    cmp-long v6, v170, v6

    #@1a2e
    if-eqz v6, :cond_56

    #@1a30
    .line 3927
    if-eqz v114, :cond_55

    #@1a32
    .line 3928
    const-string/jumbo v6, ", "

    #@1a35
    move-object/from16 v0, v18

    #@1a37
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a3a
    .line 3930
    :cond_55
    const/16 v114, 0x1

    #@1a3c
    .line 3931
    move-object/from16 v0, v18

    #@1a3e
    move-wide/from16 v1, v170

    #@1a40
    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1a43
    .line 3932
    const-string/jumbo v6, "window"

    #@1a46
    move-object/from16 v0, v18

    #@1a48
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4b
    .line 3934
    :cond_56
    const-wide/16 v6, 0x0

    #@1a4d
    cmp-long v6, v156, v6

    #@1a4f
    if-eqz v6, :cond_58

    #@1a51
    .line 3935
    if-eqz v114, :cond_57

    #@1a53
    .line 3936
    const-string/jumbo v6, ","

    #@1a56
    move-object/from16 v0, v18

    #@1a58
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5b
    .line 3938
    :cond_57
    const/16 v114, 0x1

    #@1a5d
    .line 3939
    move-object/from16 v0, v18

    #@1a5f
    move-wide/from16 v1, v156

    #@1a61
    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1a64
    .line 3940
    const-string/jumbo v6, "draw"

    #@1a67
    move-object/from16 v0, v18

    #@1a69
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a6c
    .line 3942
    :cond_58
    const-string/jumbo v6, " realtime"

    #@1a6f
    move-object/from16 v0, v18

    #@1a71
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a74
    .line 3943
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a77
    move-result-object v6

    #@1a78
    move-object/from16 v0, p2

    #@1a7a
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a7d
    .line 3947
    .end local v114    # "needComma":Z
    :cond_59
    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    #@1a80
    move-result-object v146

    #@1a81
    .line 3948
    .local v146, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v146 .. v146}, Landroid/util/ArrayMap;->size()I

    #@1a84
    move-result v6

    #@1a85
    add-int/lit8 v84, v6, -0x1

    #@1a87
    .local v84, "isy":I
    :goto_21
    if-ltz v84, :cond_5c

    #@1a89
    .line 3949
    move-object/from16 v0, v146

    #@1a8b
    move/from16 v1, v84

    #@1a8d
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1a90
    move-result-object v15

    #@1a91
    check-cast v15, Landroid/os/BatteryStats$Timer;

    #@1a93
    .line 3951
    .restart local v15    # "timer":Landroid/os/BatteryStats$Timer;
    move-wide/from16 v0, v20

    #@1a95
    move/from16 v2, p4

    #@1a97
    invoke-virtual {v15, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@1a9a
    move-result-wide v6

    #@1a9b
    const-wide/16 v12, 0x1f4

    #@1a9d
    add-long/2addr v6, v12

    #@1a9e
    const-wide/16 v12, 0x3e8

    #@1aa0
    div-long v166, v6, v12

    #@1aa2
    .line 3952
    .restart local v166    # "totalTime":J
    move/from16 v0, p4

    #@1aa4
    invoke-virtual {v15, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@1aa7
    move-result v53

    #@1aa8
    .line 3953
    .local v53, "count":I
    const/4 v6, 0x0

    #@1aa9
    move-object/from16 v0, v18

    #@1aab
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1aae
    .line 3954
    move-object/from16 v0, v18

    #@1ab0
    move-object/from16 v1, p3

    #@1ab2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab5
    .line 3955
    const-string/jumbo v6, "    Sync "

    #@1ab8
    move-object/from16 v0, v18

    #@1aba
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1abd
    .line 3956
    move-object/from16 v0, v146

    #@1abf
    move/from16 v1, v84

    #@1ac1
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1ac4
    move-result-object v6

    #@1ac5
    check-cast v6, Ljava/lang/String;

    #@1ac7
    move-object/from16 v0, v18

    #@1ac9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1acc
    .line 3957
    const-string/jumbo v6, ": "

    #@1acf
    move-object/from16 v0, v18

    #@1ad1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad4
    .line 3958
    const-wide/16 v6, 0x0

    #@1ad6
    cmp-long v6, v166, v6

    #@1ad8
    if-eqz v6, :cond_5b

    #@1ada
    .line 3959
    move-object/from16 v0, v18

    #@1adc
    move-wide/from16 v1, v166

    #@1ade
    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1ae1
    .line 3960
    const-string/jumbo v6, "realtime ("

    #@1ae4
    move-object/from16 v0, v18

    #@1ae6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae9
    .line 3961
    move-object/from16 v0, v18

    #@1aeb
    move/from16 v1, v53

    #@1aed
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1af0
    .line 3962
    const-string/jumbo v6, " times)"

    #@1af3
    move-object/from16 v0, v18

    #@1af5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af8
    .line 3966
    :goto_22
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1afb
    move-result-object v6

    #@1afc
    move-object/from16 v0, p2

    #@1afe
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b01
    .line 3967
    const/16 v174, 0x1

    #@1b03
    .line 3948
    add-int/lit8 v84, v84, -0x1

    #@1b05
    goto :goto_21

    #@1b06
    .line 3908
    .end local v15    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v53    # "count":I
    .end local v84    # "isy":I
    .end local v146    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v166    # "totalTime":J
    :cond_5a
    const-wide/16 v6, 0x0

    #@1b08
    cmp-long v6, v170, v6

    #@1b0a
    if-eqz v6, :cond_59

    #@1b0c
    goto/16 :goto_20

    #@1b0e
    .line 3964
    .restart local v15    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v53    # "count":I
    .restart local v84    # "isy":I
    .restart local v146    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v166    # "totalTime":J
    :cond_5b
    const-string/jumbo v6, "(not used)"

    #@1b11
    move-object/from16 v0, v18

    #@1b13
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b16
    goto :goto_22

    #@1b17
    .line 3970
    .end local v15    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v53    # "count":I
    .end local v166    # "totalTime":J
    :cond_5c
    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    #@1b1a
    move-result-object v88

    #@1b1b
    .line 3971
    .local v88, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v88 .. v88}, Landroid/util/ArrayMap;->size()I

    #@1b1e
    move-result v6

    #@1b1f
    add-int/lit8 v76, v6, -0x1

    #@1b21
    .local v76, "ij":I
    :goto_23
    if-ltz v76, :cond_5e

    #@1b23
    .line 3972
    move-object/from16 v0, v88

    #@1b25
    move/from16 v1, v76

    #@1b27
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1b2a
    move-result-object v15

    #@1b2b
    check-cast v15, Landroid/os/BatteryStats$Timer;

    #@1b2d
    .line 3974
    .restart local v15    # "timer":Landroid/os/BatteryStats$Timer;
    move-wide/from16 v0, v20

    #@1b2f
    move/from16 v2, p4

    #@1b31
    invoke-virtual {v15, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@1b34
    move-result-wide v6

    #@1b35
    const-wide/16 v12, 0x1f4

    #@1b37
    add-long/2addr v6, v12

    #@1b38
    const-wide/16 v12, 0x3e8

    #@1b3a
    div-long v166, v6, v12

    #@1b3c
    .line 3975
    .restart local v166    # "totalTime":J
    move/from16 v0, p4

    #@1b3e
    invoke-virtual {v15, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@1b41
    move-result v53

    #@1b42
    .line 3976
    .restart local v53    # "count":I
    const/4 v6, 0x0

    #@1b43
    move-object/from16 v0, v18

    #@1b45
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1b48
    .line 3977
    move-object/from16 v0, v18

    #@1b4a
    move-object/from16 v1, p3

    #@1b4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4f
    .line 3978
    const-string/jumbo v6, "    Job "

    #@1b52
    move-object/from16 v0, v18

    #@1b54
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b57
    .line 3979
    move-object/from16 v0, v88

    #@1b59
    move/from16 v1, v76

    #@1b5b
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1b5e
    move-result-object v6

    #@1b5f
    check-cast v6, Ljava/lang/String;

    #@1b61
    move-object/from16 v0, v18

    #@1b63
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b66
    .line 3980
    const-string/jumbo v6, ": "

    #@1b69
    move-object/from16 v0, v18

    #@1b6b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b6e
    .line 3981
    const-wide/16 v6, 0x0

    #@1b70
    cmp-long v6, v166, v6

    #@1b72
    if-eqz v6, :cond_5d

    #@1b74
    .line 3982
    move-object/from16 v0, v18

    #@1b76
    move-wide/from16 v1, v166

    #@1b78
    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1b7b
    .line 3983
    const-string/jumbo v6, "realtime ("

    #@1b7e
    move-object/from16 v0, v18

    #@1b80
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b83
    .line 3984
    move-object/from16 v0, v18

    #@1b85
    move/from16 v1, v53

    #@1b87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b8a
    .line 3985
    const-string/jumbo v6, " times)"

    #@1b8d
    move-object/from16 v0, v18

    #@1b8f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b92
    .line 3989
    :goto_24
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b95
    move-result-object v6

    #@1b96
    move-object/from16 v0, p2

    #@1b98
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b9b
    .line 3990
    const/16 v174, 0x1

    #@1b9d
    .line 3971
    add-int/lit8 v76, v76, -0x1

    #@1b9f
    goto :goto_23

    #@1ba0
    .line 3987
    :cond_5d
    const-string/jumbo v6, "(not used)"

    #@1ba3
    move-object/from16 v0, v18

    #@1ba5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ba8
    goto :goto_24

    #@1ba9
    .line 3993
    .end local v15    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v53    # "count":I
    .end local v166    # "totalTime":J
    :cond_5e
    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@1bac
    move-result-object v27

    #@1bad
    .line 3994
    const-string/jumbo v32, "Flashlight"

    #@1bb0
    move-object/from16 v25, p2

    #@1bb2
    move-object/from16 v26, v18

    #@1bb4
    move-wide/from16 v28, v20

    #@1bb6
    move/from16 v30, p4

    #@1bb8
    move-object/from16 v31, p3

    #@1bba
    .line 3993
    invoke-static/range {v25 .. v32}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    #@1bbd
    move-result v6

    #@1bbe
    or-int v174, v174, v6

    #@1bc0
    .line 3995
    .local v174, "uidActivity":Z
    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@1bc3
    move-result-object v27

    #@1bc4
    .line 3996
    const-string/jumbo v32, "Camera"

    #@1bc7
    move-object/from16 v25, p2

    #@1bc9
    move-object/from16 v26, v18

    #@1bcb
    move-wide/from16 v28, v20

    #@1bcd
    move/from16 v30, p4

    #@1bcf
    move-object/from16 v31, p3

    #@1bd1
    .line 3995
    invoke-static/range {v25 .. v32}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    #@1bd4
    move-result v6

    #@1bd5
    or-int v174, v174, v6

    #@1bd7
    .line 3997
    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@1bda
    move-result-object v27

    #@1bdb
    .line 3998
    const-string/jumbo v32, "Video"

    #@1bde
    move-object/from16 v25, p2

    #@1be0
    move-object/from16 v26, v18

    #@1be2
    move-wide/from16 v28, v20

    #@1be4
    move/from16 v30, p4

    #@1be6
    move-object/from16 v31, p3

    #@1be8
    .line 3997
    invoke-static/range {v25 .. v32}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    #@1beb
    move-result v6

    #@1bec
    or-int v174, v174, v6

    #@1bee
    .line 3999
    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@1bf1
    move-result-object v27

    #@1bf2
    .line 4000
    const-string/jumbo v32, "Audio"

    #@1bf5
    move-object/from16 v25, p2

    #@1bf7
    move-object/from16 v26, v18

    #@1bf9
    move-wide/from16 v28, v20

    #@1bfb
    move/from16 v30, p4

    #@1bfd
    move-object/from16 v31, p3

    #@1bff
    .line 3999
    invoke-static/range {v25 .. v32}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    #@1c02
    move-result v6

    #@1c03
    or-int v174, v174, v6

    #@1c05
    .line 4002
    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    #@1c08
    move-result-object v139

    #@1c09
    .line 4003
    .local v139, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v139 .. v139}, Landroid/util/SparseArray;->size()I

    #@1c0c
    move-result v33

    #@1c0d
    .line 4004
    .local v33, "NSE":I
    const/16 v82, 0x0

    #@1c0f
    .end local v174    # "uidActivity":Z
    .local v82, "ise":I
    :goto_25
    move/from16 v0, v82

    #@1c11
    move/from16 v1, v33

    #@1c13
    if-ge v0, v1, :cond_62

    #@1c15
    .line 4005
    move-object/from16 v0, v139

    #@1c17
    move/from16 v1, v82

    #@1c19
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1c1c
    move-result-object v135

    #@1c1d
    check-cast v135, Landroid/os/BatteryStats$Uid$Sensor;

    #@1c1f
    .line 4006
    .local v135, "se":Landroid/os/BatteryStats$Uid$Sensor;
    move-object/from16 v0, v139

    #@1c21
    move/from16 v1, v82

    #@1c23
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@1c26
    move-result v138

    #@1c27
    .line 4007
    .local v138, "sensorNumber":I
    const/4 v6, 0x0

    #@1c28
    move-object/from16 v0, v18

    #@1c2a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1c2d
    .line 4008
    move-object/from16 v0, v18

    #@1c2f
    move-object/from16 v1, p3

    #@1c31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c34
    .line 4009
    const-string/jumbo v6, "    Sensor "

    #@1c37
    move-object/from16 v0, v18

    #@1c39
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c3c
    .line 4010
    invoke-virtual/range {v135 .. v135}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    #@1c3f
    move-result v69

    #@1c40
    .line 4011
    .local v69, "handle":I
    const/16 v6, -0x2710

    #@1c42
    move/from16 v0, v69

    #@1c44
    if-ne v0, v6, :cond_5f

    #@1c46
    .line 4012
    const-string/jumbo v6, "GPS"

    #@1c49
    move-object/from16 v0, v18

    #@1c4b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c4e
    .line 4016
    :goto_26
    const-string/jumbo v6, ": "

    #@1c51
    move-object/from16 v0, v18

    #@1c53
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c56
    .line 4018
    invoke-virtual/range {v135 .. v135}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    #@1c59
    move-result-object v15

    #@1c5a
    .line 4019
    .restart local v15    # "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v15, :cond_61

    #@1c5c
    .line 4021
    move-wide/from16 v0, v20

    #@1c5e
    move/from16 v2, p4

    #@1c60
    invoke-virtual {v15, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@1c63
    move-result-wide v6

    #@1c64
    .line 4022
    const-wide/16 v12, 0x1f4

    #@1c66
    .line 4021
    add-long/2addr v6, v12

    #@1c67
    .line 4022
    const-wide/16 v12, 0x3e8

    #@1c69
    .line 4021
    div-long v166, v6, v12

    #@1c6b
    .line 4023
    .restart local v166    # "totalTime":J
    move/from16 v0, p4

    #@1c6d
    invoke-virtual {v15, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@1c70
    move-result v53

    #@1c71
    .line 4025
    .restart local v53    # "count":I
    const-wide/16 v6, 0x0

    #@1c73
    cmp-long v6, v166, v6

    #@1c75
    if-eqz v6, :cond_60

    #@1c77
    .line 4026
    move-object/from16 v0, v18

    #@1c79
    move-wide/from16 v1, v166

    #@1c7b
    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1c7e
    .line 4027
    const-string/jumbo v6, "realtime ("

    #@1c81
    move-object/from16 v0, v18

    #@1c83
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c86
    .line 4028
    move-object/from16 v0, v18

    #@1c88
    move/from16 v1, v53

    #@1c8a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c8d
    .line 4029
    const-string/jumbo v6, " times)"

    #@1c90
    move-object/from16 v0, v18

    #@1c92
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c95
    .line 4037
    .end local v53    # "count":I
    .end local v166    # "totalTime":J
    :goto_27
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c98
    move-result-object v6

    #@1c99
    move-object/from16 v0, p2

    #@1c9b
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c9e
    .line 4038
    const/16 v174, 0x1

    #@1ca0
    .line 4004
    .local v174, "uidActivity":Z
    add-int/lit8 v82, v82, 0x1

    #@1ca2
    goto/16 :goto_25

    #@1ca4
    .line 4014
    .end local v15    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v174    # "uidActivity":Z
    :cond_5f
    move-object/from16 v0, v18

    #@1ca6
    move/from16 v1, v69

    #@1ca8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1cab
    goto :goto_26

    #@1cac
    .line 4031
    .restart local v15    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v53    # "count":I
    .restart local v166    # "totalTime":J
    :cond_60
    const-string/jumbo v6, "(not used)"

    #@1caf
    move-object/from16 v0, v18

    #@1cb1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cb4
    goto :goto_27

    #@1cb5
    .line 4034
    .end local v53    # "count":I
    .end local v166    # "totalTime":J
    :cond_61
    const-string/jumbo v6, "(not used)"

    #@1cb8
    move-object/from16 v0, v18

    #@1cba
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cbd
    goto :goto_27

    #@1cbe
    .line 4041
    .end local v15    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v69    # "handle":I
    .end local v135    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v138    # "sensorNumber":I
    :cond_62
    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    #@1cc1
    move-result-object v27

    #@1cc2
    .line 4042
    const-string/jumbo v32, "Vibrator"

    #@1cc5
    move-object/from16 v25, p2

    #@1cc7
    move-object/from16 v26, v18

    #@1cc9
    move-wide/from16 v28, v20

    #@1ccb
    move/from16 v30, p4

    #@1ccd
    move-object/from16 v31, p3

    #@1ccf
    .line 4041
    invoke-static/range {v25 .. v32}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    #@1cd2
    move-result v6

    #@1cd3
    or-int v174, v174, v6

    #@1cd5
    .line 4043
    .local v174, "uidActivity":Z
    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    #@1cd8
    move-result-object v27

    #@1cd9
    .line 4044
    const-string/jumbo v32, "Foreground activities"

    #@1cdc
    move-object/from16 v25, p2

    #@1cde
    move-object/from16 v26, v18

    #@1ce0
    move-wide/from16 v28, v20

    #@1ce2
    move/from16 v30, p4

    #@1ce4
    move-object/from16 v31, p3

    #@1ce6
    .line 4043
    invoke-static/range {v25 .. v32}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    #@1ce9
    move-result v6

    #@1cea
    or-int v174, v174, v6

    #@1cec
    .line 4046
    const-wide/16 v164, 0x0

    #@1cee
    .line 4047
    .local v164, "totalStateTime":J
    const/16 v81, 0x0

    #@1cf0
    .end local v174    # "uidActivity":Z
    .local v81, "ips":I
    :goto_28
    const/4 v6, 0x3

    #@1cf1
    move/from16 v0, v81

    #@1cf3
    if-ge v0, v6, :cond_64

    #@1cf5
    .line 4048
    move-object/from16 v0, v172

    #@1cf7
    move/from16 v1, v81

    #@1cf9
    move-wide/from16 v2, v20

    #@1cfb
    move/from16 v4, p4

    #@1cfd
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    #@1d00
    move-result-wide v152

    #@1d01
    .line 4049
    .restart local v152    # "time":J
    const-wide/16 v6, 0x0

    #@1d03
    cmp-long v6, v152, v6

    #@1d05
    if-lez v6, :cond_63

    #@1d07
    .line 4050
    add-long v164, v164, v152

    #@1d09
    .line 4051
    const/4 v6, 0x0

    #@1d0a
    move-object/from16 v0, v18

    #@1d0c
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1d0f
    .line 4052
    move-object/from16 v0, v18

    #@1d11
    move-object/from16 v1, p3

    #@1d13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d16
    .line 4053
    const-string/jumbo v6, "    "

    #@1d19
    move-object/from16 v0, v18

    #@1d1b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d1e
    .line 4054
    sget-object v6, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    #@1d20
    aget-object v6, v6, v81

    #@1d22
    move-object/from16 v0, v18

    #@1d24
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d27
    .line 4055
    const-string/jumbo v6, " for: "

    #@1d2a
    move-object/from16 v0, v18

    #@1d2c
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2f
    .line 4056
    const-wide/16 v6, 0x1f4

    #@1d31
    add-long v6, v6, v164

    #@1d33
    const-wide/16 v12, 0x3e8

    #@1d35
    div-long/2addr v6, v12

    #@1d36
    move-object/from16 v0, v18

    #@1d38
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1d3b
    .line 4057
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d3e
    move-result-object v6

    #@1d3f
    move-object/from16 v0, p2

    #@1d41
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d44
    .line 4058
    const/16 v174, 0x1

    #@1d46
    .line 4047
    :cond_63
    add-int/lit8 v81, v81, 0x1

    #@1d48
    goto :goto_28

    #@1d49
    .line 4062
    .end local v152    # "time":J
    :cond_64
    move-object/from16 v0, v172

    #@1d4b
    move/from16 v1, p4

    #@1d4d
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    #@1d50
    move-result-wide v190

    #@1d51
    .line 4063
    .local v190, "userCpuTimeUs":J
    move-object/from16 v0, v172

    #@1d53
    move/from16 v1, p4

    #@1d55
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    #@1d58
    move-result-wide v148

    #@1d59
    .line 4064
    .local v148, "systemCpuTimeUs":J
    move-object/from16 v0, v172

    #@1d5b
    move/from16 v1, p4

    #@1d5d
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getCpuPowerMaUs(I)J

    #@1d60
    move-result-wide v126

    #@1d61
    .line 4065
    .local v126, "powerCpuMaUs":J
    const-wide/16 v6, 0x0

    #@1d63
    cmp-long v6, v190, v6

    #@1d65
    if-gtz v6, :cond_65

    #@1d67
    const-wide/16 v6, 0x0

    #@1d69
    cmp-long v6, v148, v6

    #@1d6b
    if-lez v6, :cond_6f

    #@1d6d
    .line 4066
    :cond_65
    :goto_29
    const/4 v6, 0x0

    #@1d6e
    move-object/from16 v0, v18

    #@1d70
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1d73
    .line 4067
    move-object/from16 v0, v18

    #@1d75
    move-object/from16 v1, p3

    #@1d77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d7a
    .line 4068
    const-string/jumbo v6, "    Total cpu time: u="

    #@1d7d
    move-object/from16 v0, v18

    #@1d7f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d82
    .line 4069
    const-wide/16 v6, 0x3e8

    #@1d84
    div-long v6, v190, v6

    #@1d86
    move-object/from16 v0, v18

    #@1d88
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1d8b
    .line 4070
    const-string/jumbo v6, "s="

    #@1d8e
    move-object/from16 v0, v18

    #@1d90
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d93
    .line 4071
    const-wide/16 v6, 0x3e8

    #@1d95
    div-long v6, v148, v6

    #@1d97
    move-object/from16 v0, v18

    #@1d99
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1d9c
    .line 4072
    const-string/jumbo v6, "p="

    #@1d9f
    move-object/from16 v0, v18

    #@1da1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1da4
    .line 4073
    move-wide/from16 v0, v126

    #@1da6
    long-to-double v6, v0

    #@1da7
    const-wide v12, 0x41ead27480000000L    # 3.6E9

    #@1dac
    div-double/2addr v6, v12

    #@1dad
    move-object/from16 v0, p0

    #@1daf
    move-object/from16 v1, v18

    #@1db1
    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/lang/StringBuilder;D)V

    #@1db4
    .line 4074
    const-string/jumbo v6, "mAh"

    #@1db7
    move-object/from16 v0, v18

    #@1db9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dbc
    .line 4075
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dbf
    move-result-object v6

    #@1dc0
    move-object/from16 v0, p2

    #@1dc2
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1dc5
    .line 4079
    :cond_66
    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    #@1dc8
    move-result-object v119

    #@1dc9
    .line 4080
    .local v119, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual/range {v119 .. v119}, Landroid/util/ArrayMap;->size()I

    #@1dcc
    move-result v6

    #@1dcd
    add-int/lit8 v80, v6, -0x1

    #@1dcf
    .local v80, "ipr":I
    :goto_2a
    if-ltz v80, :cond_76

    #@1dd1
    .line 4081
    move-object/from16 v0, v119

    #@1dd3
    move/from16 v1, v80

    #@1dd5
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1dd8
    move-result-object v131

    #@1dd9
    check-cast v131, Landroid/os/BatteryStats$Uid$Proc;

    #@1ddb
    .line 4088
    .local v131, "ps":Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v131

    #@1ddd
    move/from16 v1, p4

    #@1ddf
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    #@1de2
    move-result-wide v192

    #@1de3
    .line 4089
    .local v192, "userTime":J
    move-object/from16 v0, v131

    #@1de5
    move/from16 v1, p4

    #@1de7
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    #@1dea
    move-result-wide v150

    #@1deb
    .line 4090
    .local v150, "systemTime":J
    move-object/from16 v0, v131

    #@1ded
    move/from16 v1, p4

    #@1def
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    #@1df2
    move-result-wide v64

    #@1df3
    .line 4091
    .local v64, "foregroundTime":J
    move-object/from16 v0, v131

    #@1df5
    move/from16 v1, p4

    #@1df7
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    #@1dfa
    move-result v143

    #@1dfb
    .line 4092
    .local v143, "starts":I
    move-object/from16 v0, v131

    #@1dfd
    move/from16 v1, p4

    #@1dff
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    #@1e02
    move-result v116

    #@1e03
    .line 4093
    .local v116, "numCrashes":I
    move-object/from16 v0, v131

    #@1e05
    move/from16 v1, p4

    #@1e07
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    #@1e0a
    move-result v115

    #@1e0b
    .line 4094
    .local v115, "numAnrs":I
    if-nez p4, :cond_70

    #@1e0d
    .line 4095
    invoke-virtual/range {v131 .. v131}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    #@1e10
    move-result v117

    #@1e11
    .line 4097
    .local v117, "numExcessive":I
    :goto_2b
    const-wide/16 v6, 0x0

    #@1e13
    cmp-long v6, v192, v6

    #@1e15
    if-nez v6, :cond_67

    #@1e17
    const-wide/16 v6, 0x0

    #@1e19
    cmp-long v6, v150, v6

    #@1e1b
    if-eqz v6, :cond_71

    #@1e1d
    .line 4099
    :cond_67
    const/4 v6, 0x0

    #@1e1e
    move-object/from16 v0, v18

    #@1e20
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1e23
    .line 4100
    move-object/from16 v0, v18

    #@1e25
    move-object/from16 v1, p3

    #@1e27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e2a
    const-string/jumbo v6, "    Proc "

    #@1e2d
    move-object/from16 v0, v18

    #@1e2f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e32
    .line 4101
    move-object/from16 v0, v119

    #@1e34
    move/from16 v1, v80

    #@1e36
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1e39
    move-result-object v6

    #@1e3a
    check-cast v6, Ljava/lang/String;

    #@1e3c
    move-object/from16 v0, v18

    #@1e3e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e41
    const-string/jumbo v6, ":\n"

    #@1e44
    move-object/from16 v0, v18

    #@1e46
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e49
    .line 4102
    move-object/from16 v0, v18

    #@1e4b
    move-object/from16 v1, p3

    #@1e4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e50
    const-string/jumbo v6, "      CPU: "

    #@1e53
    move-object/from16 v0, v18

    #@1e55
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e58
    .line 4103
    move-object/from16 v0, v18

    #@1e5a
    move-wide/from16 v1, v192

    #@1e5c
    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1e5f
    const-string/jumbo v6, "usr + "

    #@1e62
    move-object/from16 v0, v18

    #@1e64
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e67
    .line 4104
    move-object/from16 v0, v18

    #@1e69
    move-wide/from16 v1, v150

    #@1e6b
    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1e6e
    const-string/jumbo v6, "krn ; "

    #@1e71
    move-object/from16 v0, v18

    #@1e73
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e76
    .line 4105
    move-object/from16 v0, v18

    #@1e78
    move-wide/from16 v1, v64

    #@1e7a
    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@1e7d
    const-string/jumbo v6, "fg"

    #@1e80
    move-object/from16 v0, v18

    #@1e82
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e85
    .line 4106
    if-nez v143, :cond_68

    #@1e87
    if-eqz v116, :cond_72

    #@1e89
    .line 4107
    :cond_68
    :goto_2c
    const-string/jumbo v6, "\n"

    #@1e8c
    move-object/from16 v0, v18

    #@1e8e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e91
    move-object/from16 v0, v18

    #@1e93
    move-object/from16 v1, p3

    #@1e95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e98
    const-string/jumbo v6, "      "

    #@1e9b
    move-object/from16 v0, v18

    #@1e9d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ea0
    .line 4108
    const/16 v73, 0x0

    #@1ea2
    .line 4109
    .local v73, "hasOne":Z
    if-eqz v143, :cond_69

    #@1ea4
    .line 4110
    const/16 v73, 0x1

    #@1ea6
    .line 4111
    move-object/from16 v0, v18

    #@1ea8
    move/from16 v1, v143

    #@1eaa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ead
    const-string/jumbo v6, " starts"

    #@1eb0
    move-object/from16 v0, v18

    #@1eb2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eb5
    .line 4113
    :cond_69
    if-eqz v116, :cond_6b

    #@1eb7
    .line 4114
    if-eqz v73, :cond_6a

    #@1eb9
    .line 4115
    const-string/jumbo v6, ", "

    #@1ebc
    move-object/from16 v0, v18

    #@1ebe
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ec1
    .line 4117
    :cond_6a
    const/16 v73, 0x1

    #@1ec3
    .line 4118
    move-object/from16 v0, v18

    #@1ec5
    move/from16 v1, v116

    #@1ec7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1eca
    const-string/jumbo v6, " crashes"

    #@1ecd
    move-object/from16 v0, v18

    #@1ecf
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ed2
    .line 4120
    :cond_6b
    if-eqz v115, :cond_6d

    #@1ed4
    .line 4121
    if-eqz v73, :cond_6c

    #@1ed6
    .line 4122
    const-string/jumbo v6, ", "

    #@1ed9
    move-object/from16 v0, v18

    #@1edb
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ede
    .line 4124
    :cond_6c
    move-object/from16 v0, v18

    #@1ee0
    move/from16 v1, v115

    #@1ee2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ee5
    const-string/jumbo v6, " anrs"

    #@1ee8
    move-object/from16 v0, v18

    #@1eea
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eed
    .line 4127
    .end local v73    # "hasOne":Z
    :cond_6d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ef0
    move-result-object v6

    #@1ef1
    move-object/from16 v0, p2

    #@1ef3
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ef6
    .line 4128
    const/16 v60, 0x0

    #@1ef8
    .local v60, "e":I
    :goto_2d
    move/from16 v0, v60

    #@1efa
    move/from16 v1, v117

    #@1efc
    if-ge v0, v1, :cond_75

    #@1efe
    .line 4129
    move-object/from16 v0, v131

    #@1f00
    move/from16 v1, v60

    #@1f02
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    #@1f05
    move-result-object v63

    #@1f06
    .line 4130
    .local v63, "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    if-eqz v63, :cond_6e

    #@1f08
    .line 4131
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f0b
    const-string/jumbo v6, "      * Killed for "

    #@1f0e
    move-object/from16 v0, p2

    #@1f10
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f13
    .line 4132
    move-object/from16 v0, v63

    #@1f15
    iget v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    #@1f17
    const/4 v7, 0x1

    #@1f18
    if-ne v6, v7, :cond_73

    #@1f1a
    .line 4133
    const-string/jumbo v6, "wake lock"

    #@1f1d
    move-object/from16 v0, p2

    #@1f1f
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f22
    .line 4139
    :goto_2e
    const-string/jumbo v6, " use: "

    #@1f25
    move-object/from16 v0, p2

    #@1f27
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f2a
    .line 4140
    move-object/from16 v0, v63

    #@1f2c
    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    #@1f2e
    move-object/from16 v0, p2

    #@1f30
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@1f33
    .line 4141
    const-string/jumbo v6, " over "

    #@1f36
    move-object/from16 v0, p2

    #@1f38
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f3b
    .line 4142
    move-object/from16 v0, v63

    #@1f3d
    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    #@1f3f
    move-object/from16 v0, p2

    #@1f41
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@1f44
    .line 4143
    move-object/from16 v0, v63

    #@1f46
    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    #@1f48
    const-wide/16 v12, 0x0

    #@1f4a
    cmp-long v6, v6, v12

    #@1f4c
    if-eqz v6, :cond_6e

    #@1f4e
    .line 4144
    const-string/jumbo v6, " ("

    #@1f51
    move-object/from16 v0, p2

    #@1f53
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f56
    .line 4145
    move-object/from16 v0, v63

    #@1f58
    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    #@1f5a
    const-wide/16 v12, 0x64

    #@1f5c
    mul-long/2addr v6, v12

    #@1f5d
    move-object/from16 v0, v63

    #@1f5f
    iget-wide v12, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    #@1f61
    div-long/2addr v6, v12

    #@1f62
    move-object/from16 v0, p2

    #@1f64
    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    #@1f67
    .line 4146
    const-string/jumbo v6, "%)"

    #@1f6a
    move-object/from16 v0, p2

    #@1f6c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f6f
    .line 4128
    :cond_6e
    add-int/lit8 v60, v60, 0x1

    #@1f71
    goto :goto_2d

    #@1f72
    .line 4065
    .end local v60    # "e":I
    .end local v63    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .end local v64    # "foregroundTime":J
    .end local v80    # "ipr":I
    .end local v115    # "numAnrs":I
    .end local v116    # "numCrashes":I
    .end local v117    # "numExcessive":I
    .end local v119    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v131    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v143    # "starts":I
    .end local v150    # "systemTime":J
    .end local v192    # "userTime":J
    :cond_6f
    const-wide/16 v6, 0x0

    #@1f74
    cmp-long v6, v126, v6

    #@1f76
    if-lez v6, :cond_66

    #@1f78
    goto/16 :goto_29

    #@1f7a
    .line 4095
    .restart local v64    # "foregroundTime":J
    .restart local v80    # "ipr":I
    .restart local v115    # "numAnrs":I
    .restart local v116    # "numCrashes":I
    .restart local v119    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v131    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .restart local v143    # "starts":I
    .restart local v150    # "systemTime":J
    .restart local v192    # "userTime":J
    :cond_70
    const/16 v117, 0x0

    #@1f7c
    .restart local v117    # "numExcessive":I
    goto/16 :goto_2b

    #@1f7e
    .line 4097
    :cond_71
    const-wide/16 v6, 0x0

    #@1f80
    cmp-long v6, v64, v6

    #@1f82
    if-nez v6, :cond_67

    #@1f84
    if-nez v143, :cond_67

    #@1f86
    .line 4098
    if-nez v117, :cond_67

    #@1f88
    if-nez v116, :cond_67

    #@1f8a
    if-nez v115, :cond_67

    #@1f8c
    .line 4080
    :goto_2f
    add-int/lit8 v80, v80, -0x1

    #@1f8e
    goto/16 :goto_2a

    #@1f90
    .line 4106
    :cond_72
    if-eqz v115, :cond_6d

    #@1f92
    goto/16 :goto_2c

    #@1f94
    .line 4134
    .restart local v60    # "e":I
    .restart local v63    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    :cond_73
    move-object/from16 v0, v63

    #@1f96
    iget v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    #@1f98
    const/4 v7, 0x2

    #@1f99
    if-ne v6, v7, :cond_74

    #@1f9b
    .line 4135
    const-string/jumbo v6, "cpu"

    #@1f9e
    move-object/from16 v0, p2

    #@1fa0
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fa3
    goto/16 :goto_2e

    #@1fa5
    .line 4137
    :cond_74
    const-string/jumbo v6, "unknown"

    #@1fa8
    move-object/from16 v0, p2

    #@1faa
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fad
    goto/16 :goto_2e

    #@1faf
    .line 4150
    .end local v63    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    :cond_75
    const/16 v174, 0x1

    #@1fb1
    .local v174, "uidActivity":Z
    goto :goto_2f

    #@1fb2
    .line 4155
    .end local v60    # "e":I
    .end local v64    # "foregroundTime":J
    .end local v115    # "numAnrs":I
    .end local v116    # "numCrashes":I
    .end local v117    # "numExcessive":I
    .end local v131    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v143    # "starts":I
    .end local v150    # "systemTime":J
    .end local v174    # "uidActivity":Z
    .end local v192    # "userTime":J
    :cond_76
    invoke-virtual/range {v172 .. v172}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    #@1fb5
    move-result-object v118

    #@1fb6
    .line 4156
    .local v118, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual/range {v118 .. v118}, Landroid/util/ArrayMap;->size()I

    #@1fb9
    move-result v6

    #@1fba
    add-int/lit8 v77, v6, -0x1

    #@1fbc
    .local v77, "ipkg":I
    :goto_30
    if-ltz v77, :cond_7d

    #@1fbe
    .line 4157
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fc1
    const-string/jumbo v6, "    Apk "

    #@1fc4
    move-object/from16 v0, p2

    #@1fc6
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fc9
    move-object/from16 v0, v118

    #@1fcb
    move/from16 v1, v77

    #@1fcd
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1fd0
    move-result-object v6

    #@1fd1
    check-cast v6, Ljava/lang/String;

    #@1fd3
    move-object/from16 v0, p2

    #@1fd5
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fd8
    .line 4158
    const-string/jumbo v6, ":"

    #@1fdb
    move-object/from16 v0, p2

    #@1fdd
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1fe0
    .line 4159
    const/16 v36, 0x0

    #@1fe2
    .line 4160
    .local v36, "apkActivity":Z
    move-object/from16 v0, v118

    #@1fe4
    move/from16 v1, v77

    #@1fe6
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1fe9
    move-result-object v130

    #@1fea
    check-cast v130, Landroid/os/BatteryStats$Uid$Pkg;

    #@1fec
    .line 4161
    .local v130, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    invoke-virtual/range {v130 .. v130}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    #@1fef
    move-result-object v35

    #@1ff0
    .line 4162
    .local v35, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual/range {v35 .. v35}, Landroid/util/ArrayMap;->size()I

    #@1ff3
    move-result v6

    #@1ff4
    add-int/lit8 v87, v6, -0x1

    #@1ff6
    .local v87, "iwa":I
    :goto_31
    if-ltz v87, :cond_77

    #@1ff8
    .line 4163
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ffb
    const-string/jumbo v6, "      Wakeup alarm "

    #@1ffe
    move-object/from16 v0, p2

    #@2000
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2003
    .line 4164
    move-object/from16 v0, v35

    #@2005
    move/from16 v1, v87

    #@2007
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@200a
    move-result-object v6

    #@200b
    check-cast v6, Ljava/lang/String;

    #@200d
    move-object/from16 v0, p2

    #@200f
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2012
    const-string/jumbo v6, ": "

    #@2015
    move-object/from16 v0, p2

    #@2017
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@201a
    .line 4165
    move-object/from16 v0, v35

    #@201c
    move/from16 v1, v87

    #@201e
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2021
    move-result-object v6

    #@2022
    check-cast v6, Landroid/os/BatteryStats$Counter;

    #@2024
    move/from16 v0, p4

    #@2026
    invoke-virtual {v6, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    #@2029
    move-result v6

    #@202a
    move-object/from16 v0, p2

    #@202c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    #@202f
    .line 4166
    const-string/jumbo v6, " times"

    #@2032
    move-object/from16 v0, p2

    #@2034
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2037
    .line 4167
    const/16 v36, 0x1

    #@2039
    .line 4162
    add-int/lit8 v87, v87, -0x1

    #@203b
    goto :goto_31

    #@203c
    .line 4169
    :cond_77
    invoke-virtual/range {v130 .. v130}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    #@203f
    move-result-object v140

    #@2040
    .line 4170
    .local v140, "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual/range {v140 .. v140}, Landroid/util/ArrayMap;->size()I

    #@2043
    move-result v6

    #@2044
    add-int/lit8 v83, v6, -0x1

    #@2046
    .local v83, "isvc":I
    :goto_32
    if-ltz v83, :cond_7b

    #@2048
    .line 4171
    move-object/from16 v0, v140

    #@204a
    move/from16 v1, v83

    #@204c
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@204f
    move-result-object v142

    #@2050
    check-cast v142, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    #@2052
    .line 4172
    .local v142, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move-object/from16 v0, v142

    #@2054
    move-wide/from16 v1, v40

    #@2056
    move/from16 v3, p4

    #@2058
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    #@205b
    move-result-wide v144

    #@205c
    .line 4173
    .local v144, "startTime":J
    move-object/from16 v0, v142

    #@205e
    move/from16 v1, p4

    #@2060
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    #@2063
    move-result v143

    #@2064
    .line 4174
    .restart local v143    # "starts":I
    move-object/from16 v0, v142

    #@2066
    move/from16 v1, p4

    #@2068
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    #@206b
    move-result v91

    #@206c
    .line 4175
    .local v91, "launches":I
    const-wide/16 v6, 0x0

    #@206e
    cmp-long v6, v144, v6

    #@2070
    if-nez v6, :cond_78

    #@2072
    if-eqz v143, :cond_7a

    #@2074
    .line 4176
    :cond_78
    :goto_33
    const/4 v6, 0x0

    #@2075
    move-object/from16 v0, v18

    #@2077
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@207a
    .line 4177
    move-object/from16 v0, v18

    #@207c
    move-object/from16 v1, p3

    #@207e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2081
    const-string/jumbo v6, "      Service "

    #@2084
    move-object/from16 v0, v18

    #@2086
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2089
    .line 4178
    move-object/from16 v0, v140

    #@208b
    move/from16 v1, v83

    #@208d
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@2090
    move-result-object v6

    #@2091
    check-cast v6, Ljava/lang/String;

    #@2093
    move-object/from16 v0, v18

    #@2095
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2098
    const-string/jumbo v6, ":\n"

    #@209b
    move-object/from16 v0, v18

    #@209d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20a0
    .line 4179
    move-object/from16 v0, v18

    #@20a2
    move-object/from16 v1, p3

    #@20a4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20a7
    const-string/jumbo v6, "        Created for: "

    #@20aa
    move-object/from16 v0, v18

    #@20ac
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20af
    .line 4180
    const-wide/16 v6, 0x3e8

    #@20b1
    div-long v6, v144, v6

    #@20b3
    move-object/from16 v0, v18

    #@20b5
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@20b8
    .line 4181
    const-string/jumbo v6, "uptime\n"

    #@20bb
    move-object/from16 v0, v18

    #@20bd
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20c0
    .line 4182
    move-object/from16 v0, v18

    #@20c2
    move-object/from16 v1, p3

    #@20c4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20c7
    const-string/jumbo v6, "        Starts: "

    #@20ca
    move-object/from16 v0, v18

    #@20cc
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20cf
    .line 4183
    move-object/from16 v0, v18

    #@20d1
    move/from16 v1, v143

    #@20d3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20d6
    .line 4184
    const-string/jumbo v6, ", launches: "

    #@20d9
    move-object/from16 v0, v18

    #@20db
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20de
    move-object/from16 v0, v18

    #@20e0
    move/from16 v1, v91

    #@20e2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20e5
    .line 4185
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20e8
    move-result-object v6

    #@20e9
    move-object/from16 v0, p2

    #@20eb
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@20ee
    .line 4186
    const/16 v36, 0x1

    #@20f0
    .line 4170
    :cond_79
    add-int/lit8 v83, v83, -0x1

    #@20f2
    goto/16 :goto_32

    #@20f4
    .line 4175
    :cond_7a
    if-eqz v91, :cond_79

    #@20f6
    goto/16 :goto_33

    #@20f8
    .line 4189
    .end local v91    # "launches":I
    .end local v142    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v143    # "starts":I
    .end local v144    # "startTime":J
    :cond_7b
    if-nez v36, :cond_7c

    #@20fa
    .line 4190
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20fd
    const-string/jumbo v6, "      (nothing executed)"

    #@2100
    move-object/from16 v0, p2

    #@2102
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2105
    .line 4192
    :cond_7c
    const/16 v174, 0x1

    #@2107
    .line 4156
    .restart local v174    # "uidActivity":Z
    add-int/lit8 v77, v77, -0x1

    #@2109
    goto/16 :goto_30

    #@210b
    .line 4194
    .end local v35    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v36    # "apkActivity":Z
    .end local v83    # "isvc":I
    .end local v87    # "iwa":I
    .end local v130    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v140    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v174    # "uidActivity":Z
    :cond_7d
    if-nez v174, :cond_3d

    #@210d
    .line 4195
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2110
    const-string/jumbo v6, "    (nothing executed)"

    #@2113
    move-object/from16 v0, p2

    #@2115
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2118
    goto/16 :goto_19

    #@211a
    .line 3016
    .end local v33    # "NSE":I
    .end local v54    # "countWakelock":I
    .end local v70    # "fullWifiLockOnTime":J
    .end local v76    # "ij":I
    .end local v77    # "ipkg":I
    .end local v80    # "ipr":I
    .end local v81    # "ips":I
    .end local v82    # "ise":I
    .end local v84    # "isy":I
    .end local v86    # "iw":I
    .end local v88    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v98    # "mobileRxBytes":J
    .end local v100    # "mobileRxPackets":J
    .end local v106    # "mobileTxBytes":J
    .end local v108    # "mobileTxPackets":J
    .end local v118    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v119    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v126    # "powerCpuMaUs":J
    .end local v139    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v146    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v148    # "systemCpuTimeUs":J
    .end local v156    # "totalDrawWakelock":J
    .end local v158    # "totalFullWakelock":J
    .end local v160    # "totalPartialWakelock":J
    .end local v164    # "totalStateTime":J
    .end local v170    # "totalWindowWakelock":J
    .end local v172    # "u":Landroid/os/BatteryStats$Uid;
    .end local v173    # "uid":I
    .end local v175    # "uidMobileActiveCount":I
    .end local v176    # "uidMobileActiveTime":J
    .end local v180    # "uidWifiIdleTimeMs":J
    .end local v182    # "uidWifiRunningTime":J
    .end local v184    # "uidWifiRxTimeMs":J
    .end local v186    # "uidWifiTotalTimeMs":J
    .end local v188    # "uidWifiTxTimeMs":J
    .end local v190    # "userCpuTimeUs":J
    .end local v194    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v212    # "wifiRxBytes":J
    .end local v214    # "wifiRxPackets":J
    .end local v222    # "wifiScanCount":I
    .end local v224    # "wifiScanTime":J
    .end local v228    # "wifiTxBytes":J
    .end local v230    # "wifiTxPackets":J
    :cond_7e
    return-void

    #@211b
    .line 3534
    nop

    #@211c
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
    .line 2336
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@4
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    #@7
    .line 2338
    const-wide/16 v0, 0x400

    #@9
    cmp-long v0, p1, v0

    #@b
    if-gez v0, :cond_0

    #@d
    .line 2339
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
    .line 2340
    :cond_0
    const-wide/32 v0, 0x100000

    #@25
    cmp-long v0, p1, v0

    #@27
    if-gez v0, :cond_1

    #@29
    .line 2341
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
    .line 2342
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    return-object v0

    #@44
    .line 2343
    :cond_1
    const-wide/32 v0, 0x40000000

    #@47
    cmp-long v0, p1, v0

    #@49
    if-gez v0, :cond_2

    #@4b
    .line 2344
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
    .line 2345
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v0

    #@65
    return-object v0

    #@66
    .line 2347
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
    .line 2348
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
    .line 2326
    const-wide/16 v2, 0x0

    #@3
    cmp-long v1, p3, v2

    #@5
    if-nez v1, :cond_0

    #@7
    .line 2327
    const-string/jumbo v1, "--%"

    #@a
    return-object v1

    #@b
    .line 2329
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
    .line 2330
    .local v0, "perc":F
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@14
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    #@17
    .line 2331
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
    .line 2332
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

.method public abstract getBluetoothControllerActivity(II)J
.end method

.method public abstract getCameraOnTime(JI)J
.end method

.method public abstract getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getCpuSpeedSteps()I
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

.method public abstract getDeviceIdleModeEnabledCount(I)I
.end method

.method public abstract getDeviceIdleModeEnabledTime(JI)J
.end method

.method public abstract getDeviceIdlingCount(I)I
.end method

.method public abstract getDeviceIdlingTime(JI)J
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

.method public abstract getDischargeCurrentLevel()I
.end method

.method public abstract getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDischargeStartLevel()I
.end method

.method public abstract getEndPlatformVersion()Ljava/lang/String;
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

.method public abstract getWifiControllerActivity(II)J
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

.method public abstract hasWifiActivityReporting()Z
.end method

.method public prepareForDumpLocked()V
    .locals 0

    #@0
    .prologue
    .line 4249
    return-void
.end method

.method public abstract startIteratingHistoryLocked()Z
.end method

.method public abstract startIteratingOldHistoryLocked()Z
.end method

.method public abstract writeToParcelWithoutUids(Landroid/os/Parcel;I)V
.end method
