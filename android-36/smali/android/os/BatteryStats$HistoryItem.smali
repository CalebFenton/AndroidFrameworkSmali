.class public final Landroid/os/BatteryStats$HistoryItem;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryItem"
.end annotation


# static fields
.field public static final greylist-max-o CMD_CURRENT_TIME:B = 0x5t

.field public static final greylist-max-o CMD_NULL:B = -0x1t

.field public static final greylist-max-o CMD_OVERFLOW:B = 0x6t

.field public static final greylist-max-o CMD_RESET:B = 0x7t

.field public static final greylist-max-o CMD_SHUTDOWN:B = 0x8t

.field public static final greylist-max-o CMD_START:B = 0x4t

.field public static final greylist CMD_UPDATE:B = 0x0t

.field public static final greylist-max-o EVENT_ACTIVE:I = 0xa

.field public static final greylist-max-o EVENT_ALARM:I = 0xd

.field public static final greylist-max-o EVENT_ALARM_FINISH:I = 0x400d

.field public static final greylist-max-o EVENT_ALARM_START:I = 0x800d

.field public static final greylist-max-o EVENT_COLLECT_EXTERNAL_STATS:I = 0xe

.field public static final greylist-max-o EVENT_CONNECTIVITY_CHANGED:I = 0x9

.field public static final greylist-max-o EVENT_COUNT:I = 0x17

.field public static final blacklist EVENT_DISPLAY_STATE_CHANGED:I = 0x16

.field public static final greylist-max-o EVENT_FLAG_FINISH:I = 0x4000

.field public static final greylist-max-o EVENT_FLAG_START:I = 0x8000

.field public static final greylist-max-o EVENT_FOREGROUND:I = 0x2

.field public static final greylist-max-o EVENT_FOREGROUND_FINISH:I = 0x4002

.field public static final greylist-max-o EVENT_FOREGROUND_START:I = 0x8002

.field public static final greylist-max-o EVENT_JOB:I = 0x6

.field public static final greylist-max-o EVENT_JOB_FINISH:I = 0x4006

.field public static final greylist-max-o EVENT_JOB_START:I = 0x8006

.field public static final greylist-max-o EVENT_LONG_WAKE_LOCK:I = 0x14

.field public static final greylist-max-o EVENT_LONG_WAKE_LOCK_FINISH:I = 0x4014

.field public static final greylist-max-o EVENT_LONG_WAKE_LOCK_START:I = 0x8014

.field public static final greylist-max-o EVENT_NONE:I = 0x0

.field public static final greylist-max-o EVENT_PACKAGE_ACTIVE:I = 0x10

.field public static final greylist-max-o EVENT_PACKAGE_INACTIVE:I = 0xf

.field public static final greylist-max-o EVENT_PACKAGE_INSTALLED:I = 0xb

.field public static final greylist-max-o EVENT_PACKAGE_UNINSTALLED:I = 0xc

.field public static final greylist-max-o EVENT_PROC:I = 0x1

.field public static final greylist-max-o EVENT_PROC_FINISH:I = 0x4001

.field public static final greylist-max-o EVENT_PROC_START:I = 0x8001

.field public static final greylist-max-o EVENT_SCREEN_WAKE_UP:I = 0x12

.field public static final blacklist EVENT_STATE_CHANGE:I = 0x15

.field public static final greylist-max-o EVENT_SYNC:I = 0x4

.field public static final greylist-max-o EVENT_SYNC_FINISH:I = 0x4004

.field public static final greylist-max-o EVENT_SYNC_START:I = 0x8004

.field public static final greylist-max-o EVENT_TEMP_WHITELIST:I = 0x11

.field public static final greylist-max-o EVENT_TEMP_WHITELIST_FINISH:I = 0x4011

.field public static final greylist-max-o EVENT_TEMP_WHITELIST_START:I = 0x8011

.field public static final greylist-max-o EVENT_TOP:I = 0x3

.field public static final greylist-max-o EVENT_TOP_FINISH:I = 0x4003

.field public static final greylist-max-o EVENT_TOP_START:I = 0x8003

.field public static final greylist-max-o EVENT_TYPE_MASK:I = -0xc001

.field public static final greylist-max-o EVENT_USER_FOREGROUND:I = 0x8

.field public static final greylist-max-o EVENT_USER_FOREGROUND_FINISH:I = 0x4008

.field public static final greylist-max-o EVENT_USER_FOREGROUND_START:I = 0x8008

.field public static final greylist-max-o EVENT_USER_RUNNING:I = 0x7

.field public static final greylist-max-o EVENT_USER_RUNNING_FINISH:I = 0x4007

.field public static final greylist-max-o EVENT_USER_RUNNING_START:I = 0x8007

.field public static final greylist-max-o EVENT_WAKEUP_AP:I = 0x13

.field public static final greylist-max-o EVENT_WAKE_LOCK:I = 0x5

.field public static final greylist-max-o EVENT_WAKE_LOCK_FINISH:I = 0x4005

.field public static final greylist-max-o EVENT_WAKE_LOCK_START:I = 0x8005

.field public static final blacklist GNSS_SIGNAL_QUALITY_NONE:I = 0x2

.field public static final blacklist IMPORTANT_FOR_POWER_STATS_STATES:I = 0x60c00000

.field public static final blacklist IMPORTANT_FOR_POWER_STATS_STATES2:I = 0x48200180

.field public static final greylist-max-o MOST_INTERESTING_STATES:I = 0x1c0000

.field public static final greylist-max-o MOST_INTERESTING_STATES2:I = -0x68400000

.field public static final greylist-max-o SETTLE_TO_ZERO_STATES:I = -0x1d0000

.field public static final greylist-max-o SETTLE_TO_ZERO_STATES2:I = 0x683f0000

.field public static final greylist-max-o STATE2_BLUETOOTH_ON_FLAG:I = 0x400000

.field public static final greylist-max-o STATE2_BLUETOOTH_SCAN_FLAG:I = 0x100000

.field public static final greylist-max-o STATE2_CAMERA_FLAG:I = 0x200000

.field public static final greylist-max-o STATE2_CELLULAR_HIGH_TX_POWER_FLAG:I = 0x80000

.field public static final greylist-max-o STATE2_CHARGING_FLAG:I = 0x1000000

.field public static final greylist-max-o STATE2_DEVICE_IDLE_MASK:I = 0x6000000

.field public static final greylist-max-o STATE2_DEVICE_IDLE_SHIFT:I = 0x19

.field public static final blacklist STATE2_EXTENSIONS_FLAG:I = 0x20000

.field public static final greylist-max-o STATE2_FLASHLIGHT_FLAG:I = 0x8000000

.field public static final greylist-max-o STATE2_GPS_SIGNAL_QUALITY_MASK:I = 0x180

.field public static final greylist-max-o STATE2_GPS_SIGNAL_QUALITY_SHIFT:I = 0x7

.field public static final blacklist STATE2_NR_STATE_MASK:I = 0x600

.field public static final blacklist STATE2_NR_STATE_SHIFT:I = 0x9

.field public static final greylist-max-o STATE2_PHONE_IN_CALL_FLAG:I = 0x800000

.field public static final greylist-max-o STATE2_POWER_SAVE_FLAG:I = -0x80000000

.field public static final greylist-max-o STATE2_USB_DATA_LINK_FLAG:I = 0x40000

.field public static final greylist-max-o STATE2_VIDEO_ON_FLAG:I = 0x40000000

.field public static final greylist-max-o STATE2_WIFI_ON_FLAG:I = 0x10000000

.field public static final greylist-max-o STATE2_WIFI_RUNNING_FLAG:I = 0x20000000

.field public static final greylist-max-o STATE2_WIFI_SIGNAL_STRENGTH_MASK:I = 0x70

.field public static final greylist-max-o STATE2_WIFI_SIGNAL_STRENGTH_SHIFT:I = 0x4

.field public static final greylist-max-o STATE2_WIFI_SUPPL_STATE_MASK:I = 0xf

.field public static final greylist-max-o STATE2_WIFI_SUPPL_STATE_SHIFT:I = 0x0

.field public static final greylist-max-o STATE_AUDIO_ON_FLAG:I = 0x400000

.field public static final greylist-max-o STATE_BATTERY_PLUGGED_FLAG:I = 0x80000

.field public static final greylist-max-o STATE_BRIGHTNESS_MASK:I = 0x7

.field public static final greylist-max-o STATE_BRIGHTNESS_SHIFT:I = 0x0

.field public static final greylist-max-o STATE_CPU_RUNNING_FLAG:I = -0x80000000

.field public static final greylist-max-o STATE_DATA_CONNECTION_MASK:I = 0x3e00

.field public static final greylist-max-o STATE_DATA_CONNECTION_SHIFT:I = 0x9

.field public static final greylist-max-o STATE_GPS_ON_FLAG:I = 0x20000000

.field public static final greylist-max-o STATE_MOBILE_RADIO_ACTIVE_FLAG:I = 0x2000000

.field public static final greylist-max-o STATE_PHONE_SCANNING_FLAG:I = 0x200000

.field public static final greylist-max-o STATE_PHONE_SIGNAL_STRENGTH_MASK:I = 0x38

.field public static final greylist-max-o STATE_PHONE_SIGNAL_STRENGTH_SHIFT:I = 0x3

.field public static final greylist-max-o STATE_PHONE_STATE_MASK:I = 0x1c0

.field public static final greylist-max-o STATE_PHONE_STATE_SHIFT:I = 0x6

.field private static final greylist-max-o STATE_RESERVED_0:I = 0x1000000

.field public static final greylist-max-o STATE_SCREEN_DOZE_FLAG:I = 0x40000

.field public static final greylist-max-o STATE_SCREEN_ON_FLAG:I = 0x100000

.field public static final greylist-max-o STATE_SENSOR_ON_FLAG:I = 0x800000

.field public static final greylist-max-o STATE_WAKE_LOCK_FLAG:I = 0x40000000

.field public static final greylist-max-o STATE_WIFI_FULL_LOCK_FLAG:I = 0x10000000

.field public static final greylist-max-o STATE_WIFI_MULTICAST_ON_FLAG:I = 0x10000

.field public static final greylist-max-o STATE_WIFI_RADIO_ACTIVE_FLAG:I = 0x4000000

.field public static final greylist-max-o STATE_WIFI_SCAN_FLAG:I = 0x8000000


# instance fields
.field public blacklist batteryChargeUah:I

.field public greylist batteryHealth:B

.field public greylist batteryLevel:B

.field public greylist batteryPlugType:B

.field public greylist batteryStatus:B

.field public greylist-max-o batteryTemperature:S

.field public greylist batteryVoltage:S

.field public greylist cmd:B

.field public greylist-max-o currentTime:J

.field public greylist-max-o eventCode:I

.field public greylist-max-o eventTag:Landroid/os/BatteryStats$HistoryTag;

.field public final greylist-max-o localEventTag:Landroid/os/BatteryStats$HistoryTag;

.field public final blacklist localProcessStateChange:Landroid/os/BatteryStats$ProcessStateChange;

.field public final greylist-max-o localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

.field public final greylist-max-o localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

.field public blacklist modemRailChargeMah:D

.field public greylist-max-p next:Landroid/os/BatteryStats$HistoryItem;

.field public greylist-max-o numReadInts:I

.field public blacklist powerStats:Lcom/android/internal/os/PowerStats;

.field public blacklist processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

.field public greylist states:I

.field public greylist states2:I

.field public greylist-max-o stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field public blacklist tagsFirstOccurrence:Z

.field public greylist time:J

.field public greylist-max-o wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

.field public greylist-max-o wakelockTag:Landroid/os/BatteryStats$HistoryTag;

.field public blacklist wifiRailChargeMah:D


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 2141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1896
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2131
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2132
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2133
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2134
    new-instance v0, Landroid/os/BatteryStats$ProcessStateChange;

    invoke-direct {v0}, Landroid/os/BatteryStats$ProcessStateChange;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localProcessStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 2142
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 2144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1896
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2131
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2132
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2133
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2134
    new-instance v0, Landroid/os/BatteryStats$ProcessStateChange;

    invoke-direct {v0}, Landroid/os/BatteryStats$ProcessStateChange;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localProcessStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 2145
    invoke-virtual {p0, p1}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 2146
    return-void
.end method

.method private greylist-max-o setToCommon(Landroid/os/BatteryStats$HistoryItem;)V
    .registers 5
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .line 2267
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 2268
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 2269
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 2270
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 2271
    iget-short v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iput-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 2272
    iget-short v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    iput-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    .line 2273
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 2274
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    .line 2275
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    .line 2276
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2277
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 2278
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    .line 2279
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2280
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_3f

    .line 2282
    :cond_3d
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2284
    :goto_3f
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_4f

    .line 2285
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2286
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_51

    .line 2288
    :cond_4f
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2290
    :goto_51
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2291
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_65

    .line 2292
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2293
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_67

    .line 2295
    :cond_65
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2297
    :goto_67
    iget-boolean v0, p1, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    iput-boolean v0, p0, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 2298
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 2299
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 2300
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 2301
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 2302
    return-void
.end method


# virtual methods
.method public greylist-max-p clear()V
    .registers 4

    .line 2229
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2230
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2231
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 2232
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 2233
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 2234
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 2235
    iput-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 2236
    iput-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    .line 2237
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 2238
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    .line 2239
    iput-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    .line 2240
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2241
    const/16 v1, 0x100

    iput v1, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 2242
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2243
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2244
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2245
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2246
    iput-boolean v0, p0, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 2247
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 2248
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 2249
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 2250
    return-void
.end method

.method public greylist-max-o isDeltaData()Z
    .registers 2

    .line 1903
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "src"    # Landroid/os/Parcel;

    .line 2183
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 2184
    .local v0, "start":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2186
    .local v1, "bat":I
    and-int/lit16 v2, v1, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2187
    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 2188
    shr-int/lit8 v2, v1, 0x10

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 2189
    shr-int/lit8 v2, v1, 0x14

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 2190
    shr-int/lit8 v2, v1, 0x18

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 2191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2192
    .local v2, "bat2":I
    const v3, 0xffff

    and-int v4, v2, v3

    int-to-short v4, v4

    iput-short v4, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 2193
    shr-int/lit8 v4, v2, 0x10

    and-int/2addr v3, v4

    int-to-short v3, v3

    iput-short v3, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    .line 2194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 2195
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    .line 2196
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    .line 2197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 2199
    const/high16 v3, 0x10000000

    and-int/2addr v3, v1

    const/4 v4, 0x0

    if-eqz v3, :cond_6f

    .line 2200
    iget-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2201
    iget-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_71

    .line 2203
    :cond_6f
    iput-object v4, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2205
    :goto_71
    const/high16 v3, 0x20000000

    and-int/2addr v3, v1

    if-eqz v3, :cond_80

    .line 2206
    iget-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2207
    iget-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_82

    .line 2209
    :cond_80
    iput-object v4, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2211
    :goto_82
    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, v1

    if-eqz v3, :cond_97

    .line 2212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2213
    iget-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2214
    iget-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_9c

    .line 2216
    :cond_97
    const/4 v3, 0x0

    iput v3, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2217
    iput-object v4, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2219
    :goto_9c
    iget-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x5

    if-eq v3, v4, :cond_ac

    iget-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x7

    if-ne v3, v4, :cond_a7

    goto :goto_ac

    .line 2222
    :cond_a7
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    goto :goto_b2

    .line 2220
    :cond_ac
    :goto_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 2224
    :goto_b2
    iget v3, p0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2225
    return-void
.end method

.method public greylist-max-p same(Landroid/os/BatteryStats$HistoryItem;)Z
    .registers 5
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .line 2321
    invoke-virtual {p0, p1}, Landroid/os/BatteryStats$HistoryItem;->sameNonEvent(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_61

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eq v0, v2, :cond_e

    goto :goto_61

    .line 2324
    :cond_e
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eq v0, v2, :cond_29

    .line 2325
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_28

    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v0, :cond_1d

    goto :goto_28

    .line 2328
    :cond_1d
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 2329
    return v1

    .line 2326
    :cond_28
    :goto_28
    return v1

    .line 2332
    :cond_29
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eq v0, v2, :cond_44

    .line 2333
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_43

    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v0, :cond_38

    goto :goto_43

    .line 2336
    :cond_38
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 2337
    return v1

    .line 2334
    :cond_43
    :goto_43
    return v1

    .line 2340
    :cond_44
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-eq v0, v2, :cond_5f

    .line 2341
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_5e

    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v0, :cond_53

    goto :goto_5e

    .line 2344
    :cond_53
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 2345
    return v1

    .line 2342
    :cond_5e
    :goto_5e
    return v1

    .line 2348
    :cond_5f
    const/4 v0, 0x1

    return v0

    .line 2322
    :cond_61
    :goto_61
    return v1
.end method

.method public greylist-max-o sameNonEvent(Landroid/os/BatteryStats$HistoryItem;)Z
    .registers 6
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .line 2305
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v0, v1, :cond_50

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-ne v0, v1, :cond_50

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-ne v0, v1, :cond_50

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-ne v0, v1, :cond_50

    iget-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-ne v0, v1, :cond_50

    iget-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    if-ne v0, v1, :cond_50

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    if-ne v0, v1, :cond_50

    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    iget-wide v2, p1, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_50

    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    iget-wide v2, p1, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_50

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-ne v0, v1, :cond_50

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    if-ne v0, v1, :cond_50

    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-wide v2, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_50

    const/4 v0, 0x1

    goto :goto_51

    :cond_50
    const/4 v0, 0x0

    :goto_51
    return v0
.end method

.method public greylist-max-p setTo(JBLandroid/os/BatteryStats$HistoryItem;)V
    .registers 5
    .param p1, "time"    # J
    .param p3, "cmd"    # B
    .param p4, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .line 2261
    iput-wide p1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2262
    iput-byte p3, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2263
    invoke-direct {p0, p4}, Landroid/os/BatteryStats$HistoryItem;->setToCommon(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2264
    return-void
.end method

.method public greylist-max-p setTo(Landroid/os/BatteryStats$HistoryItem;)V
    .registers 4
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .line 2254
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2255
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2256
    invoke-direct {p0, p1}, Landroid/os/BatteryStats$HistoryItem;->setToCommon(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2257
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2149
    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2150
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    and-int/lit16 v0, v0, 0xff

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xf0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    shl-int/lit8 v1, v1, 0x14

    const/high16 v2, 0xf00000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, 0xf000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 2155
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v2, 0x0

    if-eqz v1, :cond_32

    const/high16 v1, 0x10000000

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    or-int/2addr v0, v1

    .line 2156
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_3b

    const/high16 v1, 0x20000000

    goto :goto_3c

    :cond_3b
    move v1, v2

    :goto_3c
    or-int/2addr v0, v1

    .line 2157
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v1, :cond_43

    const/high16 v2, 0x40000000    # 2.0f

    :cond_43
    or-int/2addr v0, v2

    .line 2158
    .local v0, "bat":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2159
    iget-short v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    const v2, 0xffff

    and-int/2addr v1, v2

    iget-short v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, -0x10000

    and-int/2addr v2, v3

    or-int v0, v1, v2

    .line 2161
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2162
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2163
    iget-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2164
    iget-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2165
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2166
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2167
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_7b

    .line 2168
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v1, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2170
    :cond_7b
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_84

    .line 2171
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v1, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2173
    :cond_84
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v1, :cond_92

    .line 2174
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2175
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v1, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2177
    :cond_92
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x5

    if-eq v1, v2, :cond_9c

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x7

    if-ne v1, v2, :cond_a1

    .line 2178
    :cond_9c
    iget-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2180
    :cond_a1
    return-void
.end method
