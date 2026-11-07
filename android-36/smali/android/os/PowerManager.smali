.class public final Landroid/os/PowerManager;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManager$WakeLock;,
        Landroid/os/PowerManager$ScreenTimeoutPolicyListener;,
        Landroid/os/PowerManager$ServiceType;,
        Landroid/os/PowerManager$LowPowerStandbyPolicy;,
        Landroid/os/PowerManager$LowPowerStandbyPortsLock;,
        Landroid/os/PowerManager$LowPowerStandbyPortDescription;,
        Landroid/os/PowerManager$OnThermalStatusChangedListener;,
        Landroid/os/PowerManager$OnThermalHeadroomChangedListener;,
        Landroid/os/PowerManager$WakeLockStateListener;,
        Landroid/os/PowerManager$LowPowerStandbyAllowedReason;,
        Landroid/os/PowerManager$ThermalStatus;,
        Landroid/os/PowerManager$AutoPowerSaveModeTriggers;,
        Landroid/os/PowerManager$SoundTriggerPowerSaveMode;,
        Landroid/os/PowerManager$LocationPowerSaveMode;,
        Landroid/os/PowerManager$ScreenTimeoutPolicy;,
        Landroid/os/PowerManager$ShutdownReason;,
        Landroid/os/PowerManager$SleepData;,
        Landroid/os/PowerManager$WakeData;,
        Landroid/os/PowerManager$GoToSleepReason;,
        Landroid/os/PowerManager$WakeReason;,
        Landroid/os/PowerManager$BrightnessConstraint;,
        Landroid/os/PowerManager$UserActivityEvent;
    }
.end annotation


# static fields
.field public static final whitelist ACQUIRE_CAUSES_WAKEUP:I = 0x10000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_DEVICE_IDLE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.DEVICE_IDLE_MODE_CHANGED"

.field public static final whitelist ACTION_DEVICE_LIGHT_IDLE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

.field public static final blacklist ACTION_ENHANCED_DISCHARGE_PREDICTION_CHANGED:Ljava/lang/String; = "android.os.action.ENHANCED_DISCHARGE_PREDICTION_CHANGED"

.field public static final greylist-max-r ACTION_LIGHT_DEVICE_IDLE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_LOW_POWER_STANDBY_ENABLED_CHANGED:Ljava/lang/String; = "android.os.action.LOW_POWER_STANDBY_ENABLED_CHANGED"

.field public static final whitelist ACTION_LOW_POWER_STANDBY_POLICY_CHANGED:Ljava/lang/String; = "android.os.action.LOW_POWER_STANDBY_POLICY_CHANGED"

.field public static final whitelist ACTION_LOW_POWER_STANDBY_PORTS_CHANGED:Ljava/lang/String; = "android.os.action.LOW_POWER_STANDBY_PORTS_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_POWER_SAVE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_MODE_CHANGED"

.field public static final greylist-max-o ACTION_POWER_SAVE_MODE_CHANGED_INTERNAL:Ljava/lang/String; = "android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL"

.field public static final greylist-max-o ACTION_POWER_SAVE_TEMP_WHITELIST_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

.field public static final greylist-max-o ACTION_POWER_SAVE_WHITELIST_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

.field public static final blacklist BRIGHTNESS_CONSTRAINT_TYPE_DEFAULT:I = 0x2

.field public static final blacklist BRIGHTNESS_CONSTRAINT_TYPE_DIM:I = 0x3

.field public static final blacklist BRIGHTNESS_CONSTRAINT_TYPE_MAXIMUM:I = 0x1

.field public static final blacklist BRIGHTNESS_CONSTRAINT_TYPE_MINIMUM:I = 0x0

.field public static final greylist-max-o BRIGHTNESS_DEFAULT:I = -0x1

.field public static final blacklist BRIGHTNESS_INVALID:I = -0x1

.field public static final blacklist BRIGHTNESS_INVALID_FLOAT:F = NaNf

.field public static final blacklist BRIGHTNESS_MAX:F = 1.0f

.field public static final blacklist BRIGHTNESS_MIN:F = 0.0f

.field public static final greylist-max-o BRIGHTNESS_OFF:I = 0x0

.field public static final blacklist BRIGHTNESS_OFF_FLOAT:F = -1.0f

.field public static final greylist BRIGHTNESS_ON:I = 0xff

.field private static final blacklist CACHE_KEY_IS_INTERACTIVE_API:Ljava/lang/String; = "is_interactive"

.field private static final blacklist CACHE_KEY_IS_POWER_SAVE_MODE_API:Ljava/lang/String; = "is_power_save_mode"

.field public static final greylist-max-o DOZE_WAKE_LOCK:I = 0x40

.field public static final greylist-max-o DRAW_WAKE_LOCK:I = 0x80

.field public static final whitelist FEATURE_WAKE_ON_LAN_IN_LOW_POWER_STANDBY:Ljava/lang/String; = "com.android.lowpowerstandby.WAKE_ON_LAN"

.field public static final whitelist FULL_WAKE_LOCK:I = 0x1a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o GO_TO_SLEEP_FLAG_NO_DOZE:I = 0x1

.field public static final blacklist GO_TO_SLEEP_FLAG_SOFT_SLEEP:I = 0x2

.field public static final greylist-max-o GO_TO_SLEEP_REASON_ACCESSIBILITY:I = 0x7

.field public static final greylist-max-o GO_TO_SLEEP_REASON_APPLICATION:I = 0x0

.field public static final greylist-max-o GO_TO_SLEEP_REASON_DEVICE_ADMIN:I = 0x1

.field public static final blacklist GO_TO_SLEEP_REASON_DEVICE_FOLD:I = 0xd

.field public static final blacklist GO_TO_SLEEP_REASON_DISPLAY_GROUPS_TURNED_OFF:I = 0xc

.field public static final blacklist GO_TO_SLEEP_REASON_DISPLAY_GROUP_REMOVED:I = 0xb

.field public static final blacklist GO_TO_SLEEP_REASON_FORCE_SUSPEND:I = 0x8

.field public static final greylist-max-o GO_TO_SLEEP_REASON_HDMI:I = 0x5

.field public static final blacklist GO_TO_SLEEP_REASON_INATTENTIVE:I = 0x9

.field public static final greylist-max-o GO_TO_SLEEP_REASON_LID_SWITCH:I = 0x3

.field public static final blacklist GO_TO_SLEEP_REASON_MAX:I = 0xe

.field public static final blacklist GO_TO_SLEEP_REASON_MIN:I = 0x0

.field public static final greylist-max-o GO_TO_SLEEP_REASON_POWER_BUTTON:I = 0x4

.field public static final blacklist GO_TO_SLEEP_REASON_QUIESCENT:I = 0xa

.field public static final greylist-max-o GO_TO_SLEEP_REASON_SLEEP_BUTTON:I = 0x6

.field public static final greylist GO_TO_SLEEP_REASON_TIMEOUT:I = 0x2

.field public static final blacklist GO_TO_SLEEP_REASON_UNKNOWN:I = 0xe

.field public static final whitelist LOCATION_MODE_ALL_DISABLED_WHEN_SCREEN_OFF:I = 0x2

.field public static final whitelist LOCATION_MODE_FOREGROUND_ONLY:I = 0x3

.field public static final whitelist LOCATION_MODE_GPS_DISABLED_WHEN_SCREEN_OFF:I = 0x1

.field public static final whitelist LOCATION_MODE_NO_CHANGE:I = 0x0

.field public static final whitelist LOCATION_MODE_THROTTLE_REQUESTS_WHEN_SCREEN_OFF:I = 0x4

.field public static final whitelist LOW_POWER_STANDBY_ALLOWED_REASON_ONGOING_CALL:I = 0x4

.field public static final whitelist LOW_POWER_STANDBY_ALLOWED_REASON_TEMP_POWER_SAVE_ALLOWLIST:I = 0x2

.field public static final whitelist LOW_POWER_STANDBY_ALLOWED_REASON_VOICE_INTERACTION:I = 0x1

.field private static final blacklist MAX_CACHE_ENTRIES:I = 0x1

.field public static final blacklist MAX_LOCATION_MODE:I = 0x4

.field public static final blacklist MAX_SOUND_TRIGGER_MODE:I = 0x2

.field private static final blacklist MINIMUM_HEADROOM_TIME_MILLIS:I = 0x1f4

.field public static final blacklist MIN_LOCATION_MODE:I = 0x0

.field public static final blacklist MIN_SOUND_TRIGGER_MODE:I = 0x0

.field public static final whitelist ON_AFTER_RELEASE:I = 0x20000000

.field public static final whitelist PARTIAL_WAKE_LOCK:I = 0x1

.field public static final whitelist POWER_SAVE_MODE_TRIGGER_DYNAMIC:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist POWER_SAVE_MODE_TRIGGER_PERCENTAGE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x20

.field public static final greylist-max-o REBOOT_QUIESCENT:Ljava/lang/String; = "quiescent"

.field public static final greylist-max-o REBOOT_RECOVERY:Ljava/lang/String; = "recovery"

.field public static final greylist-max-o REBOOT_RECOVERY_UPDATE:Ljava/lang/String; = "recovery-update"

.field public static final greylist-max-o REBOOT_REQUESTED_BY_DEVICE_OWNER:Ljava/lang/String; = "deviceowner"

.field public static final greylist-max-o REBOOT_SAFE_MODE:Ljava/lang/String; = "safemode"

.field public static final whitelist REBOOT_USERSPACE:Ljava/lang/String; = "userspace"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o RELEASE_FLAG_TIMEOUT:I = 0x10000

.field public static final whitelist RELEASE_FLAG_WAIT_FOR_NO_PROXIMITY:I = 0x1

.field public static final whitelist SCREEN_BRIGHT_WAKE_LOCK:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SCREEN_DIM_WAKE_LOCK:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SCREEN_TIMEOUT_ACTIVE:I = 0x0

.field public static final blacklist SCREEN_TIMEOUT_KEEP_DISPLAY_ON:I = 0x1

.field public static final blacklist SCREEN_TIMEOUT_OVERRIDE_WAKE_LOCK:I = 0x100

.field public static final greylist-max-o SHUTDOWN_BATTERY_THERMAL_STATE:Ljava/lang/String; = "thermal,battery"

.field public static final greylist-max-o SHUTDOWN_LOW_BATTERY:Ljava/lang/String; = "battery"

.field public static final greylist-max-o SHUTDOWN_REASON_BATTERY_THERMAL:I = 0x6

.field public static final greylist-max-o SHUTDOWN_REASON_LOW_BATTERY:I = 0x5

.field public static final greylist-max-o SHUTDOWN_REASON_REBOOT:I = 0x2

.field public static final greylist-max-o SHUTDOWN_REASON_SHUTDOWN:I = 0x1

.field public static final greylist-max-o SHUTDOWN_REASON_THERMAL_SHUTDOWN:I = 0x4

.field public static final greylist-max-o SHUTDOWN_REASON_UNKNOWN:I = 0x0

.field public static final greylist-max-o SHUTDOWN_REASON_USER_REQUESTED:I = 0x3

.field public static final blacklist SHUTDOWN_THERMAL_STATE:Ljava/lang/String; = "thermal"

.field public static final greylist-max-o SHUTDOWN_USER_REQUESTED:Ljava/lang/String; = "userrequested"

.field public static final whitelist SOUND_TRIGGER_MODE_ALL_DISABLED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SOUND_TRIGGER_MODE_ALL_ENABLED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SOUND_TRIGGER_MODE_CRITICAL_ONLY:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SYSTEM_WAKELOCK:I = -0x80000000

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PowerManager"

.field public static final whitelist THERMAL_STATUS_CRITICAL:I = 0x4

.field public static final whitelist THERMAL_STATUS_EMERGENCY:I = 0x5

.field public static final whitelist THERMAL_STATUS_LIGHT:I = 0x1

.field public static final whitelist THERMAL_STATUS_MODERATE:I = 0x2

.field public static final whitelist THERMAL_STATUS_NONE:I = 0x0

.field public static final whitelist THERMAL_STATUS_SEVERE:I = 0x3

.field public static final whitelist THERMAL_STATUS_SHUTDOWN:I = 0x6

.field public static final greylist-max-o UNIMPORTANT_FOR_LOGGING:I = 0x40000000

.field public static final whitelist USER_ACTIVITY_EVENT_ACCESSIBILITY:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist USER_ACTIVITY_EVENT_ATTENTION:I = 0x4

.field public static final whitelist USER_ACTIVITY_EVENT_BUTTON:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist USER_ACTIVITY_EVENT_DEVICE_STATE:I = 0x6

.field public static final blacklist USER_ACTIVITY_EVENT_FACE_DOWN:I = 0x5

.field public static final whitelist USER_ACTIVITY_EVENT_OTHER:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USER_ACTIVITY_EVENT_TOUCH:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USER_ACTIVITY_FLAG_INDIRECT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USER_ACTIVITY_FLAG_NO_CHANGE_LIGHTS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o WAKE_LOCK_LEVEL_MASK:I = 0xffff

.field public static final blacklist WAKE_REASON_APPLICATION:I = 0x2

.field public static final blacklist WAKE_REASON_BIOMETRIC:I = 0x11

.field public static final blacklist WAKE_REASON_CAMERA_LAUNCH:I = 0x5

.field public static final blacklist WAKE_REASON_DISPLAY_GROUP_ADDED:I = 0xa

.field public static final blacklist WAKE_REASON_DISPLAY_GROUP_TURNED_ON:I = 0xb

.field public static final blacklist WAKE_REASON_DOCK:I = 0x12

.field public static final blacklist WAKE_REASON_DREAM_FINISHED:I = 0xd

.field public static final blacklist WAKE_REASON_GESTURE:I = 0x4

.field public static final blacklist WAKE_REASON_HDMI:I = 0x8

.field public static final blacklist WAKE_REASON_LID:I = 0x9

.field public static final blacklist WAKE_REASON_LIFT:I = 0x10

.field public static final blacklist WAKE_REASON_PLUGGED_IN:I = 0x3

.field public static final blacklist WAKE_REASON_POWER_BUTTON:I = 0x1

.field public static final blacklist WAKE_REASON_TAP:I = 0xf

.field public static final blacklist WAKE_REASON_TILT:I = 0xe

.field public static final blacklist WAKE_REASON_UNFOLD_DEVICE:I = 0xc

.field public static final blacklist WAKE_REASON_UNKNOWN:I = 0x0

.field public static final blacklist WAKE_REASON_WAKE_KEY:I = 0x6

.field public static final blacklist WAKE_REASON_WAKE_MOTION:I = 0x7


# instance fields
.field final greylist-max-o mContext:Landroid/content/Context;

.field final greylist-max-p mHandler:Landroid/os/Handler;

.field private final blacklist mInteractiveCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLastHeadroomUpdate:Ljava/util/concurrent/atomic/AtomicLong;

.field private blacklist mPowerExemptionManager:Landroid/os/PowerExemptionManager;

.field private final blacklist mPowerSaveModeCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mScreenTimeoutPolicyListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/PowerManager$ScreenTimeoutPolicyListener;",
            "Landroid/os/IScreenTimeoutPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mService:Landroid/os/IPowerManager;

.field private final blacklist mThermalHeadroomListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/PowerManager$OnThermalHeadroomChangedListener;",
            "Landroid/os/IThermalHeadroomListener;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mThermalService:Landroid/os/IThermalService;

.field private final blacklist mThermalStatusListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/PowerManager$OnThermalStatusChangedListener;",
            "Landroid/os/IThermalStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mconvertThresholdsToMap(Landroid/os/PowerManager;[F)Ljava/util/Map;
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/PowerManager;->convertThresholdsToMap([F)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/IPowerManager;Landroid/os/IThermalService;Landroid/os/Handler;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IPowerManager;
    .param p3, "thermalService"    # Landroid/os/IThermalService;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 1259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1205
    new-instance v0, Landroid/os/PowerManager$1;

    .line 1206
    const-string/jumbo v1, "is_power_save_mode"

    invoke-static {v1}, Landroid/os/PowerManager;->getCacheArgs(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v1, v3}, Landroid/os/PowerManager$1;-><init>(Landroid/os/PowerManager;Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    iput-object v0, p0, Landroid/os/PowerManager;->mPowerSaveModeCache:Landroid/app/PropertyInvalidatedCache;

    .line 1218
    new-instance v0, Landroid/os/PowerManager$2;

    .line 1219
    const-string/jumbo v1, "is_interactive"

    invoke-static {v1}, Landroid/os/PowerManager;->getCacheArgs(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1, v3}, Landroid/os/PowerManager$2;-><init>(Landroid/os/PowerManager;Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    iput-object v0, p0, Landroid/os/PowerManager;->mInteractiveCache:Landroid/app/PropertyInvalidatedCache;

    .line 1245
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/PowerManager;->mThermalStatusListenerMap:Landroid/util/ArrayMap;

    .line 1248
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/PowerManager;->mThermalHeadroomListenerMap:Landroid/util/ArrayMap;

    .line 1252
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/PowerManager;->mScreenTimeoutPolicyListeners:Landroid/util/ArrayMap;

    .line 3014
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Landroid/os/PowerManager;->mLastHeadroomUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1260
    iput-object p1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    .line 1261
    iput-object p2, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    .line 1262
    iput-object p3, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    .line 1263
    iput-object p4, p0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    .line 1264
    return-void
.end method

.method private blacklist convertThresholdsToMap([F)Ljava/util/Map;
    .registers 7
    .param p1, "thresholds"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 3119
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 3120
    .local v0, "ret":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Float;>;"
    const/4 v2, 0x1

    .local v2, "status":I
    :goto_7
    if-gt v2, v1, :cond_21

    .line 3121
    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget v4, p1, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3120
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3125
    .end local v2    # "status":I
    :cond_21
    return-object v0
.end method

.method private static blacklist getCacheArgs(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;
    .registers 3
    .param p0, "api"    # Ljava/lang/String;

    .line 1198
    new-instance v0, Landroid/app/PropertyInvalidatedCache$Args;

    const-string/jumbo v1, "system_server"

    invoke-direct {v0, v1}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;)V

    .line 1199
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    .line 1200
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache$Args;->isolateUids(Z)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    .line 1201
    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache$Args;->cacheNulls(Z)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    .line 1202
    invoke-virtual {v0, p0}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    .line 1198
    return-object v0
.end method

.method private blacklist getPowerExemptionManager()Landroid/os/PowerExemptionManager;
    .registers 3

    .line 1267
    iget-object v0, p0, Landroid/os/PowerManager;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    if-nez v0, :cond_10

    .line 1269
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerExemptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerExemptionManager;

    iput-object v0, p0, Landroid/os/PowerManager;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    .line 1271
    :cond_10
    iget-object v0, p0, Landroid/os/PowerManager;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    return-object v0
.end method

.method public static blacklist invalidateIsInteractiveCaches()V
    .registers 2

    .line 4340
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "is_interactive"

    invoke-static {v0, v1}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 4341
    return-void
.end method

.method public static blacklist invalidatePowerSaveModeCaches()V
    .registers 2

    .line 4333
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "is_power_save_mode"

    invoke-static {v0, v1}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 4334
    return-void
.end method

.method public static blacklist isRebootingUserspaceSupportedImpl()Z
    .registers 1

    .line 1973
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist locationPowerSaveModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "mode"    # I

    .line 1175
    packed-switch p0, :pswitch_data_18

    .line 1187
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1185
    :pswitch_8
    const-string v0, "THROTTLE_REQUESTS_WHEN_SCREEN_OFF"

    return-object v0

    .line 1183
    :pswitch_b
    const-string v0, "FOREGROUND_ONLY"

    return-object v0

    .line 1181
    :pswitch_e
    const-string v0, "ALL_DISABLED_WHEN_SCREEN_OFF"

    return-object v0

    .line 1179
    :pswitch_11
    const-string v0, "GPS_DISABLED_WHEN_SCREEN_OFF"

    return-object v0

    .line 1177
    :pswitch_14
    const-string v0, "NO_CHANGE"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist lowPowerStandbyAllowedReasonsToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "allowedReasons"    # I

    .line 3454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3455
    .local v0, "allowedStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_10

    .line 3456
    const-string v1, "ALLOWED_REASON_VOICE_INTERACTION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3457
    and-int/lit8 p0, p0, -0x2

    .line 3459
    :cond_10
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1b

    .line 3460
    const-string v1, "ALLOWED_REASON_TEMP_POWER_SAVE_ALLOWLIST"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3461
    and-int/lit8 p0, p0, -0x3

    .line 3463
    :cond_1b
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_26

    .line 3464
    const-string v1, "ALLOWED_REASON_ONGOING_CALL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3465
    and-int/lit8 p0, p0, -0x5

    .line 3467
    :cond_26
    if-eqz p0, :cond_2f

    .line 3468
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3470
    :cond_2f
    const-string v1, ","

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist sleepReasonToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "sleepReason"    # I

    .line 539
    packed-switch p0, :pswitch_data_3e

    .line 555
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 554
    :pswitch_8
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 543
    :pswitch_c
    const-string v0, "device_folded"

    return-object v0

    .line 545
    :pswitch_f
    const-string v0, "display_groups_turned_off"

    return-object v0

    .line 544
    :pswitch_12
    const-string v0, "display_group_removed"

    return-object v0

    .line 551
    :pswitch_15
    const-string/jumbo v0, "quiescent"

    return-object v0

    .line 548
    :pswitch_19
    const-string/jumbo v0, "inattentive"

    return-object v0

    .line 546
    :pswitch_1d
    const-string v0, "force_suspend"

    return-object v0

    .line 540
    :pswitch_20
    const-string v0, "accessibility"

    return-object v0

    .line 552
    :pswitch_23
    const-string/jumbo v0, "sleep_button"

    return-object v0

    .line 547
    :pswitch_27
    const-string/jumbo v0, "hdmi"

    return-object v0

    .line 550
    :pswitch_2b
    const-string/jumbo v0, "power_button"

    return-object v0

    .line 549
    :pswitch_2f
    const-string/jumbo v0, "lid_switch"

    return-object v0

    .line 553
    :pswitch_33
    const-string/jumbo v0, "timeout"

    return-object v0

    .line 542
    :pswitch_37
    const-string v0, "device_admin"

    return-object v0

    .line 541
    :pswitch_3a
    const-string v0, "application"

    return-object v0

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist userActivityEventToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "userActivityEvent"    # I

    .line 401
    packed-switch p0, :pswitch_data_20

    .line 409
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 408
    :pswitch_8
    const-string v0, "deviceState"

    return-object v0

    .line 407
    :pswitch_b
    const-string v0, "faceDown"

    return-object v0

    .line 406
    :pswitch_e
    const-string v0, "attention"

    return-object v0

    .line 405
    :pswitch_11
    const-string v0, "accessibility"

    return-object v0

    .line 404
    :pswitch_14
    const-string/jumbo v0, "touch"

    return-object v0

    .line 403
    :pswitch_18
    const-string v0, "button"

    return-object v0

    .line 402
    :pswitch_1b
    const-string/jumbo v0, "other"

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static greylist validateWakeLockParameters(ILjava/lang/String;)V
    .registers 4
    .param p0, "levelAndFlags"    # I
    .param p1, "tag"    # Ljava/lang/String;

    .line 1441
    const v0, 0xffff

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_1c

    .line 1452
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a valid wake lock level."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1450
    :sswitch_f
    nop

    .line 1454
    if-eqz p1, :cond_13

    .line 1457
    return-void

    .line 1455
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The tag must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_f
        0x6 -> :sswitch_f
        0xa -> :sswitch_f
        0x1a -> :sswitch_f
        0x20 -> :sswitch_f
        0x40 -> :sswitch_f
        0x80 -> :sswitch_f
        0x100 -> :sswitch_f
    .end sparse-switch
.end method

.method public static blacklist wakeReasonToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "wakeReason"    # I

    .line 781
    packed-switch p0, :pswitch_data_42

    .line 801
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 800
    :pswitch_8
    const-string v0, "WAKE_REASON_DOCK"

    return-object v0

    .line 799
    :pswitch_b
    const-string v0, "WAKE_REASON_BIOMETRIC"

    return-object v0

    .line 798
    :pswitch_e
    const-string v0, "WAKE_REASON_LIFT"

    return-object v0

    .line 797
    :pswitch_11
    const-string v0, "WAKE_REASON_TAP"

    return-object v0

    .line 796
    :pswitch_14
    const-string v0, "WAKE_REASON_TILT"

    return-object v0

    .line 795
    :pswitch_17
    const-string v0, "WAKE_REASON_DREAM_FINISHED"

    return-object v0

    .line 794
    :pswitch_1a
    const-string v0, "WAKE_REASON_UNFOLD_DEVICE"

    return-object v0

    .line 793
    :pswitch_1d
    const-string v0, "WAKE_REASON_DISPLAY_GROUP_TURNED_ON"

    return-object v0

    .line 792
    :pswitch_20
    const-string v0, "WAKE_REASON_DISPLAY_GROUP_ADDED"

    return-object v0

    .line 791
    :pswitch_23
    const-string v0, "WAKE_REASON_LID"

    return-object v0

    .line 790
    :pswitch_26
    const-string v0, "WAKE_REASON_HDMI"

    return-object v0

    .line 789
    :pswitch_29
    const-string v0, "WAKE_REASON_WAKE_MOTION"

    return-object v0

    .line 788
    :pswitch_2c
    const-string v0, "WAKE_REASON_WAKE_KEY"

    return-object v0

    .line 787
    :pswitch_2f
    const-string v0, "WAKE_REASON_CAMERA_LAUNCH"

    return-object v0

    .line 786
    :pswitch_32
    const-string v0, "WAKE_REASON_GESTURE"

    return-object v0

    .line 785
    :pswitch_35
    const-string v0, "WAKE_REASON_PLUGGED_IN"

    return-object v0

    .line 784
    :pswitch_38
    const-string v0, "WAKE_REASON_APPLICATION"

    return-object v0

    .line 783
    :pswitch_3b
    const-string v0, "WAKE_REASON_POWER_BUTTON"

    return-object v0

    .line 782
    :pswitch_3e
    const-string v0, "WAKE_REASON_UNKNOWN"

    return-object v0

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public blacklist addScreenTimeoutPolicyListener(ILjava/util/concurrent/Executor;Landroid/os/PowerManager$ScreenTimeoutPolicyListener;)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/os/PowerManager$ScreenTimeoutPolicyListener;

    .line 1821
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1822
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1823
    iget-object v0, p0, Landroid/os/PowerManager;->mScreenTimeoutPolicyListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Listener already registered: %s"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1826
    new-instance v0, Landroid/os/PowerManager$3;

    invoke-direct {v0, p0, p2, p3}, Landroid/os/PowerManager$3;-><init>(Landroid/os/PowerManager;Ljava/util/concurrent/Executor;Landroid/os/PowerManager$ScreenTimeoutPolicyListener;)V

    .line 1839
    .local v0, "stub":Landroid/os/IScreenTimeoutPolicyListener;
    :try_start_21
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1, v0}, Landroid/os/IPowerManager;->addScreenTimeoutPolicyListener(ILandroid/os/IScreenTimeoutPolicyListener;)V

    .line 1840
    iget-object v1, p0, Landroid/os/PowerManager;->mScreenTimeoutPolicyListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2b} :catch_2d

    .line 1843
    nop

    .line 1844
    return-void

    .line 1841
    :catch_2d
    move-exception v1

    .line 1842
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist addThermalHeadroomListener(Landroid/os/PowerManager$OnThermalHeadroomChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/PowerManager$OnThermalHeadroomChangedListener;

    .line 2944
    const-string v0, "Thermal headroom listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2945
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/PowerManager;->addThermalHeadroomListener(Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalHeadroomChangedListener;)V

    .line 2946
    return-void
.end method

.method public whitelist addThermalHeadroomListener(Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalHeadroomChangedListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/os/PowerManager$OnThermalHeadroomChangedListener;

    .line 2957
    const-string v0, "Thermal headroom listener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2958
    const-string v0, "Executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2959
    iget-object v0, p0, Landroid/os/PowerManager;->mThermalHeadroomListenerMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2960
    :try_start_d
    iget-object v1, p0, Landroid/os/PowerManager;->mThermalHeadroomListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    const-string v2, "Thermal headroom listener already registered: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2962
    new-instance v1, Landroid/os/PowerManager$5;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/PowerManager$5;-><init>(Landroid/os/PowerManager;Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalHeadroomChangedListener;)V
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_44

    .line 2978
    .local v1, "internalListener":Landroid/os/IThermalHeadroomListener;
    :try_start_26
    iget-object v2, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v2, v1}, Landroid/os/IThermalService;->registerThermalHeadroomListener(Landroid/os/IThermalHeadroomListener;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2979
    iget-object v2, p0, Landroid/os/PowerManager;->mThermalHeadroomListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_33} :catch_3e
    .catchall {:try_start_26 .. :try_end_33} :catchall_44

    .line 2985
    nop

    .line 2986
    .end local v1    # "internalListener":Landroid/os/IThermalHeadroomListener;
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_44

    .line 2987
    return-void

    .line 2981
    .restart local v1    # "internalListener":Landroid/os/IThermalHeadroomListener;
    :cond_36
    :try_start_36
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Thermal headroom listener failed to set"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "internalListener":Landroid/os/IThermalHeadroomListener;
    .end local p0    # "this":Landroid/os/PowerManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/os/PowerManager$OnThermalHeadroomChangedListener;
    throw v2
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3e} :catch_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_44

    .line 2983
    .restart local v1    # "internalListener":Landroid/os/IThermalHeadroomListener;
    .restart local p0    # "this":Landroid/os/PowerManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/os/PowerManager$OnThermalHeadroomChangedListener;
    :catch_3e
    move-exception v2

    .line 2984
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3f
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/os/PowerManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/os/PowerManager$OnThermalHeadroomChangedListener;
    throw v3

    .line 2986
    .end local v1    # "internalListener":Landroid/os/IThermalHeadroomListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/PowerManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/os/PowerManager$OnThermalHeadroomChangedListener;
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_44

    throw v1
.end method

.method public whitelist addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/PowerManager$OnThermalStatusChangedListener;

    .line 2873
    const-string v0, "Thermal status listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2874
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/PowerManager;->addThermalStatusListener(Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    .line 2875
    return-void
.end method

.method public whitelist addThermalStatusListener(Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/os/PowerManager$OnThermalStatusChangedListener;

    .line 2885
    const-string v0, "Thermal status listener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2886
    const-string v0, "Executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2887
    iget-object v0, p0, Landroid/os/PowerManager;->mThermalStatusListenerMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2888
    :try_start_d
    iget-object v1, p0, Landroid/os/PowerManager;->mThermalStatusListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    const-string v2, "Thermal status listener already registered: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2890
    new-instance v1, Landroid/os/PowerManager$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/PowerManager$4;-><init>(Landroid/os/PowerManager;Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_44

    .line 2902
    .local v1, "internalListener":Landroid/os/IThermalStatusListener;
    :try_start_26
    iget-object v2, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v2, v1}, Landroid/os/IThermalService;->registerThermalStatusListener(Landroid/os/IThermalStatusListener;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2903
    iget-object v2, p0, Landroid/os/PowerManager;->mThermalStatusListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_33} :catch_3e
    .catchall {:try_start_26 .. :try_end_33} :catchall_44

    .line 2909
    nop

    .line 2910
    .end local v1    # "internalListener":Landroid/os/IThermalStatusListener;
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_44

    .line 2911
    return-void

    .line 2905
    .restart local v1    # "internalListener":Landroid/os/IThermalStatusListener;
    :cond_36
    :try_start_36
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Thermal status listener failed to set"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "internalListener":Landroid/os/IThermalStatusListener;
    .end local p0    # "this":Landroid/os/PowerManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/os/PowerManager$OnThermalStatusChangedListener;
    throw v2
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3e} :catch_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_44

    .line 2907
    .restart local v1    # "internalListener":Landroid/os/IThermalStatusListener;
    .restart local p0    # "this":Landroid/os/PowerManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/os/PowerManager$OnThermalStatusChangedListener;
    :catch_3e
    move-exception v2

    .line 2908
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3f
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/os/PowerManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/os/PowerManager$OnThermalStatusChangedListener;
    throw v3

    .line 2910
    .end local v1    # "internalListener":Landroid/os/IThermalStatusListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/PowerManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/os/PowerManager$OnThermalStatusChangedListener;
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_44

    throw v1
.end method

.method public blacklist areAutoPowerSaveModesEnabled()Z
    .registers 3

    .line 2040
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->areAutoPowerSaveModesEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2041
    :catch_7
    move-exception v0

    .line 2042
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o boostScreenBrightness(J)V
    .registers 5
    .param p1, "time"    # J

    .line 1790
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->boostScreenBrightness(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1793
    nop

    .line 1794
    return-void

    .line 1791
    :catch_7
    move-exception v0

    .line 1792
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist dream(J)V
    .registers 4
    .param p1, "time"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1770
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/service/dreams/Sandman;->startDreamByUserRequest(Landroid/content/Context;)V

    .line 1771
    return-void
.end method

.method public blacklist forceLowPowerStandbyActive(Z)V
    .registers 4
    .param p1, "active"    # Z

    .line 2558
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->forceLowPowerStandbyActive(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2561
    nop

    .line 2562
    return-void

    .line 2559
    :catch_7
    move-exception v0

    .line 2560
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist forceSuspend()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3286
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->forceSuspend()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3287
    :catch_7
    move-exception v0

    .line 3288
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getActiveLowPowerStandbyPorts()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/PowerManager$LowPowerStandbyPortDescription;",
            ">;"
        }
    .end annotation

    .line 2687
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    .line 2688
    invoke-interface {v0}, Landroid/os/IPowerManager;->getActiveLowPowerStandbyPorts()Ljava/util/List;

    move-result-object v0

    .line 2687
    invoke-static {v0}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->fromParcelable(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 2689
    :catch_b
    move-exception v0

    .line 2690
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getBatteryDischargePrediction()Ljava/time/Duration;
    .registers 3

    .line 2333
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getBatteryDischargePrediction()Landroid/os/ParcelDuration;

    move-result-object v0

    .line 2334
    .local v0, "parcelDuration":Landroid/os/ParcelDuration;
    if-nez v0, :cond_a

    .line 2335
    const/4 v1, 0x0

    return-object v1

    .line 2337
    :cond_a
    invoke-virtual {v0}, Landroid/os/ParcelDuration;->getDuration()Ljava/time/Duration;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v1

    .line 2338
    .end local v0    # "parcelDuration":Landroid/os/ParcelDuration;
    :catch_f
    move-exception v0

    .line 2339
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r getBrightnessConstraint(I)F
    .registers 3
    .param p1, "constraint"    # I

    .line 1314
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/PowerManager;->getBrightnessConstraint(II)F

    move-result v0

    return v0
.end method

.method public blacklist getBrightnessConstraint(II)F
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "constraint"    # I

    .line 1323
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->getBrightnessConstraint(II)F

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1324
    :catch_7
    move-exception v0

    .line 1325
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getCurrentThermalStatus()I
    .registers 3

    .line 2800
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v0}, Landroid/os/IThermalService;->getCurrentThermalStatus()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2801
    :catch_7
    move-exception v0

    .line 2802
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getDefaultScreenBrightnessSetting()I
    .registers 3

    .line 1304
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public whitelist getFullPowerSavePolicy()Landroid/os/BatterySaverPolicyConfig;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2106
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getFullPowerSavePolicy()Landroid/os/BatterySaverPolicyConfig;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2107
    :catch_7
    move-exception v0

    .line 2108
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getLastShutdownReason()I
    .registers 3

    .line 3243
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getLastShutdownReason()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3244
    :catch_7
    move-exception v0

    .line 3245
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getLastSleepReason()I
    .registers 3

    .line 3260
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getLastSleepReason()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3261
    :catch_7
    move-exception v0

    .line 3262
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getLocationPowerSaveMode()I
    .registers 3

    .line 2387
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    .line 2388
    .local v0, "powerSaveState":Landroid/os/PowerSaveState;
    iget-boolean v1, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-nez v1, :cond_b

    .line 2389
    const/4 v1, 0x0

    return v1

    .line 2391
    :cond_b
    iget v1, v0, Landroid/os/PowerSaveState;->locationMode:I

    return v1
.end method

.method public whitelist getLowPowerStandbyPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2604
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getLowPowerStandbyPolicy()Landroid/os/IPowerManager$LowPowerStandbyPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->fromParcelable(Landroid/os/IPowerManager$LowPowerStandbyPolicy;)Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 2605
    :catch_b
    move-exception v0

    .line 2606
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getMaximumScreenBrightnessSetting()I
    .registers 3

    .line 1294
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public greylist getMinimumScreenBrightnessSetting()I
    .registers 3

    .line 1282
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public whitelist getPowerSaveModeTrigger()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2286
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getPowerSaveModeTrigger()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2287
    :catch_7
    move-exception v0

    .line 2288
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getPowerSaveState(I)Landroid/os/PowerSaveState;
    .registers 4
    .param p1, "serviceType"    # I

    .line 2370
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2371
    :catch_7
    move-exception v0

    .line 2372
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSoundTriggerPowerSaveMode()I
    .registers 3

    .line 2407
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    .line 2408
    .local v0, "powerSaveState":Landroid/os/PowerSaveState;
    iget-boolean v1, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-nez v1, :cond_c

    .line 2409
    const/4 v1, 0x0

    return v1

    .line 2411
    :cond_c
    iget v1, v0, Landroid/os/PowerSaveState;->soundTriggerMode:I

    return v1
.end method

.method public whitelist getThermalHeadroom(I)F
    .registers 10
    .param p1, "forecastSeconds"    # I

    .line 3056
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3057
    .local v0, "now":J
    iget-object v2, p0, Landroid/os/PowerManager;->mLastHeadroomUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 3058
    .local v2, "timeSinceLastUpdate":J
    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-gez v4, :cond_15

    .line 3059
    const/high16 v4, 0x7fc00000    # Float.NaN

    return v4

    .line 3063
    :cond_15
    :try_start_15
    iget-object v4, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v4, p1}, Landroid/os/IThermalService;->getThermalHeadroom(I)F

    move-result v4

    .line 3064
    .local v4, "forecast":F
    iget-object v5, p0, Landroid/os/PowerManager;->mLastHeadroomUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_24} :catch_25

    .line 3065
    return v4

    .line 3066
    .end local v4    # "forecast":F
    :catch_25
    move-exception v4

    .line 3067
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public whitelist getThermalHeadroomThresholds()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 3112
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v0}, Landroid/os/IThermalService;->getThermalHeadroomThresholds()[F

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/PowerManager;->convertThresholdsToMap([F)Ljava/util/Map;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 3113
    :catch_b
    move-exception v0

    .line 3114
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist goToSleep(IJII)V
    .registers 12
    .param p1, "displayId"    # I
    .param p2, "time"    # J
    .param p4, "reason"    # I
    .param p5, "flags"    # I

    .line 1630
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_e

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    .end local p1    # "displayId":I
    .end local p2    # "time":J
    .end local p4    # "reason":I
    .end local p5    # "flags":I
    .local v1, "displayId":I
    .local v2, "time":J
    .local v4, "reason":I
    .local v5, "flags":I
    :try_start_6
    invoke-interface/range {v0 .. v5}, Landroid/os/IPowerManager;->goToSleepWithDisplayId(IJII)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_b

    .line 1633
    nop

    .line 1634
    return-void

    .line 1631
    :catch_b
    move-exception v0

    move-object p1, v0

    goto :goto_14

    .end local v1    # "displayId":I
    .end local v2    # "time":J
    .end local v4    # "reason":I
    .end local v5    # "flags":I
    .restart local p1    # "displayId":I
    .restart local p2    # "time":J
    .restart local p4    # "reason":I
    .restart local p5    # "flags":I
    :catch_e
    move-exception v0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object p1, v0

    .line 1632
    .end local p2    # "time":J
    .end local p4    # "reason":I
    .end local p5    # "flags":I
    .restart local v1    # "displayId":I
    .restart local v2    # "time":J
    .restart local v4    # "reason":I
    .restart local v5    # "flags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_14
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public greylist goToSleep(J)V
    .registers 4
    .param p1, "time"    # J

    .line 1559
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 1560
    return-void
.end method

.method public greylist goToSleep(JII)V
    .registers 7
    .param p1, "time"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I

    .line 1593
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IPowerManager;->goToSleep(JII)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1596
    nop

    .line 1597
    return-void

    .line 1594
    :catch_7
    move-exception v0

    .line 1595
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAllowedInLowPowerStandby(I)Z
    .registers 4
    .param p1, "reason"    # I

    .line 2633
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->isReasonAllowedInLowPowerStandby(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2634
    :catch_7
    move-exception v0

    .line 2635
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAllowedInLowPowerStandby(Ljava/lang/String;)Z
    .registers 4
    .param p1, "feature"    # Ljava/lang/String;

    .line 2645
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->isFeatureAllowedInLowPowerStandby(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2646
    :catch_7
    move-exception v0

    .line 2647
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAmbientDisplayAvailable()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3149
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isAmbientDisplayAvailable()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3150
    :catch_7
    move-exception v0

    .line 3151
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAmbientDisplaySuppressed()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3206
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isAmbientDisplaySuppressed()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3207
    :catch_7
    move-exception v0

    .line 3208
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAmbientDisplaySuppressedForToken(Ljava/lang/String;)Z
    .registers 4
    .param p1, "token"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3190
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->isAmbientDisplaySuppressedForToken(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3191
    :catch_7
    move-exception v0

    .line 3192
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isAmbientDisplaySuppressedForTokenByApp(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "appUid"    # I

    .line 3227
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->isAmbientDisplaySuppressedForTokenByApp(Ljava/lang/String;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3228
    :catch_7
    move-exception v0

    .line 3229
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isBatteryDischargePredictionPersonalized()Z
    .registers 3

    .line 2353
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isBatteryDischargePredictionPersonalized()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2354
    :catch_7
    move-exception v0

    .line 2355
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isBatterySaverSupported()Z
    .registers 3

    .line 2088
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isBatterySaverSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2089
    :catch_7
    move-exception v0

    .line 2090
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isDeviceIdleMode()Z
    .registers 3

    .line 2428
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isDeviceIdleMode()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2429
    :catch_7
    move-exception v0

    .line 2430
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isDeviceLightIdleMode()Z
    .registers 3

    .line 2447
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isLightDeviceIdleMode()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2448
    :catch_7
    move-exception v0

    .line 2449
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isExemptFromLowPowerStandby()Z
    .registers 3

    .line 2617
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isExemptFromLowPowerStandby()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2618
    :catch_7
    move-exception v0

    .line 2619
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isIgnoringBatteryOptimizations(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2702
    invoke-direct {p0}, Landroid/os/PowerManager;->getPowerExemptionManager()Landroid/os/PowerExemptionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/PowerExemptionManager;->isAllowListed(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist isInteractive()Z
    .registers 3

    .line 1942
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->displayPowerManagerApis()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1943
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->isInteractive(I)Z

    move-result v0

    return v0

    .line 1945
    :cond_11
    iget-object v0, p0, Landroid/os/PowerManager;->mInteractiveCache:Landroid/app/PropertyInvalidatedCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isInteractive(I)Z
    .registers 4
    .param p1, "displayId"    # I

    .line 1960
    iget-object v0, p0, Landroid/os/PowerManager;->mInteractiveCache:Landroid/app/PropertyInvalidatedCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isLightDeviceIdleMode()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2462
    invoke-virtual {p0}, Landroid/os/PowerManager;->isDeviceLightIdleMode()Z

    move-result v0

    return v0
.end method

.method public whitelist isLowPowerStandbyEnabled()Z
    .registers 3

    .line 2496
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isLowPowerStandbyEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2497
    :catch_7
    move-exception v0

    .line 2498
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isLowPowerStandbySupported()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2477
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isLowPowerStandbySupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2478
    :catch_7
    move-exception v0

    .line 2479
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isPowerSaveMode()Z
    .registers 3

    .line 2055
    iget-object v0, p0, Landroid/os/PowerManager;->mPowerSaveModeCache:Landroid/app/PropertyInvalidatedCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist isRebootingUserspaceSupported()Z
    .registers 2

    .line 1982
    invoke-static {}, Landroid/os/PowerManager;->isRebootingUserspaceSupportedImpl()Z

    move-result v0

    return v0
.end method

.method public whitelist isScreenOn()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1904
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0
.end method

.method public whitelist isSustainedPerformanceModeSupported()Z
    .registers 3

    .line 2738
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110275

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isWakeLockLevelSupported(I)Z
    .registers 4
    .param p1, "level"    # I

    .line 1875
    :try_start_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->displayPowerManagerApis()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1876
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    .line 1877
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 1876
    invoke-interface {v0, p1, v1}, Landroid/os/IPowerManager;->isWakeLockLevelSupportedWithDisplayId(II)Z

    move-result v0

    return v0

    .line 1879
    :cond_13
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->isWakeLockLevelSupported(I)Z

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    return v0

    .line 1880
    :catch_1a
    move-exception v0

    .line 1881
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist nap(J)V
    .registers 5
    .param p1, "time"    # J

    .line 1741
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->nap(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1744
    nop

    .line 1745
    return-void

    .line 1742
    :catch_7
    move-exception v0

    .line 1743
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist newLowPowerStandbyPortsLock(Ljava/util/List;)Landroid/os/PowerManager$LowPowerStandbyPortsLock;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/PowerManager$LowPowerStandbyPortDescription;",
            ">;)",
            "Landroid/os/PowerManager$LowPowerStandbyPortsLock;"
        }
    .end annotation

    .line 2669
    .local p1, "ports":Ljava/util/List;, "Ljava/util/List<Landroid/os/PowerManager$LowPowerStandbyPortDescription;>;"
    new-instance v0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;

    invoke-direct {v0, p0, p1}, Landroid/os/PowerManager$LowPowerStandbyPortsLock;-><init>(Landroid/os/PowerManager;Ljava/util/List;)V

    .line 2670
    .local v0, "standbyPorts":Landroid/os/PowerManager$LowPowerStandbyPortsLock;
    return-object v0
.end method

.method public whitelist newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .registers 10
    .param p1, "levelAndFlags"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 1411
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->displayPowerManagerApis()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1412
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;I)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    return-object v0

    .line 1414
    :cond_11
    invoke-static {p1, p2}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    .line 1415
    new-instance v1, Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    .end local p1    # "levelAndFlags":I
    .end local p2    # "tag":Ljava/lang/String;
    .local v3, "levelAndFlags":I
    .local v4, "tag":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Landroid/os/PowerManager$WakeLock;-><init>(Landroid/os/PowerManager;ILjava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method

.method public blacklist newWakeLock(ILjava/lang/String;I)Landroid/os/PowerManager$WakeLock;
    .registers 10
    .param p1, "levelAndFlags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "displayId"    # I

    .line 1434
    invoke-static {p1, p2}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    .line 1435
    new-instance v0, Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    .end local p1    # "levelAndFlags":I
    .end local p2    # "tag":Ljava/lang/String;
    .end local p3    # "displayId":I
    .local v2, "levelAndFlags":I
    .local v3, "tag":Ljava/lang/String;
    .local v5, "displayId":I
    invoke-direct/range {v0 .. v5}, Landroid/os/PowerManager$WakeLock;-><init>(Landroid/os/PowerManager;ILjava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public whitelist reboot(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 2004
    const-string/jumbo v0, "userspace"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/os/PowerManager;->isRebootingUserspaceSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_18

    .line 2005
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempted userspace reboot on a device that doesn\'t support it"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2009
    :cond_18
    :goto_18
    :try_start_18
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_21

    .line 2012
    nop

    .line 2013
    return-void

    .line 2010
    :catch_21
    move-exception v0

    .line 2011
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o rebootSafeMode()V
    .registers 4

    .line 2025
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/os/IPowerManager;->rebootSafeMode(ZZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 2028
    nop

    .line 2029
    return-void

    .line 2026
    :catch_9
    move-exception v0

    .line 2027
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeScreenTimeoutPolicyListener(ILandroid/os/PowerManager$ScreenTimeoutPolicyListener;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "listener"    # Landroid/os/PowerManager$ScreenTimeoutPolicyListener;

    .line 1855
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1856
    iget-object v0, p0, Landroid/os/PowerManager;->mScreenTimeoutPolicyListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IScreenTimeoutPolicyListener;

    .line 1857
    .local v0, "internalListener":Landroid/os/IScreenTimeoutPolicyListener;
    if-eqz v0, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    const-string v2, "Listener was not added"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1860
    :try_start_18
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1, v0}, Landroid/os/IPowerManager;->removeScreenTimeoutPolicyListener(ILandroid/os/IScreenTimeoutPolicyListener;)V

    .line 1861
    iget-object v1, p0, Landroid/os/PowerManager;->mScreenTimeoutPolicyListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_22} :catch_24

    .line 1864
    nop

    .line 1865
    return-void

    .line 1862
    :catch_24
    move-exception v1

    .line 1863
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist removeThermalHeadroomListener(Landroid/os/PowerManager$OnThermalHeadroomChangedListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/os/PowerManager$OnThermalHeadroomChangedListener;

    .line 2996
    const-string v0, "Thermal headroom listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2997
    iget-object v0, p0, Landroid/os/PowerManager;->mThermalHeadroomListenerMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2998
    :try_start_8
    iget-object v1, p0, Landroid/os/PowerManager;->mThermalHeadroomListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IThermalHeadroomListener;

    .line 2999
    .local v1, "internalListener":Landroid/os/IThermalHeadroomListener;
    if-eqz v1, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    const-string v3, "Thermal headroom listener was not added"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_38

    .line 3002
    :try_start_1a
    iget-object v2, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v2, v1}, Landroid/os/IThermalService;->unregisterThermalHeadroomListener(Landroid/os/IThermalHeadroomListener;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 3003
    iget-object v2, p0, Landroid/os/PowerManager;->mThermalHeadroomListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_27} :catch_32
    .catchall {:try_start_1a .. :try_end_27} :catchall_38

    .line 3009
    nop

    .line 3010
    .end local v1    # "internalListener":Landroid/os/IThermalHeadroomListener;
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_38

    .line 3011
    return-void

    .line 3005
    .restart local v1    # "internalListener":Landroid/os/IThermalHeadroomListener;
    :cond_2a
    :try_start_2a
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to unregister thermal status listener"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "internalListener":Landroid/os/IThermalHeadroomListener;
    .end local p0    # "this":Landroid/os/PowerManager;
    .end local p1    # "listener":Landroid/os/PowerManager$OnThermalHeadroomChangedListener;
    throw v2
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_32} :catch_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_38

    .line 3007
    .restart local v1    # "internalListener":Landroid/os/IThermalHeadroomListener;
    .restart local p0    # "this":Landroid/os/PowerManager;
    .restart local p1    # "listener":Landroid/os/PowerManager$OnThermalHeadroomChangedListener;
    :catch_32
    move-exception v2

    .line 3008
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_33
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/os/PowerManager;
    .end local p1    # "listener":Landroid/os/PowerManager$OnThermalHeadroomChangedListener;
    throw v3

    .line 3010
    .end local v1    # "internalListener":Landroid/os/IThermalHeadroomListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/PowerManager;
    .restart local p1    # "listener":Landroid/os/PowerManager$OnThermalHeadroomChangedListener;
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public whitelist removeThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/os/PowerManager$OnThermalStatusChangedListener;

    .line 2919
    const-string v0, "Thermal status listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2920
    iget-object v0, p0, Landroid/os/PowerManager;->mThermalStatusListenerMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2921
    :try_start_8
    iget-object v1, p0, Landroid/os/PowerManager;->mThermalStatusListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IThermalStatusListener;

    .line 2922
    .local v1, "internalListener":Landroid/os/IThermalStatusListener;
    if-eqz v1, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    const-string v3, "Thermal status listener was not added"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_38

    .line 2925
    :try_start_1a
    iget-object v2, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v2, v1}, Landroid/os/IThermalService;->unregisterThermalStatusListener(Landroid/os/IThermalStatusListener;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2926
    iget-object v2, p0, Landroid/os/PowerManager;->mThermalStatusListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_27} :catch_32
    .catchall {:try_start_1a .. :try_end_27} :catchall_38

    .line 2932
    nop

    .line 2933
    .end local v1    # "internalListener":Landroid/os/IThermalStatusListener;
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_38

    .line 2934
    return-void

    .line 2928
    .restart local v1    # "internalListener":Landroid/os/IThermalStatusListener;
    :cond_2a
    :try_start_2a
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to unregister thermal status listener"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "internalListener":Landroid/os/IThermalStatusListener;
    .end local p0    # "this":Landroid/os/PowerManager;
    .end local p1    # "listener":Landroid/os/PowerManager$OnThermalStatusChangedListener;
    throw v2
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_32} :catch_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_38

    .line 2930
    .restart local v1    # "internalListener":Landroid/os/IThermalStatusListener;
    .restart local p0    # "this":Landroid/os/PowerManager;
    .restart local p1    # "listener":Landroid/os/PowerManager$OnThermalStatusChangedListener;
    :catch_32
    move-exception v2

    .line 2931
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_33
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/os/PowerManager;
    .end local p1    # "listener":Landroid/os/PowerManager$OnThermalStatusChangedListener;
    throw v3

    .line 2933
    .end local v1    # "internalListener":Landroid/os/IThermalStatusListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/PowerManager;
    .restart local p1    # "listener":Landroid/os/PowerManager$OnThermalStatusChangedListener;
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public whitelist setAdaptivePowerSaveEnabled(Z)Z
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2230
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setAdaptivePowerSaveEnabled(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2231
    :catch_7
    move-exception v0

    .line 2232
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAdaptivePowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .registers 4
    .param p1, "config"    # Landroid/os/BatterySaverPolicyConfig;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2209
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setAdaptivePowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2210
    :catch_7
    move-exception v0

    .line 2211
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setBatteryDischargePrediction(Ljava/time/Duration;Z)V
    .registers 5
    .param p1, "timeRemaining"    # Ljava/time/Duration;
    .param p2, "isPersonalized"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2313
    if-eqz p1, :cond_14

    .line 2317
    :try_start_2
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    new-instance v1, Landroid/os/ParcelDuration;

    invoke-direct {v1, p1}, Landroid/os/ParcelDuration;-><init>(Ljava/time/Duration;)V

    invoke-interface {v0, v1, p2}, Landroid/os/IPowerManager;->setBatteryDischargePrediction(Landroid/os/ParcelDuration;Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_e

    .line 2321
    nop

    .line 2322
    return-void

    .line 2319
    :catch_e
    move-exception v0

    .line 2320
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2314
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "time remaining must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setDozeAfterScreenOff(Z)V
    .registers 4
    .param p1, "dozeAfterScreenOf"    # Z

    .line 3135
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setDozeAfterScreenOff(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3138
    nop

    .line 3139
    return-void

    .line 3136
    :catch_7
    move-exception v0

    .line 3137
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDynamicPowerSaveHint(ZI)Z
    .registers 5
    .param p1, "powerSaveHint"    # Z
    .param p2, "disableThreshold"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2188
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->setDynamicPowerSaveHint(ZI)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2189
    :catch_7
    move-exception v0

    .line 2190
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setFullPowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .registers 4
    .param p1, "config"    # Landroid/os/BatterySaverPolicyConfig;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2147
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setFullPowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2148
    :catch_7
    move-exception v0

    .line 2149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setLowPowerStandbyActiveDuringMaintenance(Z)V
    .registers 4
    .param p1, "activeDuringMaintenance"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2538
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setLowPowerStandbyActiveDuringMaintenance(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2541
    nop

    .line 2542
    return-void

    .line 2539
    :catch_7
    move-exception v0

    .line 2540
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setLowPowerStandbyEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2517
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setLowPowerStandbyEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2520
    nop

    .line 2521
    return-void

    .line 2518
    :catch_7
    move-exception v0

    .line 2519
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setLowPowerStandbyPolicy(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V
    .registers 4
    .param p1, "policy"    # Landroid/os/PowerManager$LowPowerStandbyPolicy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2581
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-static {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->toParcelable(Landroid/os/PowerManager$LowPowerStandbyPolicy;)Landroid/os/IPowerManager$LowPowerStandbyPolicy;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setLowPowerStandbyPolicy(Landroid/os/IPowerManager$LowPowerStandbyPolicy;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 2584
    nop

    .line 2585
    return-void

    .line 2582
    :catch_b
    move-exception v0

    .line 2583
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setPowerSaveModeEnabled(Z)Z
    .registers 4
    .param p1, "mode"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2073
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setPowerSaveModeEnabled(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2074
    :catch_7
    move-exception v0

    .line 2075
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o shutdown(ZLjava/lang/String;Z)V
    .registers 6
    .param p1, "confirm"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "wait"    # Z

    .line 2716
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IPowerManager;->shutdown(ZLjava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2719
    nop

    .line 2720
    return-void

    .line 2717
    :catch_7
    move-exception v0

    .line 2718
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist suppressAmbientDisplay(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "suppress"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3171
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->suppressAmbientDisplay(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3174
    nop

    .line 3175
    return-void

    .line 3172
    :catch_7
    move-exception v0

    .line 3173
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist userActivity(JII)V
    .registers 11
    .param p1, "when"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1523
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_13

    move-wide v2, p1

    move v4, p3

    move v5, p4

    .end local p1    # "when":J
    .end local p3    # "event":I
    .end local p4    # "flags":I
    .local v2, "when":J
    .local v4, "event":I
    .local v5, "flags":I
    :try_start_b
    invoke-interface/range {v0 .. v5}, Landroid/os/IPowerManager;->userActivity(IJII)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    .line 1526
    nop

    .line 1527
    return-void

    .line 1524
    :catch_10
    move-exception v0

    move-object p1, v0

    goto :goto_18

    .end local v2    # "when":J
    .end local v4    # "event":I
    .end local v5    # "flags":I
    .restart local p1    # "when":J
    .restart local p3    # "event":I
    .restart local p4    # "flags":I
    :catch_13
    move-exception v0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-object p1, v0

    .line 1525
    .end local p3    # "event":I
    .end local p4    # "flags":I
    .restart local v2    # "when":J
    .restart local v4    # "event":I
    .restart local v5    # "flags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_18
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public greylist userActivity(JZ)V
    .registers 5
    .param p1, "when"    # J
    .param p3, "noChangeLights"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1488
    nop

    .line 1489
    nop

    .line 1488
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 1490
    return-void
.end method

.method public greylist wakeUp(J)V
    .registers 5
    .param p1, "time"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1646
    const/4 v0, 0x0

    const-string/jumbo v1, "wakeUp"

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 1647
    return-void
.end method

.method public blacklist wakeUp(JILjava/lang/String;)V
    .registers 11
    .param p1, "time"    # J
    .param p3, "reason"    # I
    .param p4, "details"    # Ljava/lang/String;

    .line 1671
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_13

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    .end local p1    # "time":J
    .end local p3    # "reason":I
    .end local p4    # "details":Ljava/lang/String;
    .local v1, "time":J
    .local v3, "reason":I
    .local v4, "details":Ljava/lang/String;
    :try_start_b
    invoke-interface/range {v0 .. v5}, Landroid/os/IPowerManager;->wakeUp(JILjava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    .line 1674
    nop

    .line 1675
    return-void

    .line 1672
    :catch_10
    move-exception v0

    move-object p1, v0

    goto :goto_18

    .end local v1    # "time":J
    .end local v3    # "reason":I
    .end local v4    # "details":Ljava/lang/String;
    .restart local p1    # "time":J
    .restart local p3    # "reason":I
    .restart local p4    # "details":Ljava/lang/String;
    :catch_13
    move-exception v0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object p1, v0

    .line 1673
    .end local p3    # "reason":I
    .end local p4    # "details":Ljava/lang/String;
    .restart local v1    # "time":J
    .restart local v3    # "reason":I
    .restart local v4    # "details":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_18
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist wakeUp(JILjava/lang/String;I)V
    .registers 13
    .param p1, "time"    # J
    .param p3, "reason"    # I
    .param p4, "details"    # Ljava/lang/String;
    .param p5, "displayId"    # I

    .line 1711
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_14

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move v6, p5

    .end local p1    # "time":J
    .end local p3    # "reason":I
    .end local p4    # "details":Ljava/lang/String;
    .end local p5    # "displayId":I
    .local v1, "time":J
    .local v3, "reason":I
    .local v4, "details":Ljava/lang/String;
    .local v6, "displayId":I
    :try_start_c
    invoke-interface/range {v0 .. v6}, Landroid/os/IPowerManager;->wakeUpWithDisplayId(JILjava/lang/String;Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    .line 1715
    nop

    .line 1716
    return-void

    .line 1713
    :catch_11
    move-exception v0

    move-object p1, v0

    goto :goto_1a

    .end local v1    # "time":J
    .end local v3    # "reason":I
    .end local v4    # "details":Ljava/lang/String;
    .end local v6    # "displayId":I
    .restart local p1    # "time":J
    .restart local p3    # "reason":I
    .restart local p4    # "details":Ljava/lang/String;
    .restart local p5    # "displayId":I
    :catch_14
    move-exception v0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move v6, p5

    move-object p1, v0

    .line 1714
    .end local p3    # "reason":I
    .end local p4    # "details":Ljava/lang/String;
    .end local p5    # "displayId":I
    .restart local v1    # "time":J
    .restart local v3    # "reason":I
    .restart local v4    # "details":Ljava/lang/String;
    .restart local v6    # "displayId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1a
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public greylist wakeUp(JLjava/lang/String;)V
    .registers 5
    .param p1, "time"    # J
    .param p3, "details"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1660
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 1661
    return-void
.end method
