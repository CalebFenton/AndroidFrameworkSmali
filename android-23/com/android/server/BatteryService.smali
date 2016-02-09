.class public final Lcom/android/server/BatteryService;
.super Lcom/android/server/SystemService;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$Led;,
        Lcom/android/server/BatteryService$BatteryListener;,
        Lcom/android/server/BatteryService$BinderService;,
        Lcom/android/server/BatteryService$LocalService;,
        Lcom/android/server/BatteryService$1;
    }
.end annotation


# static fields
.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field private static final BATTERY_SCALE:I = 0x64

.field private static final DEBUG:Z = false

.field private static final DUMPSYS_ARGS:[Ljava/lang/String;

.field private static final DUMPSYS_DATA_PATH:Ljava/lang/String; = "/data/system/"

.field private static final DUMP_MAX_LENGTH:I = 0x6000

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBatteryLevelCritical:Z

.field private mBatteryLevelLow:Z

.field private mBatteryProps:Landroid/os/BatteryProperties;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mContext:Landroid/content/Context;

.field private mCriticalBatteryLevel:I

.field private mDischargeStartLevel:I

.field private mDischargeStartTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mInvalidCharger:I

.field private final mInvalidChargerObserver:Landroid/os/UEventObserver;

.field private mLastBatteryHealth:I

.field private mLastBatteryLevel:I

.field private mLastBatteryLevelCritical:Z

.field private mLastBatteryPresent:Z

.field private final mLastBatteryProps:Landroid/os/BatteryProperties;

.field private mLastBatteryStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVoltage:I

.field private mLastInvalidCharger:I

.field private mLastPlugType:I

.field private mLed:Lcom/android/server/BatteryService$Led;

.field private final mLock:Ljava/lang/Object;

.field private mLowBatteryCloseWarningLevel:I

.field private mLowBatteryWarningLevel:I

.field private mPlugType:I

.field private mSentLowBatteryBroadcast:Z

.field private mShutdownBatteryTemperature:I

.field private mUpdatesStopped:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/BatteryService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/BatteryService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/BatteryService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/BatteryService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/server/BatteryService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/BatteryService;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/BatteryService;I)Z
    .locals 1
    .param p1, "plugTypeSet"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/BatteryService;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/BatteryService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/BatteryService;Landroid/os/BatteryProperties;)V
    .locals 0
    .param p1, "props"    # Landroid/os/BatteryProperties;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->update(Landroid/os/BatteryProperties;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 89
    const-class v0, Lcom/android/server/BatteryService;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    #@8
    .line 100
    const/4 v0, 0x2

    #@9
    new-array v0, v0, [Ljava/lang/String;

    #@b
    const-string/jumbo v1, "--checkin"

    #@e
    const/4 v2, 0x0

    #@f
    aput-object v1, v0, v2

    #@11
    const-string/jumbo v1, "--unplugged"

    #@14
    const/4 v2, 0x1

    #@15
    aput-object v1, v0, v2

    #@17
    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    #@19
    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 111
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    #@a
    .line 114
    new-instance v0, Landroid/os/BatteryProperties;

    #@c
    invoke-direct {v0}, Landroid/os/BatteryProperties;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    #@11
    .line 132
    const/4 v0, -0x1

    #@12
    iput v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    #@14
    .line 143
    const/4 v0, 0x0

    #@15
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    #@17
    .line 702
    new-instance v0, Lcom/android/server/BatteryService$1;

    #@19
    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    #@1c
    iput-object v0, p0, Lcom/android/server/BatteryService;->mInvalidChargerObserver:Landroid/os/UEventObserver;

    #@1e
    .line 148
    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    #@20
    .line 149
    new-instance v0, Landroid/os/Handler;

    #@22
    const/4 v1, 0x1

    #@23
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Z)V

    #@26
    iput-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    #@28
    .line 150
    new-instance v1, Lcom/android/server/BatteryService$Led;

    #@2a
    const-class v0, Lcom/android/server/lights/LightsManager;

    #@2c
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Lcom/android/server/lights/LightsManager;

    #@32
    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    #@35
    iput-object v1, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    #@37
    .line 151
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@3d
    .line 153
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    #@3f
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@42
    move-result-object v0

    #@43
    .line 154
    const v1, 0x10e004d

    #@46
    .line 153
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@49
    move-result v0

    #@4a
    iput v0, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    #@4c
    .line 155
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    #@4e
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@51
    move-result-object v0

    #@52
    .line 156
    const v1, 0x10e004f

    #@55
    .line 155
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@58
    move-result v0

    #@59
    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@5b
    .line 157
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@5d
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    #@5f
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@62
    move-result-object v1

    #@63
    .line 158
    const v2, 0x10e0050

    #@66
    .line 157
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@69
    move-result v1

    #@6a
    add-int/2addr v0, v1

    #@6b
    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    #@6d
    .line 159
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    #@6f
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@72
    move-result-object v0

    #@73
    .line 160
    const v1, 0x10e004e

    #@76
    .line 159
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@79
    move-result v0

    #@7a
    iput v0, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    #@7c
    .line 163
    new-instance v0, Ljava/io/File;

    #@7e
    const-string/jumbo v1, "/sys/devices/virtual/switch/invalid_charger/state"

    #@81
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@84
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@87
    move-result v0

    #@88
    if-eqz v0, :cond_0

    #@8a
    .line 164
    iget-object v0, p0, Lcom/android/server/BatteryService;->mInvalidChargerObserver:Landroid/os/UEventObserver;

    #@8c
    .line 165
    const-string/jumbo v1, "DEVPATH=/devices/virtual/switch/invalid_charger"

    #@8f
    .line 164
    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    #@92
    .line 145
    :cond_0
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 612
    iget-object v8, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v8

    #@5
    .line 613
    if-eqz p2, :cond_0

    #@7
    :try_start_0
    array-length v9, p2

    #@8
    if-nez v9, :cond_3

    #@a
    .line 614
    :cond_0
    const-string/jumbo v6, "Current Battery Service state:"

    #@d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10
    .line 615
    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    #@12
    if-eqz v6, :cond_1

    #@14
    .line 616
    const-string/jumbo v6, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    #@17
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a
    .line 618
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v7, "  AC powered: "

    #@22
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v6

    #@26
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@28
    iget-boolean v7, v7, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    #@2a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v6

    #@2e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 619
    new-instance v6, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v7, "  USB powered: "

    #@3d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@43
    iget-boolean v7, v7, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    #@45
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@50
    .line 620
    new-instance v6, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v7, "  Wireless powered: "

    #@58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@5e
    iget-boolean v7, v7, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    #@60
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@63
    move-result-object v6

    #@64
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v6

    #@68
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6b
    .line 621
    new-instance v6, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v7, "  status: "

    #@73
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v6

    #@77
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@79
    iget v7, v7, Landroid/os/BatteryProperties;->batteryStatus:I

    #@7b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v6

    #@7f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v6

    #@83
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@86
    .line 622
    new-instance v6, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v7, "  health: "

    #@8e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v6

    #@92
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@94
    iget v7, v7, Landroid/os/BatteryProperties;->batteryHealth:I

    #@96
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@99
    move-result-object v6

    #@9a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v6

    #@9e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a1
    .line 623
    new-instance v6, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v7, "  present: "

    #@a9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v6

    #@ad
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@af
    iget-boolean v7, v7, Landroid/os/BatteryProperties;->batteryPresent:Z

    #@b1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v6

    #@b5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v6

    #@b9
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bc
    .line 624
    new-instance v6, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v7, "  level: "

    #@c4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v6

    #@c8
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@ca
    iget v7, v7, Landroid/os/BatteryProperties;->batteryLevel:I

    #@cc
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v6

    #@d0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v6

    #@d4
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d7
    .line 625
    const-string/jumbo v6, "  scale: 100"

    #@da
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@dd
    .line 626
    new-instance v6, Ljava/lang/StringBuilder;

    #@df
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    const-string/jumbo v7, "  voltage: "

    #@e5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v6

    #@e9
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@eb
    iget v7, v7, Landroid/os/BatteryProperties;->batteryVoltage:I

    #@ed
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v6

    #@f1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v6

    #@f5
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f8
    .line 627
    new-instance v6, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string/jumbo v7, "  temperature: "

    #@100
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v6

    #@104
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@106
    iget v7, v7, Landroid/os/BatteryProperties;->batteryTemperature:I

    #@108
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v6

    #@10c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v6

    #@110
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@113
    .line 628
    new-instance v6, Ljava/lang/StringBuilder;

    #@115
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@118
    const-string/jumbo v7, "  technology: "

    #@11b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v6

    #@11f
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@121
    iget-object v7, v7, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    #@123
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v6

    #@127
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12a
    move-result-object v6

    #@12b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12e
    :cond_2
    :goto_0
    monitor-exit v8

    #@12f
    .line 611
    return-void

    #@130
    .line 613
    :cond_3
    :try_start_1
    const-string/jumbo v9, "-a"

    #@133
    const/4 v10, 0x0

    #@134
    aget-object v10, p2, v10

    #@136
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@139
    move-result v9

    #@13a
    if-nez v9, :cond_0

    #@13c
    .line 630
    const-string/jumbo v9, "unplug"

    #@13f
    const/4 v10, 0x0

    #@140
    aget-object v10, p2, v10

    #@142
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@145
    move-result v9

    #@146
    if-eqz v9, :cond_5

    #@148
    .line 631
    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    #@14a
    if-nez v6, :cond_4

    #@14c
    .line 632
    iget-object v6, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    #@14e
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@150
    invoke-virtual {v6, v7}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    #@153
    .line 634
    :cond_4
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@155
    const/4 v7, 0x0

    #@156
    iput-boolean v7, v6, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    #@158
    .line 635
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@15a
    const/4 v7, 0x0

    #@15b
    iput-boolean v7, v6, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    #@15d
    .line 636
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@15f
    const/4 v7, 0x0

    #@160
    iput-boolean v7, v6, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    #@162
    .line 637
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@165
    move-result-wide v2

    #@166
    .line 639
    .local v2, "ident":J
    const/4 v6, 0x1

    #@167
    :try_start_2
    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    #@169
    .line 640
    const/4 v6, 0x0

    #@16a
    invoke-direct {p0, v6}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@16d
    .line 642
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@170
    goto :goto_0

    #@171
    .line 612
    .end local v2    # "ident":J
    :catchall_0
    move-exception v6

    #@172
    monitor-exit v8

    #@173
    throw v6

    #@174
    .line 641
    .restart local v2    # "ident":J
    :catchall_1
    move-exception v6

    #@175
    .line 642
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@178
    .line 641
    throw v6

    #@179
    .line 645
    .end local v2    # "ident":J
    :cond_5
    array-length v9, p2

    #@17a
    const/4 v10, 0x3

    #@17b
    if-ne v9, v10, :cond_10

    #@17d
    const-string/jumbo v9, "set"

    #@180
    const/4 v10, 0x0

    #@181
    aget-object v10, p2, v10

    #@183
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@186
    move-result v9

    #@187
    if-eqz v9, :cond_10

    #@189
    .line 646
    const/4 v9, 0x1

    #@18a
    aget-object v1, p2, v9

    #@18c
    .line 647
    .local v1, "key":Ljava/lang/String;
    const/4 v9, 0x2

    #@18d
    aget-object v5, p2, v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@18f
    .line 649
    .local v5, "value":Ljava/lang/String;
    :try_start_5
    iget-boolean v9, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    #@191
    if-nez v9, :cond_6

    #@193
    .line 650
    iget-object v9, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    #@195
    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@197
    invoke-virtual {v9, v10}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    #@19a
    .line 652
    :cond_6
    const/4 v4, 0x1

    #@19b
    .line 653
    .local v4, "update":Z
    const-string/jumbo v9, "ac"

    #@19e
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a1
    move-result v9

    #@1a2
    if-eqz v9, :cond_8

    #@1a4
    .line 654
    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1a6
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1a9
    move-result v10

    #@1aa
    if-eqz v10, :cond_7

    #@1ac
    :goto_1
    iput-boolean v6, v9, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    #@1ae
    .line 669
    :goto_2
    if-eqz v4, :cond_2

    #@1b0
    .line 670
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@1b3
    move-result-wide v2

    #@1b4
    .line 672
    .restart local v2    # "ident":J
    const/4 v6, 0x1

    #@1b5
    :try_start_6
    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    #@1b7
    .line 673
    const/4 v6, 0x0

    #@1b8
    invoke-direct {p0, v6}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@1bb
    .line 675
    :try_start_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@1be
    goto/16 :goto_0

    #@1c0
    .line 678
    .end local v2    # "ident":J
    .end local v4    # "update":Z
    :catch_0
    move-exception v0

    #@1c1
    .line 679
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_8
    new-instance v6, Ljava/lang/StringBuilder;

    #@1c3
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1c6
    const-string/jumbo v7, "Bad value: "

    #@1c9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v6

    #@1cd
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v6

    #@1d1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d4
    move-result-object v6

    #@1d5
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@1d8
    goto/16 :goto_0

    #@1da
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .restart local v4    # "update":Z
    :cond_7
    move v6, v7

    #@1db
    .line 654
    goto :goto_1

    #@1dc
    .line 655
    :cond_8
    :try_start_9
    const-string/jumbo v9, "usb"

    #@1df
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e2
    move-result v9

    #@1e3
    if-eqz v9, :cond_a

    #@1e5
    .line 656
    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1e7
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1ea
    move-result v10

    #@1eb
    if-eqz v10, :cond_9

    #@1ed
    :goto_3
    iput-boolean v6, v9, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    #@1ef
    goto :goto_2

    #@1f0
    :cond_9
    move v6, v7

    #@1f1
    goto :goto_3

    #@1f2
    .line 657
    :cond_a
    const-string/jumbo v9, "wireless"

    #@1f5
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f8
    move-result v9

    #@1f9
    if-eqz v9, :cond_c

    #@1fb
    .line 658
    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1fd
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@200
    move-result v10

    #@201
    if-eqz v10, :cond_b

    #@203
    :goto_4
    iput-boolean v6, v9, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    #@205
    goto :goto_2

    #@206
    :cond_b
    move v6, v7

    #@207
    goto :goto_4

    #@208
    .line 659
    :cond_c
    const-string/jumbo v6, "status"

    #@20b
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20e
    move-result v6

    #@20f
    if-eqz v6, :cond_d

    #@211
    .line 660
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@213
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@216
    move-result v7

    #@217
    iput v7, v6, Landroid/os/BatteryProperties;->batteryStatus:I

    #@219
    goto :goto_2

    #@21a
    .line 661
    :cond_d
    const-string/jumbo v6, "level"

    #@21d
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@220
    move-result v6

    #@221
    if-eqz v6, :cond_e

    #@223
    .line 662
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@225
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@228
    move-result v7

    #@229
    iput v7, v6, Landroid/os/BatteryProperties;->batteryLevel:I

    #@22b
    goto :goto_2

    #@22c
    .line 663
    :cond_e
    const-string/jumbo v6, "invalid"

    #@22f
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@232
    move-result v6

    #@233
    if-eqz v6, :cond_f

    #@235
    .line 664
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@238
    move-result v6

    #@239
    iput v6, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    #@23b
    goto/16 :goto_2

    #@23d
    .line 666
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    #@23f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@242
    const-string/jumbo v7, "Unknown set option: "

    #@245
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@248
    move-result-object v6

    #@249
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v6

    #@24d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@250
    move-result-object v6

    #@251
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@254
    .line 667
    const/4 v4, 0x0

    #@255
    goto/16 :goto_2

    #@257
    .line 674
    .restart local v2    # "ident":J
    :catchall_2
    move-exception v6

    #@258
    .line 675
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25b
    .line 674
    throw v6
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@25c
    .line 682
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "ident":J
    .end local v4    # "update":Z
    .end local v5    # "value":Ljava/lang/String;
    :cond_10
    :try_start_a
    array-length v7, p2

    #@25d
    if-ne v7, v6, :cond_12

    #@25f
    const-string/jumbo v6, "reset"

    #@262
    const/4 v7, 0x0

    #@263
    aget-object v7, p2, v7

    #@265
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@268
    move-result v6

    #@269
    if-eqz v6, :cond_12

    #@26b
    .line 683
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@26e
    move-result-wide v2

    #@26f
    .line 685
    .restart local v2    # "ident":J
    :try_start_b
    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    #@271
    if-eqz v6, :cond_11

    #@273
    .line 686
    const/4 v6, 0x0

    #@274
    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    #@276
    .line 687
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@278
    iget-object v7, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    #@27a
    invoke-virtual {v6, v7}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    #@27d
    .line 688
    const/4 v6, 0x0

    #@27e
    invoke-direct {p0, v6}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    #@281
    .line 691
    :cond_11
    :try_start_c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@284
    goto/16 :goto_0

    #@286
    .line 690
    :catchall_3
    move-exception v6

    #@287
    .line 691
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28a
    .line 690
    throw v6

    #@28b
    .line 694
    .end local v2    # "ident":J
    :cond_12
    const-string/jumbo v6, "Dump current battery state, or:"

    #@28e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@291
    .line 695
    const-string/jumbo v6, "  set [ac|usb|wireless|status|level|invalid] <value>"

    #@294
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@297
    .line 696
    const-string/jumbo v6, "  unplug"

    #@29a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@29d
    .line 697
    const-string/jumbo v6, "  reset"

    #@2a0
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@2a3
    goto/16 :goto_0
.end method

.method private getIconLocked(I)I
    .locals 4
    .param p1, "level"    # I

    #@0
    .prologue
    const v3, 0x1080650

    #@3
    const v2, 0x1080642

    #@6
    .line 594
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@8
    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@a
    const/4 v1, 0x2

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 595
    return v3

    #@e
    .line 596
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@10
    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@12
    const/4 v1, 0x3

    #@13
    if-ne v0, v1, :cond_1

    #@15
    .line 597
    return v2

    #@16
    .line 598
    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@18
    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@1a
    const/4 v1, 0x4

    #@1b
    if-eq v0, v1, :cond_2

    #@1d
    .line 599
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1f
    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@21
    const/4 v1, 0x5

    #@22
    if-ne v0, v1, :cond_4

    #@24
    .line 600
    :cond_2
    const/4 v0, 0x7

    #@25
    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_3

    #@2b
    .line 601
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@2d
    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@2f
    const/16 v1, 0x64

    #@31
    if-lt v0, v1, :cond_3

    #@33
    .line 602
    return v3

    #@34
    .line 604
    :cond_3
    return v2

    #@35
    .line 607
    :cond_4
    const v0, 0x108065e

    #@38
    return v0
.end method

.method private isPoweredLocked(I)Z
    .locals 3
    .param p1, "plugTypeSet"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 226
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@4
    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 227
    return v1

    #@9
    .line 229
    :cond_0
    and-int/lit8 v0, p1, 0x1

    #@b
    if-eqz v0, :cond_1

    #@d
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@f
    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 230
    return v1

    #@14
    .line 232
    :cond_1
    and-int/lit8 v0, p1, 0x2

    #@16
    if-eqz v0, :cond_2

    #@18
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1a
    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 233
    return v1

    #@1f
    .line 235
    :cond_2
    and-int/lit8 v0, p1, 0x4

    #@21
    if-eqz v0, :cond_3

    #@23
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@25
    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    #@27
    if-eqz v0, :cond_3

    #@29
    .line 236
    return v1

    #@2a
    .line 238
    :cond_3
    return v2
.end method

.method private logBatteryStatsLocked()V
    .locals 12

    #@0
    .prologue
    .line 528
    const-string/jumbo v8, "batterystats"

    #@3
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 529
    .local v0, "batteryInfoService":Landroid/os/IBinder;
    if-nez v0, :cond_0

    #@9
    return-void

    #@a
    .line 531
    :cond_0
    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    #@c
    const-string/jumbo v9, "dropbox"

    #@f
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/os/DropBoxManager;

    #@15
    .line 532
    .local v1, "db":Landroid/os/DropBoxManager;
    if-eqz v1, :cond_4

    #@17
    const-string/jumbo v8, "BATTERY_DISCHARGE_INFO"

    #@1a
    invoke-virtual {v1, v8}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    #@1d
    move-result v8

    #@1e
    if-eqz v8, :cond_4

    #@20
    .line 534
    const/4 v2, 0x0

    #@21
    .line 535
    .local v2, "dumpFile":Ljava/io/File;
    const/4 v4, 0x0

    #@22
    .line 538
    .local v4, "dumpStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    #@24
    const-string/jumbo v8, "/data/system/batterystats.dump"

    #@27
    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 539
    .end local v2    # "dumpFile":Ljava/io/File;
    .local v3, "dumpFile":Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    #@2c
    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2f
    .line 540
    .local v5, "dumpStream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    #@32
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-result-object v8

    #@33
    sget-object v9, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    #@35
    invoke-interface {v0, v8, v9}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    #@38
    .line 541
    invoke-static {v5}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@3b
    .line 544
    const-string/jumbo v8, "BATTERY_DISCHARGE_INFO"

    #@3e
    const/4 v9, 0x2

    #@3f
    invoke-virtual {v1, v8, v3, v9}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@42
    .line 551
    if-eqz v5, :cond_1

    #@44
    .line 553
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@47
    .line 558
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    #@49
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@4c
    move-result v8

    #@4d
    if-eqz v8, :cond_5

    #@4f
    :cond_2
    :goto_1
    move-object v4, v5

    #@50
    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .local v4, "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    #@51
    .line 527
    .end local v3    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    return-void

    #@52
    .line 532
    :cond_4
    return-void

    #@53
    .line 554
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v7

    #@54
    .line 555
    .local v7, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    #@56
    const-string/jumbo v9, "failed to close dumpsys output stream"

    #@59
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    goto :goto_0

    #@5d
    .line 559
    .end local v7    # "e":Ljava/io/IOException;
    :cond_5
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    #@5f
    new-instance v9, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v10, "failed to delete temporary dumpsys file: "

    #@67
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v9

    #@6b
    .line 560
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@6e
    move-result-object v10

    #@6f
    .line 559
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v9

    #@73
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v9

    #@77
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    goto :goto_1

    #@7b
    .line 547
    .end local v3    # "dumpFile":Ljava/io/File;
    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v2    # "dumpFile":Ljava/io/File;
    .local v4, "dumpStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    #@7c
    .line 548
    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    #@7e
    const-string/jumbo v9, "failed to write dumpsys file"

    #@81
    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@84
    .line 551
    if-eqz v4, :cond_6

    #@86
    .line 553
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    #@89
    .line 558
    :cond_6
    :goto_4
    if-eqz v2, :cond_3

    #@8b
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@8e
    move-result v8

    #@8f
    if-nez v8, :cond_3

    #@91
    .line 559
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    #@93
    new-instance v9, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v10, "failed to delete temporary dumpsys file: "

    #@9b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v9

    #@9f
    .line 560
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@a2
    move-result-object v10

    #@a3
    .line 559
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v9

    #@a7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v9

    #@ab
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ae
    goto :goto_2

    #@af
    .line 554
    :catch_2
    move-exception v7

    #@b0
    .line 555
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    #@b2
    const-string/jumbo v9, "failed to close dumpsys output stream"

    #@b5
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b8
    goto :goto_4

    #@b9
    .line 545
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v2    # "dumpFile":Ljava/io/File;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v6

    #@ba
    .line 546
    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .local v6, "e":Landroid/os/RemoteException;
    :goto_5
    :try_start_6
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    #@bc
    const-string/jumbo v9, "failed to dump battery service"

    #@bf
    invoke-static {v8, v9, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@c2
    .line 551
    if-eqz v4, :cond_7

    #@c4
    .line 553
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    #@c7
    .line 558
    :cond_7
    :goto_6
    if-eqz v2, :cond_3

    #@c9
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@cc
    move-result v8

    #@cd
    if-nez v8, :cond_3

    #@cf
    .line 559
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    #@d1
    new-instance v9, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    const-string/jumbo v10, "failed to delete temporary dumpsys file: "

    #@d9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v9

    #@dd
    .line 560
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@e0
    move-result-object v10

    #@e1
    .line 559
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v9

    #@e5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e8
    move-result-object v9

    #@e9
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ec
    goto/16 :goto_2

    #@ee
    .line 554
    :catch_4
    move-exception v7

    #@ef
    .line 555
    .restart local v7    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    #@f1
    const-string/jumbo v9, "failed to close dumpsys output stream"

    #@f4
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f7
    goto :goto_6

    #@f8
    .line 549
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    #@f9
    .line 551
    :goto_7
    if-eqz v4, :cond_8

    #@fb
    .line 553
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    #@fe
    .line 558
    :cond_8
    :goto_8
    if-eqz v2, :cond_9

    #@100
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@103
    move-result v9

    #@104
    if-eqz v9, :cond_a

    #@106
    .line 549
    :cond_9
    :goto_9
    throw v8

    #@107
    .line 554
    :catch_5
    move-exception v7

    #@108
    .line 555
    .restart local v7    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    #@10a
    const-string/jumbo v10, "failed to close dumpsys output stream"

    #@10d
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@110
    goto :goto_8

    #@111
    .line 559
    .end local v7    # "e":Ljava/io/IOException;
    :cond_a
    sget-object v9, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    #@113
    new-instance v10, Ljava/lang/StringBuilder;

    #@115
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@118
    const-string/jumbo v11, "failed to delete temporary dumpsys file: "

    #@11b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v10

    #@11f
    .line 560
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@122
    move-result-object v11

    #@123
    .line 559
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v10

    #@127
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12a
    move-result-object v10

    #@12b
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12e
    goto :goto_9

    #@12f
    .line 549
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    #@130
    move-object v2, v3

    #@131
    .end local v3    # "dumpFile":Ljava/io/File;
    .local v2, "dumpFile":Ljava/io/File;
    goto :goto_7

    #@132
    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    #@133
    move-object v4, v5

    #@134
    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .local v4, "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    #@135
    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_7

    #@136
    .line 545
    .end local v2    # "dumpFile":Ljava/io/File;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .local v4, "dumpStream":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v6

    #@137
    .restart local v6    # "e":Landroid/os/RemoteException;
    move-object v2, v3

    #@138
    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_5

    #@139
    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v6

    #@13a
    .restart local v6    # "e":Landroid/os/RemoteException;
    move-object v4, v5

    #@13b
    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .local v4, "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    #@13c
    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto/16 :goto_5

    #@13e
    .line 547
    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .local v4, "dumpStream":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v7

    #@13f
    .restart local v7    # "e":Ljava/io/IOException;
    move-object v2, v3

    #@140
    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto/16 :goto_3

    #@142
    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v7

    #@143
    .restart local v7    # "e":Ljava/io/IOException;
    move-object v4, v5

    #@144
    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .local v4, "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    #@145
    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto/16 :goto_3
.end method

.method private logOutlierLocked(J)V
    .locals 11
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 566
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 568
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v7, "battery_discharge_threshold"

    #@9
    .line 567
    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 570
    .local v2, "dischargeThresholdString":Ljava/lang/String;
    const-string/jumbo v7, "battery_discharge_duration_threshold"

    #@10
    .line 569
    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 572
    .local v3, "durationThresholdString":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 574
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@1b
    move-result-wide v4

    #@1c
    .line 575
    .local v4, "durationThreshold":J
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1f
    move-result v1

    #@20
    .line 576
    .local v1, "dischargeThreshold":I
    cmp-long v7, p1, v4

    #@22
    if-gtz v7, :cond_0

    #@24
    .line 577
    iget v7, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    #@26
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@28
    iget v8, v8, Landroid/os/BatteryProperties;->batteryLevel:I

    #@2a
    sub-int/2addr v7, v8

    #@2b
    if-lt v7, v1, :cond_0

    #@2d
    .line 579
    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStatsLocked()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 565
    .end local v1    # "dischargeThreshold":I
    .end local v4    # "durationThreshold":J
    :cond_0
    return-void

    #@31
    .line 585
    :catch_0
    move-exception v6

    #@32
    .line 586
    .local v6, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    #@34
    new-instance v8, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v9, "Invalid DischargeThresholds GService string: "

    #@3c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v8

    #@40
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v8

    #@44
    .line 587
    const-string/jumbo v9, " or "

    #@47
    .line 586
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v8

    #@4b
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v8

    #@4f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v8

    #@53
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 588
    return-void
.end method

.method private processValuesLocked(Z)V
    .locals 11
    .param p1, "force"    # Z

    #@0
    .prologue
    .line 307
    const/4 v10, 0x0

    #@1
    .line 308
    .local v10, "logOutlier":Z
    const-wide/16 v8, 0x0

    #@3
    .line 310
    .local v8, "dischargeDuration":J
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@5
    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@7
    iget v1, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    #@9
    if-gt v0, v1, :cond_b

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    #@e
    .line 311
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@10
    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    #@12
    if-eqz v0, :cond_c

    #@14
    .line 312
    const/4 v0, 0x1

    #@15
    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@17
    .line 339
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@19
    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1b
    iget v1, v1, Landroid/os/BatteryProperties;->batteryStatus:I

    #@1d
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1f
    iget v2, v2, Landroid/os/BatteryProperties;->batteryHealth:I

    #@21
    .line 340
    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@23
    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@25
    iget v4, v4, Landroid/os/BatteryProperties;->batteryLevel:I

    #@27
    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@29
    iget v5, v5, Landroid/os/BatteryProperties;->batteryTemperature:I

    #@2b
    .line 341
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@2d
    iget v6, v6, Landroid/os/BatteryProperties;->batteryVoltage:I

    #@2f
    .line 339
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 346
    :goto_2
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V

    #@35
    .line 347
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfOverTempLocked()V

    #@38
    .line 349
    if-nez p1, :cond_0

    #@3a
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@3c
    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@3e
    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    #@40
    if-ne v0, v1, :cond_0

    #@42
    .line 350
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@44
    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    #@46
    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    #@48
    if-eq v0, v1, :cond_f

    #@4a
    .line 358
    :cond_0
    :goto_3
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@4c
    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    #@4e
    if-eq v0, v1, :cond_1

    #@50
    .line 359
    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    #@52
    if-nez v0, :cond_10

    #@54
    .line 364
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    #@56
    const-wide/16 v2, 0x0

    #@58
    cmp-long v0, v0, v2

    #@5a
    if-eqz v0, :cond_1

    #@5c
    iget v0, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    #@5e
    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@60
    iget v1, v1, Landroid/os/BatteryProperties;->batteryLevel:I

    #@62
    if-eq v0, v1, :cond_1

    #@64
    .line 365
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@67
    move-result-wide v0

    #@68
    iget-wide v2, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    #@6a
    sub-long v8, v0, v2

    #@6c
    .line 366
    const/4 v10, 0x1

    #@6d
    .line 367
    const/4 v0, 0x3

    #@6e
    new-array v0, v0, [Ljava/lang/Object;

    #@70
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@73
    move-result-object v1

    #@74
    const/4 v2, 0x0

    #@75
    aput-object v1, v0, v2

    #@77
    .line 368
    iget v1, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    #@79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7c
    move-result-object v1

    #@7d
    const/4 v2, 0x1

    #@7e
    aput-object v1, v0, v2

    #@80
    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@82
    iget v1, v1, Landroid/os/BatteryProperties;->batteryLevel:I

    #@84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@87
    move-result-object v1

    #@88
    const/4 v2, 0x2

    #@89
    aput-object v1, v0, v2

    #@8b
    .line 367
    const/16 v1, 0xaaa

    #@8d
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@90
    .line 370
    const-wide/16 v0, 0x0

    #@92
    iput-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    #@94
    .line 378
    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@96
    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@98
    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    #@9a
    if-ne v0, v1, :cond_2

    #@9c
    .line 379
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@9e
    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    #@a0
    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    #@a2
    if-eq v0, v1, :cond_11

    #@a4
    .line 382
    :cond_2
    :goto_5
    const/4 v0, 0x5

    #@a5
    new-array v1, v0, [Ljava/lang/Object;

    #@a7
    .line 383
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@a9
    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@ab
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ae
    move-result-object v0

    #@af
    const/4 v2, 0x0

    #@b0
    aput-object v0, v1, v2

    #@b2
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@b4
    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    #@b6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b9
    move-result-object v0

    #@ba
    const/4 v2, 0x1

    #@bb
    aput-object v0, v1, v2

    #@bd
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@bf
    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    #@c1
    if-eqz v0, :cond_12

    #@c3
    const/4 v0, 0x1

    #@c4
    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c7
    move-result-object v0

    #@c8
    const/4 v2, 0x2

    #@c9
    aput-object v0, v1, v2

    #@cb
    .line 384
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@cd
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d0
    move-result-object v0

    #@d1
    const/4 v2, 0x3

    #@d2
    aput-object v0, v1, v2

    #@d4
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@d6
    iget-object v0, v0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    #@d8
    const/4 v2, 0x4

    #@d9
    aput-object v0, v1, v2

    #@db
    .line 382
    const/16 v0, 0xaa3

    #@dd
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@e0
    .line 386
    :cond_3
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@e2
    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@e4
    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    #@e6
    if-eq v0, v1, :cond_4

    #@e8
    .line 389
    const/4 v0, 0x3

    #@e9
    new-array v0, v0, [Ljava/lang/Object;

    #@eb
    .line 390
    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@ed
    iget v1, v1, Landroid/os/BatteryProperties;->batteryLevel:I

    #@ef
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f2
    move-result-object v1

    #@f3
    const/4 v2, 0x0

    #@f4
    aput-object v1, v0, v2

    #@f6
    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@f8
    iget v1, v1, Landroid/os/BatteryProperties;->batteryVoltage:I

    #@fa
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@fd
    move-result-object v1

    #@fe
    const/4 v2, 0x1

    #@ff
    aput-object v1, v0, v2

    #@101
    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@103
    iget v1, v1, Landroid/os/BatteryProperties;->batteryTemperature:I

    #@105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@108
    move-result-object v1

    #@109
    const/4 v2, 0x2

    #@10a
    aput-object v1, v0, v2

    #@10c
    .line 389
    const/16 v1, 0xaa2

    #@10e
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@111
    .line 392
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    #@113
    if-eqz v0, :cond_5

    #@115
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    #@117
    if-eqz v0, :cond_13

    #@119
    .line 400
    :cond_5
    :goto_7
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    #@11b
    if-nez v0, :cond_14

    #@11d
    .line 402
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@11f
    if-nez v0, :cond_6

    #@121
    .line 403
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@123
    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@125
    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@127
    if-gt v0, v1, :cond_6

    #@129
    .line 404
    const/4 v0, 0x1

    #@12a
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    #@12c
    .line 419
    :cond_6
    :goto_8
    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendIntentLocked()V

    #@12f
    .line 424
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@131
    if-eqz v0, :cond_17

    #@133
    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    #@135
    if-nez v0, :cond_17

    #@137
    .line 425
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    #@139
    new-instance v1, Lcom/android/server/BatteryService$5;

    #@13b
    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$5;-><init>(Lcom/android/server/BatteryService;)V

    #@13e
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@141
    .line 445
    :cond_7
    :goto_9
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shouldSendBatteryLowLocked()Z

    #@144
    move-result v0

    #@145
    if-eqz v0, :cond_18

    #@147
    .line 446
    const/4 v0, 0x1

    #@148
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    #@14a
    .line 447
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    #@14c
    new-instance v1, Lcom/android/server/BatteryService$7;

    #@14e
    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$7;-><init>(Lcom/android/server/BatteryService;)V

    #@151
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@154
    .line 468
    :cond_8
    :goto_a
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    #@156
    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    #@159
    .line 471
    if-eqz v10, :cond_9

    #@15b
    const-wide/16 v0, 0x0

    #@15d
    cmp-long v0, v8, v0

    #@15f
    if-eqz v0, :cond_9

    #@161
    .line 472
    invoke-direct {p0, v8, v9}, Lcom/android/server/BatteryService;->logOutlierLocked(J)V

    #@164
    .line 475
    :cond_9
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@166
    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@168
    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    #@16a
    .line 476
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@16c
    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    #@16e
    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    #@170
    .line 477
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@172
    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    #@174
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    #@176
    .line 478
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@178
    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@17a
    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    #@17c
    .line 479
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@17e
    iput v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    #@180
    .line 480
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@182
    iget v0, v0, Landroid/os/BatteryProperties;->batteryVoltage:I

    #@184
    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    #@186
    .line 481
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@188
    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    #@18a
    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    #@18c
    .line 482
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    #@18e
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    #@190
    .line 483
    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    #@192
    iput v0, p0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    #@194
    .line 306
    :cond_a
    return-void

    #@195
    .line 310
    :cond_b
    const/4 v0, 0x0

    #@196
    goto/16 :goto_0

    #@198
    .line 313
    :cond_c
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@19a
    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    #@19c
    if-eqz v0, :cond_d

    #@19e
    .line 314
    const/4 v0, 0x2

    #@19f
    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@1a1
    goto/16 :goto_1

    #@1a3
    .line 315
    :cond_d
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1a5
    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    #@1a7
    if-eqz v0, :cond_e

    #@1a9
    .line 316
    const/4 v0, 0x4

    #@1aa
    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@1ac
    goto/16 :goto_1

    #@1ae
    .line 318
    :cond_e
    const/4 v0, 0x0

    #@1af
    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@1b1
    goto/16 :goto_1

    #@1b3
    .line 351
    :cond_f
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1b5
    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    #@1b7
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    #@1b9
    if-ne v0, v1, :cond_0

    #@1bb
    .line 352
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1bd
    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@1bf
    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    #@1c1
    if-ne v0, v1, :cond_0

    #@1c3
    .line 353
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@1c5
    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    #@1c7
    if-ne v0, v1, :cond_0

    #@1c9
    .line 354
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1cb
    iget v0, v0, Landroid/os/BatteryProperties;->batteryVoltage:I

    #@1cd
    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    #@1cf
    if-ne v0, v1, :cond_0

    #@1d1
    .line 355
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1d3
    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    #@1d5
    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    #@1d7
    if-ne v0, v1, :cond_0

    #@1d9
    .line 356
    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    #@1db
    iget v1, p0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    #@1dd
    if-eq v0, v1, :cond_a

    #@1df
    goto/16 :goto_3

    #@1e1
    .line 372
    :cond_10
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@1e3
    if-nez v0, :cond_1

    #@1e5
    .line 374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1e8
    move-result-wide v0

    #@1e9
    iput-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    #@1eb
    .line 375
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1ed
    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@1ef
    iput v0, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    #@1f1
    goto/16 :goto_4

    #@1f3
    .line 380
    :cond_11
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1f5
    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    #@1f7
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    #@1f9
    if-ne v0, v1, :cond_2

    #@1fb
    .line 381
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@1fd
    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    #@1ff
    if-eq v0, v1, :cond_3

    #@201
    goto/16 :goto_5

    #@203
    .line 383
    :cond_12
    const/4 v0, 0x0

    #@204
    goto/16 :goto_6

    #@206
    .line 393
    :cond_13
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@208
    if-nez v0, :cond_5

    #@20a
    .line 396
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@20d
    move-result-wide v0

    #@20e
    iget-wide v2, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    #@210
    sub-long v8, v0, v2

    #@212
    .line 397
    const/4 v10, 0x1

    #@213
    goto/16 :goto_7

    #@215
    .line 408
    :cond_14
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@217
    if-eqz v0, :cond_15

    #@219
    .line 409
    const/4 v0, 0x0

    #@21a
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    #@21c
    goto/16 :goto_8

    #@21e
    .line 410
    :cond_15
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@220
    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@222
    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    #@224
    if-lt v0, v1, :cond_16

    #@226
    .line 411
    const/4 v0, 0x0

    #@227
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    #@229
    goto/16 :goto_8

    #@22b
    .line 412
    :cond_16
    if-eqz p1, :cond_6

    #@22d
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@22f
    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@231
    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@233
    if-lt v0, v1, :cond_6

    #@235
    .line 415
    const/4 v0, 0x0

    #@236
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    #@238
    goto/16 :goto_8

    #@23a
    .line 434
    :cond_17
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@23c
    if-nez v0, :cond_7

    #@23e
    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    #@240
    if-eqz v0, :cond_7

    #@242
    .line 435
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    #@244
    new-instance v1, Lcom/android/server/BatteryService$6;

    #@246
    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$6;-><init>(Lcom/android/server/BatteryService;)V

    #@249
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@24c
    goto/16 :goto_9

    #@24e
    .line 455
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    #@250
    if-eqz v0, :cond_8

    #@252
    iget v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    #@254
    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    #@256
    if-lt v0, v1, :cond_8

    #@258
    .line 456
    const/4 v0, 0x0

    #@259
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    #@25b
    .line 457
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    #@25d
    new-instance v1, Lcom/android/server/BatteryService$8;

    #@25f
    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$8;-><init>(Lcom/android/server/BatteryService;)V

    #@262
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@265
    goto/16 :goto_a

    #@267
    .line 342
    :catch_0
    move-exception v7

    #@268
    .local v7, "e":Landroid/os/RemoteException;
    goto/16 :goto_2
.end method

.method private sendIntentLocked()V
    .locals 4

    #@0
    .prologue
    .line 489
    new-instance v1, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    #@5
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 490
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x60000000

    #@a
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 493
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@f
    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    #@11
    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->getIconLocked(I)I

    #@14
    move-result v0

    #@15
    .line 495
    .local v0, "icon":I
    const-string/jumbo v2, "status"

    #@18
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1a
    iget v3, v3, Landroid/os/BatteryProperties;->batteryStatus:I

    #@1c
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@1f
    .line 496
    const-string/jumbo v2, "health"

    #@22
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@24
    iget v3, v3, Landroid/os/BatteryProperties;->batteryHealth:I

    #@26
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@29
    .line 497
    const-string/jumbo v2, "present"

    #@2c
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@2e
    iget-boolean v3, v3, Landroid/os/BatteryProperties;->batteryPresent:Z

    #@30
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@33
    .line 498
    const-string/jumbo v2, "level"

    #@36
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@38
    iget v3, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    #@3a
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3d
    .line 499
    const-string/jumbo v2, "scale"

    #@40
    const/16 v3, 0x64

    #@42
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@45
    .line 500
    const-string/jumbo v2, "icon-small"

    #@48
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@4b
    .line 501
    const-string/jumbo v2, "plugged"

    #@4e
    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@50
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@53
    .line 502
    const-string/jumbo v2, "voltage"

    #@56
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@58
    iget v3, v3, Landroid/os/BatteryProperties;->batteryVoltage:I

    #@5a
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@5d
    .line 503
    const-string/jumbo v2, "temperature"

    #@60
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@62
    iget v3, v3, Landroid/os/BatteryProperties;->batteryTemperature:I

    #@64
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@67
    .line 504
    const-string/jumbo v2, "technology"

    #@6a
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@6c
    iget-object v3, v3, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    #@6e
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@71
    .line 505
    const-string/jumbo v2, "invalid_charger"

    #@74
    iget v3, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    #@76
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@79
    .line 519
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    #@7b
    new-instance v3, Lcom/android/server/BatteryService$9;

    #@7d
    invoke-direct {v3, p0, v1}, Lcom/android/server/BatteryService$9;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    #@80
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@83
    .line 487
    return-void
.end method

.method private shouldSendBatteryLowLocked()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 242
    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@4
    if-eqz v4, :cond_1

    #@6
    const/4 v1, 0x1

    #@7
    .line 243
    .local v1, "plugged":Z
    :goto_0
    iget v4, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    #@9
    if-eqz v4, :cond_2

    #@b
    const/4 v0, 0x1

    #@c
    .line 251
    .local v0, "oldPlugged":Z
    :goto_1
    if-nez v1, :cond_4

    #@e
    .line 252
    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@10
    iget v4, v4, Landroid/os/BatteryProperties;->batteryStatus:I

    #@12
    if-eq v4, v2, :cond_4

    #@14
    .line 253
    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@16
    iget v4, v4, Landroid/os/BatteryProperties;->batteryLevel:I

    #@18
    iget v5, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@1a
    if-gt v4, v5, :cond_4

    #@1c
    .line 254
    if-nez v0, :cond_0

    #@1e
    iget v4, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    #@20
    iget v5, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@22
    if-le v4, v5, :cond_3

    #@24
    .line 251
    :cond_0
    :goto_2
    return v2

    #@25
    .line 242
    .end local v0    # "oldPlugged":Z
    .end local v1    # "plugged":Z
    :cond_1
    const/4 v1, 0x0

    #@26
    .restart local v1    # "plugged":Z
    goto :goto_0

    #@27
    .line 243
    :cond_2
    const/4 v0, 0x0

    #@28
    .restart local v0    # "oldPlugged":Z
    goto :goto_1

    #@29
    :cond_3
    move v2, v3

    #@2a
    .line 254
    goto :goto_2

    #@2b
    :cond_4
    move v2, v3

    #@2c
    .line 251
    goto :goto_2
.end method

.method private shutdownIfNoPowerLocked()V
    .locals 2

    #@0
    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@2
    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@4
    if-nez v0, :cond_0

    #@6
    const/4 v0, 0x7

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 257
    :cond_0
    :goto_0
    return-void

    #@e
    .line 261
    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    #@10
    new-instance v1, Lcom/android/server/BatteryService$3;

    #@12
    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$3;-><init>(Lcom/android/server/BatteryService;)V

    #@15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@18
    goto :goto_0
.end method

.method private shutdownIfOverTempLocked()V
    .locals 2

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@2
    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    #@4
    iget v1, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    #@6
    if-le v0, v1, :cond_0

    #@8
    .line 280
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    #@a
    new-instance v1, Lcom/android/server/BatteryService$4;

    #@c
    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$4;-><init>(Lcom/android/server/BatteryService;)V

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@12
    .line 275
    :cond_0
    return-void
.end method

.method private update(Landroid/os/BatteryProperties;)V
    .locals 2
    .param p1, "props"    # Landroid/os/BatteryProperties;

    #@0
    .prologue
    .line 295
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 296
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 297
    iput-object p1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@9
    .line 299
    const/4 v0, 0x0

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :goto_0
    monitor-exit v1

    #@e
    .line 294
    return-void

    #@f
    .line 301
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    #@11
    invoke-virtual {v0, p1}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    goto :goto_0

    #@15
    .line 295
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method private updateBatteryWarningLevelLocked()V
    .locals 5

    #@0
    .prologue
    .line 207
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    .line 208
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v2

    #@c
    .line 209
    const v3, 0x10e004f

    #@f
    .line 208
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@12
    move-result v0

    #@13
    .line 211
    .local v0, "defWarnLevel":I
    const-string/jumbo v2, "low_power_trigger_level"

    #@16
    .line 210
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@19
    move-result v2

    #@1a
    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@1c
    .line 212
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@1e
    if-nez v2, :cond_0

    #@20
    .line 213
    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@22
    .line 215
    :cond_0
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@24
    iget v3, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    #@26
    if-ge v2, v3, :cond_1

    #@28
    .line 216
    iget v2, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    #@2a
    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@2c
    .line 218
    :cond_1
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@2e
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    #@30
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@33
    move-result-object v3

    #@34
    .line 219
    const v4, 0x10e0050

    #@37
    .line 218
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    #@3a
    move-result v3

    #@3b
    add-int/2addr v2, v3

    #@3c
    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    #@3e
    .line 220
    const/4 v2, 0x1

    #@3f
    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    #@42
    .line 206
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 186
    const/16 v2, 0x226

    #@2
    if-ne p1, v2, :cond_0

    #@4
    .line 188
    iget-object v3, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v3

    #@7
    .line 189
    :try_start_0
    new-instance v0, Lcom/android/server/BatteryService$2;

    #@9
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    #@b
    invoke-direct {v0, p0, v2}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    #@e
    .line 197
    .local v0, "obs":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@13
    move-result-object v1

    #@14
    .line 199
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "low_power_trigger_level"

    #@17
    .line 198
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1a
    move-result-object v2

    #@1b
    .line 200
    const/4 v4, 0x0

    #@1c
    const/4 v5, -0x1

    #@1d
    .line 198
    invoke-virtual {v1, v2, v4, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@20
    .line 201
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v3

    #@24
    .line 185
    .end local v0    # "obs":Landroid/database/ContentObserver;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void

    #@25
    .line 188
    :catchall_0
    move-exception v2

    #@26
    monitor-exit v3

    #@27
    throw v2
.end method

.method public onStart()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 171
    const-string/jumbo v3, "batteryproperties"

    #@4
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v0

    #@8
    .line 173
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    #@b
    move-result-object v1

    #@c
    .line 175
    .local v1, "batteryPropertiesRegistrar":Landroid/os/IBatteryPropertiesRegistrar;
    :try_start_0
    new-instance v3, Lcom/android/server/BatteryService$BatteryListener;

    #@e
    const/4 v4, 0x0

    #@f
    invoke-direct {v3, p0, v4}, Lcom/android/server/BatteryService$BatteryListener;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$BatteryListener;)V

    #@12
    invoke-interface {v1, v3}, Landroid/os/IBatteryPropertiesRegistrar;->registerListener(Landroid/os/IBatteryPropertiesListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 180
    :goto_0
    const-string/jumbo v3, "battery"

    #@18
    new-instance v4, Lcom/android/server/BatteryService$BinderService;

    #@1a
    invoke-direct {v4, p0, v5}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$BinderService;)V

    #@1d
    invoke-virtual {p0, v3, v4}, Lcom/android/server/BatteryService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@20
    .line 181
    const-class v3, Landroid/os/BatteryManagerInternal;

    #@22
    new-instance v4, Lcom/android/server/BatteryService$LocalService;

    #@24
    invoke-direct {v4, p0, v5}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$LocalService;)V

    #@27
    invoke-virtual {p0, v3, v4}, Lcom/android/server/BatteryService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@2a
    .line 170
    return-void

    #@2b
    .line 176
    :catch_0
    move-exception v2

    #@2c
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
