.class public Lcom/android/server/DeviceIdleController;
.super Lcom/android/server/SystemService;
.source "DeviceIdleController.java"

# interfaces
.implements Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceIdleController$1;,
        Lcom/android/server/DeviceIdleController$2;,
        Lcom/android/server/DeviceIdleController$3;,
        Lcom/android/server/DeviceIdleController$4;,
        Lcom/android/server/DeviceIdleController$5;,
        Lcom/android/server/DeviceIdleController$6;,
        Lcom/android/server/DeviceIdleController$7;,
        Lcom/android/server/DeviceIdleController$8;,
        Lcom/android/server/DeviceIdleController$BinderService;,
        Lcom/android/server/DeviceIdleController$Constants;,
        Lcom/android/server/DeviceIdleController$LocalService;,
        Lcom/android/server/DeviceIdleController$MotionListener;,
        Lcom/android/server/DeviceIdleController$MyHandler;,
        Lcom/android/server/DeviceIdleController$Shell;
    }
.end annotation


# static fields
.field private static final COMPRESS_TIME:Z = false

.field private static final DEBUG:Z = false

.field private static final EVENT_BUFFER_SIZE:I = 0x64

.field private static final EVENT_DEEP_IDLE:I = 0x4

.field private static final EVENT_DEEP_MAINTENANCE:I = 0x5

.field private static final EVENT_LIGHT_IDLE:I = 0x2

.field private static final EVENT_LIGHT_MAINTENANCE:I = 0x3

.field private static final EVENT_NORMAL:I = 0x1

.field private static final EVENT_NULL:I = 0x0

.field private static final LIGHT_STATE_ACTIVE:I = 0x0

.field private static final LIGHT_STATE_IDLE:I = 0x4

.field private static final LIGHT_STATE_IDLE_MAINTENANCE:I = 0x6

.field private static final LIGHT_STATE_INACTIVE:I = 0x1

.field private static final LIGHT_STATE_OVERRIDE:I = 0x7

.field private static final LIGHT_STATE_PRE_IDLE:I = 0x3

.field private static final LIGHT_STATE_WAITING_FOR_NETWORK:I = 0x5

.field static final MSG_FINISH_IDLE_OP:I = 0x8

.field static final MSG_REPORT_ACTIVE:I = 0x5

.field static final MSG_REPORT_IDLE_OFF:I = 0x4

.field static final MSG_REPORT_IDLE_ON:I = 0x2

.field static final MSG_REPORT_IDLE_ON_LIGHT:I = 0x3

.field static final MSG_REPORT_MAINTENANCE_ACTIVITY:I = 0x7

.field static final MSG_TEMP_APP_WHITELIST_TIMEOUT:I = 0x6

.field static final MSG_WRITE_CONFIG:I = 0x1

.field private static final STATE_ACTIVE:I = 0x0

.field private static final STATE_IDLE:I = 0x5

.field private static final STATE_IDLE_MAINTENANCE:I = 0x6

.field private static final STATE_IDLE_PENDING:I = 0x2

.field private static final STATE_INACTIVE:I = 0x1

.field private static final STATE_LOCATING:I = 0x4

.field private static final STATE_SENSING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DeviceIdleController"


# instance fields
.field private mActiveIdleOpCount:I

.field private mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmsActive:Z

.field private mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

.field private mCharging:Z

.field public final mConfigFile:Lcom/android/internal/os/AtomicFile;

.field private mConnectivityService:Lcom/android/server/ConnectivityService;

.field private mConstants:Lcom/android/server/DeviceIdleController$Constants;

.field private mCurDisplay:Landroid/view/Display;

.field private mCurIdleBudget:J

.field private final mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mDeepEnabled:Z

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mEventCmds:[I

.field private final mEventTimes:[J

.field private mForceIdle:Z

.field private final mGenericLocationListener:Landroid/location/LocationListener;

.field private final mGpsLocationListener:Landroid/location/LocationListener;

.field final mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

.field private mHasGps:Z

.field private mHasNetworkLocation:Z

.field private mIdleIntent:Landroid/content/Intent;

.field private final mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

.field private mInactiveTimeout:J

.field private mJobsActive:Z

.field private mLastGenericLocation:Landroid/location/Location;

.field private mLastGpsLocation:Landroid/location/Location;

.field private final mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mLightEnabled:Z

.field private mLightIdleIntent:Landroid/content/Intent;

.field private mLightState:I

.field private mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

.field private mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field private mLocated:Z

.field private mLocating:Z

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationRequest:Landroid/location/LocationRequest;

.field private final mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/os/IMaintenanceActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaintenanceStartTime:J

.field private final mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

.field private mMotionSensor:Landroid/hardware/Sensor;

.field private mNetworkConnected:Z

.field private mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

.field mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

.field private mNextAlarmTime:J

.field private mNextIdleDelay:J

.field private mNextIdlePendingDelay:J

.field private mNextLightAlarmTime:J

.field private mNextLightIdleDelay:J

.field private mNextSensingTimeoutAlarmTime:J

.field private mNotMoving:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveWhitelistAllAppIdArray:[I

.field private final mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistApps:Landroid/util/ArrayMap;
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

.field private final mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;
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

.field private mPowerSaveWhitelistExceptIdleAppIdArray:[I

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

.field private mPowerSaveWhitelistUserAppIdArray:[I

.field private final mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;
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

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReportedMaintenanceActivity:Z

.field private mScreenOn:Z

.field private final mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mState:I

.field private mTempWhitelistAppIdArray:[I

.field private final mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/MutableLong;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/DeviceIdleController;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MotionListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/16 v2, 0x64

    #@2
    const/4 v1, 0x0

    #@3
    .line 1277
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@6
    .line 222
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@8
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@b
    .line 221
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    #@d
    .line 228
    new-instance v0, Landroid/util/ArrayMap;

    #@f
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@14
    .line 234
    new-instance v0, Landroid/util/ArrayMap;

    #@16
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@1b
    .line 239
    new-instance v0, Landroid/util/ArrayMap;

    #@1d
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@22
    .line 245
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@24
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@27
    .line 244
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    #@29
    .line 250
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@2b
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@2e
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    #@30
    .line 256
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@32
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@35
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@37
    .line 263
    new-array v0, v1, [I

    #@39
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    #@3b
    .line 268
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@3d
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@40
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    #@42
    .line 274
    new-array v0, v1, [I

    #@44
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    #@46
    .line 279
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@48
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@4b
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    #@4d
    .line 285
    new-array v0, v1, [I

    #@4f
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    #@51
    .line 292
    new-instance v0, Landroid/util/SparseArray;

    #@53
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@56
    .line 291
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    #@58
    .line 302
    new-array v0, v1, [I

    #@5a
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    #@5c
    .line 311
    new-array v0, v2, [I

    #@5e
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    #@60
    .line 312
    new-array v0, v2, [J

    #@62
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    #@64
    .line 323
    new-instance v0, Lcom/android/server/DeviceIdleController$1;

    #@66
    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$1;-><init>(Lcom/android/server/DeviceIdleController;)V

    #@69
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    #@6b
    .line 349
    new-instance v0, Lcom/android/server/DeviceIdleController$2;

    #@6d
    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$2;-><init>(Lcom/android/server/DeviceIdleController;)V

    #@70
    .line 348
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@72
    .line 359
    new-instance v0, Lcom/android/server/DeviceIdleController$3;

    #@74
    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$3;-><init>(Lcom/android/server/DeviceIdleController;)V

    #@77
    .line 358
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@79
    .line 371
    new-instance v0, Lcom/android/server/DeviceIdleController$4;

    #@7b
    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$4;-><init>(Lcom/android/server/DeviceIdleController;)V

    #@7e
    .line 370
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@80
    .line 380
    new-instance v0, Lcom/android/server/DeviceIdleController$5;

    #@82
    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$5;-><init>(Lcom/android/server/DeviceIdleController;)V

    #@85
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

    #@87
    .line 396
    new-instance v0, Lcom/android/server/DeviceIdleController$6;

    #@89
    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$6;-><init>(Lcom/android/server/DeviceIdleController;)V

    #@8c
    .line 395
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@8e
    .line 462
    new-instance v0, Lcom/android/server/DeviceIdleController$MotionListener;

    #@90
    const/4 v1, 0x0

    #@91
    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$MotionListener;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$MotionListener;)V

    #@94
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    #@96
    .line 464
    new-instance v0, Lcom/android/server/DeviceIdleController$7;

    #@98
    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$7;-><init>(Lcom/android/server/DeviceIdleController;)V

    #@9b
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    #@9d
    .line 485
    new-instance v0, Lcom/android/server/DeviceIdleController$8;

    #@9f
    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$8;-><init>(Lcom/android/server/DeviceIdleController;)V

    #@a2
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    #@a4
    .line 1278
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    #@a6
    new-instance v1, Ljava/io/File;

    #@a8
    invoke-static {}, Lcom/android/server/DeviceIdleController;->getSystemDir()Ljava/io/File;

    #@ab
    move-result-object v2

    #@ac
    const-string/jumbo v3, "deviceidle.xml"

    #@af
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@b2
    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    #@b5
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    #@b7
    .line 1279
    new-instance v0, Lcom/android/server/DeviceIdleController$MyHandler;

    #@b9
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@bc
    move-result-object v1

    #@bd
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@c0
    move-result-object v1

    #@c1
    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V

    #@c4
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@c6
    .line 1276
    return-void
.end method

.method private addEvent(I)V
    .locals 5
    .param p1, "cmd"    # I

    #@0
    .prologue
    const/16 v3, 0x63

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 315
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    #@6
    aget v0, v0, v4

    #@8
    if-eq v0, p1, :cond_0

    #@a
    .line 316
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    #@c
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    #@e
    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@11
    .line 317
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    #@13
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    #@15
    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@18
    .line 318
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    #@1a
    aput p1, v0, v4

    #@1c
    .line 319
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    #@1e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@21
    move-result-wide v2

    #@22
    aput-wide v2, v0, v4

    #@24
    .line 314
    :cond_0
    return-void
.end method

.method private static buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I
    .locals 5
    .param p2, "outAppIds"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            ")[I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "systemApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p1, "userApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    #@1
    .line 2280
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    #@4
    .line 2281
    if-eqz p0, :cond_0

    #@6
    .line 2282
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    #@a
    move-result v3

    #@b
    if-ge v1, v3, :cond_0

    #@d
    .line 2283
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Ljava/lang/Integer;

    #@13
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@16
    move-result v3

    #@17
    invoke-virtual {p2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@1a
    .line 2282
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 2286
    .end local v1    # "i":I
    :cond_0
    if-eqz p1, :cond_1

    #@1f
    .line 2287
    const/4 v1, 0x0

    #@20
    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    #@23
    move-result v3

    #@24
    if-ge v1, v3, :cond_1

    #@26
    .line 2288
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    check-cast v3, Ljava/lang/Integer;

    #@2c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@2f
    move-result v3

    #@30
    invoke-virtual {p2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@33
    .line 2287
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_1

    #@36
    .line 2291
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    #@39
    move-result v2

    #@3a
    .line 2292
    .local v2, "size":I
    new-array v0, v2, [I

    #@3c
    .line 2293
    .local v0, "appids":[I
    const/4 v1, 0x0

    #@3d
    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    #@3f
    .line 2294
    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@42
    move-result v3

    #@43
    aput v3, v0, v1

    #@45
    .line 2293
    add-int/lit8 v1, v1, 0x1

    #@47
    goto :goto_2

    #@48
    .line 2296
    :cond_2
    return-object v0
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 2475
    const-string/jumbo v0, "Device idle controller (deviceidle) commands:"

    #@3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 2476
    const-string/jumbo v0, "  help"

    #@9
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 2477
    const-string/jumbo v0, "    Print this help text."

    #@f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12
    .line 2478
    const-string/jumbo v0, "  step [light|deep]"

    #@15
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18
    .line 2479
    const-string/jumbo v0, "    Immediately step to next state, without waiting for alarm."

    #@1b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e
    .line 2480
    const-string/jumbo v0, "  force-idle [light|deep]"

    #@21
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24
    .line 2481
    const-string/jumbo v0, "    Force directly into idle mode, regardless of other device state."

    #@27
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a
    .line 2482
    const-string/jumbo v0, "  force-inactive"

    #@2d
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30
    .line 2483
    const-string/jumbo v0, "    Force to be inactive, ready to freely step idle states."

    #@33
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@36
    .line 2484
    const-string/jumbo v0, "  unforce"

    #@39
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c
    .line 2485
    const-string/jumbo v0, "    Resume normal functioning after force-idle or force-inactive."

    #@3f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@42
    .line 2486
    const-string/jumbo v0, "  get [light|deep|force|screen|charging|network]"

    #@45
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@48
    .line 2487
    const-string/jumbo v0, "    Retrieve the current given state."

    #@4b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4e
    .line 2488
    const-string/jumbo v0, "  disable [light|deep|all]"

    #@51
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54
    .line 2489
    const-string/jumbo v0, "    Completely disable device idle mode."

    #@57
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a
    .line 2490
    const-string/jumbo v0, "  enable [light|deep|all]"

    #@5d
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@60
    .line 2491
    const-string/jumbo v0, "    Re-enable device idle mode after it had previously been disabled."

    #@63
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66
    .line 2492
    const-string/jumbo v0, "  enabled [light|deep|all]"

    #@69
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6c
    .line 2493
    const-string/jumbo v0, "    Print 1 if device idle mode is currently enabled, else 0."

    #@6f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@72
    .line 2494
    const-string/jumbo v0, "  whitelist"

    #@75
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@78
    .line 2495
    const-string/jumbo v0, "    Print currently whitelisted apps."

    #@7b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7e
    .line 2496
    const-string/jumbo v0, "  whitelist [package ...]"

    #@81
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@84
    .line 2497
    const-string/jumbo v0, "    Add (prefix with +) or remove (prefix with -) packages."

    #@87
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8a
    .line 2498
    const-string/jumbo v0, "  tempwhitelist"

    #@8d
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@90
    .line 2499
    const-string/jumbo v0, "    Print packages that are temporarily whitelisted."

    #@93
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@96
    .line 2500
    const-string/jumbo v0, "  tempwhitelist [-u] [package ..]"

    #@99
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9c
    .line 2501
    const-string/jumbo v0, "    Temporarily place packages in whitelist for 10 seconds."

    #@9f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a2
    .line 2474
    return-void
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    #@0
    .prologue
    .line 1289
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "system"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    return-object v0
.end method

.method private static lightStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 188
    packed-switch p0, :pswitch_data_0

    #@3
    .line 196
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 189
    :pswitch_1
    const-string/jumbo v0, "ACTIVE"

    #@b
    return-object v0

    #@c
    .line 190
    :pswitch_2
    const-string/jumbo v0, "INACTIVE"

    #@f
    return-object v0

    #@10
    .line 191
    :pswitch_3
    const-string/jumbo v0, "PRE_IDLE"

    #@13
    return-object v0

    #@14
    .line 192
    :pswitch_4
    const-string/jumbo v0, "IDLE"

    #@17
    return-object v0

    #@18
    .line 193
    :pswitch_5
    const-string/jumbo v0, "WAITING_FOR_NETWORK"

    #@1b
    return-object v0

    #@1c
    .line 194
    :pswitch_6
    const-string/jumbo v0, "IDLE_MAINTENANCE"

    #@1f
    return-object v0

    #@20
    .line 195
    :pswitch_7
    const-string/jumbo v0, "OVERRIDE"

    #@23
    return-object v0

    #@24
    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private postTempActiveTimeoutMessage(IJ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "delay"    # J

    #@0
    .prologue
    .line 1668
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@2
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@4
    const/4 v2, 0x6

    #@5
    const/4 v3, 0x0

    #@6
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@d
    .line 1664
    return-void
.end method

.method private readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 17
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    #@0
    .prologue
    .line 2374
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@3
    move-result-object v14

    #@4
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v11

    #@8
    .line 2378
    .local v11, "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@b
    move-result v13

    #@c
    .local v13, "type":I
    const/4 v14, 0x2

    #@d
    if-eq v13, v14, :cond_1

    #@f
    .line 2379
    const/4 v14, 0x1

    #@10
    if-ne v13, v14, :cond_0

    #@12
    .line 2383
    :cond_1
    const/4 v14, 0x2

    #@13
    if-eq v13, v14, :cond_3

    #@15
    .line 2384
    new-instance v14, Ljava/lang/IllegalStateException;

    #@17
    const-string/jumbo v15, "no start tag found"

    #@1a
    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v14
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    #@1e
    .line 2413
    .end local v13    # "type":I
    :catch_0
    move-exception v4

    #@1f
    .line 2414
    .local v4, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v14, "DeviceIdleController"

    #@22
    new-instance v15, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v16, "Failed parsing config "

    #@2a
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v15

    #@2e
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v15

    #@32
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v15

    #@36
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 2373
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    :goto_0
    return-void

    #@3a
    .line 2387
    .restart local v13    # "type":I
    :cond_3
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3d
    move-result v10

    #@3e
    .line 2388
    .local v10, "outerDepth":I
    :cond_4
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@41
    move-result v13

    #@42
    const/4 v14, 0x1

    #@43
    if-eq v13, v14, :cond_2

    #@45
    .line 2389
    const/4 v14, 0x3

    #@46
    if-ne v13, v14, :cond_5

    #@48
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4b
    move-result v14

    #@4c
    if-le v14, v10, :cond_2

    #@4e
    .line 2390
    :cond_5
    const/4 v14, 0x3

    #@4f
    if-eq v13, v14, :cond_4

    #@51
    const/4 v14, 0x4

    #@52
    if-eq v13, v14, :cond_4

    #@54
    .line 2394
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@57
    move-result-object v12

    #@58
    .line 2395
    .local v12, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "wl"

    #@5b
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v14

    #@5f
    if-eqz v14, :cond_6

    #@61
    .line 2396
    const-string/jumbo v14, "n"

    #@64
    const/4 v15, 0x0

    #@65
    move-object/from16 v0, p1

    #@67
    invoke-interface {v0, v15, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3

    #@6a
    move-result-object v9

    #@6b
    .line 2397
    .local v9, "name":Ljava/lang/String;
    if-eqz v9, :cond_4

    #@6d
    .line 2400
    const/16 v14, 0x2000

    #@6f
    .line 2399
    :try_start_2
    invoke-virtual {v11, v9, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@72
    move-result-object v1

    #@73
    .line 2401
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    #@75
    iget-object v14, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@77
    iget-object v15, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@79
    .line 2402
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@7b
    move/from16 v16, v0

    #@7d
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getAppId(I)I

    #@80
    move-result v16

    #@81
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@84
    move-result-object v16

    #@85
    .line 2401
    invoke-virtual/range {v14 .. v16}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    #@88
    goto :goto_1

    #@89
    .line 2403
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v2

    #@8a
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    #@8b
    .line 2407
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "name":Ljava/lang/String;
    :cond_6
    :try_start_3
    const-string/jumbo v14, "DeviceIdleController"

    #@8e
    new-instance v15, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v16, "Unknown element under <config>: "

    #@96
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v15

    #@9a
    .line 2408
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@9d
    move-result-object v16

    #@9e
    .line 2407
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v15

    #@a2
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v15

    #@a6
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a9
    .line 2409
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    #@ac
    goto :goto_1

    #@ad
    .line 2415
    .end local v10    # "outerDepth":I
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_2
    move-exception v6

    #@ae
    .line 2416
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v14, "DeviceIdleController"

    #@b1
    new-instance v15, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string/jumbo v16, "Failed parsing config "

    #@b9
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v15

    #@bd
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v15

    #@c1
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v15

    #@c5
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c8
    goto/16 :goto_0

    #@ca
    .line 2423
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v5

    #@cb
    .line 2424
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v14, "DeviceIdleController"

    #@ce
    new-instance v15, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    const-string/jumbo v16, "Failed parsing config "

    #@d6
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v15

    #@da
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v15

    #@de
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v15

    #@e2
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e5
    goto/16 :goto_0

    #@e7
    .line 2421
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_4
    move-exception v3

    #@e8
    .line 2422
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v14, "DeviceIdleController"

    #@eb
    new-instance v15, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    const-string/jumbo v16, "Failed parsing config "

    #@f3
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v15

    #@f7
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v15

    #@fb
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v15

    #@ff
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@102
    goto/16 :goto_0

    #@104
    .line 2419
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v8

    #@105
    .line 2420
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v14, "DeviceIdleController"

    #@108
    new-instance v15, Ljava/lang/StringBuilder;

    #@10a
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@10d
    const-string/jumbo v16, "Failed parsing config "

    #@110
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v15

    #@114
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v15

    #@118
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11b
    move-result-object v15

    #@11c
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11f
    goto/16 :goto_0

    #@121
    .line 2417
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v7

    #@122
    .line 2418
    .local v7, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v14, "DeviceIdleController"

    #@125
    new-instance v15, Ljava/lang/StringBuilder;

    #@127
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@12a
    const-string/jumbo v16, "Failed parsing config "

    #@12d
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v15

    #@131
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v15

    #@135
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@138
    move-result-object v15

    #@139
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13c
    goto/16 :goto_0
.end method

.method private reportPowerSaveWhitelistChangedLocked()V
    .locals 3

    #@0
    .prologue
    .line 2340
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 2341
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 2342
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@10
    move-result-object v1

    #@11
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@13
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@16
    .line 2339
    return-void
.end method

.method private reportTempWhitelistChangedLocked()V
    .locals 3

    #@0
    .prologue
    .line 2346
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 2347
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 2348
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@10
    move-result-object v1

    #@11
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@13
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@16
    .line 2345
    return-void
.end method

.method private static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 160
    packed-switch p0, :pswitch_data_0

    #@3
    .line 168
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 161
    :pswitch_0
    const-string/jumbo v0, "ACTIVE"

    #@b
    return-object v0

    #@c
    .line 162
    :pswitch_1
    const-string/jumbo v0, "INACTIVE"

    #@f
    return-object v0

    #@10
    .line 163
    :pswitch_2
    const-string/jumbo v0, "IDLE_PENDING"

    #@13
    return-object v0

    #@14
    .line 164
    :pswitch_3
    const-string/jumbo v0, "SENSING"

    #@17
    return-object v0

    #@18
    .line 165
    :pswitch_4
    const-string/jumbo v0, "LOCATING"

    #@1b
    return-object v0

    #@1c
    .line 166
    :pswitch_5
    const-string/jumbo v0, "IDLE"

    #@1f
    return-object v0

    #@20
    .line 167
    :pswitch_6
    const-string/jumbo v0, "IDLE_MAINTENANCE"

    #@23
    return-object v0

    #@24
    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateTempWhitelistAppIdsLocked()V
    .locals 4

    #@0
    .prologue
    .line 2323
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v1

    #@6
    .line 2324
    .local v1, "size":I
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    #@8
    array-length v2, v2

    #@9
    if-eq v2, v1, :cond_0

    #@b
    .line 2325
    new-array v2, v1, [I

    #@d
    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    #@f
    .line 2327
    :cond_0
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@12
    .line 2328
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    #@14
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    #@16
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@19
    move-result v3

    #@1a
    aput v3, v2, v0

    #@1c
    .line 2327
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 2330
    :cond_1
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 2335
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    #@25
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    #@27
    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleTempWhitelist([I)V

    #@2a
    .line 2322
    :cond_2
    return-void
.end method

.method private updateWhitelistAppIdsLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2300
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@3
    .line 2301
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@5
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@7
    .line 2300
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    #@d
    .line 2302
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@f
    .line 2303
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@11
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    #@13
    .line 2302
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    #@19
    .line 2305
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@1b
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    #@1d
    .line 2304
    invoke-static {v3, v0, v1}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    #@23
    .line 2306
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    #@25
    if-eqz v0, :cond_0

    #@27
    .line 2311
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    #@29
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    #@2b
    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    #@2e
    .line 2313
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

    #@30
    if-eqz v0, :cond_1

    #@32
    .line 2318
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

    #@34
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    #@36
    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$LocalService;->setDeviceIdleUserWhitelist([I)V

    #@39
    .line 2299
    :cond_1
    return-void
.end method


# virtual methods
.method addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "userId"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1572
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 1573
    const-string/jumbo v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    #@7
    .line 1574
    const-string/jumbo v3, "No permission to change device idle whitelist"

    #@a
    .line 1572
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 1575
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@10
    move-result v2

    #@11
    .line 1576
    .local v2, "callingUid":I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@14
    move-result-object v0

    #@15
    .line 1577
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@18
    move-result v1

    #@19
    .line 1582
    const-string/jumbo v6, "addPowerSaveTempWhitelistApp"

    #@1c
    .line 1580
    const/4 v4, 0x0

    #@1d
    .line 1581
    const/4 v5, 0x0

    #@1e
    .line 1582
    const/4 v7, 0x0

    #@1f
    move/from16 v3, p4

    #@21
    .line 1576
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@24
    move-result p4

    #@25
    .line 1583
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@28
    move-result-wide v10

    #@29
    .line 1586
    .local v10, "token":J
    const/4 v7, 0x1

    #@2a
    move-object v1, p0

    #@2b
    move-object v3, p1

    #@2c
    move-wide v4, p2

    #@2d
    move/from16 v6, p4

    #@2f
    move-object/from16 v8, p5

    #@31
    .line 1585
    :try_start_0
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 1588
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@37
    .line 1571
    return-void

    #@38
    .line 1587
    :catchall_0
    move-exception v0

    #@39
    .line 1588
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1587
    throw v0
.end method

.method addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    .locals 13
    .param p1, "callingUid"    # I
    .param p2, "appId"    # I
    .param p3, "duration"    # J
    .param p5, "sync"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1612
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v8

    #@4
    .line 1613
    .local v8, "timeNow":J
    const/4 v5, 0x0

    #@5
    .line 1614
    .local v5, "networkPolicyTempWhitelistCallback":Ljava/lang/Runnable;
    monitor-enter p0

    #@6
    .line 1615
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    #@9
    move-result v2

    #@a
    .line 1616
    .local v2, "callingAppId":I
    const/16 v7, 0x2710

    #@c
    if-lt v2, v7, :cond_0

    #@e
    .line 1617
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    #@10
    invoke-virtual {v7, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@13
    move-result v7

    #@14
    if-nez v7, :cond_0

    #@16
    .line 1618
    new-instance v7, Ljava/lang/SecurityException;

    #@18
    new-instance v10, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v11, "Calling app "

    #@20
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v10

    #@24
    invoke-static {p1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    #@27
    move-result-object v11

    #@28
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v10

    #@2c
    .line 1619
    const-string/jumbo v11, " is not on whitelist"

    #@2f
    .line 1618
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v10

    #@33
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v10

    #@37
    invoke-direct {v7, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    .line 1614
    .end local v2    # "callingAppId":I
    .end local v5    # "networkPolicyTempWhitelistCallback":Ljava/lang/Runnable;
    :catchall_0
    move-exception v7

    #@3c
    monitor-exit p0

    #@3d
    throw v7

    #@3e
    .line 1622
    .restart local v2    # "callingAppId":I
    .restart local v5    # "networkPolicyTempWhitelistCallback":Ljava/lang/Runnable;
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@40
    iget-wide v10, v7, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J

    #@42
    move-wide/from16 v0, p3

    #@44
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    #@47
    move-result-wide p3

    #@48
    .line 1623
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    #@4a
    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@4d
    move-result-object v4

    #@4e
    check-cast v4, Landroid/util/Pair;

    #@50
    .line 1624
    .local v4, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    if-nez v4, :cond_5

    #@52
    const/4 v6, 0x1

    #@53
    .line 1626
    .local v6, "newEntry":Z
    :goto_0
    if-eqz v6, :cond_1

    #@55
    .line 1627
    new-instance v4, Landroid/util/Pair;

    #@57
    .end local v4    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    new-instance v7, Landroid/util/MutableLong;

    #@59
    const-wide/16 v10, 0x0

    #@5b
    invoke-direct {v7, v10, v11}, Landroid/util/MutableLong;-><init>(J)V

    #@5e
    move-object/from16 v0, p6

    #@60
    invoke-direct {v4, v7, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@63
    .line 1628
    .restart local v4    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    #@65
    invoke-virtual {v7, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@68
    .line 1630
    :cond_1
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@6a
    check-cast v7, Landroid/util/MutableLong;

    #@6c
    add-long v10, v8, p3

    #@6e
    iput-wide v10, v7, Landroid/util/MutableLong;->value:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@70
    .line 1634
    if-eqz v6, :cond_3

    #@72
    .line 1637
    :try_start_2
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@74
    const v10, 0x8011

    #@77
    move-object/from16 v0, p6

    #@79
    invoke-interface {v7, v10, v0, p2}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7c
    .line 1641
    :goto_1
    :try_start_3
    move-wide/from16 v0, p3

    #@7e
    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    #@81
    .line 1642
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked()V

    #@84
    .line 1643
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    #@86
    if-eqz v7, :cond_2

    #@88
    .line 1644
    if-nez p5, :cond_6

    #@8a
    .line 1645
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@8c
    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    #@8e
    invoke-virtual {v7, v10}, Lcom/android/server/DeviceIdleController$MyHandler;->post(Ljava/lang/Runnable;)Z

    #@91
    .line 1650
    .end local v5    # "networkPolicyTempWhitelistCallback":Ljava/lang/Runnable;
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@94
    :cond_3
    monitor-exit p0

    #@95
    .line 1653
    if-eqz v5, :cond_4

    #@97
    .line 1654
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    #@9a
    .line 1611
    :cond_4
    return-void

    #@9b
    .line 1624
    .end local v6    # "newEntry":Z
    .restart local v5    # "networkPolicyTempWhitelistCallback":Ljava/lang/Runnable;
    :cond_5
    const/4 v6, 0x0

    #@9c
    goto :goto_0

    #@9d
    .line 1647
    .restart local v6    # "newEntry":Z
    :cond_6
    :try_start_4
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@9f
    .local v5, "networkPolicyTempWhitelistCallback":Ljava/lang/Runnable;
    goto :goto_2

    #@a0
    .line 1639
    .local v5, "networkPolicyTempWhitelistCallback":Ljava/lang/Runnable;
    :catch_0
    move-exception v3

    #@a1
    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    .locals 9
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "userId"    # I
    .param p6, "sync"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1599
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1, p2, p5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    #@b
    move-result v8

    #@c
    .line 1600
    .local v8, "uid":I
    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    #@f
    move-result v3

    #@10
    .local v3, "appId":I
    move-object v1, p0

    #@11
    move v2, p1

    #@12
    move-wide v4, p3

    #@13
    move v6, p6

    #@14
    move-object/from16 v7, p7

    #@16
    .line 1601
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 1597
    .end local v3    # "appId":I
    .end local v8    # "uid":I
    :goto_0
    return-void

    #@1a
    .line 1602
    :catch_0
    move-exception v0

    #@1b
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1431
    monitor-enter p0

    #@1
    .line 1433
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@8
    move-result-object v2

    #@9
    .line 1434
    const/16 v3, 0x2000

    #@b
    .line 1433
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@e
    move-result-object v0

    #@f
    .line 1435
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@11
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@13
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    #@16
    move-result v3

    #@17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    if-nez v2, :cond_0

    #@21
    .line 1436
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    #@24
    .line 1437
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    #@27
    .line 1438
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 1440
    :cond_0
    const/4 v2, 0x1

    #@2b
    monitor-exit p0

    #@2c
    return v2

    #@2d
    .line 1441
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    #@2e
    .line 1442
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    #@2f
    monitor-exit p0

    #@30
    return v2

    #@31
    .line 1431
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v2

    #@32
    monitor-exit p0

    #@33
    throw v2
.end method

.method becomeActiveLocked(Ljava/lang/String;I)V
    .locals 4
    .param p1, "activeReason"    # Ljava/lang/String;
    .param p2, "activeUid"    # I

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 1793
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@5
    if-nez v0, :cond_0

    #@7
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 1794
    :cond_0
    invoke-static {v1, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    #@e
    .line 1795
    invoke-static {v1, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    #@11
    .line 1796
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->scheduleReportActiveLocked(Ljava/lang/String;I)V

    #@14
    .line 1797
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@16
    .line 1798
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@18
    .line 1799
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@1a
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    #@1c
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    #@1e
    .line 1800
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    #@20
    .line 1801
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    #@22
    .line 1802
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    #@25
    .line 1803
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetLightIdleManagementLocked()V

    #@28
    .line 1804
    const/4 v0, 0x1

    #@29
    invoke-direct {p0, v0}, Lcom/android/server/DeviceIdleController;->addEvent(I)V

    #@2c
    .line 1791
    :cond_1
    return-void
.end method

.method becomeInactiveIfAppropriateLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1810
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    #@4
    if-nez v0, :cond_0

    #@6
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    #@c
    if-eqz v0, :cond_3

    #@e
    .line 1813
    :cond_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@10
    if-nez v0, :cond_2

    #@12
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 1814
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@18
    .line 1816
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    #@1b
    .line 1817
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    #@1d
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    #@20
    .line 1818
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@22
    const-string/jumbo v1, "no activity"

    #@25
    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    #@28
    .line 1820
    :cond_2
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@2a
    if-nez v0, :cond_3

    #@2c
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    #@2e
    if-eqz v0, :cond_3

    #@30
    .line 1821
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@32
    .line 1823
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetLightIdleManagementLocked()V

    #@35
    .line 1824
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@37
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    #@39
    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    #@3c
    .line 1825
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@3e
    const-string/jumbo v1, "no activity"

    #@41
    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    #@44
    .line 1808
    :cond_3
    return-void
.end method

.method cancelAlarmLocked()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 2217
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2218
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    #@a
    .line 2219
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    #@c
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@e
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    #@11
    .line 2216
    :cond_0
    return-void
.end method

.method cancelLightAlarmLocked()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 2224
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2225
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    #@a
    .line 2226
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    #@c
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@e
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    #@11
    .line 2223
    :cond_0
    return-void
.end method

.method cancelLocatingLocked()V
    .locals 2

    #@0
    .prologue
    .line 2231
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2232
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    #@6
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    #@8
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    #@b
    .line 2233
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    #@d
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    #@f
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    #@12
    .line 2234
    const/4 v0, 0x0

    #@13
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    #@15
    .line 2230
    :cond_0
    return-void
.end method

.method cancelSensingTimeoutAlarmLocked()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 2239
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2240
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    #@a
    .line 2241
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    #@c
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@e
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    #@11
    .line 2238
    :cond_0
    return-void
.end method

.method checkTempAppWhitelistTimeout(I)V
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 1673
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v2

    #@4
    .line 1677
    .local v2, "timeNow":J
    monitor-enter p0

    #@5
    .line 1678
    :try_start_0
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 1679
    .local v1, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    if-nez v1, :cond_0

    #@f
    monitor-exit p0

    #@10
    .line 1681
    return-void

    #@11
    .line 1683
    :cond_0
    :try_start_1
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@13
    check-cast v4, Landroid/util/MutableLong;

    #@15
    iget-wide v4, v4, Landroid/util/MutableLong;->value:J

    #@17
    cmp-long v4, v2, v4

    #@19
    if-ltz v4, :cond_2

    #@1b
    .line 1684
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    #@1d
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    #@20
    .line 1688
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked()V

    #@23
    .line 1689
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    #@25
    if-eqz v4, :cond_1

    #@27
    .line 1690
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@29
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    #@2b
    invoke-virtual {v4, v5}, Lcom/android/server/DeviceIdleController$MyHandler;->post(Ljava/lang/Runnable;)Z

    #@2e
    .line 1692
    :cond_1
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    .line 1694
    :try_start_2
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@33
    .line 1695
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@35
    check-cast v4, Ljava/lang/String;

    #@37
    .line 1694
    const/16 v6, 0x4011

    #@39
    invoke-interface {v5, v6, v4, p1}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3c
    :goto_0
    monitor-exit p0

    #@3d
    .line 1672
    return-void

    #@3e
    .line 1703
    :cond_2
    :try_start_3
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@40
    check-cast v4, Landroid/util/MutableLong;

    #@42
    iget-wide v4, v4, Landroid/util/MutableLong;->value:J

    #@44
    sub-long/2addr v4, v2

    #@45
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@48
    goto :goto_0

    #@49
    .line 1677
    .end local v1    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    #@4a
    monitor-exit p0

    #@4b
    throw v4

    #@4c
    .line 1696
    .restart local v1    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    #@4d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method decActiveIdleOps()V
    .locals 1

    #@0
    .prologue
    .line 2057
    monitor-enter p0

    #@1
    .line 2058
    :try_start_0
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    #@3
    add-int/lit8 v0, v0, -0x1

    #@5
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    #@7
    .line 2059
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    #@9
    if-gtz v0, :cond_0

    #@b
    .line 2060
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    #@e
    .line 2061
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    #@10
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 2056
    return-void

    #@15
    .line 2057
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 22
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2812
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@3
    move-result-object v5

    #@4
    const-string/jumbo v6, "android.permission.DUMP"

    #@7
    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@a
    move-result v5

    #@b
    if-eqz v5, :cond_0

    #@d
    .line 2814
    new-instance v5, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v6, "Permission Denial: can\'t dump DeviceIdleController from from pid="

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    .line 2815
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1c
    move-result v6

    #@1d
    .line 2814
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    .line 2815
    const-string/jumbo v6, ", uid="

    #@24
    .line 2814
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    .line 2815
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2b
    move-result v6

    #@2c
    .line 2814
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    .line 2816
    const-string/jumbo v6, " without permission "

    #@33
    .line 2814
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    .line 2816
    const-string/jumbo v6, "android.permission.DUMP"

    #@3a
    .line 2814
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    move-object/from16 v0, p2

    #@44
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@47
    .line 2817
    return-void

    #@48
    .line 2820
    :cond_0
    if-eqz p3, :cond_5

    #@4a
    .line 2821
    const/16 v18, 0x0

    #@4c
    .line 2822
    .local v18, "userId":I
    const/4 v13, 0x0

    #@4d
    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p3

    #@4f
    array-length v5, v0

    #@50
    if-ge v13, v5, :cond_5

    #@52
    .line 2823
    aget-object v11, p3, v13

    #@54
    .line 2824
    .local v11, "arg":Ljava/lang/String;
    const-string/jumbo v5, "-h"

    #@57
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v5

    #@5b
    if-eqz v5, :cond_1

    #@5d
    .line 2825
    invoke-static/range {p2 .. p2}, Lcom/android/server/DeviceIdleController;->dumpHelp(Ljava/io/PrintWriter;)V

    #@60
    .line 2826
    return-void

    #@61
    .line 2827
    :cond_1
    const-string/jumbo v5, "-u"

    #@64
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v5

    #@68
    if-eqz v5, :cond_3

    #@6a
    .line 2828
    add-int/lit8 v13, v13, 0x1

    #@6c
    .line 2829
    move-object/from16 v0, p3

    #@6e
    array-length v5, v0

    #@6f
    if-ge v13, v5, :cond_2

    #@71
    .line 2830
    aget-object v11, p3, v13

    #@73
    .line 2831
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@76
    move-result v18

    #@77
    .line 2822
    :cond_2
    add-int/lit8 v13, v13, 0x1

    #@79
    goto :goto_0

    #@7a
    .line 2833
    :cond_3
    const-string/jumbo v5, "-a"

    #@7d
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v5

    #@81
    if-nez v5, :cond_2

    #@83
    .line 2835
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@86
    move-result v5

    #@87
    if-lez v5, :cond_4

    #@89
    const/4 v5, 0x0

    #@8a
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    #@8d
    move-result v5

    #@8e
    const/16 v6, 0x2d

    #@90
    if-ne v5, v6, :cond_4

    #@92
    .line 2836
    new-instance v5, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v6, "Unknown option: "

    #@9a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v5

    #@9e
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v5

    #@a2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v5

    #@a6
    move-object/from16 v0, p2

    #@a8
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ab
    .line 2837
    return-void

    #@ac
    .line 2839
    :cond_4
    new-instance v4, Lcom/android/server/DeviceIdleController$Shell;

    #@ae
    move-object/from16 v0, p0

    #@b0
    invoke-direct {v4, v0}, Lcom/android/server/DeviceIdleController$Shell;-><init>(Lcom/android/server/DeviceIdleController;)V

    #@b3
    .line 2840
    .local v4, "shell":Lcom/android/server/DeviceIdleController$Shell;
    move/from16 v0, v18

    #@b5
    iput v0, v4, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    #@b7
    .line 2841
    move-object/from16 v0, p3

    #@b9
    array-length v5, v0

    #@ba
    sub-int/2addr v5, v13

    #@bb
    new-array v9, v5, [Ljava/lang/String;

    #@bd
    .line 2842
    .local v9, "newArgs":[Ljava/lang/String;
    move-object/from16 v0, p3

    #@bf
    array-length v5, v0

    #@c0
    sub-int/2addr v5, v13

    #@c1
    const/4 v6, 0x0

    #@c2
    move-object/from16 v0, p3

    #@c4
    invoke-static {v0, v13, v9, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@c7
    .line 2843
    move-object/from16 v0, p0

    #@c9
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    #@cb
    new-instance v10, Landroid/os/ResultReceiver;

    #@cd
    const/4 v6, 0x0

    #@ce
    invoke-direct {v10, v6}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    #@d1
    const/4 v6, 0x0

    #@d2
    const/4 v8, 0x0

    #@d3
    move-object/from16 v7, p1

    #@d5
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/DeviceIdleController$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    #@d8
    .line 2844
    return-void

    #@d9
    .line 2849
    .end local v4    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local v9    # "newArgs":[Ljava/lang/String;
    .end local v11    # "arg":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v18    # "userId":I
    :cond_5
    monitor-enter p0

    #@da
    .line 2850
    :try_start_0
    move-object/from16 v0, p0

    #@dc
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@de
    move-object/from16 v0, p2

    #@e0
    invoke-virtual {v5, v0}, Lcom/android/server/DeviceIdleController$Constants;->dump(Ljava/io/PrintWriter;)V

    #@e3
    .line 2852
    move-object/from16 v0, p0

    #@e5
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    #@e7
    const/4 v6, 0x0

    #@e8
    aget v5, v5, v6

    #@ea
    if-eqz v5, :cond_7

    #@ec
    .line 2853
    const-string/jumbo v5, "  Idling history:"

    #@ef
    move-object/from16 v0, p2

    #@f1
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f4
    .line 2854
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@f7
    move-result-wide v16

    #@f8
    .line 2855
    .local v16, "now":J
    const/16 v13, 0x63

    #@fa
    .restart local v13    # "i":I
    :goto_1
    if-ltz v13, :cond_7

    #@fc
    .line 2856
    move-object/from16 v0, p0

    #@fe
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    #@100
    aget v12, v5, v13

    #@102
    .line 2857
    .local v12, "cmd":I
    if-nez v12, :cond_6

    #@104
    .line 2855
    :goto_2
    add-int/lit8 v13, v13, -0x1

    #@106
    goto :goto_1

    #@107
    .line 2861
    :cond_6
    move-object/from16 v0, p0

    #@109
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    #@10b
    aget v5, v5, v13

    #@10d
    packed-switch v5, :pswitch_data_0

    #@110
    .line 2867
    const-string/jumbo v14, "         ??"

    #@113
    .line 2869
    .local v14, "label":Ljava/lang/String;
    :goto_3
    const-string/jumbo v5, "    "

    #@116
    move-object/from16 v0, p2

    #@118
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11b
    .line 2870
    move-object/from16 v0, p2

    #@11d
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@120
    .line 2871
    const-string/jumbo v5, ": "

    #@123
    move-object/from16 v0, p2

    #@125
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@128
    .line 2872
    move-object/from16 v0, p0

    #@12a
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    #@12c
    aget-wide v6, v5, v13

    #@12e
    move-wide/from16 v0, v16

    #@130
    move-object/from16 v2, p2

    #@132
    invoke-static {v6, v7, v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@135
    .line 2873
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@138
    goto :goto_2

    #@139
    .line 2849
    .end local v12    # "cmd":I
    .end local v13    # "i":I
    .end local v14    # "label":Ljava/lang/String;
    .end local v16    # "now":J
    :catchall_0
    move-exception v5

    #@13a
    monitor-exit p0

    #@13b
    throw v5

    #@13c
    .line 2862
    .restart local v12    # "cmd":I
    .restart local v13    # "i":I
    .restart local v16    # "now":J
    :pswitch_0
    :try_start_1
    const-string/jumbo v14, "     normal"

    #@13f
    .restart local v14    # "label":Ljava/lang/String;
    goto :goto_3

    #@140
    .line 2863
    .end local v14    # "label":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v14, " light-idle"

    #@143
    .restart local v14    # "label":Ljava/lang/String;
    goto :goto_3

    #@144
    .line 2864
    .end local v14    # "label":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v14, "light-maint"

    #@147
    .restart local v14    # "label":Ljava/lang/String;
    goto :goto_3

    #@148
    .line 2865
    .end local v14    # "label":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v14, "  deep-idle"

    #@14b
    .restart local v14    # "label":Ljava/lang/String;
    goto :goto_3

    #@14c
    .line 2866
    .end local v14    # "label":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v14, " deep-maint"

    #@14f
    .restart local v14    # "label":Ljava/lang/String;
    goto :goto_3

    #@150
    .line 2877
    .end local v12    # "cmd":I
    .end local v13    # "i":I
    .end local v14    # "label":Ljava/lang/String;
    .end local v16    # "now":J
    :cond_7
    move-object/from16 v0, p0

    #@152
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@154
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@157
    move-result v15

    #@158
    .line 2878
    .local v15, "size":I
    if-lez v15, :cond_8

    #@15a
    .line 2879
    const-string/jumbo v5, "  Whitelist (except idle) system apps:"

    #@15d
    move-object/from16 v0, p2

    #@15f
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@162
    .line 2880
    const/4 v13, 0x0

    #@163
    .restart local v13    # "i":I
    :goto_4
    if-ge v13, v15, :cond_8

    #@165
    .line 2881
    const-string/jumbo v5, "    "

    #@168
    move-object/from16 v0, p2

    #@16a
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16d
    .line 2882
    move-object/from16 v0, p0

    #@16f
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@171
    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@174
    move-result-object v5

    #@175
    check-cast v5, Ljava/lang/String;

    #@177
    move-object/from16 v0, p2

    #@179
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17c
    .line 2880
    add-int/lit8 v13, v13, 0x1

    #@17e
    goto :goto_4

    #@17f
    .line 2885
    .end local v13    # "i":I
    :cond_8
    move-object/from16 v0, p0

    #@181
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@183
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@186
    move-result v15

    #@187
    .line 2886
    if-lez v15, :cond_9

    #@189
    .line 2887
    const-string/jumbo v5, "  Whitelist system apps:"

    #@18c
    move-object/from16 v0, p2

    #@18e
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@191
    .line 2888
    const/4 v13, 0x0

    #@192
    .restart local v13    # "i":I
    :goto_5
    if-ge v13, v15, :cond_9

    #@194
    .line 2889
    const-string/jumbo v5, "    "

    #@197
    move-object/from16 v0, p2

    #@199
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19c
    .line 2890
    move-object/from16 v0, p0

    #@19e
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@1a0
    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1a3
    move-result-object v5

    #@1a4
    check-cast v5, Ljava/lang/String;

    #@1a6
    move-object/from16 v0, p2

    #@1a8
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ab
    .line 2888
    add-int/lit8 v13, v13, 0x1

    #@1ad
    goto :goto_5

    #@1ae
    .line 2893
    .end local v13    # "i":I
    :cond_9
    move-object/from16 v0, p0

    #@1b0
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@1b2
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@1b5
    move-result v15

    #@1b6
    .line 2894
    if-lez v15, :cond_a

    #@1b8
    .line 2895
    const-string/jumbo v5, "  Whitelist user apps:"

    #@1bb
    move-object/from16 v0, p2

    #@1bd
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c0
    .line 2896
    const/4 v13, 0x0

    #@1c1
    .restart local v13    # "i":I
    :goto_6
    if-ge v13, v15, :cond_a

    #@1c3
    .line 2897
    const-string/jumbo v5, "    "

    #@1c6
    move-object/from16 v0, p2

    #@1c8
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1cb
    .line 2898
    move-object/from16 v0, p0

    #@1cd
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@1cf
    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1d2
    move-result-object v5

    #@1d3
    check-cast v5, Ljava/lang/String;

    #@1d5
    move-object/from16 v0, p2

    #@1d7
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1da
    .line 2896
    add-int/lit8 v13, v13, 0x1

    #@1dc
    goto :goto_6

    #@1dd
    .line 2901
    .end local v13    # "i":I
    :cond_a
    move-object/from16 v0, p0

    #@1df
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@1e1
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    #@1e4
    move-result v15

    #@1e5
    .line 2902
    if-lez v15, :cond_b

    #@1e7
    .line 2903
    const-string/jumbo v5, "  Whitelist (except idle) all app ids:"

    #@1ea
    move-object/from16 v0, p2

    #@1ec
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ef
    .line 2904
    const/4 v13, 0x0

    #@1f0
    .restart local v13    # "i":I
    :goto_7
    if-ge v13, v15, :cond_b

    #@1f2
    .line 2905
    const-string/jumbo v5, "    "

    #@1f5
    move-object/from16 v0, p2

    #@1f7
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fa
    .line 2906
    move-object/from16 v0, p0

    #@1fc
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@1fe
    invoke-virtual {v5, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@201
    move-result v5

    #@202
    move-object/from16 v0, p2

    #@204
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@207
    .line 2907
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@20a
    .line 2904
    add-int/lit8 v13, v13, 0x1

    #@20c
    goto :goto_7

    #@20d
    .line 2910
    .end local v13    # "i":I
    :cond_b
    move-object/from16 v0, p0

    #@20f
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    #@211
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    #@214
    move-result v15

    #@215
    .line 2911
    if-lez v15, :cond_c

    #@217
    .line 2912
    const-string/jumbo v5, "  Whitelist user app ids:"

    #@21a
    move-object/from16 v0, p2

    #@21c
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@21f
    .line 2913
    const/4 v13, 0x0

    #@220
    .restart local v13    # "i":I
    :goto_8
    if-ge v13, v15, :cond_c

    #@222
    .line 2914
    const-string/jumbo v5, "    "

    #@225
    move-object/from16 v0, p2

    #@227
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22a
    .line 2915
    move-object/from16 v0, p0

    #@22c
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    #@22e
    invoke-virtual {v5, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@231
    move-result v5

    #@232
    move-object/from16 v0, p2

    #@234
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@237
    .line 2916
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@23a
    .line 2913
    add-int/lit8 v13, v13, 0x1

    #@23c
    goto :goto_8

    #@23d
    .line 2919
    .end local v13    # "i":I
    :cond_c
    move-object/from16 v0, p0

    #@23f
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    #@241
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    #@244
    move-result v15

    #@245
    .line 2920
    if-lez v15, :cond_d

    #@247
    .line 2921
    const-string/jumbo v5, "  Whitelist all app ids:"

    #@24a
    move-object/from16 v0, p2

    #@24c
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24f
    .line 2922
    const/4 v13, 0x0

    #@250
    .restart local v13    # "i":I
    :goto_9
    if-ge v13, v15, :cond_d

    #@252
    .line 2923
    const-string/jumbo v5, "    "

    #@255
    move-object/from16 v0, p2

    #@257
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25a
    .line 2924
    move-object/from16 v0, p0

    #@25c
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    #@25e
    invoke-virtual {v5, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@261
    move-result v5

    #@262
    move-object/from16 v0, p2

    #@264
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@267
    .line 2925
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@26a
    .line 2922
    add-int/lit8 v13, v13, 0x1

    #@26c
    goto :goto_9

    #@26d
    .line 2928
    .end local v13    # "i":I
    :cond_d
    const/4 v5, 0x1

    #@26e
    move-object/from16 v0, p0

    #@270
    move-object/from16 v1, p2

    #@272
    invoke-virtual {v0, v1, v5}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V

    #@275
    .line 2930
    move-object/from16 v0, p0

    #@277
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    #@279
    if-eqz v5, :cond_e

    #@27b
    move-object/from16 v0, p0

    #@27d
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    #@27f
    array-length v15, v5

    #@280
    .line 2931
    :goto_a
    if-lez v15, :cond_f

    #@282
    .line 2932
    const-string/jumbo v5, "  Temp whitelist app ids:"

    #@285
    move-object/from16 v0, p2

    #@287
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28a
    .line 2933
    const/4 v13, 0x0

    #@28b
    .restart local v13    # "i":I
    :goto_b
    if-ge v13, v15, :cond_f

    #@28d
    .line 2934
    const-string/jumbo v5, "    "

    #@290
    move-object/from16 v0, p2

    #@292
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@295
    .line 2935
    move-object/from16 v0, p0

    #@297
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    #@299
    aget v5, v5, v13

    #@29b
    move-object/from16 v0, p2

    #@29d
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@2a0
    .line 2936
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@2a3
    .line 2933
    add-int/lit8 v13, v13, 0x1

    #@2a5
    goto :goto_b

    #@2a6
    .line 2930
    .end local v13    # "i":I
    :cond_e
    const/4 v15, 0x0

    #@2a7
    goto :goto_a

    #@2a8
    .line 2940
    :cond_f
    const-string/jumbo v5, "  mLightEnabled="

    #@2ab
    move-object/from16 v0, p2

    #@2ad
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b0
    move-object/from16 v0, p0

    #@2b2
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    #@2b4
    move-object/from16 v0, p2

    #@2b6
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Z)V

    #@2b9
    .line 2941
    const-string/jumbo v5, "  mDeepEnabled="

    #@2bc
    move-object/from16 v0, p2

    #@2be
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c1
    move-object/from16 v0, p0

    #@2c3
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    #@2c5
    move-object/from16 v0, p2

    #@2c7
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@2ca
    .line 2942
    const-string/jumbo v5, "  mForceIdle="

    #@2cd
    move-object/from16 v0, p2

    #@2cf
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d2
    move-object/from16 v0, p0

    #@2d4
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    #@2d6
    move-object/from16 v0, p2

    #@2d8
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@2db
    .line 2943
    const-string/jumbo v5, "  mMotionSensor="

    #@2de
    move-object/from16 v0, p2

    #@2e0
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e3
    move-object/from16 v0, p0

    #@2e5
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    #@2e7
    move-object/from16 v0, p2

    #@2e9
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2ec
    .line 2944
    const-string/jumbo v5, "  mCurDisplay="

    #@2ef
    move-object/from16 v0, p2

    #@2f1
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f4
    move-object/from16 v0, p0

    #@2f6
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mCurDisplay:Landroid/view/Display;

    #@2f8
    move-object/from16 v0, p2

    #@2fa
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2fd
    .line 2945
    const-string/jumbo v5, "  mScreenOn="

    #@300
    move-object/from16 v0, p2

    #@302
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@305
    move-object/from16 v0, p0

    #@307
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    #@309
    move-object/from16 v0, p2

    #@30b
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@30e
    .line 2946
    const-string/jumbo v5, "  mNetworkConnected="

    #@311
    move-object/from16 v0, p2

    #@313
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@316
    move-object/from16 v0, p0

    #@318
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    #@31a
    move-object/from16 v0, p2

    #@31c
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@31f
    .line 2947
    const-string/jumbo v5, "  mCharging="

    #@322
    move-object/from16 v0, p2

    #@324
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@327
    move-object/from16 v0, p0

    #@329
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    #@32b
    move-object/from16 v0, p2

    #@32d
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@330
    .line 2948
    const-string/jumbo v5, "  mMotionActive="

    #@333
    move-object/from16 v0, p2

    #@335
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@338
    move-object/from16 v0, p0

    #@33a
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    #@33c
    iget-boolean v5, v5, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    #@33e
    move-object/from16 v0, p2

    #@340
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@343
    .line 2949
    const-string/jumbo v5, "  mNotMoving="

    #@346
    move-object/from16 v0, p2

    #@348
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34b
    move-object/from16 v0, p0

    #@34d
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    #@34f
    move-object/from16 v0, p2

    #@351
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@354
    .line 2950
    const-string/jumbo v5, "  mLocating="

    #@357
    move-object/from16 v0, p2

    #@359
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@35c
    move-object/from16 v0, p0

    #@35e
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    #@360
    move-object/from16 v0, p2

    #@362
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Z)V

    #@365
    const-string/jumbo v5, " mHasGps="

    #@368
    move-object/from16 v0, p2

    #@36a
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36d
    .line 2951
    move-object/from16 v0, p0

    #@36f
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    #@371
    move-object/from16 v0, p2

    #@373
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Z)V

    #@376
    const-string/jumbo v5, " mHasNetwork="

    #@379
    move-object/from16 v0, p2

    #@37b
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37e
    .line 2952
    move-object/from16 v0, p0

    #@380
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mHasNetworkLocation:Z

    #@382
    move-object/from16 v0, p2

    #@384
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Z)V

    #@387
    const-string/jumbo v5, " mLocated="

    #@38a
    move-object/from16 v0, p2

    #@38c
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38f
    move-object/from16 v0, p0

    #@391
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    #@393
    move-object/from16 v0, p2

    #@395
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@398
    .line 2953
    move-object/from16 v0, p0

    #@39a
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    #@39c
    if-eqz v5, :cond_10

    #@39e
    .line 2954
    const-string/jumbo v5, "  mLastGenericLocation="

    #@3a1
    move-object/from16 v0, p2

    #@3a3
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a6
    move-object/from16 v0, p0

    #@3a8
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    #@3aa
    move-object/from16 v0, p2

    #@3ac
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@3af
    .line 2956
    :cond_10
    move-object/from16 v0, p0

    #@3b1
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    #@3b3
    if-eqz v5, :cond_11

    #@3b5
    .line 2957
    const-string/jumbo v5, "  mLastGpsLocation="

    #@3b8
    move-object/from16 v0, p2

    #@3ba
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3bd
    move-object/from16 v0, p0

    #@3bf
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    #@3c1
    move-object/from16 v0, p2

    #@3c3
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@3c6
    .line 2959
    :cond_11
    const-string/jumbo v5, "  mState="

    #@3c9
    move-object/from16 v0, p2

    #@3cb
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ce
    move-object/from16 v0, p0

    #@3d0
    iget v5, v0, Lcom/android/server/DeviceIdleController;->mState:I

    #@3d2
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    #@3d5
    move-result-object v5

    #@3d6
    move-object/from16 v0, p2

    #@3d8
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3db
    .line 2960
    const-string/jumbo v5, " mLightState="

    #@3de
    move-object/from16 v0, p2

    #@3e0
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e3
    .line 2961
    move-object/from16 v0, p0

    #@3e5
    iget v5, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@3e7
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    #@3ea
    move-result-object v5

    #@3eb
    move-object/from16 v0, p2

    #@3ed
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f0
    .line 2962
    const-string/jumbo v5, "  mInactiveTimeout="

    #@3f3
    move-object/from16 v0, p2

    #@3f5
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f8
    move-object/from16 v0, p0

    #@3fa
    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    #@3fc
    move-object/from16 v0, p2

    #@3fe
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@401
    .line 2963
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@404
    .line 2964
    move-object/from16 v0, p0

    #@406
    iget v5, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    #@408
    if-eqz v5, :cond_12

    #@40a
    .line 2965
    const-string/jumbo v5, "  mActiveIdleOpCount="

    #@40d
    move-object/from16 v0, p2

    #@40f
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@412
    move-object/from16 v0, p0

    #@414
    iget v5, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    #@416
    move-object/from16 v0, p2

    #@418
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    #@41b
    .line 2967
    :cond_12
    move-object/from16 v0, p0

    #@41d
    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    #@41f
    const-wide/16 v20, 0x0

    #@421
    cmp-long v5, v6, v20

    #@423
    if-eqz v5, :cond_13

    #@425
    .line 2968
    const-string/jumbo v5, "  mNextAlarmTime="

    #@428
    move-object/from16 v0, p2

    #@42a
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42d
    .line 2969
    move-object/from16 v0, p0

    #@42f
    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    #@431
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@434
    move-result-wide v20

    #@435
    move-wide/from16 v0, v20

    #@437
    move-object/from16 v2, p2

    #@439
    invoke-static {v6, v7, v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@43c
    .line 2970
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@43f
    .line 2972
    :cond_13
    move-object/from16 v0, p0

    #@441
    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    #@443
    const-wide/16 v20, 0x0

    #@445
    cmp-long v5, v6, v20

    #@447
    if-eqz v5, :cond_14

    #@449
    .line 2973
    const-string/jumbo v5, "  mNextIdlePendingDelay="

    #@44c
    move-object/from16 v0, p2

    #@44e
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@451
    .line 2974
    move-object/from16 v0, p0

    #@453
    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    #@455
    move-object/from16 v0, p2

    #@457
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@45a
    .line 2975
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@45d
    .line 2977
    :cond_14
    move-object/from16 v0, p0

    #@45f
    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    #@461
    const-wide/16 v20, 0x0

    #@463
    cmp-long v5, v6, v20

    #@465
    if-eqz v5, :cond_15

    #@467
    .line 2978
    const-string/jumbo v5, "  mNextIdleDelay="

    #@46a
    move-object/from16 v0, p2

    #@46c
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46f
    .line 2979
    move-object/from16 v0, p0

    #@471
    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    #@473
    move-object/from16 v0, p2

    #@475
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@478
    .line 2980
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@47b
    .line 2982
    :cond_15
    move-object/from16 v0, p0

    #@47d
    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    #@47f
    const-wide/16 v20, 0x0

    #@481
    cmp-long v5, v6, v20

    #@483
    if-eqz v5, :cond_16

    #@485
    .line 2983
    const-string/jumbo v5, "  mNextIdleDelay="

    #@488
    move-object/from16 v0, p2

    #@48a
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48d
    .line 2984
    move-object/from16 v0, p0

    #@48f
    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    #@491
    move-object/from16 v0, p2

    #@493
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@496
    .line 2985
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@499
    .line 2987
    :cond_16
    move-object/from16 v0, p0

    #@49b
    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    #@49d
    const-wide/16 v20, 0x0

    #@49f
    cmp-long v5, v6, v20

    #@4a1
    if-eqz v5, :cond_17

    #@4a3
    .line 2988
    const-string/jumbo v5, "  mNextLightAlarmTime="

    #@4a6
    move-object/from16 v0, p2

    #@4a8
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4ab
    .line 2989
    move-object/from16 v0, p0

    #@4ad
    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    #@4af
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@4b2
    move-result-wide v20

    #@4b3
    move-wide/from16 v0, v20

    #@4b5
    move-object/from16 v2, p2

    #@4b7
    invoke-static {v6, v7, v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@4ba
    .line 2990
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@4bd
    .line 2992
    :cond_17
    move-object/from16 v0, p0

    #@4bf
    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    #@4c1
    const-wide/16 v20, 0x0

    #@4c3
    cmp-long v5, v6, v20

    #@4c5
    if-eqz v5, :cond_18

    #@4c7
    .line 2993
    const-string/jumbo v5, "  mCurIdleBudget="

    #@4ca
    move-object/from16 v0, p2

    #@4cc
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4cf
    .line 2994
    move-object/from16 v0, p0

    #@4d1
    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    #@4d3
    move-object/from16 v0, p2

    #@4d5
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@4d8
    .line 2995
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@4db
    .line 2997
    :cond_18
    move-object/from16 v0, p0

    #@4dd
    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    #@4df
    const-wide/16 v20, 0x0

    #@4e1
    cmp-long v5, v6, v20

    #@4e3
    if-eqz v5, :cond_19

    #@4e5
    .line 2998
    const-string/jumbo v5, "  mMaintenanceStartTime="

    #@4e8
    move-object/from16 v0, p2

    #@4ea
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4ed
    .line 2999
    move-object/from16 v0, p0

    #@4ef
    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    #@4f1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@4f4
    move-result-wide v20

    #@4f5
    move-wide/from16 v0, v20

    #@4f7
    move-object/from16 v2, p2

    #@4f9
    invoke-static {v6, v7, v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@4fc
    .line 3000
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@4ff
    .line 3002
    :cond_19
    move-object/from16 v0, p0

    #@501
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    #@503
    if-eqz v5, :cond_1a

    #@505
    .line 3003
    const-string/jumbo v5, "  mJobsActive="

    #@508
    move-object/from16 v0, p2

    #@50a
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50d
    move-object/from16 v0, p0

    #@50f
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    #@511
    move-object/from16 v0, p2

    #@513
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@516
    .line 3005
    :cond_1a
    move-object/from16 v0, p0

    #@518
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    #@51a
    if-eqz v5, :cond_1b

    #@51c
    .line 3006
    const-string/jumbo v5, "  mAlarmsActive="

    #@51f
    move-object/from16 v0, p2

    #@521
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@524
    move-object/from16 v0, p0

    #@526
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    #@528
    move-object/from16 v0, p2

    #@52a
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@52d
    :cond_1b
    monitor-exit p0

    #@52e
    .line 2811
    return-void

    #@52f
    .line 2861
    nop

    #@530
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "printTitle"    # Z

    #@0
    .prologue
    .line 3012
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v3

    #@6
    .line 3013
    .local v3, "size":I
    if-lez v3, :cond_1

    #@8
    .line 3014
    const-string/jumbo v2, ""

    #@b
    .line 3015
    .local v2, "prefix":Ljava/lang/String;
    if-eqz p2, :cond_0

    #@d
    .line 3016
    const-string/jumbo v6, "  Temp whitelist schedule:"

    #@10
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13
    .line 3017
    const-string/jumbo v2, "    "

    #@16
    .line 3019
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@19
    move-result-wide v4

    #@1a
    .line 3020
    .local v4, "timeNow":J
    const/4 v1, 0x0

    #@1b
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@1d
    .line 3021
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    .line 3022
    const-string/jumbo v6, "UID="

    #@23
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    .line 3023
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    #@28
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@2b
    move-result v6

    #@2c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@2f
    .line 3024
    const-string/jumbo v6, ": "

    #@32
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@35
    .line 3025
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    #@37
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Landroid/util/Pair;

    #@3d
    .line 3026
    .local v0, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@3f
    check-cast v6, Landroid/util/MutableLong;

    #@41
    iget-wide v6, v6, Landroid/util/MutableLong;->value:J

    #@43
    invoke-static {v6, v7, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@46
    .line 3027
    const-string/jumbo v6, " - "

    #@49
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c
    .line 3028
    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@4e
    check-cast v6, Ljava/lang/String;

    #@50
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@53
    .line 3020
    add-int/lit8 v1, v1, 0x1

    #@55
    goto :goto_0

    #@56
    .line 3011
    .end local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v4    # "timeNow":J
    :cond_1
    return-void
.end method

.method exitForceIdleLocked()V
    .locals 2

    #@0
    .prologue
    .line 1846
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 1847
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    #@7
    .line 1848
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    #@9
    if-nez v0, :cond_0

    #@b
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 1849
    :cond_0
    const-string/jumbo v0, "exit-force"

    #@12
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@15
    move-result v1

    #@16
    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    #@19
    .line 1845
    :cond_1
    return-void
.end method

.method public exitIdleInternal(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1709
    monitor-enter p0

    #@1
    .line 1710
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v0

    #@5
    invoke-virtual {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 1708
    return-void

    #@a
    .line 1709
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method exitMaintenanceEarlyIfNeededLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v3, 0x6

    #@2
    .line 2114
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@4
    if-eq v2, v3, :cond_0

    #@6
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@8
    if-ne v2, v3, :cond_2

    #@a
    .line 2116
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isOpsInactiveLocked()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 2117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@13
    move-result-wide v0

    #@14
    .line 2126
    .local v0, "now":J
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@16
    if-ne v2, v3, :cond_3

    #@18
    .line 2127
    const-string/jumbo v2, "s:early"

    #@1b
    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    #@1e
    .line 2113
    .end local v0    # "now":J
    :cond_1
    :goto_1
    return-void

    #@1f
    .line 2115
    :cond_2
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@21
    if-ne v2, v4, :cond_1

    #@23
    goto :goto_0

    #@24
    .line 2128
    .restart local v0    # "now":J
    :cond_3
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@26
    if-ne v2, v4, :cond_4

    #@28
    .line 2129
    const-string/jumbo v2, "s:predone"

    #@2b
    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    #@2e
    goto :goto_1

    #@2f
    .line 2131
    :cond_4
    const-string/jumbo v2, "s:early"

    #@32
    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    #@35
    goto :goto_1
.end method

.method public getAppIdTempWhitelistInternal()[I
    .locals 1

    #@0
    .prologue
    .line 1565
    monitor-enter p0

    #@1
    .line 1566
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 1565
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getAppIdUserWhitelistInternal()[I
    .locals 1

    #@0
    .prologue
    .line 1559
    monitor-enter p0

    #@1
    .line 1560
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 1559
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getAppIdWhitelistExceptIdleInternal()[I
    .locals 1

    #@0
    .prologue
    .line 1547
    monitor-enter p0

    #@1
    .line 1548
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 1547
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getAppIdWhitelistInternal()[I
    .locals 1

    #@0
    .prologue
    .line 1553
    monitor-enter p0

    #@1
    .line 1554
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 1553
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getFullPowerWhitelistExceptIdleInternal()[Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 1499
    monitor-enter p0

    #@1
    .line 1500
    :try_start_0
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v4

    #@7
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@9
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@c
    move-result v5

    #@d
    add-int v3, v4, v5

    #@f
    .line 1501
    .local v3, "size":I
    new-array v0, v3, [Ljava/lang/String;

    #@11
    .line 1502
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    #@12
    .line 1503
    .local v1, "cur":I
    const/4 v2, 0x0

    #@13
    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@18
    move-result v4

    #@19
    if-ge v2, v4, :cond_0

    #@1b
    .line 1504
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@1d
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    check-cast v4, Ljava/lang/String;

    #@23
    aput-object v4, v0, v1

    #@25
    .line 1505
    add-int/lit8 v1, v1, 0x1

    #@27
    .line 1503
    add-int/lit8 v2, v2, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 1507
    :cond_0
    const/4 v2, 0x0

    #@2b
    :goto_1
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@2d
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@30
    move-result v4

    #@31
    if-ge v2, v4, :cond_1

    #@33
    .line 1508
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@35
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@38
    move-result-object v4

    #@39
    check-cast v4, Ljava/lang/String;

    #@3b
    aput-object v4, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 1509
    add-int/lit8 v1, v1, 0x1

    #@3f
    .line 1507
    add-int/lit8 v2, v2, 0x1

    #@41
    goto :goto_1

    #@42
    :cond_1
    monitor-exit p0

    #@43
    .line 1511
    return-object v0

    #@44
    .line 1499
    .end local v0    # "apps":[Ljava/lang/String;
    .end local v1    # "cur":I
    .end local v2    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    #@45
    monitor-exit p0

    #@46
    throw v4
.end method

.method public getFullPowerWhitelistInternal()[Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 1516
    monitor-enter p0

    #@1
    .line 1517
    :try_start_0
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v4

    #@7
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@9
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@c
    move-result v5

    #@d
    add-int v3, v4, v5

    #@f
    .line 1518
    .local v3, "size":I
    new-array v0, v3, [Ljava/lang/String;

    #@11
    .line 1519
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    #@12
    .line 1520
    .local v1, "cur":I
    const/4 v2, 0x0

    #@13
    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@18
    move-result v4

    #@19
    if-ge v2, v4, :cond_0

    #@1b
    .line 1521
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@1d
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    check-cast v4, Ljava/lang/String;

    #@23
    aput-object v4, v0, v1

    #@25
    .line 1522
    add-int/lit8 v1, v1, 0x1

    #@27
    .line 1520
    add-int/lit8 v2, v2, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 1524
    :cond_0
    const/4 v2, 0x0

    #@2b
    :goto_1
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@2d
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@30
    move-result v4

    #@31
    if-ge v2, v4, :cond_1

    #@33
    .line 1525
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@35
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@38
    move-result-object v4

    #@39
    check-cast v4, Ljava/lang/String;

    #@3b
    aput-object v4, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 1526
    add-int/lit8 v1, v1, 0x1

    #@3f
    .line 1524
    add-int/lit8 v2, v2, 0x1

    #@41
    goto :goto_1

    #@42
    :cond_1
    monitor-exit p0

    #@43
    .line 1528
    return-object v0

    #@44
    .line 1516
    .end local v0    # "apps":[Ljava/lang/String;
    .end local v1    # "cur":I
    .end local v2    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    #@45
    monitor-exit p0

    #@46
    throw v4
.end method

.method public getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1460
    monitor-enter p0

    #@1
    .line 1461
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    .line 1460
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method getPowerSaveWhitelistUserAppIds()[I
    .locals 1

    #@0
    .prologue
    .line 1283
    monitor-enter p0

    #@1
    .line 1284
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 1283
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getSystemPowerWhitelistExceptIdleInternal()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1466
    monitor-enter p0

    #@1
    .line 1467
    :try_start_0
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v2

    #@7
    .line 1468
    .local v2, "size":I
    new-array v0, v2, [Ljava/lang/String;

    #@9
    .line 1469
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@c
    .line 1470
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Ljava/lang/String;

    #@14
    aput-object v3, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 1469
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    :cond_0
    monitor-exit p0

    #@1a
    .line 1472
    return-object v0

    #@1b
    .line 1466
    .end local v0    # "apps":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    #@1c
    monitor-exit p0

    #@1d
    throw v3
.end method

.method public getSystemPowerWhitelistInternal()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1477
    monitor-enter p0

    #@1
    .line 1478
    :try_start_0
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v2

    #@7
    .line 1479
    .local v2, "size":I
    new-array v0, v2, [Ljava/lang/String;

    #@9
    .line 1480
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@c
    .line 1481
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Ljava/lang/String;

    #@14
    aput-object v3, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 1480
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    :cond_0
    monitor-exit p0

    #@1a
    .line 1483
    return-object v0

    #@1b
    .line 1477
    .end local v0    # "apps":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    #@1c
    monitor-exit p0

    #@1d
    throw v3
.end method

.method public getUserPowerWhitelistInternal()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1488
    monitor-enter p0

    #@1
    .line 1489
    :try_start_0
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v2

    #@7
    .line 1490
    .local v2, "size":I
    new-array v0, v2, [Ljava/lang/String;

    #@9
    .line 1491
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@f
    move-result v3

    #@10
    if-ge v1, v3, :cond_0

    #@12
    .line 1492
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Ljava/lang/String;

    #@1a
    aput-object v3, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1491
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    :cond_0
    monitor-exit p0

    #@20
    .line 1494
    return-object v0

    #@21
    .line 1488
    .end local v0    # "apps":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    #@22
    monitor-exit p0

    #@23
    throw v3
.end method

.method handleMotionDetectedLocked(JLjava/lang/String;)V
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "type"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 2147
    const/4 v0, 0x0

    #@4
    .line 2148
    .local v0, "becomeInactive":Z
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 2149
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@b
    move-result v1

    #@c
    invoke-virtual {p0, p3, v1}, Lcom/android/server/DeviceIdleController;->scheduleReportActiveLocked(Ljava/lang/String;I)V

    #@f
    .line 2150
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@11
    .line 2151
    iput-wide p1, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    #@13
    .line 2152
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    #@15
    .line 2153
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    #@17
    .line 2154
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@19
    invoke-static {v1, p3}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    #@1c
    .line 2155
    const/4 v1, 0x1

    #@1d
    invoke-direct {p0, v1}, Lcom/android/server/DeviceIdleController;->addEvent(I)V

    #@20
    .line 2156
    const/4 v0, 0x1

    #@21
    .line 2158
    :cond_0
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@23
    const/4 v2, 0x7

    #@24
    if-ne v1, v2, :cond_1

    #@26
    .line 2161
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@28
    .line 2162
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@2a
    invoke-static {v1, p3}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    #@2d
    .line 2163
    const/4 v0, 0x1

    #@2e
    .line 2165
    :cond_1
    if-eqz v0, :cond_2

    #@30
    .line 2166
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    #@33
    .line 2143
    :cond_2
    return-void
.end method

.method handleWriteConfigFile()V
    .locals 7

    #@0
    .prologue
    .line 2434
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 2437
    .local v1, "memStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 2438
    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    #@8
    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@b
    .line 2439
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@d
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@14
    .line 2440
    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@18
    .line 2445
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    #@1a
    monitor-enter v5

    #@1b
    .line 2446
    const/4 v3, 0x0

    #@1c
    .line 2448
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_3
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    #@1e
    invoke-virtual {v4}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@21
    move-result-object v3

    #@22
    .line 2449
    .local v3, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    #@25
    .line 2450
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    #@28
    .line 2451
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@2b
    .line 2452
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    #@2e
    .line 2453
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    #@30
    invoke-virtual {v4, v3}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@33
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    monitor-exit v5

    #@34
    .line 2433
    return-void

    #@35
    .line 2437
    :catchall_0
    move-exception v4

    #@36
    :try_start_4
    monitor-exit p0

    #@37
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    #@38
    .line 2442
    :catch_0
    move-exception v0

    #@39
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@3a
    .line 2454
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@3b
    .line 2455
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v4, "DeviceIdleController"

    #@3e
    const-string/jumbo v6, "Error writing config file"

    #@41
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@44
    .line 2456
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    #@46
    invoke-virtual {v4, v3}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@49
    goto :goto_1

    #@4a
    .line 2445
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    #@4b
    monitor-exit v5

    #@4c
    throw v4
.end method

.method incActiveIdleOps()V
    .locals 1

    #@0
    .prologue
    .line 2051
    monitor-enter p0

    #@1
    .line 2052
    :try_start_0
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 2050
    return-void

    #@9
    .line 2051
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method isOpsInactiveLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2110
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    #@3
    if-gtz v1, :cond_0

    #@5
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    #@c
    if-nez v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method public isPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1540
    monitor-enter p0

    #@1
    .line 1541
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1542
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v0

    #@f
    :goto_0
    monitor-exit p0

    #@10
    .line 1541
    return v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1540
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public isPowerSaveWhitelistExceptIdleAppInternal(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1533
    monitor-enter p0

    #@1
    .line 1534
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1535
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v0

    #@f
    :goto_0
    monitor-exit p0

    #@10
    .line 1534
    return v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1533
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method motionLocked()V
    .locals 3

    #@0
    .prologue
    .line 2140
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@2
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    #@4
    const-string/jumbo v2, "motion"

    #@7
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    #@a
    .line 2137
    return-void
.end method

.method public onAnyMotionResult(I)V
    .locals 3
    .param p1, "result"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 971
    const/4 v0, -0x1

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 972
    monitor-enter p0

    #@5
    .line 973
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 976
    :cond_0
    if-ne p1, v1, :cond_3

    #@b
    .line 978
    monitor-enter p0

    #@c
    .line 979
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@e
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    #@10
    const-string/jumbo v2, "sense_motion"

    #@13
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@16
    :cond_1
    :goto_0
    monitor-exit p0

    #@17
    .line 969
    :cond_2
    return-void

    #@18
    .line 972
    :catchall_0
    move-exception v0

    #@19
    monitor-exit p0

    #@1a
    throw v0

    #@1b
    .line 978
    :catchall_1
    move-exception v0

    #@1c
    monitor-exit p0

    #@1d
    throw v0

    #@1e
    .line 981
    :cond_3
    if-nez p1, :cond_2

    #@20
    .line 983
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@22
    const/4 v1, 0x3

    #@23
    if-ne v0, v1, :cond_4

    #@25
    .line 985
    monitor-enter p0

    #@26
    .line 986
    const/4 v0, 0x1

    #@27
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    #@29
    .line 987
    const-string/jumbo v0, "s:stationary"

    #@2c
    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@2f
    goto :goto_0

    #@30
    .line 985
    :catchall_2
    move-exception v0

    #@31
    monitor-exit p0

    #@32
    throw v0

    #@33
    .line 989
    :cond_4
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@35
    const/4 v1, 0x4

    #@36
    if-ne v0, v1, :cond_2

    #@38
    .line 992
    monitor-enter p0

    #@39
    .line 993
    const/4 v0, 0x1

    #@3a
    :try_start_3
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    #@3c
    .line 994
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    #@3e
    if-eqz v0, :cond_1

    #@40
    .line 995
    const-string/jumbo v0, "s:stationary"

    #@43
    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@46
    goto :goto_0

    #@47
    .line 992
    :catchall_3
    move-exception v0

    #@48
    monitor-exit p0

    #@49
    throw v0
.end method

.method public onBootPhase(I)V
    .locals 9
    .param p1, "phase"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1351
    const/16 v0, 0x1f4

    #@3
    if-ne p1, v0, :cond_4

    #@5
    .line 1352
    monitor-enter p0

    #@6
    .line 1353
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    const-string/jumbo v1, "alarm"

    #@d
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/app/AlarmManager;

    #@13
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    #@15
    .line 1354
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@1b
    .line 1355
    const-class v0, Landroid/os/PowerManagerInternal;

    #@1d
    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/os/PowerManagerInternal;

    #@23
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    #@25
    .line 1356
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@28
    move-result-object v0

    #@29
    const-class v1, Landroid/os/PowerManager;

    #@2b
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Landroid/os/PowerManager;

    #@31
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    #@33
    .line 1357
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    #@35
    .line 1358
    const-string/jumbo v1, "deviceidle_maint"

    #@38
    .line 1357
    const/4 v2, 0x1

    #@39
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    #@3f
    .line 1359
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    #@41
    const/4 v1, 0x0

    #@42
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@45
    .line 1361
    const-string/jumbo v0, "connectivity"

    #@48
    .line 1360
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@4b
    move-result-object v0

    #@4c
    check-cast v0, Lcom/android/server/ConnectivityService;

    #@4e
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConnectivityService:Lcom/android/server/ConnectivityService;

    #@50
    .line 1362
    const-class v0, Lcom/android/server/AlarmManagerService$LocalService;

    #@52
    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    #@55
    move-result-object v0

    #@56
    check-cast v0, Lcom/android/server/AlarmManagerService$LocalService;

    #@58
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

    #@5a
    .line 1364
    const-string/jumbo v0, "netpolicy"

    #@5d
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@60
    move-result-object v0

    #@61
    .line 1363
    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    #@64
    move-result-object v0

    #@65
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    #@67
    .line 1365
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@6a
    move-result-object v0

    #@6b
    .line 1366
    const-string/jumbo v1, "display"

    #@6e
    .line 1365
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@71
    move-result-object v0

    #@72
    check-cast v0, Landroid/hardware/display/DisplayManager;

    #@74
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@76
    .line 1367
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@79
    move-result-object v0

    #@7a
    const-string/jumbo v1, "sensor"

    #@7d
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@80
    move-result-object v0

    #@81
    check-cast v0, Landroid/hardware/SensorManager;

    #@83
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    #@85
    .line 1368
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@88
    move-result-object v0

    #@89
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8c
    move-result-object v0

    #@8d
    .line 1369
    const v1, 0x10e000d

    #@90
    .line 1368
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@93
    move-result v7

    #@94
    .line 1370
    .local v7, "sigMotionSensorId":I
    if-lez v7, :cond_0

    #@96
    .line 1371
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    #@98
    const/4 v1, 0x1

    #@99
    invoke-virtual {v0, v7, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    #@9c
    move-result-object v0

    #@9d
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    #@9f
    .line 1373
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    #@a1
    if-nez v0, :cond_1

    #@a3
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@a6
    move-result-object v0

    #@a7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@aa
    move-result-object v0

    #@ab
    .line 1374
    const v1, 0x1120014

    #@ae
    .line 1373
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@b1
    move-result v0

    #@b2
    if-eqz v0, :cond_1

    #@b4
    .line 1375
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    #@b6
    .line 1376
    const/16 v1, 0x1a

    #@b8
    const/4 v2, 0x1

    #@b9
    .line 1375
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    #@bc
    move-result-object v0

    #@bd
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    #@bf
    .line 1378
    :cond_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    #@c1
    if-nez v0, :cond_2

    #@c3
    .line 1380
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    #@c5
    .line 1381
    const/16 v1, 0x11

    #@c7
    const/4 v2, 0x1

    #@c8
    .line 1380
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    #@cb
    move-result-object v0

    #@cc
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    #@ce
    .line 1384
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@d1
    move-result-object v0

    #@d2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@d5
    move-result-object v0

    #@d6
    .line 1385
    const v1, 0x1120015

    #@d9
    .line 1384
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@dc
    move-result v0

    #@dd
    if-eqz v0, :cond_3

    #@df
    .line 1386
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@e2
    move-result-object v0

    #@e3
    .line 1387
    const-string/jumbo v1, "location"

    #@e6
    .line 1386
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@e9
    move-result-object v0

    #@ea
    check-cast v0, Landroid/location/LocationManager;

    #@ec
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    #@ee
    .line 1388
    new-instance v0, Landroid/location/LocationRequest;

    #@f0
    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    #@f3
    .line 1389
    const/16 v1, 0x64

    #@f5
    .line 1388
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    #@f8
    move-result-object v0

    #@f9
    .line 1390
    const-wide/16 v2, 0x0

    #@fb
    .line 1388
    invoke-virtual {v0, v2, v3}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    #@fe
    move-result-object v0

    #@ff
    .line 1391
    const-wide/16 v2, 0x0

    #@101
    .line 1388
    invoke-virtual {v0, v2, v3}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    #@104
    move-result-object v0

    #@105
    .line 1392
    const/4 v1, 0x1

    #@106
    .line 1388
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    #@109
    move-result-object v0

    #@10a
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    #@10c
    .line 1395
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@10f
    move-result-object v0

    #@110
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@113
    move-result-object v0

    #@114
    .line 1396
    const v1, 0x10e000c

    #@117
    .line 1395
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@11a
    move-result v0

    #@11b
    int-to-float v0, v0

    #@11c
    .line 1396
    const/high16 v1, 0x42c80000    # 100.0f

    #@11e
    .line 1395
    div-float v5, v0, v1

    #@120
    .line 1397
    .local v5, "angleThreshold":F
    new-instance v0, Lcom/android/server/AnyMotionDetector;

    #@122
    .line 1398
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@125
    move-result-object v1

    #@126
    const-string/jumbo v2, "power"

    #@129
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@12c
    move-result-object v1

    #@12d
    check-cast v1, Landroid/os/PowerManager;

    #@12f
    .line 1399
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@131
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    #@133
    move-object v4, p0

    #@134
    .line 1397
    invoke-direct/range {v0 .. v5}, Lcom/android/server/AnyMotionDetector;-><init>(Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)V

    #@137
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    #@139
    .line 1401
    new-instance v0, Landroid/content/Intent;

    #@13b
    const-string/jumbo v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    #@13e
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@141
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    #@143
    .line 1402
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    #@145
    const/high16 v1, 0x50000000

    #@147
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@14a
    .line 1404
    new-instance v0, Landroid/content/Intent;

    #@14c
    const-string/jumbo v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    #@14f
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@152
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    #@154
    .line 1405
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    #@156
    const/high16 v1, 0x50000000

    #@158
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@15b
    .line 1408
    new-instance v6, Landroid/content/IntentFilter;

    #@15d
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    #@160
    .line 1409
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    #@163
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@166
    .line 1410
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@169
    move-result-object v0

    #@16a
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    #@16c
    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@16f
    .line 1412
    new-instance v6, Landroid/content/IntentFilter;

    #@171
    .end local v6    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    #@174
    .line 1413
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    #@177
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@17a
    .line 1414
    const-string/jumbo v0, "package"

    #@17d
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@180
    .line 1415
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@183
    move-result-object v0

    #@184
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    #@186
    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@189
    .line 1417
    new-instance v6, Landroid/content/IntentFilter;

    #@18b
    .end local v6    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    #@18e
    .line 1418
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    #@191
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@194
    .line 1419
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@197
    move-result-object v0

    #@198
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    #@19a
    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@19d
    .line 1421
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    #@19f
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    #@1a1
    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    #@1a4
    .line 1422
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

    #@1a6
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    #@1a8
    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$LocalService;->setDeviceIdleUserWhitelist([I)V

    #@1ab
    .line 1423
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@1ad
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@1af
    const/4 v2, 0x0

    #@1b0
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    #@1b3
    .line 1424
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateDisplayLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b6
    monitor-exit p0

    #@1b7
    .line 1426
    invoke-virtual {p0, v8}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

    #@1ba
    .line 1350
    .end local v5    # "angleThreshold":F
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "sigMotionSensorId":I
    :cond_4
    return-void

    #@1bb
    .line 1352
    :catchall_0
    move-exception v0

    #@1bc
    monitor-exit p0

    #@1bd
    throw v0
.end method

.method onShellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;)I
    .locals 21
    .param p1, "shell"    # Lcom/android/server/DeviceIdleController$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2520
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v16

    #@4
    .line 2521
    .local v16, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "step"

    #@7
    move-object/from16 v0, p2

    #@9
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_3

    #@f
    .line 2522
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@12
    move-result-object v2

    #@13
    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    #@16
    .line 2523
    const/4 v5, 0x0

    #@17
    .line 2522
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 2524
    monitor-enter p0

    #@1b
    .line 2525
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1e
    move-result-wide v18

    #@1f
    .line 2526
    .local v18, "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@22
    move-result-object v3

    #@23
    .line 2528
    .local v3, "arg":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@25
    :try_start_1
    const-string/jumbo v2, "deep"

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_1

    #@2e
    .line 2529
    :cond_0
    const-string/jumbo v2, "s:shell"

    #@31
    move-object/from16 v0, p0

    #@33
    invoke-virtual {v0, v2}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    #@36
    .line 2530
    const-string/jumbo v2, "Stepped to deep: "

    #@39
    move-object/from16 v0, v16

    #@3b
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e
    .line 2531
    move-object/from16 v0, p0

    #@40
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mState:I

    #@42
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    move-object/from16 v0, v16

    #@48
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    .line 2539
    :goto_0
    :try_start_2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4e
    .end local v3    # "arg":Ljava/lang/String;
    .end local v18    # "token":J
    :goto_1
    monitor-exit p0

    #@4f
    .line 2808
    :goto_2
    const/4 v2, 0x0

    #@50
    return v2

    #@51
    .line 2532
    .restart local v3    # "arg":Ljava/lang/String;
    .restart local v18    # "token":J
    :cond_1
    :try_start_3
    const-string/jumbo v2, "light"

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v2

    #@58
    if-eqz v2, :cond_2

    #@5a
    .line 2533
    const-string/jumbo v2, "s:shell"

    #@5d
    move-object/from16 v0, p0

    #@5f
    invoke-virtual {v0, v2}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    #@62
    .line 2534
    const-string/jumbo v2, "Stepped to light: "

    #@65
    move-object/from16 v0, v16

    #@67
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6a
    move-object/from16 v0, p0

    #@6c
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@6e
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    move-object/from16 v0, v16

    #@74
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@77
    goto :goto_0

    #@78
    .line 2538
    :catchall_0
    move-exception v2

    #@79
    .line 2539
    :try_start_4
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@7c
    .line 2538
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@7d
    .line 2524
    .end local v3    # "arg":Ljava/lang/String;
    .end local v18    # "token":J
    :catchall_1
    move-exception v2

    #@7e
    monitor-exit p0

    #@7f
    throw v2

    #@80
    .line 2536
    .restart local v3    # "arg":Ljava/lang/String;
    .restart local v18    # "token":J
    :cond_2
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v4, "Unknown idle mode: "

    #@88
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v2

    #@8c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v2

    #@90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v2

    #@94
    move-object/from16 v0, v16

    #@96
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@99
    goto :goto_0

    #@9a
    .line 2542
    .end local v3    # "arg":Ljava/lang/String;
    .end local v18    # "token":J
    :cond_3
    const-string/jumbo v2, "force-idle"

    #@9d
    move-object/from16 v0, p2

    #@9f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a2
    move-result v2

    #@a3
    if-eqz v2, :cond_c

    #@a5
    .line 2543
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@a8
    move-result-object v2

    #@a9
    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    #@ac
    .line 2544
    const/4 v5, 0x0

    #@ad
    .line 2543
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b0
    .line 2545
    monitor-enter p0

    #@b1
    .line 2546
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b4
    move-result-wide v18

    #@b5
    .line 2547
    .restart local v18    # "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@b8
    move-result-object v3

    #@b9
    .line 2549
    .restart local v3    # "arg":Ljava/lang/String;
    if-eqz v3, :cond_4

    #@bb
    :try_start_7
    const-string/jumbo v2, "deep"

    #@be
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c1
    move-result v2

    #@c2
    if-eqz v2, :cond_8

    #@c4
    .line 2550
    :cond_4
    move-object/from16 v0, p0

    #@c6
    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    #@c8
    if-nez v2, :cond_5

    #@ca
    .line 2551
    const-string/jumbo v2, "Unable to go deep idle; not enabled"

    #@cd
    move-object/from16 v0, v16

    #@cf
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@d2
    .line 2587
    :try_start_8
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@d5
    .line 2552
    const/4 v2, -0x1

    #@d6
    monitor-exit p0

    #@d7
    return v2

    #@d8
    .line 2554
    :cond_5
    const/4 v2, 0x1

    #@d9
    :try_start_9
    move-object/from16 v0, p0

    #@db
    iput-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    #@dd
    .line 2555
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    #@e0
    .line 2556
    move-object/from16 v0, p0

    #@e2
    iget v11, v0, Lcom/android/server/DeviceIdleController;->mState:I

    #@e4
    .line 2557
    .local v11, "curState":I
    :goto_3
    const/4 v2, 0x5

    #@e5
    if-eq v11, v2, :cond_7

    #@e7
    .line 2558
    const-string/jumbo v2, "s:shell"

    #@ea
    move-object/from16 v0, p0

    #@ec
    invoke-virtual {v0, v2}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    #@ef
    .line 2559
    move-object/from16 v0, p0

    #@f1
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mState:I

    #@f3
    if-ne v11, v2, :cond_6

    #@f5
    .line 2560
    const-string/jumbo v2, "Unable to go deep idle; stopped at "

    #@f8
    move-object/from16 v0, v16

    #@fa
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fd
    .line 2561
    move-object/from16 v0, p0

    #@ff
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mState:I

    #@101
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    #@104
    move-result-object v2

    #@105
    move-object/from16 v0, v16

    #@107
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10a
    .line 2562
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    #@10d
    .line 2587
    :try_start_a
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    #@110
    .line 2563
    const/4 v2, -0x1

    #@111
    monitor-exit p0

    #@112
    return v2

    #@113
    .line 2565
    :cond_6
    :try_start_b
    move-object/from16 v0, p0

    #@115
    iget v11, v0, Lcom/android/server/DeviceIdleController;->mState:I

    #@117
    goto :goto_3

    #@118
    .line 2567
    :cond_7
    const-string/jumbo v2, "Now forced in to deep idle mode"

    #@11b
    move-object/from16 v0, v16

    #@11d
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    #@120
    .line 2587
    .end local v11    # "curState":I
    :goto_4
    :try_start_c
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    #@123
    goto/16 :goto_1

    #@125
    .line 2545
    .end local v3    # "arg":Ljava/lang/String;
    .end local v18    # "token":J
    :catchall_2
    move-exception v2

    #@126
    monitor-exit p0

    #@127
    throw v2

    #@128
    .line 2568
    .restart local v3    # "arg":Ljava/lang/String;
    .restart local v18    # "token":J
    :cond_8
    :try_start_d
    const-string/jumbo v2, "light"

    #@12b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12e
    move-result v2

    #@12f
    if-eqz v2, :cond_b

    #@131
    .line 2569
    const/4 v2, 0x1

    #@132
    move-object/from16 v0, p0

    #@134
    iput-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    #@136
    .line 2570
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    #@139
    .line 2571
    move-object/from16 v0, p0

    #@13b
    iget v10, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@13d
    .line 2572
    .local v10, "curLightState":I
    :goto_5
    const/4 v2, 0x4

    #@13e
    if-eq v10, v2, :cond_a

    #@140
    .line 2573
    const-string/jumbo v2, "s:shell"

    #@143
    move-object/from16 v0, p0

    #@145
    invoke-virtual {v0, v2}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    #@148
    .line 2574
    move-object/from16 v0, p0

    #@14a
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@14c
    if-ne v10, v2, :cond_9

    #@14e
    .line 2575
    const-string/jumbo v2, "Unable to go light idle; stopped at "

    #@151
    move-object/from16 v0, v16

    #@153
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@156
    .line 2576
    move-object/from16 v0, p0

    #@158
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@15a
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    #@15d
    move-result-object v2

    #@15e
    move-object/from16 v0, v16

    #@160
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@163
    .line 2577
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    #@166
    .line 2587
    :try_start_e
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    #@169
    .line 2578
    const/4 v2, -0x1

    #@16a
    monitor-exit p0

    #@16b
    return v2

    #@16c
    .line 2580
    :cond_9
    :try_start_f
    move-object/from16 v0, p0

    #@16e
    iget v10, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@170
    goto :goto_5

    #@171
    .line 2582
    :cond_a
    const-string/jumbo v2, "Now forced in to light idle mode"

    #@174
    move-object/from16 v0, v16

    #@176
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    #@179
    goto :goto_4

    #@17a
    .line 2586
    .end local v10    # "curLightState":I
    :catchall_3
    move-exception v2

    #@17b
    .line 2587
    :try_start_10
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@17e
    .line 2586
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    #@17f
    .line 2584
    :cond_b
    :try_start_11
    new-instance v2, Ljava/lang/StringBuilder;

    #@181
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@184
    const-string/jumbo v4, "Unknown idle mode: "

    #@187
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v2

    #@18b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v2

    #@18f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@192
    move-result-object v2

    #@193
    move-object/from16 v0, v16

    #@195
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    #@198
    goto :goto_4

    #@199
    .line 2590
    .end local v3    # "arg":Ljava/lang/String;
    .end local v18    # "token":J
    :cond_c
    const-string/jumbo v2, "force-inactive"

    #@19c
    move-object/from16 v0, p2

    #@19e
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a1
    move-result v2

    #@1a2
    if-eqz v2, :cond_d

    #@1a4
    .line 2591
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@1a7
    move-result-object v2

    #@1a8
    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    #@1ab
    .line 2592
    const/4 v5, 0x0

    #@1ac
    .line 2591
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1af
    .line 2593
    monitor-enter p0

    #@1b0
    .line 2594
    :try_start_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    #@1b3
    move-result-wide v18

    #@1b4
    .line 2596
    .restart local v18    # "token":J
    const/4 v2, 0x1

    #@1b5
    :try_start_13
    move-object/from16 v0, p0

    #@1b7
    iput-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    #@1b9
    .line 2597
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    #@1bc
    .line 2598
    const-string/jumbo v2, "Light state: "

    #@1bf
    move-object/from16 v0, v16

    #@1c1
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c4
    .line 2599
    move-object/from16 v0, p0

    #@1c6
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@1c8
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    #@1cb
    move-result-object v2

    #@1cc
    move-object/from16 v0, v16

    #@1ce
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d1
    .line 2600
    const-string/jumbo v2, ", deep state: "

    #@1d4
    move-object/from16 v0, v16

    #@1d6
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d9
    .line 2601
    move-object/from16 v0, p0

    #@1db
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mState:I

    #@1dd
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    #@1e0
    move-result-object v2

    #@1e1
    move-object/from16 v0, v16

    #@1e3
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    #@1e6
    .line 2603
    :try_start_14
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    #@1e9
    goto/16 :goto_1

    #@1eb
    .line 2593
    .end local v18    # "token":J
    :catchall_4
    move-exception v2

    #@1ec
    monitor-exit p0

    #@1ed
    throw v2

    #@1ee
    .line 2602
    .restart local v18    # "token":J
    :catchall_5
    move-exception v2

    #@1ef
    .line 2603
    :try_start_15
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f2
    .line 2602
    throw v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    #@1f3
    .line 2606
    .end local v18    # "token":J
    :cond_d
    const-string/jumbo v2, "unforce"

    #@1f6
    move-object/from16 v0, p2

    #@1f8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1fb
    move-result v2

    #@1fc
    if-eqz v2, :cond_e

    #@1fe
    .line 2607
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@201
    move-result-object v2

    #@202
    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    #@205
    .line 2608
    const/4 v5, 0x0

    #@206
    .line 2607
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@209
    .line 2609
    monitor-enter p0

    #@20a
    .line 2610
    :try_start_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    #@20d
    move-result-wide v18

    #@20e
    .line 2612
    .restart local v18    # "token":J
    :try_start_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V

    #@211
    .line 2613
    const-string/jumbo v2, "Light state: "

    #@214
    move-object/from16 v0, v16

    #@216
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@219
    .line 2614
    move-object/from16 v0, p0

    #@21b
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@21d
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    #@220
    move-result-object v2

    #@221
    move-object/from16 v0, v16

    #@223
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@226
    .line 2615
    const-string/jumbo v2, ", deep state: "

    #@229
    move-object/from16 v0, v16

    #@22b
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22e
    .line 2616
    move-object/from16 v0, p0

    #@230
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mState:I

    #@232
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    #@235
    move-result-object v2

    #@236
    move-object/from16 v0, v16

    #@238
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    #@23b
    .line 2618
    :try_start_18
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    #@23e
    goto/16 :goto_1

    #@240
    .line 2609
    .end local v18    # "token":J
    :catchall_6
    move-exception v2

    #@241
    monitor-exit p0

    #@242
    throw v2

    #@243
    .line 2617
    .restart local v18    # "token":J
    :catchall_7
    move-exception v2

    #@244
    .line 2618
    :try_start_19
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@247
    .line 2617
    throw v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    #@248
    .line 2621
    .end local v18    # "token":J
    :cond_e
    const-string/jumbo v2, "get"

    #@24b
    move-object/from16 v0, p2

    #@24d
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@250
    move-result v2

    #@251
    if-eqz v2, :cond_16

    #@253
    .line 2622
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@256
    move-result-object v2

    #@257
    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    #@25a
    .line 2623
    const/4 v5, 0x0

    #@25b
    .line 2622
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@25e
    .line 2624
    monitor-enter p0

    #@25f
    .line 2625
    :try_start_1a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    #@262
    move-result-object v3

    #@263
    .line 2626
    .restart local v3    # "arg":Ljava/lang/String;
    if-eqz v3, :cond_15

    #@265
    .line 2627
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    #@268
    move-result-wide v18

    #@269
    .line 2629
    .restart local v18    # "token":J
    :try_start_1b
    const-string/jumbo v2, "light"

    #@26c
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26f
    move-result v2

    #@270
    if-eqz v2, :cond_f

    #@272
    .line 2630
    move-object/from16 v0, p0

    #@274
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@276
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    #@279
    move-result-object v2

    #@27a
    move-object/from16 v0, v16

    #@27c
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    #@27f
    .line 2639
    :goto_6
    :try_start_1c
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    #@282
    goto/16 :goto_1

    #@284
    .line 2624
    .end local v3    # "arg":Ljava/lang/String;
    .end local v18    # "token":J
    :catchall_8
    move-exception v2

    #@285
    monitor-exit p0

    #@286
    throw v2

    #@287
    .line 2629
    .restart local v3    # "arg":Ljava/lang/String;
    .restart local v18    # "token":J
    :cond_f
    :try_start_1d
    const-string/jumbo v2, "deep"

    #@28a
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28d
    move-result v2

    #@28e
    if-eqz v2, :cond_10

    #@290
    .line 2631
    move-object/from16 v0, p0

    #@292
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mState:I

    #@294
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    #@297
    move-result-object v2

    #@298
    move-object/from16 v0, v16

    #@29a
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    #@29d
    goto :goto_6

    #@29e
    .line 2638
    :catchall_9
    move-exception v2

    #@29f
    .line 2639
    :try_start_1e
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a2
    .line 2638
    throw v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    #@2a3
    .line 2629
    :cond_10
    :try_start_1f
    const-string/jumbo v2, "force"

    #@2a6
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a9
    move-result v2

    #@2aa
    if-eqz v2, :cond_11

    #@2ac
    .line 2632
    move-object/from16 v0, p0

    #@2ae
    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    #@2b0
    move-object/from16 v0, v16

    #@2b2
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@2b5
    goto :goto_6

    #@2b6
    .line 2629
    :cond_11
    const-string/jumbo v2, "screen"

    #@2b9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2bc
    move-result v2

    #@2bd
    if-eqz v2, :cond_12

    #@2bf
    .line 2633
    move-object/from16 v0, p0

    #@2c1
    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    #@2c3
    move-object/from16 v0, v16

    #@2c5
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@2c8
    goto :goto_6

    #@2c9
    .line 2629
    :cond_12
    const-string/jumbo v2, "charging"

    #@2cc
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2cf
    move-result v2

    #@2d0
    if-eqz v2, :cond_13

    #@2d2
    .line 2634
    move-object/from16 v0, p0

    #@2d4
    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    #@2d6
    move-object/from16 v0, v16

    #@2d8
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@2db
    goto :goto_6

    #@2dc
    .line 2629
    :cond_13
    const-string/jumbo v2, "network"

    #@2df
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e2
    move-result v2

    #@2e3
    if-eqz v2, :cond_14

    #@2e5
    .line 2635
    move-object/from16 v0, p0

    #@2e7
    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    #@2e9
    move-object/from16 v0, v16

    #@2eb
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@2ee
    goto :goto_6

    #@2ef
    .line 2636
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    #@2f1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f4
    const-string/jumbo v4, "Unknown get option: "

    #@2f7
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fa
    move-result-object v2

    #@2fb
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fe
    move-result-object v2

    #@2ff
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@302
    move-result-object v2

    #@303
    move-object/from16 v0, v16

    #@305
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    #@308
    goto/16 :goto_6

    #@30a
    .line 2642
    .end local v18    # "token":J
    :cond_15
    :try_start_20
    const-string/jumbo v2, "Argument required"

    #@30d
    move-object/from16 v0, v16

    #@30f
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    #@312
    goto/16 :goto_1

    #@314
    .line 2645
    .end local v3    # "arg":Ljava/lang/String;
    :cond_16
    const-string/jumbo v2, "disable"

    #@317
    move-object/from16 v0, p2

    #@319
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31c
    move-result v2

    #@31d
    if-eqz v2, :cond_1e

    #@31f
    .line 2646
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@322
    move-result-object v2

    #@323
    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    #@326
    .line 2647
    const/4 v5, 0x0

    #@327
    .line 2646
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@32a
    .line 2648
    monitor-enter p0

    #@32b
    .line 2649
    :try_start_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@32e
    move-result-wide v18

    #@32f
    .line 2650
    .restart local v18    # "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    #@332
    move-result-object v3

    #@333
    .line 2652
    .restart local v3    # "arg":Ljava/lang/String;
    const/4 v8, 0x0

    #@334
    .line 2653
    .local v8, "becomeActive":Z
    const/16 v20, 0x0

    #@336
    .line 2654
    .local v20, "valid":Z
    if-eqz v3, :cond_17

    #@338
    :try_start_22
    const-string/jumbo v2, "deep"

    #@33b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33e
    move-result v2

    #@33f
    if-nez v2, :cond_17

    #@341
    const-string/jumbo v2, "all"

    #@344
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@347
    move-result v2

    #@348
    if-eqz v2, :cond_18

    #@34a
    .line 2655
    :cond_17
    const/16 v20, 0x1

    #@34c
    .line 2656
    move-object/from16 v0, p0

    #@34e
    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    #@350
    if-eqz v2, :cond_18

    #@352
    .line 2657
    const/4 v2, 0x0

    #@353
    move-object/from16 v0, p0

    #@355
    iput-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    #@357
    .line 2658
    const/4 v8, 0x1

    #@358
    .line 2659
    const-string/jumbo v2, "Deep idle mode disabled"

    #@35b
    move-object/from16 v0, v16

    #@35d
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@360
    .line 2662
    :cond_18
    if-eqz v3, :cond_19

    #@362
    const-string/jumbo v2, "light"

    #@365
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@368
    move-result v2

    #@369
    if-nez v2, :cond_19

    #@36b
    const-string/jumbo v2, "all"

    #@36e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@371
    move-result v2

    #@372
    if-eqz v2, :cond_1a

    #@374
    .line 2663
    :cond_19
    const/16 v20, 0x1

    #@376
    .line 2664
    move-object/from16 v0, p0

    #@378
    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    #@37a
    if-eqz v2, :cond_1a

    #@37c
    .line 2665
    const/4 v2, 0x0

    #@37d
    move-object/from16 v0, p0

    #@37f
    iput-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    #@381
    .line 2666
    const/4 v8, 0x1

    #@382
    .line 2667
    const-string/jumbo v2, "Light idle mode disabled"

    #@385
    move-object/from16 v0, v16

    #@387
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38a
    .line 2670
    :cond_1a
    if-eqz v8, :cond_1b

    #@38c
    .line 2671
    new-instance v4, Ljava/lang/StringBuilder;

    #@38e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@391
    if-nez v3, :cond_1d

    #@393
    const-string/jumbo v2, "all"

    #@396
    :goto_7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@399
    move-result-object v2

    #@39a
    const-string/jumbo v4, "-disabled"

    #@39d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a0
    move-result-object v2

    #@3a1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a4
    move-result-object v2

    #@3a5
    .line 2672
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3a8
    move-result v4

    #@3a9
    .line 2671
    move-object/from16 v0, p0

    #@3ab
    invoke-virtual {v0, v2, v4}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    #@3ae
    .line 2674
    :cond_1b
    if-nez v20, :cond_1c

    #@3b0
    .line 2675
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3b5
    const-string/jumbo v4, "Unknown idle mode: "

    #@3b8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3bb
    move-result-object v2

    #@3bc
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3bf
    move-result-object v2

    #@3c0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c3
    move-result-object v2

    #@3c4
    move-object/from16 v0, v16

    #@3c6
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    #@3c9
    .line 2678
    :cond_1c
    :try_start_23
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    #@3cc
    goto/16 :goto_1

    #@3ce
    .line 2648
    .end local v3    # "arg":Ljava/lang/String;
    .end local v8    # "becomeActive":Z
    .end local v18    # "token":J
    .end local v20    # "valid":Z
    :catchall_a
    move-exception v2

    #@3cf
    monitor-exit p0

    #@3d0
    throw v2

    #@3d1
    .restart local v3    # "arg":Ljava/lang/String;
    .restart local v8    # "becomeActive":Z
    .restart local v18    # "token":J
    .restart local v20    # "valid":Z
    :cond_1d
    move-object v2, v3

    #@3d2
    .line 2671
    goto :goto_7

    #@3d3
    .line 2677
    :catchall_b
    move-exception v2

    #@3d4
    .line 2678
    :try_start_24
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3d7
    .line 2677
    throw v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    #@3d8
    .line 2681
    .end local v3    # "arg":Ljava/lang/String;
    .end local v8    # "becomeActive":Z
    .end local v18    # "token":J
    .end local v20    # "valid":Z
    :cond_1e
    const-string/jumbo v2, "enable"

    #@3db
    move-object/from16 v0, p2

    #@3dd
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e0
    move-result v2

    #@3e1
    if-eqz v2, :cond_25

    #@3e3
    .line 2682
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@3e6
    move-result-object v2

    #@3e7
    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    #@3ea
    .line 2683
    const/4 v5, 0x0

    #@3eb
    .line 2682
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@3ee
    .line 2684
    monitor-enter p0

    #@3ef
    .line 2685
    :try_start_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3f2
    move-result-wide v18

    #@3f3
    .line 2686
    .restart local v18    # "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_c

    #@3f6
    move-result-object v3

    #@3f7
    .line 2688
    .restart local v3    # "arg":Ljava/lang/String;
    const/4 v9, 0x0

    #@3f8
    .line 2689
    .local v9, "becomeInactive":Z
    const/16 v20, 0x0

    #@3fa
    .line 2690
    .restart local v20    # "valid":Z
    if-eqz v3, :cond_1f

    #@3fc
    :try_start_26
    const-string/jumbo v2, "deep"

    #@3ff
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@402
    move-result v2

    #@403
    if-nez v2, :cond_1f

    #@405
    const-string/jumbo v2, "all"

    #@408
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40b
    move-result v2

    #@40c
    if-eqz v2, :cond_20

    #@40e
    .line 2691
    :cond_1f
    const/16 v20, 0x1

    #@410
    .line 2692
    move-object/from16 v0, p0

    #@412
    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    #@414
    if-nez v2, :cond_20

    #@416
    .line 2693
    const/4 v2, 0x1

    #@417
    move-object/from16 v0, p0

    #@419
    iput-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    #@41b
    .line 2694
    const/4 v9, 0x1

    #@41c
    .line 2695
    const-string/jumbo v2, "Deep idle mode enabled"

    #@41f
    move-object/from16 v0, v16

    #@421
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@424
    .line 2698
    :cond_20
    if-eqz v3, :cond_21

    #@426
    const-string/jumbo v2, "light"

    #@429
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42c
    move-result v2

    #@42d
    if-nez v2, :cond_21

    #@42f
    const-string/jumbo v2, "all"

    #@432
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@435
    move-result v2

    #@436
    if-eqz v2, :cond_22

    #@438
    .line 2699
    :cond_21
    const/16 v20, 0x1

    #@43a
    .line 2700
    move-object/from16 v0, p0

    #@43c
    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    #@43e
    if-nez v2, :cond_22

    #@440
    .line 2701
    const/4 v2, 0x1

    #@441
    move-object/from16 v0, p0

    #@443
    iput-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    #@445
    .line 2702
    const/4 v9, 0x1

    #@446
    .line 2703
    const-string/jumbo v2, "Light idle mode enable"

    #@449
    move-object/from16 v0, v16

    #@44b
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@44e
    .line 2706
    :cond_22
    if-eqz v9, :cond_23

    #@450
    .line 2707
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    #@453
    .line 2709
    :cond_23
    if-nez v20, :cond_24

    #@455
    .line 2710
    new-instance v2, Ljava/lang/StringBuilder;

    #@457
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@45a
    const-string/jumbo v4, "Unknown idle mode: "

    #@45d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@460
    move-result-object v2

    #@461
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@464
    move-result-object v2

    #@465
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@468
    move-result-object v2

    #@469
    move-object/from16 v0, v16

    #@46b
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_d

    #@46e
    .line 2713
    :cond_24
    :try_start_27
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_c

    #@471
    goto/16 :goto_1

    #@473
    .line 2684
    .end local v3    # "arg":Ljava/lang/String;
    .end local v9    # "becomeInactive":Z
    .end local v18    # "token":J
    .end local v20    # "valid":Z
    :catchall_c
    move-exception v2

    #@474
    monitor-exit p0

    #@475
    throw v2

    #@476
    .line 2712
    .restart local v3    # "arg":Ljava/lang/String;
    .restart local v9    # "becomeInactive":Z
    .restart local v18    # "token":J
    .restart local v20    # "valid":Z
    :catchall_d
    move-exception v2

    #@477
    .line 2713
    :try_start_28
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@47a
    .line 2712
    throw v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_c

    #@47b
    .line 2716
    .end local v3    # "arg":Ljava/lang/String;
    .end local v9    # "becomeInactive":Z
    .end local v18    # "token":J
    .end local v20    # "valid":Z
    :cond_25
    const-string/jumbo v2, "enabled"

    #@47e
    move-object/from16 v0, p2

    #@480
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@483
    move-result v2

    #@484
    if-eqz v2, :cond_2d

    #@486
    .line 2717
    monitor-enter p0

    #@487
    .line 2718
    :try_start_29
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    #@48a
    move-result-object v3

    #@48b
    .line 2719
    .restart local v3    # "arg":Ljava/lang/String;
    if-eqz v3, :cond_26

    #@48d
    const-string/jumbo v2, "all"

    #@490
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@493
    move-result v2

    #@494
    if-eqz v2, :cond_28

    #@496
    .line 2720
    :cond_26
    move-object/from16 v0, p0

    #@498
    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    #@49a
    if-eqz v2, :cond_27

    #@49c
    move-object/from16 v0, p0

    #@49e
    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    #@4a0
    if-eqz v2, :cond_27

    #@4a2
    const-string/jumbo v2, "1"

    #@4a5
    :goto_8
    move-object/from16 v0, v16

    #@4a7
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_e

    #@4aa
    goto/16 :goto_1

    #@4ac
    .line 2717
    .end local v3    # "arg":Ljava/lang/String;
    :catchall_e
    move-exception v2

    #@4ad
    monitor-exit p0

    #@4ae
    throw v2

    #@4af
    .line 2720
    .restart local v3    # "arg":Ljava/lang/String;
    :cond_27
    const/4 v2, 0x0

    #@4b0
    :try_start_2a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4b3
    move-result-object v2

    #@4b4
    goto :goto_8

    #@4b5
    .line 2721
    :cond_28
    const-string/jumbo v2, "deep"

    #@4b8
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4bb
    move-result v2

    #@4bc
    if-eqz v2, :cond_2a

    #@4be
    .line 2722
    move-object/from16 v0, p0

    #@4c0
    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    #@4c2
    if-eqz v2, :cond_29

    #@4c4
    const-string/jumbo v2, "1"

    #@4c7
    :goto_9
    move-object/from16 v0, v16

    #@4c9
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@4cc
    goto/16 :goto_1

    #@4ce
    :cond_29
    const/4 v2, 0x0

    #@4cf
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4d2
    move-result-object v2

    #@4d3
    goto :goto_9

    #@4d4
    .line 2723
    :cond_2a
    const-string/jumbo v2, "light"

    #@4d7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4da
    move-result v2

    #@4db
    if-eqz v2, :cond_2c

    #@4dd
    .line 2724
    move-object/from16 v0, p0

    #@4df
    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    #@4e1
    if-eqz v2, :cond_2b

    #@4e3
    const-string/jumbo v2, "1"

    #@4e6
    :goto_a
    move-object/from16 v0, v16

    #@4e8
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@4eb
    goto/16 :goto_1

    #@4ed
    :cond_2b
    const/4 v2, 0x0

    #@4ee
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4f1
    move-result-object v2

    #@4f2
    goto :goto_a

    #@4f3
    .line 2726
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    #@4f5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4f8
    const-string/jumbo v4, "Unknown idle mode: "

    #@4fb
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4fe
    move-result-object v2

    #@4ff
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@502
    move-result-object v2

    #@503
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@506
    move-result-object v2

    #@507
    move-object/from16 v0, v16

    #@509
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_e

    #@50c
    goto/16 :goto_1

    #@50e
    .line 2729
    .end local v3    # "arg":Ljava/lang/String;
    :cond_2d
    const-string/jumbo v2, "whitelist"

    #@511
    move-object/from16 v0, p2

    #@513
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@516
    move-result v2

    #@517
    if-eqz v2, :cond_39

    #@519
    .line 2730
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@51c
    move-result-wide v18

    #@51d
    .line 2732
    .restart local v18    # "token":J
    :try_start_2b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    #@520
    move-result-object v3

    #@521
    .line 2733
    .restart local v3    # "arg":Ljava/lang/String;
    if-eqz v3, :cond_35

    #@523
    .line 2734
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@526
    move-result-object v2

    #@527
    .line 2735
    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    #@52a
    const/4 v5, 0x0

    #@52b
    .line 2734
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@52e
    .line 2737
    :cond_2e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@531
    move-result v2

    #@532
    const/4 v4, 0x1

    #@533
    if-lt v2, v4, :cond_2f

    #@535
    const/4 v2, 0x0

    #@536
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    #@539
    move-result v2

    #@53a
    const/16 v4, 0x2d

    #@53c
    if-eq v2, v4, :cond_30

    #@53e
    .line 2738
    const/4 v2, 0x0

    #@53f
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    #@542
    move-result v2

    #@543
    const/16 v4, 0x2b

    #@545
    if-eq v2, v4, :cond_30

    #@547
    const/4 v2, 0x0

    #@548
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    #@54b
    move-result v2

    #@54c
    const/16 v4, 0x3d

    #@54e
    if-eq v2, v4, :cond_30

    #@550
    .line 2739
    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    #@552
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@555
    const-string/jumbo v4, "Package must be prefixed with +, -, or =: "

    #@558
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55b
    move-result-object v2

    #@55c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55f
    move-result-object v2

    #@560
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@563
    move-result-object v2

    #@564
    move-object/from16 v0, v16

    #@566
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_f

    #@569
    .line 2740
    const/4 v2, -0x1

    #@56a
    .line 2781
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@56d
    .line 2740
    return v2

    #@56e
    .line 2742
    :cond_30
    const/4 v2, 0x0

    #@56f
    :try_start_2c
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    #@572
    move-result v13

    #@573
    .line 2743
    .local v13, "op":C
    const/4 v2, 0x1

    #@574
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@577
    move-result-object v15

    #@578
    .line 2744
    .local v15, "pkg":Ljava/lang/String;
    const/16 v2, 0x2b

    #@57a
    if-ne v13, v2, :cond_33

    #@57c
    .line 2745
    move-object/from16 v0, p0

    #@57e
    invoke-virtual {v0, v15}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    #@581
    move-result v2

    #@582
    if-eqz v2, :cond_32

    #@584
    .line 2746
    new-instance v2, Ljava/lang/StringBuilder;

    #@586
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@589
    const-string/jumbo v4, "Added: "

    #@58c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58f
    move-result-object v2

    #@590
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@593
    move-result-object v2

    #@594
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@597
    move-result-object v2

    #@598
    move-object/from16 v0, v16

    #@59a
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@59d
    .line 2757
    :cond_31
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_f

    #@5a0
    move-result-object v3

    #@5a1
    if-nez v3, :cond_2e

    #@5a3
    .line 2781
    .end local v13    # "op":C
    .end local v15    # "pkg":Ljava/lang/String;
    :goto_c
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5a6
    goto/16 :goto_2

    #@5a8
    .line 2748
    .restart local v13    # "op":C
    .restart local v15    # "pkg":Ljava/lang/String;
    :cond_32
    :try_start_2d
    new-instance v2, Ljava/lang/StringBuilder;

    #@5aa
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5ad
    const-string/jumbo v4, "Unknown package: "

    #@5b0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b3
    move-result-object v2

    #@5b4
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b7
    move-result-object v2

    #@5b8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5bb
    move-result-object v2

    #@5bc
    move-object/from16 v0, v16

    #@5be
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_f

    #@5c1
    goto :goto_b

    #@5c2
    .line 2780
    .end local v3    # "arg":Ljava/lang/String;
    .end local v13    # "op":C
    .end local v15    # "pkg":Ljava/lang/String;
    :catchall_f
    move-exception v2

    #@5c3
    .line 2781
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5c6
    .line 2780
    throw v2

    #@5c7
    .line 2750
    .restart local v3    # "arg":Ljava/lang/String;
    .restart local v13    # "op":C
    .restart local v15    # "pkg":Ljava/lang/String;
    :cond_33
    const/16 v2, 0x2d

    #@5c9
    if-ne v13, v2, :cond_34

    #@5cb
    .line 2751
    :try_start_2e
    move-object/from16 v0, p0

    #@5cd
    invoke-virtual {v0, v15}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    #@5d0
    move-result v2

    #@5d1
    if-eqz v2, :cond_31

    #@5d3
    .line 2752
    new-instance v2, Ljava/lang/StringBuilder;

    #@5d5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5d8
    const-string/jumbo v4, "Removed: "

    #@5db
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5de
    move-result-object v2

    #@5df
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e2
    move-result-object v2

    #@5e3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e6
    move-result-object v2

    #@5e7
    move-object/from16 v0, v16

    #@5e9
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5ec
    goto :goto_b

    #@5ed
    .line 2755
    :cond_34
    move-object/from16 v0, p0

    #@5ef
    invoke-virtual {v0, v15}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    #@5f2
    move-result v2

    #@5f3
    move-object/from16 v0, v16

    #@5f5
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@5f8
    goto :goto_b

    #@5f9
    .line 2759
    .end local v13    # "op":C
    .end local v15    # "pkg":Ljava/lang/String;
    :cond_35
    monitor-enter p0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_f

    #@5fa
    .line 2760
    const/4 v12, 0x0

    #@5fb
    .local v12, "j":I
    :goto_d
    :try_start_2f
    move-object/from16 v0, p0

    #@5fd
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@5ff
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@602
    move-result v2

    #@603
    if-ge v12, v2, :cond_36

    #@605
    .line 2761
    const-string/jumbo v2, "system-excidle,"

    #@608
    move-object/from16 v0, v16

    #@60a
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60d
    .line 2762
    move-object/from16 v0, p0

    #@60f
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@611
    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@614
    move-result-object v2

    #@615
    check-cast v2, Ljava/lang/String;

    #@617
    move-object/from16 v0, v16

    #@619
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@61c
    .line 2763
    const-string/jumbo v2, ","

    #@61f
    move-object/from16 v0, v16

    #@621
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@624
    .line 2764
    move-object/from16 v0, p0

    #@626
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@628
    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@62b
    move-result-object v2

    #@62c
    move-object/from16 v0, v16

    #@62e
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@631
    .line 2760
    add-int/lit8 v12, v12, 0x1

    #@633
    goto :goto_d

    #@634
    .line 2766
    :cond_36
    const/4 v12, 0x0

    #@635
    :goto_e
    move-object/from16 v0, p0

    #@637
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@639
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@63c
    move-result v2

    #@63d
    if-ge v12, v2, :cond_37

    #@63f
    .line 2767
    const-string/jumbo v2, "system,"

    #@642
    move-object/from16 v0, v16

    #@644
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@647
    .line 2768
    move-object/from16 v0, p0

    #@649
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@64b
    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@64e
    move-result-object v2

    #@64f
    check-cast v2, Ljava/lang/String;

    #@651
    move-object/from16 v0, v16

    #@653
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@656
    .line 2769
    const-string/jumbo v2, ","

    #@659
    move-object/from16 v0, v16

    #@65b
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@65e
    .line 2770
    move-object/from16 v0, p0

    #@660
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@662
    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@665
    move-result-object v2

    #@666
    move-object/from16 v0, v16

    #@668
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@66b
    .line 2766
    add-int/lit8 v12, v12, 0x1

    #@66d
    goto :goto_e

    #@66e
    .line 2772
    :cond_37
    const/4 v12, 0x0

    #@66f
    :goto_f
    move-object/from16 v0, p0

    #@671
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@673
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@676
    move-result v2

    #@677
    if-ge v12, v2, :cond_38

    #@679
    .line 2773
    const-string/jumbo v2, "user,"

    #@67c
    move-object/from16 v0, v16

    #@67e
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@681
    .line 2774
    move-object/from16 v0, p0

    #@683
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@685
    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@688
    move-result-object v2

    #@689
    check-cast v2, Ljava/lang/String;

    #@68b
    move-object/from16 v0, v16

    #@68d
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@690
    .line 2775
    const-string/jumbo v2, ","

    #@693
    move-object/from16 v0, v16

    #@695
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@698
    .line 2776
    move-object/from16 v0, p0

    #@69a
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@69c
    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@69f
    move-result-object v2

    #@6a0
    move-object/from16 v0, v16

    #@6a2
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_10

    #@6a5
    .line 2772
    add-int/lit8 v12, v12, 0x1

    #@6a7
    goto :goto_f

    #@6a8
    :cond_38
    :try_start_30
    monitor-exit p0

    #@6a9
    goto/16 :goto_c

    #@6ab
    .line 2759
    :catchall_10
    move-exception v2

    #@6ac
    monitor-exit p0

    #@6ad
    throw v2
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_f

    #@6ae
    .line 2783
    .end local v3    # "arg":Ljava/lang/String;
    .end local v12    # "j":I
    .end local v18    # "token":J
    :cond_39
    const-string/jumbo v2, "tempwhitelist"

    #@6b1
    move-object/from16 v0, p2

    #@6b3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b6
    move-result v2

    #@6b7
    if-eqz v2, :cond_3e

    #@6b9
    .line 2785
    :cond_3a
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextOption()Ljava/lang/String;

    #@6bc
    move-result-object v14

    #@6bd
    .local v14, "opt":Ljava/lang/String;
    if-eqz v14, :cond_3c

    #@6bf
    .line 2786
    const-string/jumbo v2, "-u"

    #@6c2
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c5
    move-result v2

    #@6c6
    if-eqz v2, :cond_3a

    #@6c8
    .line 2787
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    #@6cb
    move-result-object v14

    #@6cc
    .line 2788
    if-nez v14, :cond_3b

    #@6ce
    .line 2789
    const-string/jumbo v2, "-u requires a user number"

    #@6d1
    move-object/from16 v0, v16

    #@6d3
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6d6
    .line 2790
    const/4 v2, -0x1

    #@6d7
    return v2

    #@6d8
    .line 2792
    :cond_3b
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@6db
    move-result v2

    #@6dc
    move-object/from16 v0, p1

    #@6de
    iput v2, v0, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    #@6e0
    goto :goto_10

    #@6e1
    .line 2795
    :cond_3c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    #@6e4
    move-result-object v3

    #@6e5
    .line 2796
    .restart local v3    # "arg":Ljava/lang/String;
    if-eqz v3, :cond_3d

    #@6e7
    .line 2798
    :try_start_31
    move-object/from16 v0, p1

    #@6e9
    iget v6, v0, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    #@6eb
    const-string/jumbo v7, "shell"

    #@6ee
    const-wide/16 v4, 0x2710

    #@6f0
    move-object/from16 v2, p0

    #@6f2
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_31} :catch_0

    #@6f5
    goto/16 :goto_2

    #@6f7
    .line 2799
    :catch_0
    move-exception v17

    #@6f8
    .line 2800
    .local v17, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@6fa
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6fd
    const-string/jumbo v4, "Failed: "

    #@700
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@703
    move-result-object v2

    #@704
    move-object/from16 v0, v17

    #@706
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@709
    move-result-object v2

    #@70a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70d
    move-result-object v2

    #@70e
    move-object/from16 v0, v16

    #@710
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@713
    goto/16 :goto_2

    #@715
    .line 2803
    .end local v17    # "re":Landroid/os/RemoteException;
    :cond_3d
    const/4 v2, 0x0

    #@716
    move-object/from16 v0, p0

    #@718
    move-object/from16 v1, v16

    #@71a
    invoke-virtual {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V

    #@71d
    goto/16 :goto_2

    #@71f
    .line 2806
    .end local v3    # "arg":Ljava/lang/String;
    .end local v14    # "opt":Ljava/lang/String;
    :cond_3e
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/DeviceIdleController$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    #@722
    move-result v2

    #@723
    return v2
.end method

.method public onStart()V
    .locals 12

    #@0
    .prologue
    .line 1294
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@3
    move-result-object v9

    #@4
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v7

    #@8
    .line 1296
    .local v7, "pm":Landroid/content/pm/PackageManager;
    monitor-enter p0

    #@9
    .line 1297
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@c
    move-result-object v9

    #@d
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@10
    move-result-object v9

    #@11
    .line 1298
    const v10, 0x1120013

    #@14
    .line 1297
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@17
    move-result v9

    #@18
    iput-boolean v9, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    #@1a
    iput-boolean v9, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    #@1c
    .line 1299
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    #@1f
    move-result-object v8

    #@20
    .line 1300
    .local v8, "sysConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v8}, Lcom/android/server/SystemConfig;->getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;

    #@23
    move-result-object v2

    #@24
    .line 1301
    .local v2, "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@25
    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@28
    move-result v9

    #@29
    if-ge v5, v9, :cond_0

    #@2b
    .line 1302
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@2e
    move-result-object v6

    #@2f
    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 1305
    .local v6, "pkg":Ljava/lang/String;
    const/high16 v9, 0x100000

    #@33
    .line 1304
    :try_start_1
    invoke-virtual {v7, v6, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@36
    move-result-object v0

    #@37
    .line 1306
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@39
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    #@3c
    move-result v3

    #@3d
    .line 1307
    .local v3, "appid":I
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@3f
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@44
    move-result-object v11

    #@45
    invoke-virtual {v9, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    .line 1308
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    #@4a
    const/4 v10, 0x1

    #@4b
    invoke-virtual {v9, v3, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    .line 1301
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appid":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@50
    goto :goto_0

    #@51
    .line 1312
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v8}, Lcom/android/server/SystemConfig;->getAllowInPowerSave()Landroid/util/ArraySet;

    #@54
    move-result-object v1

    #@55
    .line 1313
    .local v1, "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@56
    :goto_2
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    #@59
    move-result v9

    #@5a
    if-ge v5, v9, :cond_1

    #@5c
    .line 1314
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@5f
    move-result-object v6

    #@60
    check-cast v6, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@62
    .line 1317
    .restart local v6    # "pkg":Ljava/lang/String;
    const/high16 v9, 0x100000

    #@64
    .line 1316
    :try_start_3
    invoke-virtual {v7, v6, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@67
    move-result-object v0

    #@68
    .line 1318
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@6a
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    #@6d
    move-result v3

    #@6e
    .line 1321
    .restart local v3    # "appid":I
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@70
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@75
    move-result-object v11

    #@76
    invoke-virtual {v9, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    .line 1322
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    #@7b
    const/4 v10, 0x1

    #@7c
    invoke-virtual {v9, v3, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@7f
    .line 1323
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@81
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@86
    move-result-object v11

    #@87
    invoke-virtual {v9, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8a
    .line 1324
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    #@8c
    const/4 v10, 0x1

    #@8d
    invoke-virtual {v9, v3, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@90
    .line 1313
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appid":I
    :goto_3
    add-int/lit8 v5, v5, 0x1

    #@92
    goto :goto_2

    #@93
    .line 1329
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_1
    :try_start_4
    new-instance v9, Lcom/android/server/DeviceIdleController$Constants;

    #@95
    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@97
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@9a
    move-result-object v11

    #@9b
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9e
    move-result-object v11

    #@9f
    invoke-direct {v9, p0, v10, v11}, Lcom/android/server/DeviceIdleController$Constants;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    #@a2
    iput-object v9, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@a4
    .line 1331
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked()V

    #@a7
    .line 1332
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    #@aa
    .line 1334
    const/4 v9, 0x1

    #@ab
    iput-boolean v9, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    #@ad
    .line 1335
    const/4 v9, 0x1

    #@ae
    iput-boolean v9, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    #@b0
    .line 1338
    const/4 v9, 0x1

    #@b1
    iput-boolean v9, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    #@b3
    .line 1339
    const/4 v9, 0x0

    #@b4
    iput v9, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@b6
    .line 1340
    const/4 v9, 0x0

    #@b7
    iput v9, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@b9
    .line 1341
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@bb
    iget-wide v10, v9, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    #@bd
    iput-wide v10, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@bf
    monitor-exit p0

    #@c0
    .line 1344
    new-instance v9, Lcom/android/server/DeviceIdleController$BinderService;

    #@c2
    const/4 v10, 0x0

    #@c3
    invoke-direct {v9, p0, v10}, Lcom/android/server/DeviceIdleController$BinderService;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$BinderService;)V

    #@c6
    iput-object v9, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    #@c8
    .line 1345
    const-string/jumbo v9, "deviceidle"

    #@cb
    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    #@cd
    invoke-virtual {p0, v9, v10}, Lcom/android/server/DeviceIdleController;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@d0
    .line 1346
    const-class v9, Lcom/android/server/DeviceIdleController$LocalService;

    #@d2
    new-instance v10, Lcom/android/server/DeviceIdleController$LocalService;

    #@d4
    invoke-direct {v10, p0}, Lcom/android/server/DeviceIdleController$LocalService;-><init>(Lcom/android/server/DeviceIdleController;)V

    #@d7
    invoke-virtual {p0, v9, v10}, Lcom/android/server/DeviceIdleController;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@da
    .line 1293
    return-void

    #@db
    .line 1296
    .end local v1    # "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "i":I
    .end local v8    # "sysConfig":Lcom/android/server/SystemConfig;
    :catchall_0
    move-exception v9

    #@dc
    monitor-exit p0

    #@dd
    throw v9

    #@de
    .line 1325
    .restart local v1    # "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v2    # "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "i":I
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v8    # "sysConfig":Lcom/android/server/SystemConfig;
    :catch_0
    move-exception v4

    #@df
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_3

    #@e0
    .line 1309
    .end local v1    # "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    #@e1
    .restart local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_1
.end method

.method readConfigFileLocked()V
    .locals 6

    #@0
    .prologue
    .line 2353
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    #@5
    .line 2356
    :try_start_0
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    #@7
    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v4

    #@b
    .line 2361
    .local v4, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@e
    move-result-object v3

    #@f
    .line 2362
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@11
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@18
    .line 2363
    invoke-direct {p0, v3}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 2367
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@1e
    .line 2351
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-void

    #@1f
    .line 2357
    .end local v4    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    #@20
    .line 2358
    .local v0, "e":Ljava/io/FileNotFoundException;
    return-void

    #@21
    .line 2368
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    #@22
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    #@23
    .line 2364
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v2

    #@24
    .line 2367
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    #@27
    goto :goto_0

    #@28
    .line 2368
    :catch_3
    move-exception v1

    #@29
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    #@2a
    .line 2365
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v5

    #@2b
    .line 2367
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    #@2e
    .line 2365
    :goto_1
    throw v5

    #@2f
    .line 2368
    :catch_4
    move-exception v1

    #@30
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method receivedGenericLocationLocked(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    .line 2171
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@2
    const/4 v1, 0x4

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 2172
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    #@8
    .line 2173
    return-void

    #@9
    .line 2176
    :cond_0
    new-instance v0, Landroid/location/Location;

    #@b
    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    #@e
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    #@10
    .line 2177
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    #@13
    move-result v0

    #@14
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@16
    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    #@18
    cmpl-float v0, v0, v1

    #@1a
    if-lez v0, :cond_1

    #@1c
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 2178
    return-void

    #@21
    .line 2180
    :cond_1
    const/4 v0, 0x1

    #@22
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    #@24
    .line 2181
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 2182
    const-string/jumbo v0, "s:location"

    #@2b
    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    #@2e
    .line 2170
    :cond_2
    return-void
.end method

.method receivedGpsLocationLocked(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    .line 2187
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@2
    const/4 v1, 0x4

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 2188
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    #@8
    .line 2189
    return-void

    #@9
    .line 2192
    :cond_0
    new-instance v0, Landroid/location/Location;

    #@b
    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    #@e
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    #@10
    .line 2193
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    #@13
    move-result v0

    #@14
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@16
    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    #@18
    cmpl-float v0, v0, v1

    #@1a
    if-lez v0, :cond_1

    #@1c
    .line 2194
    return-void

    #@1d
    .line 2196
    :cond_1
    const/4 v0, 0x1

    #@1e
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    #@20
    .line 2197
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 2198
    const-string/jumbo v0, "s:gps"

    #@27
    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    #@2a
    .line 2186
    :cond_2
    return-void
.end method

.method registerMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/os/IMaintenanceActivityListener;

    #@0
    .prologue
    .line 2086
    monitor-enter p0

    #@1
    .line 2087
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    #@3
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@6
    .line 2088
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    return v0

    #@a
    .line 2086
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1448
    monitor-enter p0

    #@1
    .line 1449
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1450
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    #@c
    .line 1451
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    #@f
    .line 1452
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 1453
    const/4 v0, 0x1

    #@13
    monitor-exit p0

    #@14
    return v0

    #@15
    :cond_0
    monitor-exit p0

    #@16
    .line 1456
    const/4 v0, 0x0

    #@17
    return v0

    #@18
    .line 1448
    :catchall_0
    move-exception v0

    #@19
    monitor-exit p0

    #@1a
    throw v0
.end method

.method reportMaintenanceActivityIfNeededLocked()V
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2099
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    #@3
    .line 2100
    .local v0, "active":Z
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    #@5
    if-ne v0, v2, :cond_0

    #@7
    .line 2101
    return-void

    #@8
    .line 2103
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    #@a
    .line 2104
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@c
    .line 2105
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    #@e
    if-eqz v2, :cond_1

    #@10
    const/4 v2, 0x1

    #@11
    .line 2104
    :goto_0
    const/4 v5, 0x7

    #@12
    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    #@15
    move-result-object v1

    #@16
    .line 2106
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@18
    invoke-virtual {v2, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    #@1b
    .line 2098
    return-void

    #@1c
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    move v2, v3

    #@1d
    .line 2105
    goto :goto_0
.end method

.method resetIdleManagementLocked()V
    .locals 2

    #@0
    .prologue
    const-wide/16 v0, 0x0

    #@2
    .line 1831
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    #@4
    .line 1832
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    #@6
    .line 1833
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    #@8
    .line 1834
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    #@b
    .line 1835
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    #@e
    .line 1836
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    #@11
    .line 1837
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->stopMonitoringMotionLocked()V

    #@14
    .line 1838
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    #@16
    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->stop()V

    #@19
    .line 1830
    return-void
.end method

.method resetLightIdleManagementLocked()V
    .locals 0

    #@0
    .prologue
    .line 1842
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    #@3
    .line 1841
    return-void
.end method

.method scheduleAlarmLocked(JZ)V
    .locals 7
    .param p1, "delay"    # J
    .param p3, "idleUntil"    # Z

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 2247
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 2252
    return-void

    #@6
    .line 2254
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@9
    move-result-wide v2

    #@a
    add-long/2addr v2, p1

    #@b
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    #@d
    .line 2255
    if-eqz p3, :cond_1

    #@f
    .line 2256
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    #@11
    .line 2257
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    #@13
    const-string/jumbo v4, "DeviceIdleController.deep"

    #@16
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@18
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@1a
    .line 2256
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setIdleUntil(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    #@1d
    .line 2245
    :goto_0
    return-void

    #@1e
    .line 2259
    :cond_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    #@20
    .line 2260
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    #@22
    const-string/jumbo v4, "DeviceIdleController.deep"

    #@25
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@27
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@29
    .line 2259
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    #@2c
    goto :goto_0
.end method

.method scheduleLightAlarmLocked(J)V
    .locals 7
    .param p1, "delay"    # J

    #@0
    .prologue
    .line 2266
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    add-long/2addr v0, p1

    #@5
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    #@7
    .line 2267
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    #@9
    .line 2268
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    #@b
    const-string/jumbo v4, "DeviceIdleController.light"

    #@e
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@10
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@12
    .line 2267
    const/4 v1, 0x2

    #@13
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    #@16
    .line 2264
    return-void
.end method

.method scheduleReportActiveLocked(Ljava/lang/String;I)V
    .locals 4
    .param p1, "activeReason"    # Ljava/lang/String;
    .param p2, "activeUid"    # I

    #@0
    .prologue
    .line 1787
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@2
    const/4 v2, 0x5

    #@3
    const/4 v3, 0x0

    #@4
    invoke-virtual {v1, v2, p2, v3, p1}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 1788
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@a
    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    #@d
    .line 1786
    return-void
.end method

.method scheduleSensingTimeoutAlarmLocked(J)V
    .locals 7
    .param p1, "delay"    # J

    #@0
    .prologue
    .line 2273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    add-long/2addr v0, p1

    #@5
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    #@7
    .line 2274
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    #@9
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    #@b
    .line 2275
    const-string/jumbo v4, "DeviceIdleController.sensing"

    #@e
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@10
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@12
    .line 2274
    const/4 v1, 0x2

    #@13
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    #@16
    .line 2271
    return-void
.end method

.method setAlarmsActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    #@0
    .prologue
    .line 2077
    monitor-enter p0

    #@1
    .line 2078
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    #@3
    .line 2079
    if-nez p1, :cond_0

    #@5
    .line 2080
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    :cond_0
    monitor-exit p0

    #@9
    .line 2076
    return-void

    #@a
    .line 2077
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method setJobsActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    #@0
    .prologue
    .line 2067
    monitor-enter p0

    #@1
    .line 2068
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    #@3
    .line 2069
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportMaintenanceActivityIfNeededLocked()V

    #@6
    .line 2070
    if-nez p1, :cond_0

    #@8
    .line 2071
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    :cond_0
    monitor-exit p0

    #@c
    .line 2066
    return-void

    #@d
    .line 2067
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method public setNetworkPolicyTempWhitelistCallbackInternal(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1659
    monitor-enter p0

    #@1
    .line 1660
    :try_start_0
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 1658
    return-void

    #@5
    .line 1659
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method startMonitoringMotionLocked()V
    .locals 1

    #@0
    .prologue
    .line 2204
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    #@6
    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 2202
    :cond_0
    :goto_0
    return-void

    #@b
    .line 2205
    :cond_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    #@d
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$MotionListener;->registerLocked()Z

    #@10
    goto :goto_0
.end method

.method stepIdleStateLocked(Ljava/lang/String;)V
    .locals 12
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v10, 0x4

    #@2
    const/4 v7, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    const/4 v4, 0x0

    #@5
    .line 1938
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleStep()V

    #@8
    .line 1940
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b
    move-result-wide v8

    #@c
    .line 1941
    .local v8, "now":J
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@e
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    #@10
    add-long/2addr v0, v8

    #@11
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    #@13
    invoke-virtual {v2}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    #@16
    move-result-wide v2

    #@17
    cmp-long v0, v0, v2

    #@19
    if-lez v0, :cond_1

    #@1b
    .line 1943
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 1944
    const-string/jumbo v0, "alarm"

    #@22
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@25
    move-result v1

    #@26
    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    #@29
    .line 1945
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    #@2c
    .line 1947
    :cond_0
    return-void

    #@2d
    .line 1950
    :cond_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@2f
    packed-switch v0, :pswitch_data_0

    #@32
    .line 1936
    :cond_2
    :goto_0
    return-void

    #@33
    .line 1954
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    #@36
    .line 1955
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@38
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    #@3a
    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    #@3d
    .line 1957
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@3f
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    #@41
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    #@43
    .line 1958
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@45
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    #@47
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    #@49
    .line 1959
    iput v11, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@4b
    .line 1961
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@4d
    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    #@50
    goto :goto_0

    #@51
    .line 1964
    :pswitch_1
    const/4 v0, 0x3

    #@52
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@54
    .line 1966
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@56
    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    #@59
    .line 1967
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@5b
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    #@5d
    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleSensingTimeoutAlarmLocked(J)V

    #@60
    .line 1968
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    #@63
    .line 1969
    iput-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    #@65
    .line 1970
    iput-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    #@67
    .line 1971
    iput-object v5, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    #@69
    .line 1972
    iput-object v5, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    #@6b
    .line 1973
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    #@6d
    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->checkForAnyMotion()V

    #@70
    goto :goto_0

    #@71
    .line 1976
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    #@74
    .line 1977
    iput v10, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@76
    .line 1979
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@78
    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    #@7b
    .line 1980
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@7d
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    #@7f
    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    #@82
    .line 1981
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    #@84
    if-eqz v0, :cond_5

    #@86
    .line 1982
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    #@88
    const-string/jumbo v1, "network"

    #@8b
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    #@8e
    move-result-object v0

    #@8f
    if-eqz v0, :cond_5

    #@91
    .line 1983
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    #@93
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    #@95
    .line 1984
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    #@97
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@99
    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    #@9c
    move-result-object v3

    #@9d
    .line 1983
    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    #@a0
    .line 1985
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    #@a2
    .line 1989
    :goto_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    #@a4
    if-eqz v0, :cond_6

    #@a6
    .line 1990
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    #@a8
    const-string/jumbo v1, "gps"

    #@ab
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    #@ae
    move-result-object v0

    #@af
    if-eqz v0, :cond_6

    #@b1
    .line 1991
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    #@b3
    .line 1992
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    #@b5
    const-string/jumbo v1, "gps"

    #@b8
    const-wide/16 v2, 0x3e8

    #@ba
    const/high16 v4, 0x40a00000    # 5.0f

    #@bc
    .line 1993
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    #@be
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@c0
    invoke-virtual {v6}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    #@c3
    move-result-object v6

    #@c4
    .line 1992
    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    #@c7
    .line 1994
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    #@c9
    .line 2000
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    #@cb
    if-nez v0, :cond_2

    #@cd
    .line 2006
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    #@d0
    .line 2007
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    #@d3
    .line 2008
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    #@d5
    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->stop()V

    #@d8
    .line 2011
    :pswitch_4
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    #@da
    invoke-virtual {p0, v0, v1, v7}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    #@dd
    .line 2014
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    #@df
    long-to-float v0, v0

    #@e0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@e2
    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    #@e4
    mul-float/2addr v0, v1

    #@e5
    float-to-long v0, v0

    #@e6
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    #@e8
    .line 2016
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    #@ea
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@ec
    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    #@ee
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@f1
    move-result-wide v0

    #@f2
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    #@f4
    .line 2017
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    #@f6
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@f8
    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    #@fa
    cmp-long v0, v0, v2

    #@fc
    if-gez v0, :cond_3

    #@fe
    .line 2018
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@100
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    #@102
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    #@104
    .line 2020
    :cond_3
    const/4 v0, 0x5

    #@105
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@107
    .line 2021
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@109
    const/4 v1, 0x7

    #@10a
    if-eq v0, v1, :cond_4

    #@10c
    .line 2022
    const/4 v0, 0x7

    #@10d
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@10f
    .line 2023
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    #@112
    .line 2025
    :cond_4
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@114
    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    #@117
    .line 2026
    invoke-direct {p0, v10}, Lcom/android/server/DeviceIdleController;->addEvent(I)V

    #@11a
    .line 2027
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@11c
    invoke-virtual {v0, v11}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    #@11f
    goto/16 :goto_0

    #@121
    .line 1987
    :cond_5
    iput-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mHasNetworkLocation:Z

    #@123
    goto/16 :goto_1

    #@125
    .line 1996
    :cond_6
    iput-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    #@127
    goto :goto_2

    #@128
    .line 2031
    :pswitch_5
    iput v7, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    #@12a
    .line 2032
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    #@12c
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@12f
    .line 2033
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    #@131
    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    #@134
    .line 2036
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@137
    move-result-wide v0

    #@138
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    #@13a
    .line 2037
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@13c
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    #@13e
    .line 2038
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    #@140
    long-to-float v2, v2

    #@141
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@143
    iget v3, v3, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    #@145
    mul-float/2addr v2, v3

    #@146
    float-to-long v2, v2

    #@147
    .line 2037
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@14a
    move-result-wide v0

    #@14b
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    #@14d
    .line 2039
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    #@14f
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@151
    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    #@153
    cmp-long v0, v0, v2

    #@155
    if-gez v0, :cond_7

    #@157
    .line 2040
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@159
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    #@15b
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    #@15d
    .line 2042
    :cond_7
    const/4 v0, 0x6

    #@15e
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@160
    .line 2043
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@162
    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    #@165
    .line 2044
    const/4 v0, 0x5

    #@166
    invoke-direct {p0, v0}, Lcom/android/server/DeviceIdleController;->addEvent(I)V

    #@169
    .line 2045
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@16b
    invoke-virtual {v0, v10}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    #@16e
    goto/16 :goto_0

    #@170
    .line 1950
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method stepLightIdleStateLocked(Ljava/lang/String;)V
    .locals 10
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x5

    #@1
    const/4 v7, 0x4

    #@2
    const-wide/16 v8, 0x0

    #@4
    const/4 v6, 0x3

    #@5
    .line 1855
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@7
    const/4 v3, 0x7

    #@8
    if-ne v2, v3, :cond_0

    #@a
    .line 1858
    return-void

    #@b
    .line 1862
    :cond_0
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleLightStep()V

    #@e
    .line 1864
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@10
    packed-switch v2, :pswitch_data_0

    #@13
    .line 1854
    :goto_0
    :pswitch_0
    return-void

    #@14
    .line 1866
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@16
    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    #@18
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    #@1a
    .line 1868
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@1c
    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    #@1e
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    #@20
    .line 1869
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    #@22
    .line 1870
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isOpsInactiveLocked()Z

    #@25
    move-result v2

    #@26
    if-nez v2, :cond_1

    #@28
    .line 1873
    iput v6, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@2a
    .line 1874
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@2c
    invoke-static {v2, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    #@2f
    .line 1875
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@31
    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_PRE_IDLE_TIMEOUT:J

    #@33
    invoke-virtual {p0, v2, v3}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    #@36
    goto :goto_0

    #@37
    .line 1881
    :cond_1
    :pswitch_2
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    #@39
    cmp-long v2, v2, v8

    #@3b
    if-eqz v2, :cond_2

    #@3d
    .line 1882
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@40
    move-result-wide v2

    #@41
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    #@43
    sub-long v0, v2, v4

    #@45
    .line 1883
    .local v0, "duration":J
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@47
    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    #@49
    cmp-long v2, v0, v2

    #@4b
    if-gez v2, :cond_4

    #@4d
    .line 1885
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    #@4f
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@51
    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    #@53
    sub-long/2addr v4, v0

    #@54
    add-long/2addr v2, v4

    #@55
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    #@57
    .line 1891
    .end local v0    # "duration":J
    :cond_2
    :goto_1
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    #@59
    .line 1892
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    #@5b
    invoke-virtual {p0, v2, v3}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    #@5e
    .line 1893
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@60
    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    #@62
    .line 1894
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    #@64
    long-to-float v4, v4

    #@65
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@67
    iget v5, v5, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    #@69
    mul-float/2addr v4, v5

    #@6a
    float-to-long v4, v4

    #@6b
    .line 1893
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@6e
    move-result-wide v2

    #@6f
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    #@71
    .line 1895
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    #@73
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@75
    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    #@77
    cmp-long v2, v2, v4

    #@79
    if-gez v2, :cond_3

    #@7b
    .line 1896
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@7d
    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    #@7f
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    #@81
    .line 1899
    :cond_3
    iput v7, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@83
    .line 1900
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@85
    invoke-static {v2, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    #@88
    .line 1901
    const/4 v2, 0x2

    #@89
    invoke-direct {p0, v2}, Lcom/android/server/DeviceIdleController;->addEvent(I)V

    #@8c
    .line 1902
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@8e
    invoke-virtual {v2, v6}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    #@91
    goto :goto_0

    #@92
    .line 1888
    .restart local v0    # "duration":J
    :cond_4
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    #@94
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@96
    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    #@98
    sub-long v4, v0, v4

    #@9a
    sub-long/2addr v2, v4

    #@9b
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    #@9d
    goto :goto_1

    #@9e
    .line 1906
    .end local v0    # "duration":J
    :pswitch_3
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    #@a0
    if-nez v2, :cond_5

    #@a2
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@a4
    if-ne v2, v4, :cond_8

    #@a6
    .line 1908
    :cond_5
    const/4 v2, 0x1

    #@a7
    iput v2, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    #@a9
    .line 1909
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    #@ab
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@ae
    .line 1910
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b1
    move-result-wide v2

    #@b2
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    #@b4
    .line 1911
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    #@b6
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@b8
    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    #@ba
    cmp-long v2, v2, v4

    #@bc
    if-gez v2, :cond_7

    #@be
    .line 1912
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@c0
    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    #@c2
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    #@c4
    .line 1916
    :cond_6
    :goto_2
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    #@c6
    invoke-virtual {p0, v2, v3}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    #@c9
    .line 1919
    const/4 v2, 0x6

    #@ca
    iput v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@cc
    .line 1920
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@ce
    invoke-static {v2, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    #@d1
    .line 1921
    invoke-direct {p0, v6}, Lcom/android/server/DeviceIdleController;->addEvent(I)V

    #@d4
    .line 1922
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@d6
    invoke-virtual {v2, v7}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    #@d9
    goto/16 :goto_0

    #@db
    .line 1913
    :cond_7
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    #@dd
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@df
    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    #@e1
    cmp-long v2, v2, v4

    #@e3
    if-lez v2, :cond_6

    #@e5
    .line 1914
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@e7
    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    #@e9
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    #@eb
    goto :goto_2

    #@ec
    .line 1927
    :cond_8
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    #@ee
    invoke-virtual {p0, v2, v3}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    #@f1
    .line 1929
    iput v4, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@f3
    .line 1930
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@f5
    invoke-static {v2, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    #@f8
    goto/16 :goto_0

    #@fa
    .line 1864
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method stopMonitoringMotionLocked()V
    .locals 1

    #@0
    .prologue
    .line 2211
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    #@6
    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 2212
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    #@c
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$MotionListener;->unregisterLocked()V

    #@f
    .line 2209
    :cond_0
    return-void
.end method

.method unregisterMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/IMaintenanceActivityListener;

    #@0
    .prologue
    .line 2093
    monitor-enter p0

    #@1
    .line 2094
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    #@3
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 2092
    return-void

    #@8
    .line 2093
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method updateChargingLocked(Z)V
    .locals 2
    .param p1, "charging"    # Z

    #@0
    .prologue
    .line 1773
    if-nez p1, :cond_1

    #@2
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 1774
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    #@9
    .line 1775
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    #@b
    if-nez v0, :cond_0

    #@d
    .line 1776
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    #@10
    .line 1771
    :cond_0
    :goto_0
    return-void

    #@11
    .line 1778
    :cond_1
    if-eqz p1, :cond_0

    #@13
    .line 1779
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    #@15
    .line 1780
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    #@17
    if-nez v0, :cond_0

    #@19
    .line 1781
    const-string/jumbo v0, "charging"

    #@1c
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@1f
    move-result v1

    #@20
    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    #@23
    goto :goto_0
.end method

.method updateConnectivityState(Landroid/content/Intent;)V
    .locals 6
    .param p1, "connIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1716
    monitor-enter p0

    #@1
    .line 1717
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConnectivityService:Lcom/android/server/ConnectivityService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .local v0, "cm":Lcom/android/server/ConnectivityService;
    monitor-exit p0

    #@4
    .line 1719
    if-nez v0, :cond_0

    #@6
    .line 1720
    return-void

    #@7
    .line 1716
    .end local v0    # "cm":Lcom/android/server/ConnectivityService;
    :catchall_0
    move-exception v4

    #@8
    monitor-exit p0

    #@9
    throw v4

    #@a
    .line 1723
    .restart local v0    # "cm":Lcom/android/server/ConnectivityService;
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@d
    move-result-object v3

    #@e
    .line 1724
    .local v3, "ni":Landroid/net/NetworkInfo;
    monitor-enter p0

    #@f
    .line 1726
    if-nez v3, :cond_2

    #@11
    .line 1727
    const/4 v1, 0x0

    #@12
    .line 1742
    :goto_0
    :try_start_1
    iget-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    #@14
    if-eq v1, v4, :cond_1

    #@16
    .line 1743
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    #@18
    .line 1744
    if-eqz v1, :cond_1

    #@1a
    iget v4, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    #@1c
    const/4 v5, 0x5

    #@1d
    if-ne v4, v5, :cond_1

    #@1f
    .line 1745
    const-string/jumbo v4, "network"

    #@22
    invoke-virtual {p0, v4}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@25
    :cond_1
    monitor-exit p0

    #@26
    .line 1714
    return-void

    #@27
    .line 1729
    :cond_2
    if-nez p1, :cond_3

    #@29
    .line 1730
    :try_start_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    #@2c
    move-result v1

    #@2d
    .local v1, "conn":Z
    goto :goto_0

    #@2e
    .line 1733
    .end local v1    # "conn":Z
    :cond_3
    const-string/jumbo v4, "networkType"

    #@31
    .line 1734
    const/4 v5, -0x1

    #@32
    .line 1733
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@35
    move-result v2

    #@36
    .line 1735
    .local v2, "networkType":I
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@39
    move-result v4

    #@3a
    if-eq v4, v2, :cond_4

    #@3c
    monitor-exit p0

    #@3d
    .line 1736
    return-void

    #@3e
    .line 1738
    :cond_4
    :try_start_3
    const-string/jumbo v4, "noConnectivity"

    #@41
    .line 1739
    const/4 v5, 0x0

    #@42
    .line 1738
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@45
    move-result v4

    #@46
    if-eqz v4, :cond_5

    #@48
    const/4 v1, 0x0

    #@49
    .local v1, "conn":Z
    goto :goto_0

    #@4a
    .end local v1    # "conn":Z
    :cond_5
    const/4 v1, 0x1

    #@4b
    .restart local v1    # "conn":Z
    goto :goto_0

    #@4c
    .line 1724
    .end local v1    # "conn":Z
    .end local v2    # "networkType":I
    :catchall_1
    move-exception v4

    #@4d
    monitor-exit p0

    #@4e
    throw v4
.end method

.method updateDisplayLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1752
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@4
    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    #@7
    move-result-object v3

    #@8
    iput-object v3, p0, Lcom/android/server/DeviceIdleController;->mCurDisplay:Landroid/view/Display;

    #@a
    .line 1756
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mCurDisplay:Landroid/view/Display;

    #@c
    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    #@f
    move-result v3

    #@10
    const/4 v4, 0x2

    #@11
    if-ne v3, v4, :cond_1

    #@13
    move v0, v1

    #@14
    .line 1758
    .local v0, "screenOn":Z
    :goto_0
    if-nez v0, :cond_2

    #@16
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    #@18
    if-eqz v3, :cond_2

    #@1a
    .line 1759
    iput-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    #@1c
    .line 1760
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    #@1e
    if-nez v1, :cond_0

    #@20
    .line 1761
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    #@23
    .line 1751
    :cond_0
    :goto_1
    return-void

    #@24
    .end local v0    # "screenOn":Z
    :cond_1
    move v0, v2

    #@25
    .line 1756
    goto :goto_0

    #@26
    .line 1763
    .restart local v0    # "screenOn":Z
    :cond_2
    if-eqz v0, :cond_0

    #@28
    .line 1764
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    #@2a
    .line 1765
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    #@2c
    if-nez v1, :cond_0

    #@2e
    .line 1766
    const-string/jumbo v1, "screen"

    #@31
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@34
    move-result v2

    #@35
    invoke-virtual {p0, v1, v2}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    #@38
    goto :goto_1
.end method

.method writeConfigFileLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2429
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@3
    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->removeMessages(I)V

    #@6
    .line 2430
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@8
    const-wide/16 v2, 0x1388

    #@a
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    #@d
    .line 2428
    return-void
.end method

.method writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2462
    const/4 v2, 0x1

    #@2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5
    move-result-object v2

    #@6
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@9
    .line 2463
    const-string/jumbo v2, "config"

    #@c
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f
    .line 2464
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@12
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@15
    move-result v2

    #@16
    if-ge v0, v2, :cond_0

    #@18
    .line 2465
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@1a
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Ljava/lang/String;

    #@20
    .line 2466
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "wl"

    #@23
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@26
    .line 2467
    const-string/jumbo v2, "n"

    #@29
    invoke-interface {p1, v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2c
    .line 2468
    const-string/jumbo v2, "wl"

    #@2f
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@32
    .line 2464
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 2470
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "config"

    #@38
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3b
    .line 2471
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@3e
    .line 2461
    return-void
.end method
