.class public Lcom/android/server/DeviceIdleController;
.super Lcom/android/server/SystemService;
.source "DeviceIdleController.java"

# interfaces
.implements Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceIdleController$Constants;,
        Lcom/android/server/DeviceIdleController$MyHandler;,
        Lcom/android/server/DeviceIdleController$BinderService;,
        Lcom/android/server/DeviceIdleController$LocalService;,
        Lcom/android/server/DeviceIdleController$1;,
        Lcom/android/server/DeviceIdleController$2;,
        Lcom/android/server/DeviceIdleController$3;
    }
.end annotation


# static fields
.field private static final ACTION_STEP_IDLE_STATE:Ljava/lang/String; = "com.android.server.device_idle.STEP_IDLE_STATE"

.field private static final COMPRESS_TIME:Z = false

.field private static final DEBUG:Z = false

.field static final MSG_REPORT_ACTIVE:I = 0x4

.field static final MSG_REPORT_IDLE_OFF:I = 0x3

.field static final MSG_REPORT_IDLE_ON:I = 0x2

.field static final MSG_TEMP_APP_WHITELIST_TIMEOUT:I = 0x5

.field static final MSG_WRITE_CONFIG:I = 0x1

.field private static final STATE_ACTIVE:I = 0x0

.field private static final STATE_IDLE:I = 0x4

.field private static final STATE_IDLE_MAINTENANCE:I = 0x5

.field private static final STATE_IDLE_PENDING:I = 0x2

.field private static final STATE_INACTIVE:I = 0x1

.field private static final STATE_SENSING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DeviceIdleController"


# instance fields
.field private mAlarmIntent:Landroid/app/PendingIntent;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCharging:Z

.field public final mConfigFile:Lcom/android/internal/os/AtomicFile;

.field private mConstants:Lcom/android/server/DeviceIdleController$Constants;

.field private mCurDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEnabled:Z

.field private mForceIdle:Z

.field final mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

.field private mIdleIntent:Landroid/content/Intent;

.field private mInactiveTimeout:J

.field private mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field private mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

.field mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

.field private mNextAlarmTime:J

.field private mNextIdleDelay:J

.field private mNextIdlePendingDelay:J

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

.field private mScreenOn:Z

.field private mSensingAlarmIntent:Landroid/app/PendingIntent;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSigMotionActive:Z

.field private final mSigMotionListener:Landroid/hardware/TriggerEventListener;

.field private mSigMotionSensor:Landroid/hardware/Sensor;

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

.method static synthetic -get2(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;
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
    const/4 v1, 0x0

    #@1
    .line 708
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@4
    .line 158
    new-instance v0, Landroid/util/ArrayMap;

    #@6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@b
    .line 164
    new-instance v0, Landroid/util/ArrayMap;

    #@d
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@12
    .line 169
    new-instance v0, Landroid/util/ArrayMap;

    #@14
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@17
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@19
    .line 175
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@1b
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@1e
    .line 174
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    #@20
    .line 180
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@22
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@25
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    #@27
    .line 186
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@29
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@2c
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@2e
    .line 193
    new-array v0, v1, [I

    #@30
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    #@32
    .line 198
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@34
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@37
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    #@39
    .line 204
    new-array v0, v1, [I

    #@3b
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    #@3d
    .line 211
    new-instance v0, Landroid/util/SparseArray;

    #@3f
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@42
    .line 210
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    #@44
    .line 221
    new-array v0, v1, [I

    #@46
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    #@48
    .line 223
    new-instance v0, Lcom/android/server/DeviceIdleController$1;

    #@4a
    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$1;-><init>(Lcom/android/server/DeviceIdleController;)V

    #@4d
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    #@4f
    .line 237
    new-instance v0, Lcom/android/server/DeviceIdleController$2;

    #@51
    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$2;-><init>(Lcom/android/server/DeviceIdleController;)V

    #@54
    .line 236
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@56
    .line 253
    new-instance v0, Lcom/android/server/DeviceIdleController$3;

    #@58
    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$3;-><init>(Lcom/android/server/DeviceIdleController;)V

    #@5b
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mSigMotionListener:Landroid/hardware/TriggerEventListener;

    #@5d
    .line 709
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    #@5f
    new-instance v1, Ljava/io/File;

    #@61
    invoke-static {}, Lcom/android/server/DeviceIdleController;->getSystemDir()Ljava/io/File;

    #@64
    move-result-object v2

    #@65
    const-string/jumbo v3, "deviceidle.xml"

    #@68
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@6b
    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    #@6e
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    #@70
    .line 710
    new-instance v0, Lcom/android/server/DeviceIdleController$MyHandler;

    #@72
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@79
    move-result-object v1

    #@7a
    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V

    #@7d
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@7f
    .line 707
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
    .line 1264
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    #@4
    .line 1265
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    #@8
    move-result v3

    #@9
    if-ge v1, v3, :cond_0

    #@b
    .line 1266
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Ljava/lang/Integer;

    #@11
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@14
    move-result v3

    #@15
    invoke-virtual {p2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@18
    .line 1265
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1268
    :cond_0
    const/4 v1, 0x0

    #@1c
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    #@1f
    move-result v3

    #@20
    if-ge v1, v3, :cond_1

    #@22
    .line 1269
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    check-cast v3, Ljava/lang/Integer;

    #@28
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@2b
    move-result v3

    #@2c
    invoke-virtual {p2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@2f
    .line 1268
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_1

    #@32
    .line 1271
    :cond_1
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    #@35
    move-result v2

    #@36
    .line 1272
    .local v2, "size":I
    new-array v0, v2, [I

    #@38
    .line 1273
    .local v0, "appids":[I
    const/4 v1, 0x0

    #@39
    :goto_2
    if-ge v1, v2, :cond_2

    #@3b
    .line 1274
    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@3e
    move-result v3

    #@3f
    aput v3, v0, v1

    #@41
    .line 1273
    add-int/lit8 v1, v1, 0x1

    #@43
    goto :goto_2

    #@44
    .line 1276
    :cond_2
    return-object v0
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1446
    const-string/jumbo v0, "Device idle controller (deviceidle) dump options:"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 1447
    const-string/jumbo v0, "  [-h] [CMD]"

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 1448
    const-string/jumbo v0, "  -h: print this help text."

    #@f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12
    .line 1449
    const-string/jumbo v0, "Commands:"

    #@15
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18
    .line 1450
    const-string/jumbo v0, "  step"

    #@1b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e
    .line 1451
    const-string/jumbo v0, "    Immediately step to next state, without waiting for alarm."

    #@21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24
    .line 1452
    const-string/jumbo v0, "  force-idle"

    #@27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a
    .line 1453
    const-string/jumbo v0, "    Force directly into idle mode, regardless of other device state."

    #@2d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30
    .line 1454
    const-string/jumbo v0, "    Use \"step\" to get out."

    #@33
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@36
    .line 1455
    const-string/jumbo v0, "  disable"

    #@39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c
    .line 1456
    const-string/jumbo v0, "    Completely disable device idle mode."

    #@3f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@42
    .line 1457
    const-string/jumbo v0, "  enable"

    #@45
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@48
    .line 1458
    const-string/jumbo v0, "    Re-enable device idle mode after it had previously been disabled."

    #@4b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4e
    .line 1459
    const-string/jumbo v0, "  enabled"

    #@51
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54
    .line 1460
    const-string/jumbo v0, "    Print 1 if device idle mode is currently enabled, else 0."

    #@57
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a
    .line 1461
    const-string/jumbo v0, "  whitelist"

    #@5d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@60
    .line 1462
    const-string/jumbo v0, "    Print currently whitelisted apps."

    #@63
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66
    .line 1463
    const-string/jumbo v0, "  whitelist [package ...]"

    #@69
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6c
    .line 1464
    const-string/jumbo v0, "    Add (prefix with +) or remove (prefix with -) packages."

    #@6f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@72
    .line 1465
    const-string/jumbo v0, "  tempwhitelist [package ..]"

    #@75
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@78
    .line 1466
    const-string/jumbo v0, "    Temporarily place packages in whitelist for 10 seconds."

    #@7b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7e
    .line 1445
    return-void
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    #@0
    .prologue
    .line 714
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

.method private postTempActiveTimeoutMessage(IJ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "delay"    # J

    #@0
    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@2
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@4
    const/4 v2, 0x5

    #@5
    const/4 v3, 0x0

    #@6
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@d
    .line 1006
    return-void
.end method

.method private readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 17
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    #@0
    .prologue
    .line 1346
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@3
    move-result-object v14

    #@4
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v11

    #@8
    .line 1350
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
    .line 1351
    const/4 v14, 0x1

    #@10
    if-ne v13, v14, :cond_0

    #@12
    .line 1355
    :cond_1
    const/4 v14, 0x2

    #@13
    if-eq v13, v14, :cond_3

    #@15
    .line 1356
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
    .line 1384
    .end local v13    # "type":I
    :catch_0
    move-exception v4

    #@1f
    .line 1385
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
    .line 1345
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    :goto_0
    return-void

    #@3a
    .line 1359
    .restart local v13    # "type":I
    :cond_3
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3d
    move-result v10

    #@3e
    .line 1360
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
    .line 1361
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
    .line 1362
    :cond_5
    const/4 v14, 0x3

    #@4f
    if-eq v13, v14, :cond_4

    #@51
    const/4 v14, 0x4

    #@52
    if-eq v13, v14, :cond_4

    #@54
    .line 1366
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@57
    move-result-object v12

    #@58
    .line 1367
    .local v12, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "wl"

    #@5b
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v14

    #@5f
    if-eqz v14, :cond_6

    #@61
    .line 1368
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
    .line 1369
    .local v9, "name":Ljava/lang/String;
    if-eqz v9, :cond_4

    #@6d
    .line 1371
    const/4 v14, 0x0

    #@6e
    :try_start_2
    invoke-virtual {v11, v9, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@71
    move-result-object v1

    #@72
    .line 1372
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    #@74
    iget-object v14, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@76
    iget-object v15, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@78
    .line 1373
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@7a
    move/from16 v16, v0

    #@7c
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getAppId(I)I

    #@7f
    move-result v16

    #@80
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@83
    move-result-object v16

    #@84
    .line 1372
    invoke-virtual/range {v14 .. v16}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    #@87
    goto :goto_1

    #@88
    .line 1374
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v2

    #@89
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    #@8a
    .line 1378
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "name":Ljava/lang/String;
    :cond_6
    :try_start_3
    const-string/jumbo v14, "DeviceIdleController"

    #@8d
    new-instance v15, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v16, "Unknown element under <config>: "

    #@95
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v15

    #@99
    .line 1379
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@9c
    move-result-object v16

    #@9d
    .line 1378
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v15

    #@a1
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v15

    #@a5
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a8
    .line 1380
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    #@ab
    goto :goto_1

    #@ac
    .line 1386
    .end local v10    # "outerDepth":I
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_2
    move-exception v6

    #@ad
    .line 1387
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v14, "DeviceIdleController"

    #@b0
    new-instance v15, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v16, "Failed parsing config "

    #@b8
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v15

    #@bc
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v15

    #@c0
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v15

    #@c4
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c7
    goto/16 :goto_0

    #@c9
    .line 1394
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v5

    #@ca
    .line 1395
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v14, "DeviceIdleController"

    #@cd
    new-instance v15, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string/jumbo v16, "Failed parsing config "

    #@d5
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v15

    #@d9
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v15

    #@dd
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v15

    #@e1
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e4
    goto/16 :goto_0

    #@e6
    .line 1392
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_4
    move-exception v3

    #@e7
    .line 1393
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v14, "DeviceIdleController"

    #@ea
    new-instance v15, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v16, "Failed parsing config "

    #@f2
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v15

    #@f6
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v15

    #@fa
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v15

    #@fe
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@101
    goto/16 :goto_0

    #@103
    .line 1390
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v8

    #@104
    .line 1391
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v14, "DeviceIdleController"

    #@107
    new-instance v15, Ljava/lang/StringBuilder;

    #@109
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@10c
    const-string/jumbo v16, "Failed parsing config "

    #@10f
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v15

    #@113
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v15

    #@117
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11a
    move-result-object v15

    #@11b
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11e
    goto/16 :goto_0

    #@120
    .line 1388
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v7

    #@121
    .line 1389
    .local v7, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v14, "DeviceIdleController"

    #@124
    new-instance v15, Ljava/lang/StringBuilder;

    #@126
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@129
    const-string/jumbo v16, "Failed parsing config "

    #@12c
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v15

    #@130
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v15

    #@134
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@137
    move-result-object v15

    #@138
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13b
    goto/16 :goto_0
.end method

.method private reportPowerSaveWhitelistChangedLocked()V
    .locals 3

    #@0
    .prologue
    .line 1311
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1312
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 1313
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@10
    move-result-object v1

    #@11
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@13
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@16
    .line 1310
    return-void
.end method

.method private reportTempWhitelistChangedLocked()V
    .locals 3

    #@0
    .prologue
    .line 1317
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1318
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 1319
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@10
    move-result-object v1

    #@11
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@13
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@16
    .line 1316
    return-void
.end method

.method private static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 134
    packed-switch p0, :pswitch_data_0

    #@3
    .line 141
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 135
    :pswitch_0
    const-string/jumbo v0, "ACTIVE"

    #@b
    return-object v0

    #@c
    .line 136
    :pswitch_1
    const-string/jumbo v0, "INACTIVE"

    #@f
    return-object v0

    #@10
    .line 137
    :pswitch_2
    const-string/jumbo v0, "IDLE_PENDING"

    #@13
    return-object v0

    #@14
    .line 138
    :pswitch_3
    const-string/jumbo v0, "SENSING"

    #@17
    return-object v0

    #@18
    .line 139
    :pswitch_4
    const-string/jumbo v0, "IDLE"

    #@1b
    return-object v0

    #@1c
    .line 140
    :pswitch_5
    const-string/jumbo v0, "IDLE_MAINTENANCE"

    #@1f
    return-object v0

    #@20
    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateTempWhitelistAppIdsLocked()V
    .locals 4

    #@0
    .prologue
    .line 1294
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v1

    #@6
    .line 1295
    .local v1, "size":I
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    #@8
    array-length v2, v2

    #@9
    if-eq v2, v1, :cond_0

    #@b
    .line 1296
    new-array v2, v1, [I

    #@d
    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    #@f
    .line 1298
    :cond_0
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@12
    .line 1299
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
    .line 1298
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1301
    :cond_1
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 1306
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    #@25
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    #@27
    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleTempWhitelist([I)V

    #@2a
    .line 1293
    :cond_2
    return-void
.end method

.method private updateWhitelistAppIdsLocked()V
    .locals 3

    #@0
    .prologue
    .line 1280
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@2
    .line 1281
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@4
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@6
    .line 1280
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    #@c
    .line 1282
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@e
    .line 1283
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@10
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    #@12
    .line 1282
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    #@18
    .line 1284
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 1289
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    #@1e
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    #@20
    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    #@23
    .line 1279
    :cond_0
    return-void
.end method


# virtual methods
.method public addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    .locals 13
    .param p1, "callingUid"    # I
    .param p2, "appId"    # I
    .param p3, "duration"    # J
    .param p5, "sync"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 954
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v8

    #@4
    .line 955
    .local v8, "timeNow":J
    const/4 v5, 0x0

    #@5
    .line 956
    .local v5, "networkPolicyTempWhitelistCallback":Ljava/lang/Runnable;
    monitor-enter p0

    #@6
    .line 957
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    #@9
    move-result v2

    #@a
    .line 958
    .local v2, "callingAppId":I
    const/16 v7, 0x2710

    #@c
    if-lt v2, v7, :cond_0

    #@e
    .line 959
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    #@10
    invoke-virtual {v7, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@13
    move-result v7

    #@14
    if-nez v7, :cond_0

    #@16
    .line 960
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
    .line 961
    const-string/jumbo v11, " is not on whitelist"

    #@2f
    .line 960
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
    .line 956
    .end local v2    # "callingAppId":I
    .end local v5    # "networkPolicyTempWhitelistCallback":Ljava/lang/Runnable;
    :catchall_0
    move-exception v7

    #@3c
    monitor-exit p0

    #@3d
    throw v7

    #@3e
    .line 964
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
    .line 965
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    #@4a
    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@4d
    move-result-object v4

    #@4e
    check-cast v4, Landroid/util/Pair;

    #@50
    .line 966
    .local v4, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    if-nez v4, :cond_5

    #@52
    const/4 v6, 0x1

    #@53
    .line 968
    .local v6, "newEntry":Z
    :goto_0
    if-eqz v6, :cond_1

    #@55
    .line 969
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
    .line 970
    .restart local v4    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    #@65
    invoke-virtual {v7, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@68
    .line 972
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
    .line 976
    if-eqz v6, :cond_3

    #@72
    .line 979
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
    .line 983
    :goto_1
    :try_start_3
    move-wide/from16 v0, p3

    #@7e
    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    #@81
    .line 984
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked()V

    #@84
    .line 985
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    #@86
    if-eqz v7, :cond_2

    #@88
    .line 986
    if-nez p5, :cond_6

    #@8a
    .line 987
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@8c
    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    #@8e
    invoke-virtual {v7, v10}, Lcom/android/server/DeviceIdleController$MyHandler;->post(Ljava/lang/Runnable;)Z

    #@91
    .line 992
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
    .line 995
    if-eqz v5, :cond_4

    #@97
    .line 996
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    #@9a
    .line 953
    :cond_4
    return-void

    #@9b
    .line 966
    .end local v6    # "newEntry":Z
    .restart local v5    # "networkPolicyTempWhitelistCallback":Ljava/lang/Runnable;
    :cond_5
    const/4 v6, 0x0

    #@9c
    .restart local v6    # "newEntry":Z
    goto :goto_0

    #@9d
    .line 989
    :cond_6
    :try_start_4
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@9f
    .local v5, "networkPolicyTempWhitelistCallback":Ljava/lang/Runnable;
    goto :goto_2

    #@a0
    .line 981
    .local v5, "networkPolicyTempWhitelistCallback":Ljava/lang/Runnable;
    :catch_0
    move-exception v3

    #@a1
    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    .locals 9
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "userId"    # I
    .param p6, "sync"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 941
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1, p2, p5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    #@b
    move-result v8

    #@c
    .line 942
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
    .line 943
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 939
    .end local v3    # "appId":I
    .end local v8    # "uid":I
    :goto_0
    return-void

    #@1a
    .line 944
    :catch_0
    move-exception v0

    #@1b
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 819
    monitor-enter p0

    #@2
    .line 821
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@e
    move-result-object v0

    #@f
    .line 822
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
    .line 823
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    #@24
    .line 824
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    #@27
    .line 825
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 827
    :cond_0
    const/4 v2, 0x1

    #@2b
    monitor-exit p0

    #@2c
    return v2

    #@2d
    .line 828
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    #@2e
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    monitor-exit p0

    #@2f
    .line 829
    return v4

    #@30
    .line 819
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v2

    #@31
    monitor-exit p0

    #@32
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
    .line 1090
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1091
    invoke-static {v1, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    #@a
    .line 1092
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->scheduleReportActiveLocked(Ljava/lang/String;I)V

    #@d
    .line 1093
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@f
    .line 1094
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@11
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    #@13
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    #@15
    .line 1095
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    #@17
    .line 1096
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    #@19
    .line 1097
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    #@1c
    .line 1098
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->stopMonitoringSignificantMotion()V

    #@1f
    .line 1088
    :cond_0
    return-void
.end method

.method becomeInactiveIfAppropriateLocked()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 1104
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    #@5
    if-nez v0, :cond_0

    #@7
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    #@d
    if-eqz v0, :cond_2

    #@f
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mEnabled:Z

    #@11
    if-eqz v0, :cond_2

    #@13
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@15
    if-nez v0, :cond_2

    #@17
    .line 1107
    const/4 v0, 0x1

    #@18
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@1a
    .line 1109
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    #@1c
    .line 1110
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    #@1e
    .line 1111
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    #@20
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    #@23
    .line 1112
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@25
    const-string/jumbo v1, "no activity"

    #@28
    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    #@2b
    .line 1102
    :cond_2
    return-void
.end method

.method cancelAlarmLocked()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 1225
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1226
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    #@a
    .line 1227
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    #@c
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mAlarmIntent:Landroid/app/PendingIntent;

    #@e
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@11
    .line 1224
    :cond_0
    return-void
.end method

.method cancelSensingAlarmLocked()V
    .locals 2

    #@0
    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    #@2
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensingAlarmIntent:Landroid/app/PendingIntent;

    #@4
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@7
    .line 1231
    return-void
.end method

.method checkTempAppWhitelistTimeout(I)V
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 1012
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v2

    #@4
    .line 1013
    .local v2, "timeNow":J
    monitor-enter p0

    #@5
    .line 1014
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
    .line 1015
    .local v1, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    if-nez v1, :cond_0

    #@f
    monitor-exit p0

    #@10
    .line 1017
    return-void

    #@11
    .line 1019
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
    .line 1020
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    #@1d
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    #@20
    .line 1024
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked()V

    #@23
    .line 1025
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    #@25
    if-eqz v4, :cond_1

    #@27
    .line 1026
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@29
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    #@2b
    invoke-virtual {v4, v5}, Lcom/android/server/DeviceIdleController$MyHandler;->post(Ljava/lang/Runnable;)Z

    #@2e
    .line 1028
    :cond_1
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    .line 1030
    :try_start_2
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@33
    .line 1031
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@35
    check-cast v4, Ljava/lang/String;

    #@37
    .line 1030
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
    .line 1011
    return-void

    #@3e
    .line 1036
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
    .line 1013
    .end local v1    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    #@4a
    monitor-exit p0

    #@4b
    throw v4

    #@4c
    .line 1032
    .restart local v1    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    #@4d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 26
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1470
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
    .line 1472
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
    .line 1473
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1c
    move-result v6

    #@1d
    .line 1472
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    .line 1473
    const-string/jumbo v6, ", uid="

    #@24
    .line 1472
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    .line 1473
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2b
    move-result v6

    #@2c
    .line 1472
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    .line 1474
    const-string/jumbo v6, " without permission "

    #@33
    .line 1472
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    .line 1474
    const-string/jumbo v6, "android.permission.DUMP"

    #@3a
    .line 1472
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
    .line 1475
    return-void

    #@48
    .line 1478
    :cond_0
    if-eqz p3, :cond_1e

    #@4a
    .line 1479
    const/4 v10, 0x0

    #@4b
    .line 1480
    .local v10, "userId":I
    const/4 v14, 0x0

    #@4c
    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p3

    #@4e
    array-length v5, v0

    #@4f
    if-ge v14, v5, :cond_1e

    #@51
    .line 1481
    aget-object v7, p3, v14

    #@53
    .line 1482
    .local v7, "arg":Ljava/lang/String;
    const-string/jumbo v5, "-h"

    #@56
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v5

    #@5a
    if-eqz v5, :cond_1

    #@5c
    .line 1483
    move-object/from16 v0, p0

    #@5e
    move-object/from16 v1, p2

    #@60
    invoke-direct {v0, v1}, Lcom/android/server/DeviceIdleController;->dumpHelp(Ljava/io/PrintWriter;)V

    #@63
    .line 1484
    return-void

    #@64
    .line 1485
    :cond_1
    const-string/jumbo v5, "-u"

    #@67
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v5

    #@6b
    if-eqz v5, :cond_3

    #@6d
    .line 1486
    add-int/lit8 v14, v14, 0x1

    #@6f
    .line 1487
    move-object/from16 v0, p3

    #@71
    array-length v5, v0

    #@72
    if-ge v14, v5, :cond_2

    #@74
    .line 1488
    aget-object v7, p3, v14

    #@76
    .line 1489
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@79
    move-result v10

    #@7a
    .line 1480
    :cond_2
    add-int/lit8 v14, v14, 0x1

    #@7c
    goto :goto_0

    #@7d
    .line 1491
    :cond_3
    const-string/jumbo v5, "-a"

    #@80
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@83
    move-result v5

    #@84
    if-nez v5, :cond_2

    #@86
    .line 1493
    const-string/jumbo v5, "step"

    #@89
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v5

    #@8d
    if-eqz v5, :cond_4

    #@8f
    .line 1494
    monitor-enter p0

    #@90
    .line 1495
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@93
    move-result-wide v22

    #@94
    .line 1497
    .local v22, "token":J
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V

    #@97
    .line 1498
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked()V

    #@9a
    .line 1499
    const-string/jumbo v5, "Stepped to: "

    #@9d
    move-object/from16 v0, p2

    #@9f
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a2
    move-object/from16 v0, p0

    #@a4
    iget v5, v0, Lcom/android/server/DeviceIdleController;->mState:I

    #@a6
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    #@a9
    move-result-object v5

    #@aa
    move-object/from16 v0, p2

    #@ac
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@af
    .line 1501
    :try_start_2
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@b2
    monitor-exit p0

    #@b3
    .line 1504
    return-void

    #@b4
    .line 1500
    :catchall_0
    move-exception v5

    #@b5
    .line 1501
    :try_start_3
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b8
    .line 1500
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@b9
    .line 1494
    .end local v22    # "token":J
    :catchall_1
    move-exception v5

    #@ba
    monitor-exit p0

    #@bb
    throw v5

    #@bc
    .line 1505
    :cond_4
    const-string/jumbo v5, "force-idle"

    #@bf
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c2
    move-result v5

    #@c3
    if-eqz v5, :cond_8

    #@c5
    .line 1506
    monitor-enter p0

    #@c6
    .line 1507
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    #@c9
    move-result-wide v22

    #@ca
    .line 1509
    .restart local v22    # "token":J
    :try_start_5
    move-object/from16 v0, p0

    #@cc
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mEnabled:Z

    #@ce
    if-nez v5, :cond_5

    #@d0
    .line 1510
    const-string/jumbo v5, "Unable to go idle; not enabled"

    #@d3
    move-object/from16 v0, p2

    #@d5
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@d8
    .line 1528
    :try_start_6
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@db
    monitor-exit p0

    #@dc
    .line 1511
    return-void

    #@dd
    .line 1513
    :cond_5
    const/4 v5, 0x1

    #@de
    :try_start_7
    move-object/from16 v0, p0

    #@e0
    iput-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    #@e2
    .line 1514
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    #@e5
    .line 1515
    move-object/from16 v0, p0

    #@e7
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    #@e9
    .line 1516
    .local v4, "curState":I
    :goto_1
    const/4 v5, 0x4

    #@ea
    if-eq v4, v5, :cond_7

    #@ec
    .line 1517
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked()V

    #@ef
    .line 1518
    move-object/from16 v0, p0

    #@f1
    iget v5, v0, Lcom/android/server/DeviceIdleController;->mState:I

    #@f3
    if-ne v4, v5, :cond_6

    #@f5
    .line 1519
    const-string/jumbo v5, "Unable to go idle; stopped at "

    #@f8
    move-object/from16 v0, p2

    #@fa
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fd
    .line 1520
    move-object/from16 v0, p0

    #@ff
    iget v5, v0, Lcom/android/server/DeviceIdleController;->mState:I

    #@101
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    #@104
    move-result-object v5

    #@105
    move-object/from16 v0, p2

    #@107
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10a
    .line 1521
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@10d
    .line 1528
    :try_start_8
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    #@110
    monitor-exit p0

    #@111
    .line 1522
    return-void

    #@112
    .line 1524
    :cond_6
    :try_start_9
    move-object/from16 v0, p0

    #@114
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    #@116
    goto :goto_1

    #@117
    .line 1526
    :cond_7
    const-string/jumbo v5, "Now forced in to idle mode"

    #@11a
    move-object/from16 v0, p2

    #@11c
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@11f
    .line 1528
    :try_start_a
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@122
    monitor-exit p0

    #@123
    .line 1531
    return-void

    #@124
    .line 1527
    .end local v4    # "curState":I
    :catchall_2
    move-exception v5

    #@125
    .line 1528
    :try_start_b
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@128
    .line 1527
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    #@129
    .line 1506
    .end local v22    # "token":J
    :catchall_3
    move-exception v5

    #@12a
    monitor-exit p0

    #@12b
    throw v5

    #@12c
    .line 1532
    :cond_8
    const-string/jumbo v5, "disable"

    #@12f
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@132
    move-result v5

    #@133
    if-eqz v5, :cond_a

    #@135
    .line 1533
    monitor-enter p0

    #@136
    .line 1534
    :try_start_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    #@139
    move-result-wide v22

    #@13a
    .line 1536
    .restart local v22    # "token":J
    :try_start_d
    move-object/from16 v0, p0

    #@13c
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mEnabled:Z

    #@13e
    if-eqz v5, :cond_9

    #@140
    .line 1537
    const/4 v5, 0x0

    #@141
    move-object/from16 v0, p0

    #@143
    iput-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mEnabled:Z

    #@145
    .line 1538
    const-string/jumbo v5, "disabled"

    #@148
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@14b
    move-result v6

    #@14c
    move-object/from16 v0, p0

    #@14e
    invoke-virtual {v0, v5, v6}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    #@151
    .line 1539
    const-string/jumbo v5, "Idle mode disabled"

    #@154
    move-object/from16 v0, p2

    #@156
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    #@159
    .line 1542
    :cond_9
    :try_start_e
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    #@15c
    monitor-exit p0

    #@15d
    .line 1545
    return-void

    #@15e
    .line 1541
    :catchall_4
    move-exception v5

    #@15f
    .line 1542
    :try_start_f
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@162
    .line 1541
    throw v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    #@163
    .line 1533
    .end local v22    # "token":J
    :catchall_5
    move-exception v5

    #@164
    monitor-exit p0

    #@165
    throw v5

    #@166
    .line 1546
    :cond_a
    const-string/jumbo v5, "enable"

    #@169
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16c
    move-result v5

    #@16d
    if-eqz v5, :cond_c

    #@16f
    .line 1547
    monitor-enter p0

    #@170
    .line 1548
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    #@173
    move-result-wide v22

    #@174
    .line 1550
    .restart local v22    # "token":J
    :try_start_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V

    #@177
    .line 1551
    move-object/from16 v0, p0

    #@179
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mEnabled:Z

    #@17b
    if-nez v5, :cond_b

    #@17d
    .line 1552
    const/4 v5, 0x1

    #@17e
    move-object/from16 v0, p0

    #@180
    iput-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mEnabled:Z

    #@182
    .line 1553
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    #@185
    .line 1554
    const-string/jumbo v5, "Idle mode enabled"

    #@188
    move-object/from16 v0, p2

    #@18a
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    #@18d
    .line 1557
    :cond_b
    :try_start_12
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    #@190
    monitor-exit p0

    #@191
    .line 1560
    return-void

    #@192
    .line 1556
    :catchall_6
    move-exception v5

    #@193
    .line 1557
    :try_start_13
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@196
    .line 1556
    throw v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    #@197
    .line 1547
    .end local v22    # "token":J
    :catchall_7
    move-exception v5

    #@198
    monitor-exit p0

    #@199
    throw v5

    #@19a
    .line 1561
    :cond_c
    const-string/jumbo v5, "enabled"

    #@19d
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a0
    move-result v5

    #@1a1
    if-eqz v5, :cond_e

    #@1a3
    .line 1562
    monitor-enter p0

    #@1a4
    .line 1563
    :try_start_14
    move-object/from16 v0, p0

    #@1a6
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mEnabled:Z

    #@1a8
    if-eqz v5, :cond_d

    #@1aa
    const-string/jumbo v5, "1"

    #@1ad
    :goto_2
    move-object/from16 v0, p2

    #@1af
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    #@1b2
    monitor-exit p0

    #@1b3
    .line 1565
    return-void

    #@1b4
    .line 1563
    :cond_d
    :try_start_15
    const-string/jumbo v5, " 0"
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    #@1b7
    goto :goto_2

    #@1b8
    .line 1562
    :catchall_8
    move-exception v5

    #@1b9
    monitor-exit p0

    #@1ba
    throw v5

    #@1bb
    .line 1566
    :cond_e
    const-string/jumbo v5, "whitelist"

    #@1be
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c1
    move-result v5

    #@1c2
    if-eqz v5, :cond_19

    #@1c4
    .line 1567
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1c7
    move-result-wide v22

    #@1c8
    .line 1569
    .restart local v22    # "token":J
    add-int/lit8 v14, v14, 0x1

    #@1ca
    .line 1570
    :try_start_16
    move-object/from16 v0, p3

    #@1cc
    array-length v5, v0

    #@1cd
    if-ge v14, v5, :cond_14

    #@1cf
    .line 1571
    :cond_f
    :goto_3
    move-object/from16 v0, p3

    #@1d1
    array-length v5, v0

    #@1d2
    if-ge v14, v5, :cond_18

    #@1d4
    .line 1572
    aget-object v7, p3, v14

    #@1d6
    .line 1573
    add-int/lit8 v14, v14, 0x1

    #@1d8
    .line 1574
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@1db
    move-result v5

    #@1dc
    const/4 v6, 0x1

    #@1dd
    if-lt v5, v6, :cond_10

    #@1df
    const/4 v5, 0x0

    #@1e0
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    #@1e3
    move-result v5

    #@1e4
    const/16 v6, 0x2d

    #@1e6
    if-eq v5, v6, :cond_11

    #@1e8
    .line 1575
    const/4 v5, 0x0

    #@1e9
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    #@1ec
    move-result v5

    #@1ed
    const/16 v6, 0x2b

    #@1ef
    if-eq v5, v6, :cond_11

    #@1f1
    .line 1576
    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    #@1f3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1f6
    const-string/jumbo v6, "Package must be prefixed with + or -: "

    #@1f9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fc
    move-result-object v5

    #@1fd
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@200
    move-result-object v5

    #@201
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@204
    move-result-object v5

    #@205
    move-object/from16 v0, p2

    #@207
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    #@20a
    .line 1616
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20d
    .line 1577
    return-void

    #@20e
    .line 1579
    :cond_11
    const/4 v5, 0x0

    #@20f
    :try_start_17
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    #@212
    move-result v16

    #@213
    .line 1580
    .local v16, "op":C
    const/4 v5, 0x1

    #@214
    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@217
    move-result-object v17

    #@218
    .line 1581
    .local v17, "pkg":Ljava/lang/String;
    const/16 v5, 0x2b

    #@21a
    move/from16 v0, v16

    #@21c
    if-ne v0, v5, :cond_13

    #@21e
    .line 1582
    move-object/from16 v0, p0

    #@220
    move-object/from16 v1, v17

    #@222
    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    #@225
    move-result v5

    #@226
    if-eqz v5, :cond_12

    #@228
    .line 1583
    new-instance v5, Ljava/lang/StringBuilder;

    #@22a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@22d
    const-string/jumbo v6, "Added: "

    #@230
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@233
    move-result-object v5

    #@234
    move-object/from16 v0, v17

    #@236
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@239
    move-result-object v5

    #@23a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23d
    move-result-object v5

    #@23e
    move-object/from16 v0, p2

    #@240
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    #@243
    goto :goto_3

    #@244
    .line 1615
    .end local v16    # "op":C
    .end local v17    # "pkg":Ljava/lang/String;
    :catchall_9
    move-exception v5

    #@245
    .line 1616
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@248
    .line 1615
    throw v5

    #@249
    .line 1585
    .restart local v16    # "op":C
    .restart local v17    # "pkg":Ljava/lang/String;
    :cond_12
    :try_start_18
    new-instance v5, Ljava/lang/StringBuilder;

    #@24b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@24e
    const-string/jumbo v6, "Unknown package: "

    #@251
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@254
    move-result-object v5

    #@255
    move-object/from16 v0, v17

    #@257
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25a
    move-result-object v5

    #@25b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25e
    move-result-object v5

    #@25f
    move-object/from16 v0, p2

    #@261
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@264
    goto/16 :goto_3

    #@266
    .line 1588
    :cond_13
    move-object/from16 v0, p0

    #@268
    move-object/from16 v1, v17

    #@26a
    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    #@26d
    move-result v5

    #@26e
    if-eqz v5, :cond_f

    #@270
    .line 1589
    new-instance v5, Ljava/lang/StringBuilder;

    #@272
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@275
    const-string/jumbo v6, "Removed: "

    #@278
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27b
    move-result-object v5

    #@27c
    move-object/from16 v0, v17

    #@27e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@281
    move-result-object v5

    #@282
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@285
    move-result-object v5

    #@286
    move-object/from16 v0, p2

    #@288
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28b
    goto/16 :goto_3

    #@28d
    .line 1594
    .end local v16    # "op":C
    .end local v17    # "pkg":Ljava/lang/String;
    :cond_14
    monitor-enter p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    #@28e
    .line 1595
    const/4 v15, 0x0

    #@28f
    .local v15, "j":I
    :goto_4
    :try_start_19
    move-object/from16 v0, p0

    #@291
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@293
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@296
    move-result v5

    #@297
    if-ge v15, v5, :cond_15

    #@299
    .line 1596
    const-string/jumbo v5, "system-excidle,"

    #@29c
    move-object/from16 v0, p2

    #@29e
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a1
    .line 1597
    move-object/from16 v0, p0

    #@2a3
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@2a5
    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@2a8
    move-result-object v5

    #@2a9
    check-cast v5, Ljava/lang/String;

    #@2ab
    move-object/from16 v0, p2

    #@2ad
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b0
    .line 1598
    const-string/jumbo v5, ","

    #@2b3
    move-object/from16 v0, p2

    #@2b5
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b8
    .line 1599
    move-object/from16 v0, p0

    #@2ba
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@2bc
    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2bf
    move-result-object v5

    #@2c0
    move-object/from16 v0, p2

    #@2c2
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2c5
    .line 1595
    add-int/lit8 v15, v15, 0x1

    #@2c7
    goto :goto_4

    #@2c8
    .line 1601
    :cond_15
    const/4 v15, 0x0

    #@2c9
    :goto_5
    move-object/from16 v0, p0

    #@2cb
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@2cd
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@2d0
    move-result v5

    #@2d1
    if-ge v15, v5, :cond_16

    #@2d3
    .line 1602
    const-string/jumbo v5, "system,"

    #@2d6
    move-object/from16 v0, p2

    #@2d8
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2db
    .line 1603
    move-object/from16 v0, p0

    #@2dd
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@2df
    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@2e2
    move-result-object v5

    #@2e3
    check-cast v5, Ljava/lang/String;

    #@2e5
    move-object/from16 v0, p2

    #@2e7
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ea
    .line 1604
    const-string/jumbo v5, ","

    #@2ed
    move-object/from16 v0, p2

    #@2ef
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f2
    .line 1605
    move-object/from16 v0, p0

    #@2f4
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@2f6
    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2f9
    move-result-object v5

    #@2fa
    move-object/from16 v0, p2

    #@2fc
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2ff
    .line 1601
    add-int/lit8 v15, v15, 0x1

    #@301
    goto :goto_5

    #@302
    .line 1607
    :cond_16
    const/4 v15, 0x0

    #@303
    :goto_6
    move-object/from16 v0, p0

    #@305
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@307
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@30a
    move-result v5

    #@30b
    if-ge v15, v5, :cond_17

    #@30d
    .line 1608
    const-string/jumbo v5, "user,"

    #@310
    move-object/from16 v0, p2

    #@312
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@315
    .line 1609
    move-object/from16 v0, p0

    #@317
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@319
    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@31c
    move-result-object v5

    #@31d
    check-cast v5, Ljava/lang/String;

    #@31f
    move-object/from16 v0, p2

    #@321
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@324
    .line 1610
    const-string/jumbo v5, ","

    #@327
    move-object/from16 v0, p2

    #@329
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32c
    .line 1611
    move-object/from16 v0, p0

    #@32e
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@330
    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@333
    move-result-object v5

    #@334
    move-object/from16 v0, p2

    #@336
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    #@339
    .line 1607
    add-int/lit8 v15, v15, 0x1

    #@33b
    goto :goto_6

    #@33c
    :cond_17
    :try_start_1a
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    #@33d
    .line 1616
    .end local v15    # "j":I
    :cond_18
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@340
    .line 1618
    return-void

    #@341
    .line 1594
    .restart local v15    # "j":I
    :catchall_a
    move-exception v5

    #@342
    :try_start_1b
    monitor-exit p0

    #@343
    throw v5
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    #@344
    .line 1619
    .end local v15    # "j":I
    .end local v22    # "token":J
    :cond_19
    const-string/jumbo v5, "tempwhitelist"

    #@347
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34a
    move-result v5

    #@34b
    if-eqz v5, :cond_1c

    #@34d
    .line 1620
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@350
    move-result-wide v22

    #@351
    .line 1622
    .restart local v22    # "token":J
    add-int/lit8 v14, v14, 0x1

    #@353
    .line 1623
    :try_start_1c
    move-object/from16 v0, p3

    #@355
    array-length v5, v0

    #@356
    if-lt v14, v5, :cond_1a

    #@358
    .line 1624
    const-string/jumbo v5, "At least one package name must be specified"

    #@35b
    move-object/from16 v0, p2

    #@35d
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    #@360
    .line 1635
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@363
    .line 1625
    return-void

    #@364
    .line 1627
    :cond_1a
    :goto_7
    :try_start_1d
    move-object/from16 v0, p3

    #@366
    array-length v5, v0

    #@367
    if-ge v14, v5, :cond_1b

    #@369
    .line 1628
    aget-object v7, p3, v14

    #@36b
    .line 1629
    add-int/lit8 v14, v14, 0x1

    #@36d
    .line 1631
    const-string/jumbo v12, "shell"

    #@370
    .line 1630
    const/4 v6, 0x0

    #@371
    const-wide/16 v8, 0x2710

    #@373
    const/4 v11, 0x1

    #@374
    move-object/from16 v5, p0

    #@376
    invoke-virtual/range {v5 .. v12}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V

    #@379
    .line 1632
    new-instance v5, Ljava/lang/StringBuilder;

    #@37b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@37e
    const-string/jumbo v6, "Added: "

    #@381
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@384
    move-result-object v5

    #@385
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@388
    move-result-object v5

    #@389
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38c
    move-result-object v5

    #@38d
    move-object/from16 v0, p2

    #@38f
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    #@392
    goto :goto_7

    #@393
    .line 1634
    :catchall_b
    move-exception v5

    #@394
    .line 1635
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@397
    .line 1634
    throw v5

    #@398
    .line 1635
    :cond_1b
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@39b
    .line 1637
    return-void

    #@39c
    .line 1638
    .end local v22    # "token":J
    :cond_1c
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@39f
    move-result v5

    #@3a0
    if-lez v5, :cond_1d

    #@3a2
    const/4 v5, 0x0

    #@3a3
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    #@3a6
    move-result v5

    #@3a7
    const/16 v6, 0x2d

    #@3a9
    if-ne v5, v6, :cond_1d

    #@3ab
    .line 1639
    new-instance v5, Ljava/lang/StringBuilder;

    #@3ad
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3b0
    const-string/jumbo v6, "Unknown option: "

    #@3b3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b6
    move-result-object v5

    #@3b7
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ba
    move-result-object v5

    #@3bb
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3be
    move-result-object v5

    #@3bf
    move-object/from16 v0, p2

    #@3c1
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c4
    .line 1640
    return-void

    #@3c5
    .line 1642
    :cond_1d
    new-instance v5, Ljava/lang/StringBuilder;

    #@3c7
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3ca
    const-string/jumbo v6, "Unknown command: "

    #@3cd
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d0
    move-result-object v5

    #@3d1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d4
    move-result-object v5

    #@3d5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d8
    move-result-object v5

    #@3d9
    move-object/from16 v0, p2

    #@3db
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3de
    .line 1643
    return-void

    #@3df
    .line 1648
    .end local v7    # "arg":Ljava/lang/String;
    .end local v10    # "userId":I
    .end local v14    # "i":I
    :cond_1e
    monitor-enter p0

    #@3e0
    .line 1649
    :try_start_1e
    move-object/from16 v0, p0

    #@3e2
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@3e4
    move-object/from16 v0, p2

    #@3e6
    invoke-virtual {v5, v0}, Lcom/android/server/DeviceIdleController$Constants;->dump(Ljava/io/PrintWriter;)V

    #@3e9
    .line 1651
    move-object/from16 v0, p0

    #@3eb
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@3ed
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@3f0
    move-result v18

    #@3f1
    .line 1652
    .local v18, "size":I
    if-lez v18, :cond_1f

    #@3f3
    .line 1653
    const-string/jumbo v5, "  Whitelist (except idle) system apps:"

    #@3f6
    move-object/from16 v0, p2

    #@3f8
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3fb
    .line 1654
    const/4 v14, 0x0

    #@3fc
    .restart local v14    # "i":I
    :goto_8
    move/from16 v0, v18

    #@3fe
    if-ge v14, v0, :cond_1f

    #@400
    .line 1655
    const-string/jumbo v5, "    "

    #@403
    move-object/from16 v0, p2

    #@405
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@408
    .line 1656
    move-object/from16 v0, p0

    #@40a
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@40c
    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@40f
    move-result-object v5

    #@410
    check-cast v5, Ljava/lang/String;

    #@412
    move-object/from16 v0, p2

    #@414
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@417
    .line 1654
    add-int/lit8 v14, v14, 0x1

    #@419
    goto :goto_8

    #@41a
    .line 1659
    .end local v14    # "i":I
    :cond_1f
    move-object/from16 v0, p0

    #@41c
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@41e
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@421
    move-result v18

    #@422
    .line 1660
    if-lez v18, :cond_20

    #@424
    .line 1661
    const-string/jumbo v5, "  Whitelist system apps:"

    #@427
    move-object/from16 v0, p2

    #@429
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@42c
    .line 1662
    const/4 v14, 0x0

    #@42d
    .restart local v14    # "i":I
    :goto_9
    move/from16 v0, v18

    #@42f
    if-ge v14, v0, :cond_20

    #@431
    .line 1663
    const-string/jumbo v5, "    "

    #@434
    move-object/from16 v0, p2

    #@436
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@439
    .line 1664
    move-object/from16 v0, p0

    #@43b
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@43d
    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@440
    move-result-object v5

    #@441
    check-cast v5, Ljava/lang/String;

    #@443
    move-object/from16 v0, p2

    #@445
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@448
    .line 1662
    add-int/lit8 v14, v14, 0x1

    #@44a
    goto :goto_9

    #@44b
    .line 1667
    .end local v14    # "i":I
    :cond_20
    move-object/from16 v0, p0

    #@44d
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@44f
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@452
    move-result v18

    #@453
    .line 1668
    if-lez v18, :cond_21

    #@455
    .line 1669
    const-string/jumbo v5, "  Whitelist user apps:"

    #@458
    move-object/from16 v0, p2

    #@45a
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@45d
    .line 1670
    const/4 v14, 0x0

    #@45e
    .restart local v14    # "i":I
    :goto_a
    move/from16 v0, v18

    #@460
    if-ge v14, v0, :cond_21

    #@462
    .line 1671
    const-string/jumbo v5, "    "

    #@465
    move-object/from16 v0, p2

    #@467
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46a
    .line 1672
    move-object/from16 v0, p0

    #@46c
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@46e
    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@471
    move-result-object v5

    #@472
    check-cast v5, Ljava/lang/String;

    #@474
    move-object/from16 v0, p2

    #@476
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@479
    .line 1670
    add-int/lit8 v14, v14, 0x1

    #@47b
    goto :goto_a

    #@47c
    .line 1675
    .end local v14    # "i":I
    :cond_21
    move-object/from16 v0, p0

    #@47e
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@480
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    #@483
    move-result v18

    #@484
    .line 1676
    if-lez v18, :cond_22

    #@486
    .line 1677
    const-string/jumbo v5, "  Whitelist (except idle) all app ids:"

    #@489
    move-object/from16 v0, p2

    #@48b
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@48e
    .line 1678
    const/4 v14, 0x0

    #@48f
    .restart local v14    # "i":I
    :goto_b
    move/from16 v0, v18

    #@491
    if-ge v14, v0, :cond_22

    #@493
    .line 1679
    const-string/jumbo v5, "    "

    #@496
    move-object/from16 v0, p2

    #@498
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49b
    .line 1680
    move-object/from16 v0, p0

    #@49d
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@49f
    invoke-virtual {v5, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@4a2
    move-result v5

    #@4a3
    move-object/from16 v0, p2

    #@4a5
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@4a8
    .line 1681
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@4ab
    .line 1678
    add-int/lit8 v14, v14, 0x1

    #@4ad
    goto :goto_b

    #@4ae
    .line 1684
    .end local v14    # "i":I
    :cond_22
    move-object/from16 v0, p0

    #@4b0
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    #@4b2
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    #@4b5
    move-result v18

    #@4b6
    .line 1685
    if-lez v18, :cond_23

    #@4b8
    .line 1686
    const-string/jumbo v5, "  Whitelist all app ids:"

    #@4bb
    move-object/from16 v0, p2

    #@4bd
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4c0
    .line 1687
    const/4 v14, 0x0

    #@4c1
    .restart local v14    # "i":I
    :goto_c
    move/from16 v0, v18

    #@4c3
    if-ge v14, v0, :cond_23

    #@4c5
    .line 1688
    const-string/jumbo v5, "    "

    #@4c8
    move-object/from16 v0, p2

    #@4ca
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4cd
    .line 1689
    move-object/from16 v0, p0

    #@4cf
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    #@4d1
    invoke-virtual {v5, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@4d4
    move-result v5

    #@4d5
    move-object/from16 v0, p2

    #@4d7
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@4da
    .line 1690
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@4dd
    .line 1687
    add-int/lit8 v14, v14, 0x1

    #@4df
    goto :goto_c

    #@4e0
    .line 1693
    .end local v14    # "i":I
    :cond_23
    move-object/from16 v0, p0

    #@4e2
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    #@4e4
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@4e7
    move-result v18

    #@4e8
    .line 1694
    if-lez v18, :cond_24

    #@4ea
    .line 1695
    const-string/jumbo v5, "  Temp whitelist schedule:"

    #@4ed
    move-object/from16 v0, p2

    #@4ef
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4f2
    .line 1696
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@4f5
    move-result-wide v20

    #@4f6
    .line 1697
    .local v20, "timeNow":J
    const/4 v14, 0x0

    #@4f7
    .restart local v14    # "i":I
    :goto_d
    move/from16 v0, v18

    #@4f9
    if-ge v14, v0, :cond_24

    #@4fb
    .line 1698
    const-string/jumbo v5, "    UID="

    #@4fe
    move-object/from16 v0, p2

    #@500
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@503
    .line 1699
    move-object/from16 v0, p0

    #@505
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    #@507
    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->keyAt(I)I

    #@50a
    move-result v5

    #@50b
    move-object/from16 v0, p2

    #@50d
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@510
    .line 1700
    const-string/jumbo v5, ": "

    #@513
    move-object/from16 v0, p2

    #@515
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@518
    .line 1701
    move-object/from16 v0, p0

    #@51a
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    #@51c
    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@51f
    move-result-object v13

    #@520
    check-cast v13, Landroid/util/Pair;

    #@522
    .line 1702
    .local v13, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    iget-object v5, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@524
    check-cast v5, Landroid/util/MutableLong;

    #@526
    iget-wide v8, v5, Landroid/util/MutableLong;->value:J

    #@528
    move-wide/from16 v0, v20

    #@52a
    move-object/from16 v2, p2

    #@52c
    invoke-static {v8, v9, v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@52f
    .line 1703
    const-string/jumbo v5, " - "

    #@532
    move-object/from16 v0, p2

    #@534
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@537
    .line 1704
    iget-object v5, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@539
    check-cast v5, Ljava/lang/String;

    #@53b
    move-object/from16 v0, p2

    #@53d
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@540
    .line 1697
    add-int/lit8 v14, v14, 0x1

    #@542
    goto :goto_d

    #@543
    .line 1707
    .end local v13    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    .end local v14    # "i":I
    .end local v20    # "timeNow":J
    :cond_24
    move-object/from16 v0, p0

    #@545
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    #@547
    if-eqz v5, :cond_25

    #@549
    move-object/from16 v0, p0

    #@54b
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    #@54d
    array-length v0, v5

    #@54e
    move/from16 v18, v0

    #@550
    .line 1708
    :goto_e
    if-lez v18, :cond_26

    #@552
    .line 1709
    const-string/jumbo v5, "  Temp whitelist app ids:"

    #@555
    move-object/from16 v0, p2

    #@557
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@55a
    .line 1710
    const/4 v14, 0x0

    #@55b
    .restart local v14    # "i":I
    :goto_f
    move/from16 v0, v18

    #@55d
    if-ge v14, v0, :cond_26

    #@55f
    .line 1711
    const-string/jumbo v5, "    "

    #@562
    move-object/from16 v0, p2

    #@564
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@567
    .line 1712
    move-object/from16 v0, p0

    #@569
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    #@56b
    aget v5, v5, v14

    #@56d
    move-object/from16 v0, p2

    #@56f
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@572
    .line 1713
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@575
    .line 1710
    add-int/lit8 v14, v14, 0x1

    #@577
    goto :goto_f

    #@578
    .line 1707
    .end local v14    # "i":I
    :cond_25
    const/16 v18, 0x0

    #@57a
    goto :goto_e

    #@57b
    .line 1717
    :cond_26
    const-string/jumbo v5, "  mEnabled="

    #@57e
    move-object/from16 v0, p2

    #@580
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@583
    move-object/from16 v0, p0

    #@585
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mEnabled:Z

    #@587
    move-object/from16 v0, p2

    #@589
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@58c
    .line 1718
    const-string/jumbo v5, "  mForceIdle="

    #@58f
    move-object/from16 v0, p2

    #@591
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@594
    move-object/from16 v0, p0

    #@596
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    #@598
    move-object/from16 v0, p2

    #@59a
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@59d
    .line 1719
    const-string/jumbo v5, "  mSigMotionSensor="

    #@5a0
    move-object/from16 v0, p2

    #@5a2
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a5
    move-object/from16 v0, p0

    #@5a7
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mSigMotionSensor:Landroid/hardware/Sensor;

    #@5a9
    move-object/from16 v0, p2

    #@5ab
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@5ae
    .line 1720
    const-string/jumbo v5, "  mCurDisplay="

    #@5b1
    move-object/from16 v0, p2

    #@5b3
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b6
    move-object/from16 v0, p0

    #@5b8
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mCurDisplay:Landroid/view/Display;

    #@5ba
    move-object/from16 v0, p2

    #@5bc
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@5bf
    .line 1721
    const-string/jumbo v5, "  mScreenOn="

    #@5c2
    move-object/from16 v0, p2

    #@5c4
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c7
    move-object/from16 v0, p0

    #@5c9
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    #@5cb
    move-object/from16 v0, p2

    #@5cd
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@5d0
    .line 1722
    const-string/jumbo v5, "  mCharging="

    #@5d3
    move-object/from16 v0, p2

    #@5d5
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d8
    move-object/from16 v0, p0

    #@5da
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    #@5dc
    move-object/from16 v0, p2

    #@5de
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@5e1
    .line 1723
    const-string/jumbo v5, "  mSigMotionActive="

    #@5e4
    move-object/from16 v0, p2

    #@5e6
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e9
    move-object/from16 v0, p0

    #@5eb
    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mSigMotionActive:Z

    #@5ed
    move-object/from16 v0, p2

    #@5ef
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@5f2
    .line 1724
    const-string/jumbo v5, "  mState="

    #@5f5
    move-object/from16 v0, p2

    #@5f7
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5fa
    move-object/from16 v0, p0

    #@5fc
    iget v5, v0, Lcom/android/server/DeviceIdleController;->mState:I

    #@5fe
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    #@601
    move-result-object v5

    #@602
    move-object/from16 v0, p2

    #@604
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@607
    .line 1725
    const-string/jumbo v5, "  mInactiveTimeout="

    #@60a
    move-object/from16 v0, p2

    #@60c
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60f
    move-object/from16 v0, p0

    #@611
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    #@613
    move-object/from16 v0, p2

    #@615
    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@618
    .line 1726
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@61b
    .line 1727
    move-object/from16 v0, p0

    #@61d
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    #@61f
    const-wide/16 v24, 0x0

    #@621
    cmp-long v5, v8, v24

    #@623
    if-eqz v5, :cond_27

    #@625
    .line 1728
    const-string/jumbo v5, "  mNextAlarmTime="

    #@628
    move-object/from16 v0, p2

    #@62a
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@62d
    .line 1729
    move-object/from16 v0, p0

    #@62f
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    #@631
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@634
    move-result-wide v24

    #@635
    move-wide/from16 v0, v24

    #@637
    move-object/from16 v2, p2

    #@639
    invoke-static {v8, v9, v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@63c
    .line 1730
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@63f
    .line 1732
    :cond_27
    move-object/from16 v0, p0

    #@641
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    #@643
    const-wide/16 v24, 0x0

    #@645
    cmp-long v5, v8, v24

    #@647
    if-eqz v5, :cond_28

    #@649
    .line 1733
    const-string/jumbo v5, "  mNextIdlePendingDelay="

    #@64c
    move-object/from16 v0, p2

    #@64e
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@651
    .line 1734
    move-object/from16 v0, p0

    #@653
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    #@655
    move-object/from16 v0, p2

    #@657
    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@65a
    .line 1735
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@65d
    .line 1737
    :cond_28
    move-object/from16 v0, p0

    #@65f
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    #@661
    const-wide/16 v24, 0x0

    #@663
    cmp-long v5, v8, v24

    #@665
    if-eqz v5, :cond_29

    #@667
    .line 1738
    const-string/jumbo v5, "  mNextIdleDelay="

    #@66a
    move-object/from16 v0, p2

    #@66c
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66f
    .line 1739
    move-object/from16 v0, p0

    #@671
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    #@673
    move-object/from16 v0, p2

    #@675
    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@678
    .line 1740
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    #@67b
    :cond_29
    monitor-exit p0

    #@67c
    .line 1469
    return-void

    #@67d
    .line 1648
    .end local v18    # "size":I
    :catchall_c
    move-exception v5

    #@67e
    monitor-exit p0

    #@67f
    throw v5
.end method

.method enterInactiveStateLocked()V
    .locals 2

    #@0
    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@2
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    #@4
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    #@6
    .line 1122
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    #@9
    .line 1120
    return-void
.end method

.method exitForceIdleLocked()V
    .locals 2

    #@0
    .prologue
    .line 1126
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 1127
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    #@7
    .line 1128
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    #@9
    if-nez v0, :cond_0

    #@b
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 1129
    :cond_0
    const-string/jumbo v0, "exit-force-idle"

    #@12
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@15
    move-result v1

    #@16
    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    #@19
    .line 1125
    :cond_1
    return-void
.end method

.method public exitIdleInternal(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1042
    monitor-enter p0

    #@1
    .line 1043
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
    .line 1041
    return-void

    #@a
    .line 1042
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public getAppIdTempWhitelistInternal()[I
    .locals 1

    #@0
    .prologue
    .line 929
    monitor-enter p0

    #@1
    .line 930
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 929
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
    .line 917
    monitor-enter p0

    #@1
    .line 918
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 917
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
    .line 923
    monitor-enter p0

    #@1
    .line 924
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 923
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
    .line 869
    monitor-enter p0

    #@1
    .line 870
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
    .line 871
    .local v3, "size":I
    new-array v0, v3, [Ljava/lang/String;

    #@11
    .line 872
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    #@12
    .line 873
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
    .line 874
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
    .line 875
    add-int/lit8 v1, v1, 0x1

    #@27
    .line 873
    add-int/lit8 v2, v2, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 877
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
    .line 878
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
    .line 879
    add-int/lit8 v1, v1, 0x1

    #@3f
    .line 877
    add-int/lit8 v2, v2, 0x1

    #@41
    goto :goto_1

    #@42
    :cond_1
    monitor-exit p0

    #@43
    .line 881
    return-object v0

    #@44
    .line 869
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
    .line 886
    monitor-enter p0

    #@1
    .line 887
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
    .line 888
    .local v3, "size":I
    new-array v0, v3, [Ljava/lang/String;

    #@11
    .line 889
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    #@12
    .line 890
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
    .line 891
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
    .line 892
    add-int/lit8 v1, v1, 0x1

    #@27
    .line 890
    add-int/lit8 v2, v2, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 894
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
    .line 895
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
    .line 896
    add-int/lit8 v1, v1, 0x1

    #@3f
    .line 894
    add-int/lit8 v2, v2, 0x1

    #@41
    goto :goto_1

    #@42
    :cond_1
    monitor-exit p0

    #@43
    .line 898
    return-object v0

    #@44
    .line 886
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

.method public getSystemPowerWhitelistExceptIdleInternal()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 847
    monitor-enter p0

    #@1
    .line 848
    :try_start_0
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v2

    #@7
    .line 849
    .local v2, "size":I
    new-array v0, v2, [Ljava/lang/String;

    #@9
    .line 850
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@c
    .line 851
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
    .line 850
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    :cond_0
    monitor-exit p0

    #@1a
    .line 853
    return-object v0

    #@1b
    .line 847
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
    .line 858
    monitor-enter p0

    #@1
    .line 859
    :try_start_0
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v2

    #@7
    .line 860
    .local v2, "size":I
    new-array v0, v2, [Ljava/lang/String;

    #@9
    .line 861
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@c
    .line 862
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
    .line 861
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    :cond_0
    monitor-exit p0

    #@1a
    .line 864
    return-object v0

    #@1b
    .line 858
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

.method handleWriteConfigFile()V
    .locals 7

    #@0
    .prologue
    .line 1405
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 1408
    .local v1, "memStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 1409
    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    #@8
    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@b
    .line 1410
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@d
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@14
    .line 1411
    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@18
    .line 1416
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    #@1a
    monitor-enter v5

    #@1b
    .line 1417
    const/4 v3, 0x0

    #@1c
    .line 1419
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_3
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    #@1e
    invoke-virtual {v4}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@21
    move-result-object v3

    #@22
    .line 1420
    .local v3, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    #@25
    .line 1421
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    #@28
    .line 1422
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@2b
    .line 1423
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    #@2e
    .line 1424
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
    .line 1404
    return-void

    #@35
    .line 1408
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
    .line 1413
    :catch_0
    move-exception v0

    #@39
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@3a
    .line 1425
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@3b
    .line 1426
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v4, "DeviceIdleController"

    #@3e
    const-string/jumbo v6, "Error writing config file"

    #@41
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@44
    .line 1427
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    #@46
    invoke-virtual {v4, v3}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@49
    goto :goto_1

    #@4a
    .line 1416
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    #@4b
    monitor-exit v5

    #@4c
    throw v4
.end method

.method public isPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 910
    monitor-enter p0

    #@1
    .line 911
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 912
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
    .line 911
    return v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 910
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
    .line 903
    monitor-enter p0

    #@1
    .line 904
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 905
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
    .line 904
    return v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 903
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public onAnyMotionResult(I)V
    .locals 2
    .param p1, "result"    # I

    #@0
    .prologue
    .line 518
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 519
    if-nez p1, :cond_1

    #@7
    .line 521
    monitor-enter p0

    #@8
    .line 522
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    :goto_0
    monitor-exit p0

    #@c
    .line 516
    :cond_0
    return-void

    #@d
    .line 521
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0

    #@10
    .line 524
    :cond_1
    const/4 v0, 0x1

    #@11
    if-ne p1, v0, :cond_0

    #@13
    .line 526
    monitor-enter p0

    #@14
    .line 527
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@16
    const-string/jumbo v1, "sense_moved"

    #@19
    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    #@1c
    .line 528
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->enterInactiveStateLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1f
    goto :goto_0

    #@20
    .line 526
    :catchall_1
    move-exception v0

    #@21
    monitor-exit p0

    #@22
    throw v0
.end method

.method public onBootPhase(I)V
    .locals 9
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 775
    const/16 v0, 0x1f4

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 776
    monitor-enter p0

    #@5
    .line 777
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "alarm"

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/app/AlarmManager;

    #@12
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    #@14
    .line 778
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@1a
    .line 779
    const-class v0, Landroid/os/PowerManagerInternal;

    #@1c
    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/os/PowerManagerInternal;

    #@22
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    #@24
    .line 781
    const-string/jumbo v0, "netpolicy"

    #@27
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@2a
    move-result-object v0

    #@2b
    .line 780
    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    #@31
    .line 782
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@34
    move-result-object v0

    #@35
    .line 783
    const-string/jumbo v1, "display"

    #@38
    .line 782
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Landroid/hardware/display/DisplayManager;

    #@3e
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@40
    .line 784
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@43
    move-result-object v0

    #@44
    const-string/jumbo v1, "sensor"

    #@47
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@4a
    move-result-object v0

    #@4b
    check-cast v0, Landroid/hardware/SensorManager;

    #@4d
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    #@4f
    .line 785
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    #@51
    const/16 v1, 0x11

    #@53
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    #@56
    move-result-object v0

    #@57
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mSigMotionSensor:Landroid/hardware/Sensor;

    #@59
    .line 786
    new-instance v0, Lcom/android/server/AnyMotionDetector;

    #@5b
    .line 787
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    #@5d
    .line 788
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@60
    move-result-object v2

    #@61
    const-string/jumbo v3, "power"

    #@64
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@67
    move-result-object v2

    #@68
    check-cast v2, Landroid/os/PowerManager;

    #@6a
    .line 789
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@6c
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    #@6e
    move-object v5, p0

    #@6f
    .line 786
    invoke-direct/range {v0 .. v5}, Lcom/android/server/AnyMotionDetector;-><init>(Landroid/app/AlarmManager;Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;)V

    #@72
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    #@74
    .line 791
    new-instance v0, Landroid/content/Intent;

    #@76
    const-string/jumbo v1, "com.android.server.device_idle.STEP_IDLE_STATE"

    #@79
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7c
    .line 792
    const-string/jumbo v1, "android"

    #@7f
    .line 791
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@82
    move-result-object v0

    #@83
    .line 793
    const/high16 v1, 0x40000000    # 2.0f

    #@85
    .line 791
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@88
    move-result-object v7

    #@89
    .line 794
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@8c
    move-result-object v0

    #@8d
    const/4 v1, 0x0

    #@8e
    const/4 v2, 0x0

    #@8f
    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@92
    move-result-object v0

    #@93
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmIntent:Landroid/app/PendingIntent;

    #@95
    .line 796
    new-instance v0, Landroid/content/Intent;

    #@97
    const-string/jumbo v1, "com.android.server.device_idle.STEP_IDLE_STATE"

    #@9a
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@9d
    .line 797
    const-string/jumbo v1, "android"

    #@a0
    .line 796
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@a3
    move-result-object v0

    #@a4
    .line 798
    const/high16 v1, 0x40000000    # 2.0f

    #@a6
    .line 796
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@a9
    move-result-object v8

    #@aa
    .line 799
    .local v8, "intentSensing":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@ad
    move-result-object v0

    #@ae
    const/4 v1, 0x0

    #@af
    const/4 v2, 0x0

    #@b0
    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@b3
    move-result-object v0

    #@b4
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensingAlarmIntent:Landroid/app/PendingIntent;

    #@b6
    .line 801
    new-instance v0, Landroid/content/Intent;

    #@b8
    const-string/jumbo v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    #@bb
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@be
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    #@c0
    .line 802
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    #@c2
    const/high16 v1, 0x50000000

    #@c4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@c7
    .line 805
    new-instance v6, Landroid/content/IntentFilter;

    #@c9
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    #@cc
    .line 806
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    #@cf
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@d2
    .line 807
    const-string/jumbo v0, "com.android.server.device_idle.STEP_IDLE_STATE"

    #@d5
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@d8
    .line 808
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@db
    move-result-object v0

    #@dc
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    #@de
    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@e1
    .line 810
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    #@e3
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    #@e5
    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    #@e8
    .line 812
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@ea
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@ec
    const/4 v2, 0x0

    #@ed
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    #@f0
    .line 813
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateDisplayLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f3
    monitor-exit p0

    #@f4
    .line 774
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "intentSensing":Landroid/content/Intent;
    :cond_0
    return-void

    #@f5
    .line 776
    :catchall_0
    move-exception v0

    #@f6
    monitor-exit p0

    #@f7
    throw v0
.end method

.method public onStart()V
    .locals 12

    #@0
    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@3
    move-result-object v9

    #@4
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v7

    #@8
    .line 721
    .local v7, "pm":Landroid/content/pm/PackageManager;
    monitor-enter p0

    #@9
    .line 722
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@c
    move-result-object v9

    #@d
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@10
    move-result-object v9

    #@11
    .line 723
    const v10, 0x1120015

    #@14
    .line 722
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@17
    move-result v9

    #@18
    iput-boolean v9, p0, Lcom/android/server/DeviceIdleController;->mEnabled:Z

    #@1a
    .line 724
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    #@1d
    move-result-object v8

    #@1e
    .line 725
    .local v8, "sysConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v8}, Lcom/android/server/SystemConfig;->getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;

    #@21
    move-result-object v2

    #@22
    .line 726
    .local v2, "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@23
    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@26
    move-result v9

    #@27
    if-ge v5, v9, :cond_1

    #@29
    .line 727
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@2c
    move-result-object v6

    #@2d
    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 729
    .local v6, "pkg":Ljava/lang/String;
    const/4 v9, 0x0

    #@30
    :try_start_1
    invoke-virtual {v7, v6, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@33
    move-result-object v0

    #@34
    .line 730
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@36
    and-int/lit8 v9, v9, 0x1

    #@38
    if-eqz v9, :cond_0

    #@3a
    .line 731
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@3c
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    #@3f
    move-result v3

    #@40
    .line 732
    .local v3, "appid":I
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@42
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@47
    move-result-object v11

    #@48
    invoke-virtual {v9, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    .line 733
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    #@4d
    const/4 v10, 0x1

    #@4e
    invoke-virtual {v9, v3, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    .line 726
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appid":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@53
    goto :goto_0

    #@54
    .line 738
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v8}, Lcom/android/server/SystemConfig;->getAllowInPowerSave()Landroid/util/ArraySet;

    #@57
    move-result-object v1

    #@58
    .line 739
    .local v1, "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@59
    :goto_2
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    #@5c
    move-result v9

    #@5d
    if-ge v5, v9, :cond_3

    #@5f
    .line 740
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@62
    move-result-object v6

    #@63
    check-cast v6, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@65
    .line 742
    .restart local v6    # "pkg":Ljava/lang/String;
    const/4 v9, 0x0

    #@66
    :try_start_3
    invoke-virtual {v7, v6, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@69
    move-result-object v0

    #@6a
    .line 743
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@6c
    and-int/lit8 v9, v9, 0x1

    #@6e
    if-eqz v9, :cond_2

    #@70
    .line 744
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@72
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    #@75
    move-result v3

    #@76
    .line 747
    .restart local v3    # "appid":I
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    #@78
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@7a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7d
    move-result-object v11

    #@7e
    invoke-virtual {v9, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@81
    .line 748
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    #@83
    const/4 v10, 0x1

    #@84
    invoke-virtual {v9, v3, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@87
    .line 749
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    #@89
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@8b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8e
    move-result-object v11

    #@8f
    invoke-virtual {v9, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@92
    .line 750
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    #@94
    const/4 v10, 0x1

    #@95
    invoke-virtual {v9, v3, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@98
    .line 739
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appid":I
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    #@9a
    goto :goto_2

    #@9b
    .line 756
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_3
    :try_start_4
    new-instance v9, Lcom/android/server/DeviceIdleController$Constants;

    #@9d
    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@9f
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@a2
    move-result-object v11

    #@a3
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a6
    move-result-object v11

    #@a7
    invoke-direct {v9, p0, v10, v11}, Lcom/android/server/DeviceIdleController$Constants;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    #@aa
    iput-object v9, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@ac
    .line 758
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked()V

    #@af
    .line 759
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    #@b2
    .line 761
    const/4 v9, 0x1

    #@b3
    iput-boolean v9, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    #@b5
    .line 764
    const/4 v9, 0x1

    #@b6
    iput-boolean v9, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    #@b8
    .line 765
    const/4 v9, 0x0

    #@b9
    iput v9, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@bb
    .line 766
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@bd
    iget-wide v10, v9, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    #@bf
    iput-wide v10, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@c1
    monitor-exit p0

    #@c2
    .line 769
    const-string/jumbo v9, "deviceidle"

    #@c5
    new-instance v10, Lcom/android/server/DeviceIdleController$BinderService;

    #@c7
    const/4 v11, 0x0

    #@c8
    invoke-direct {v10, p0, v11}, Lcom/android/server/DeviceIdleController$BinderService;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$BinderService;)V

    #@cb
    invoke-virtual {p0, v9, v10}, Lcom/android/server/DeviceIdleController;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@ce
    .line 770
    const-class v9, Lcom/android/server/DeviceIdleController$LocalService;

    #@d0
    new-instance v10, Lcom/android/server/DeviceIdleController$LocalService;

    #@d2
    invoke-direct {v10, p0}, Lcom/android/server/DeviceIdleController$LocalService;-><init>(Lcom/android/server/DeviceIdleController;)V

    #@d5
    invoke-virtual {p0, v9, v10}, Lcom/android/server/DeviceIdleController;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@d8
    .line 718
    return-void

    #@d9
    .line 721
    .end local v1    # "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "i":I
    .end local v8    # "sysConfig":Lcom/android/server/SystemConfig;
    :catchall_0
    move-exception v9

    #@da
    monitor-exit p0

    #@db
    throw v9

    #@dc
    .line 752
    .restart local v1    # "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v2    # "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "i":I
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v8    # "sysConfig":Lcom/android/server/SystemConfig;
    :catch_0
    move-exception v4

    #@dd
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_3

    #@de
    .line 735
    .end local v1    # "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    #@df
    .restart local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_1
.end method

.method readConfigFileLocked()V
    .locals 6

    #@0
    .prologue
    .line 1324
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    #@5
    .line 1327
    :try_start_0
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    #@7
    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v4

    #@b
    .line 1332
    .local v4, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@e
    move-result-object v3

    #@f
    .line 1333
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@11
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@18
    .line 1334
    invoke-direct {p0, v3}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 1338
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@1e
    .line 1322
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-void

    #@1f
    .line 1328
    .end local v4    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    #@20
    .line 1329
    .local v0, "e":Ljava/io/FileNotFoundException;
    return-void

    #@21
    .line 1339
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    #@22
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    #@23
    .line 1335
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v2

    #@24
    .line 1338
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    #@27
    goto :goto_0

    #@28
    .line 1339
    :catch_3
    move-exception v1

    #@29
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    #@2a
    .line 1336
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v5

    #@2b
    .line 1338
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    #@2e
    .line 1336
    :goto_1
    throw v5

    #@2f
    .line 1339
    :catch_4
    move-exception v1

    #@30
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 835
    monitor-enter p0

    #@1
    .line 836
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 837
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    #@c
    .line 838
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    #@f
    .line 839
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 840
    const/4 v0, 0x1

    #@13
    monitor-exit p0

    #@14
    return v0

    #@15
    :cond_0
    monitor-exit p0

    #@16
    .line 843
    const/4 v0, 0x0

    #@17
    return v0

    #@18
    .line 835
    :catchall_0
    move-exception v0

    #@19
    monitor-exit p0

    #@1a
    throw v0
.end method

.method scheduleAlarmLocked(JZ)V
    .locals 5
    .param p1, "delay"    # J
    .param p3, "idleUntil"    # Z

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    .line 1238
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSigMotionSensor:Landroid/hardware/Sensor;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1243
    return-void

    #@6
    .line 1245
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@9
    move-result-wide v0

    #@a
    add-long/2addr v0, p1

    #@b
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    #@d
    .line 1246
    if-eqz p3, :cond_1

    #@f
    .line 1247
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    #@11
    .line 1248
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    #@13
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mAlarmIntent:Landroid/app/PendingIntent;

    #@15
    .line 1247
    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setIdleUntil(IJLandroid/app/PendingIntent;)V

    #@18
    .line 1236
    :goto_0
    return-void

    #@19
    .line 1250
    :cond_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    #@1b
    .line 1251
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    #@1d
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mAlarmIntent:Landroid/app/PendingIntent;

    #@1f
    .line 1250
    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@22
    goto :goto_0
.end method

.method scheduleReportActiveLocked(Ljava/lang/String;I)V
    .locals 4
    .param p1, "activeReason"    # Ljava/lang/String;
    .param p2, "activeUid"    # I

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    .line 1083
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@3
    .line 1084
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@5
    if-ne v1, v3, :cond_0

    #@7
    const/4 v1, 0x1

    #@8
    .line 1083
    :goto_0
    invoke-virtual {v2, v3, p2, v1, p1}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    .line 1085
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@e
    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    #@11
    .line 1082
    return-void

    #@12
    .line 1084
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    #@13
    goto :goto_0
.end method

.method scheduleSensingAlarmLocked(J)V
    .locals 5
    .param p1, "delay"    # J

    #@0
    .prologue
    .line 1257
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    add-long/2addr v0, p1

    #@5
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    #@7
    .line 1258
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    #@9
    .line 1259
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    #@b
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensingAlarmIntent:Landroid/app/PendingIntent;

    #@d
    .line 1258
    const/4 v4, 0x2

    #@e
    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@11
    .line 1255
    return-void
.end method

.method public setNetworkPolicyTempWhitelistCallbackInternal(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1001
    monitor-enter p0

    #@1
    .line 1002
    :try_start_0
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 1000
    return-void

    #@5
    .line 1001
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method significantMotionLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1195
    iput-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mSigMotionActive:Z

    #@3
    .line 1199
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1200
    const-string/jumbo v0, "motion"

    #@a
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@d
    move-result v1

    #@e
    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleReportActiveLocked(Ljava/lang/String;I)V

    #@11
    .line 1201
    iput v2, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@13
    .line 1202
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@15
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    #@17
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    #@19
    .line 1203
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@1b
    const-string/jumbo v1, "motion"

    #@1e
    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    #@21
    .line 1204
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    #@24
    .line 1192
    :cond_0
    return-void
.end method

.method startMonitoringSignificantMotion()V
    .locals 3

    #@0
    .prologue
    .line 1210
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSigMotionSensor:Landroid/hardware/Sensor;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mSigMotionActive:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 1208
    :cond_0
    :goto_0
    return-void

    #@9
    .line 1211
    :cond_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    #@b
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSigMotionListener:Landroid/hardware/TriggerEventListener;

    #@d
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mSigMotionSensor:Landroid/hardware/Sensor;

    #@f
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    #@12
    .line 1212
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mSigMotionActive:Z

    #@15
    goto :goto_0
.end method

.method stepIdleStateLocked()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v7, 0x2

    #@2
    const/4 v6, 0x0

    #@3
    .line 1136
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleStep()V

    #@6
    .line 1138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@9
    move-result-wide v0

    #@a
    .line 1139
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@c
    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    #@e
    add-long/2addr v2, v0

    #@f
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    #@11
    invoke-virtual {v4}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    #@14
    move-result-wide v4

    #@15
    cmp-long v2, v2, v4

    #@17
    if-lez v2, :cond_1

    #@19
    .line 1141
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 1142
    const-string/jumbo v2, "alarm"

    #@20
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@23
    move-result v3

    #@24
    invoke-virtual {p0, v2, v3}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    #@27
    .line 1144
    :cond_0
    return-void

    #@28
    .line 1147
    :cond_1
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@2a
    packed-switch v2, :pswitch_data_0

    #@2d
    .line 1134
    :goto_0
    return-void

    #@2e
    .line 1151
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->startMonitoringSignificantMotion()V

    #@31
    .line 1152
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@33
    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    #@35
    invoke-virtual {p0, v2, v3, v6}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    #@38
    .line 1154
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@3a
    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    #@3c
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    #@3e
    .line 1155
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@40
    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    #@42
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    #@44
    .line 1156
    iput v7, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@46
    .line 1158
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@48
    const-string/jumbo v3, "step"

    #@4b
    invoke-static {v2, v3}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    #@4e
    goto :goto_0

    #@4f
    .line 1161
    :pswitch_1
    iput v8, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@51
    .line 1163
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@53
    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    #@55
    invoke-virtual {p0, v2, v3}, Lcom/android/server/DeviceIdleController;->scheduleSensingAlarmLocked(J)V

    #@58
    .line 1164
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    #@5a
    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector;->checkForAnyMotion()V

    #@5d
    goto :goto_0

    #@5e
    .line 1167
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingAlarmLocked()V

    #@61
    .line 1169
    :pswitch_3
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    #@63
    const/4 v4, 0x1

    #@64
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    #@67
    .line 1172
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    #@69
    long-to-float v2, v2

    #@6a
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@6c
    iget v3, v3, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    #@6e
    mul-float/2addr v2, v3

    #@6f
    float-to-long v2, v2

    #@70
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    #@72
    .line 1174
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    #@74
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@76
    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    #@78
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@7b
    move-result-wide v2

    #@7c
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    #@7e
    .line 1175
    const/4 v2, 0x4

    #@7f
    iput v2, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@81
    .line 1176
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@83
    invoke-virtual {v2, v7}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    #@86
    goto :goto_0

    #@87
    .line 1180
    :pswitch_4
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    #@89
    invoke-virtual {p0, v2, v3, v6}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    #@8c
    .line 1183
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@8e
    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    #@90
    .line 1184
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    #@92
    long-to-float v4, v4

    #@93
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    #@95
    iget v5, v5, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    #@97
    mul-float/2addr v4, v5

    #@98
    float-to-long v4, v4

    #@99
    .line 1183
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@9c
    move-result-wide v2

    #@9d
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    #@9f
    .line 1185
    const/4 v2, 0x5

    #@a0
    iput v2, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@a2
    .line 1186
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mState:I

    #@a4
    const-string/jumbo v3, "step"

    #@a7
    invoke-static {v2, v3}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    #@aa
    .line 1187
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@ac
    invoke-virtual {v2, v8}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    #@af
    goto/16 :goto_0

    #@b1
    .line 1147
    nop

    #@b2
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method stopMonitoringSignificantMotion()V
    .locals 3

    #@0
    .prologue
    .line 1218
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mSigMotionActive:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1219
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    #@6
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSigMotionListener:Landroid/hardware/TriggerEventListener;

    #@8
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mSigMotionSensor:Landroid/hardware/Sensor;

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    #@d
    .line 1220
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mSigMotionActive:Z

    #@10
    .line 1216
    :cond_0
    return-void
.end method

.method updateChargingLocked(Z)V
    .locals 2
    .param p1, "charging"    # Z

    #@0
    .prologue
    .line 1069
    if-nez p1, :cond_1

    #@2
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 1070
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    #@9
    .line 1071
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    #@b
    if-nez v0, :cond_0

    #@d
    .line 1072
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    #@10
    .line 1067
    :cond_0
    :goto_0
    return-void

    #@11
    .line 1074
    :cond_1
    if-eqz p1, :cond_0

    #@13
    .line 1075
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    #@15
    .line 1076
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    #@17
    if-nez v0, :cond_0

    #@19
    .line 1077
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

.method updateDisplayLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1048
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@4
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mCurDisplay:Landroid/view/Display;

    #@a
    .line 1052
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mCurDisplay:Landroid/view/Display;

    #@c
    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    #@f
    move-result v1

    #@10
    if-eq v1, v3, :cond_1

    #@12
    const/4 v0, 0x1

    #@13
    .line 1054
    .local v0, "screenOn":Z
    :goto_0
    if-nez v0, :cond_2

    #@15
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 1055
    iput-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    #@1b
    .line 1056
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    #@1d
    if-nez v1, :cond_0

    #@1f
    .line 1057
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    #@22
    .line 1047
    :cond_0
    :goto_1
    return-void

    #@23
    .line 1052
    .end local v0    # "screenOn":Z
    :cond_1
    const/4 v0, 0x0

    #@24
    .restart local v0    # "screenOn":Z
    goto :goto_0

    #@25
    .line 1059
    :cond_2
    if-eqz v0, :cond_0

    #@27
    .line 1060
    iput-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    #@29
    .line 1061
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    #@2b
    if-nez v1, :cond_0

    #@2d
    .line 1062
    const-string/jumbo v1, "screen"

    #@30
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@33
    move-result v2

    #@34
    invoke-virtual {p0, v1, v2}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    #@37
    goto :goto_1
.end method

.method writeConfigFileLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1400
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@3
    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->removeMessages(I)V

    #@6
    .line 1401
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    #@8
    const-wide/16 v2, 0x1388

    #@a
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    #@d
    .line 1399
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
    .line 1433
    const/4 v2, 0x1

    #@2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5
    move-result-object v2

    #@6
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@9
    .line 1434
    const-string/jumbo v2, "config"

    #@c
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f
    .line 1435
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
    .line 1436
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    #@1a
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Ljava/lang/String;

    #@20
    .line 1437
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "wl"

    #@23
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@26
    .line 1438
    const-string/jumbo v2, "n"

    #@29
    invoke-interface {p1, v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2c
    .line 1439
    const-string/jumbo v2, "wl"

    #@2f
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@32
    .line 1435
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 1441
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "config"

    #@38
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3b
    .line 1442
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@3e
    .line 1432
    return-void
.end method
